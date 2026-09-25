Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeConstProp?download=true
inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGen18createLinearBlocksERNS0_9IrBuilderE:bb.a
  %.sroa.22.759 = phi ptr [ %.sroa.22.0217, %.body.thread ], [ %.sroa.22.4, %.body ]
  %.sroa.040.758 = phi ptr [ %.sroa.040.0215, %.body.thread ], [ %.sroa.040.4, %.body ] ; 2 uses
  %i.at = ptrtoint ptr %.sroa.22.759 to i64
  %i.au = ptrtoint ptr %.sroa.040.758 to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.758, i64 noundef %i.av) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit23

bb.h:                                             ; preds = %bb.f
  %i.aw = trunc i64 %.0218 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !167
  store i8 1, ptr %i.aq, align 1, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !126 ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !129
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !130
  %.not.i = icmp eq i8 %i.bc, 88
  br i1 %.not.i, label %bb.i, label %_ZN4Luau7CodeGenL20tryCreateLinearBlockERNS0_9IrBuilderERSt6vectorIhSaIhEERNS0_7IrBlockERNS0_14ConstPropStateE.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !131
  %.not.i.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.not.i, label %bb.j, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i, !prof !132

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i32 noundef 1)
          to label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i unwind label %.body.thread

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i:     ; preds = %bb.j, %bb.i
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = and i32 %i.bh, 15
  %.not83.i = icmp eq i32 %i.bi, 5
  br i1 %.not83.i, label %bb.k, label %_ZN4Luau7CodeGenL20tryCreateLinearBlockERNS0_9IrBuilderERSt6vectorIhSaIhEERNS0_7IrBlockERNS0_14ConstPropStateE.exit

bb.k:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit.i
  %i.bj = load i32, ptr %i.be, align 8, !tbaa !131
  %.not.i90.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i90.not.i, label %bb.l, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit91.i, !prof !132

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i32 noundef 1)
          to label %.noexc26 unwind label %.body.thread

.noexc26:                                         ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !133
  %.sroa.024.0.copyload.pre.i = load i32, ptr %.pre.i, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit91.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit91.i:   ; preds = %.noexc26, %bb.k
  %.sroa.024.0.copyload.i = phi i32 [ %i.bh, %bb.k ], [ %.sroa.024.0.copyload.pre.i, %.noexc26 ]
  %i.bk = lshr i32 %.sroa.024.0.copyload.i, 4     ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw [36 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !134
  %i.bq = icmp eq i16 %i.bp, 1
  br i1 %i.bq, label %_ZN4Luau7CodeGenL20tryCreateLinearBlockERNS0_9IrBuilderERSt6vectorIhSaIhEERNS0_7IrBlockERNS0_14ConstPropStateE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit91.i
  %i.br = load i32, ptr %i.be, align 8, !tbaa !131
  %.not.i92.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i92.not.i, label %bb.n, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit93.i, !prof !132

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i32 noundef 1)
          to label %.noexc27 unwind label %.body.thread

.noexc27:                                         ; preds = %bb.n
  %.pre156.i = load ptr, ptr %i.bd, align 8, !tbaa !133
  %.pre157.i = load i32, ptr %.pre156.i, align 4
  %.pre159.i = lshr i32 %.pre157.i, 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit93.i

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit93.i:   ; preds = %.noexc27, %bb.m
  %.pre-phi.i = phi i32 [ %i.bk, %bb.m ], [ %.pre159.i, %.noexc27 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !348
  br label %bb.o

bb.o:                                             ; preds = %bb.bu, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit93.i
  %.0185.i.i = phi ptr [ %i.an, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit93.i ], [ %.054.i.i, %bb.bu ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0185.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !126
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !129, !noalias !348
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bv, i64 %i.bu ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !130
  %i.by = icmp eq i8 %i.bx, 88
  br i1 %i.by, label %bb.p, label %_ZN4Luau7CodeGenL26collectDirectBlockJumpPathERNS0_10IrFunctionERSt6vectorIhSaIhEEPNS0_7IrBlockE.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !131
  %.not.i.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.not.i.i, label %bb.q, label %bb.r, !prof !132

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i32 noundef 1)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !133
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = and i32 %i.cd, 15
  %i.cf = icmp eq i32 %i.ce, 5
  br i1 %i.cf, label %bb.s, label %_ZN4Luau7CodeGenL26collectDirectBlockJumpPathERNS0_10IrFunctionERSt6vectorIhSaIhEEPNS0_7IrBlockE.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cg = load i32, ptr %i.ca, align 8, !tbaa !131
  %.not.i74.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i74.not.i.i, label %bb.t, label %bb.u, !prof !132

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i32 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.ag

._crit_edge.i.i:                                  ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %i.bz, align 8, !tbaa !133
  %.sroa.015.0.copyload.pre.i.i = load i32, ptr %.pre.i.i, align 4, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i, %bb.s
  %.sroa.015.0.copyload.i.i = phi i32 [ %.sroa.015.0.copyload.pre.i.i, %._crit_edge.i.i ], [ %i.cd, %bb.s ]
  %i.ch = lshr i32 %.sroa.015.0.copyload.i.i, 4   ; 4 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !348
  %i.ck = getelementptr inbounds nuw [36 x i8], ptr %i.cj, i64 %i.ci ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.040.0215, i64 %i.ci ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !52
  %.not61.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not61.i.i, label %bb.v, label %_ZN4Luau7CodeGenL26collectDirectBlockJumpPathERNS0_10IrFunctionERSt6vectorIhSaIhEEPNS0_7IrBlockE.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cn = load i8, ptr %i.ck, align 4, !tbaa !51
  %i.co = icmp eq i8 %i.cn, 2
  br i1 %i.co, label %bb.w, label %_ZN4Luau7CodeGenL26collectDirectBlockJumpPathERNS0_10IrFunctionERSt6vectorIhSaIhEEPNS0_7IrBlockE.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cp = invoke i64 @_ZN4Luau7CodeGen22getLiveInOutValueCountERNS0_10IrFunctionERNS0_7IrBlockEb(ptr noundef nonnull align 8 dereferenceable(928) %i.c, ptr noundef nonnull align 4 dereferenceable(36) %i.ck, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  %or.cond.i.i = icmp eq i64 %i.cp, 0
  br i1 %or.cond.i.i, label %bb.y, label %_ZN4Luau7CodeGenL26collectDirectBlockJumpPathERNS0_10IrFunctionERSt6vectorIhSaIhEEPNS0_7IrBlockE.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !348
  store i32 0, ptr %i.r, align 8, !tbaa !350, !noalias !348
  store i32 8, ptr %i.s, align 4, !tbaa !351, !noalias !348
  store ptr %i.t, ptr %1, align 8, !tbaa !352, !noalias !348
  store i8 1, ptr %i.cl, align 1, !tbaa !52
  %i.cq = load i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, align 8, !tbaa !170, !range !122, !noalias !348, !noundef !123
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348 ; 6 uses
  %i.ct = load i32, ptr %i.s, align 4, !tbaa !351, !noalias !348
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.z
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !352, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cv = add i32 %i.cs, 1
  %i.cw = lshr i32 %i.cs, 1
  %i.cx = add i32 %i.cw, %i.cs                    ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cs, 5
  %.09.i.i.i.i = select i1 %i.cy, i32 %i.cx, i32 %i.cz ; 2 uses
  %i.da = zext i32 %.09.i.i.i.i to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #27
          to label %.noexc77.i.i unwind label %.loopexit150.i.i.a ; 4 uses

.noexc77.i.i:                                     ; preds = %bb.aa
  %i.dd = load ptr, ptr %1, align 8, !tbaa !352, !noalias !348 ; 4 uses
  %i.de = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348 ; 4 uses
  %i.df = icmp ugt i32 %i.de, 1
  br i1 %i.df, label %bb.ab, label %bb.ac, !prof !171

bb.ab:                                            ; preds = %.noexc77.i.i
  %i.dg = zext i32 %i.de to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dg, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.dd, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.ac:                                            ; preds = %.noexc77.i.i
  %i.dh = icmp eq i32 %i.de, 1
  br i1 %i.dh, label %bb.ad, label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dd, align 4, !tbaa !167
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !167
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.not.i.i.i.i24 = icmp eq ptr %i.dd, %i.t
  br i1 %.not.i.i.i.i24, label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.dd) #23
  %.pre2.pre.i.i.i = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i

_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i:   ; preds = %bb.ae, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.de, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ %.pre2.pre.i.i.i, %bb.ae ]
  store ptr %i.dc, ptr %1, align 8, !tbaa !352, !noalias !348
  store i32 %.09.i.i.i.i, ptr %i.s, align 4, !tbaa !351, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit.i.i

_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit.i.i: ; preds = %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i, %._crit_edge.i.i.i
  %i.dj = phi i32 [ %i.cs, %._crit_edge.i.i.i ], [ %.pre2.i.i.i, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i ]
  %i.dk = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.dc, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i.i.i ]
  %i.dl = zext i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  store i32 %i.ch, ptr %i.dm, align 4, !tbaa !167
  %i.dn = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.r, align 8, !tbaa !350, !noalias !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader

bb.af:                                            ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ag:                                            ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ah:                                            ; preds = %bb.w
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit150.i.i.a:                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.aa
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp151.i.i:                        ; preds = %bb.al
  %lpad.loopexit.split-lp153.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ai:                                            ; preds = %bb.y
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !172, !alias.scope !348 ; 4 uses
  %i.dt = load ptr, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  %.not.i78.i.i = icmp eq ptr %i.ds, %i.dt
  br i1 %.not.i78.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.ch, ptr %i.ds, align 4, !tbaa !167
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.du, ptr %i.u, align 8, !tbaa !172, !alias.scope !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader

bb.ak:                                            ; preds = %bb.ai
  %i.dv = load ptr, ptr %2, align 8, !tbaa !151, !alias.scope !348 ; 4 uses
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.al, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc79.i.i unwind label %.loopexit.split-lp151.i.i

.noexc79.i.i:                                     ; preds = %bb.al
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ak
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #25
          to label %.noexc80.i.i unwind label %.loopexit150.i.i.a ; 4 uses

.noexc80.i.i:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store i32 %i.ch, ptr %i.eh, align 4, !tbaa !167
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.am, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.am:                                            ; preds = %.noexc80.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.am, %.noexc80.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.ek = load ptr, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.an, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.eg, ptr %2, align 8, !tbaa !151, !alias.scope !348
  store ptr %i.ej, ptr %i.u, align 8, !tbaa !172, !alias.scope !348
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.en, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, %bb.aj, %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit.i.i
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i:      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader
  %.054.i.i = phi ptr [ %i.ck, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.preheader ], [ %i.eo, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge ] ; 2 uses
  %i.eo = invoke noundef ptr @_ZN4Luau7CodeGen22tryGetNextBlockInChainERNS0_10IrFunctionERNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(928) %i.c, ptr noundef nonnull align 4 dereferenceable(36) %.054.i.i)
          to label %bb.ao unwind label %bb.aw     ; 3 uses

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i
  %.not62.i.i = icmp eq ptr %i.eo, null
  br i1 %.not62.i.i, label %bb.bd, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !348
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 36                ; 2 uses
  %i.eu = trunc i64 %i.et to i32                  ; 3 uses
  %i.ev = and i64 %i.et, 4294967295
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.040.0215, i64 %i.ev
  store i8 1, ptr %i.ew, align 1, !tbaa !52
  %i.ex = load i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, align 8, !tbaa !170, !range !122, !noalias !348, !noundef !123
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.ez = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348 ; 6 uses
  %i.fa = load i32, ptr %i.s, align 4, !tbaa !351, !noalias !348
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ar, label %._crit_edge.i81.i.i

._crit_edge.i81.i.i:                              ; preds = %bb.aq
  %.pre.i82.i.i = load ptr, ptr %1, align 8, !tbaa !352, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit91.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fc = add i32 %i.ez, 1
  %i.fd = lshr i32 %i.ez, 1
  %i.fe = add i32 %i.fd, %i.ez                    ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, %i.fc
  %i.fg = add i32 %i.ez, 5
  %.09.i.i83.i.i = select i1 %i.ff, i32 %i.fe, i32 %i.fg ; 2 uses
  %i.fh = zext i32 %.09.i.i83.i.i to i64
  %i.fi = shl nuw nsw i64 %i.fh, 2
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #27
          to label %.noexc90.i.i unwind label %.loopexit149.i.i ; 4 uses

.noexc90.i.i:                                     ; preds = %bb.ar
  %i.fk = load ptr, ptr %1, align 8, !tbaa !352, !noalias !348 ; 4 uses
  %i.fl = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348 ; 4 uses
  %i.fm = icmp ugt i32 %i.fl, 1
  br i1 %i.fm, label %bb.as, label %bb.at, !prof !171

bb.as:                                            ; preds = %.noexc90.i.i
  %i.fn = zext i32 %i.fl to i64
  %.idx.i.i89.i.i = shl nuw nsw i64 %i.fn, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fj, ptr align 4 %i.fk, i64 %.idx.i.i89.i.i, i1 false)
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i

bb.at:                                            ; preds = %.noexc90.i.i
  %i.fo = icmp eq i32 %i.fl, 1
  br i1 %i.fo, label %bb.au, label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i

bb.au:                                            ; preds = %bb.at
  %i.fp = load i32, ptr %i.fk, align 4, !tbaa !167
  store i32 %i.fp, ptr %i.fj, align 4, !tbaa !167
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i

_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i: ; preds = %bb.au, %bb.at, %bb.as
  %.not.i.i85.i.i = icmp eq ptr %i.fk, %i.t
  br i1 %.not.i.i85.i.i, label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i
  call void @_ZdlPv(ptr noundef %i.fk) #23
  %.pre2.pre.i86.i.i = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i

_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i: ; preds = %bb.av, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i
  %.pre2.i88.i.i = phi i32 [ %i.fl, %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit.i.i84.i.i ], [ %.pre2.pre.i86.i.i, %bb.av ]
  store ptr %i.fj, ptr %1, align 8, !tbaa !352, !noalias !348
  store i32 %.09.i.i83.i.i, ptr %i.s, align 4, !tbaa !351, !noalias !348
  br label %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit91.i.i

_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit91.i.i: ; preds = %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i, %._crit_edge.i81.i.i
  %i.fq = phi i32 [ %i.ez, %._crit_edge.i81.i.i ], [ %.pre2.i88.i.i, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i ]
  %i.fr = phi ptr [ %.pre.i82.i.i, %._crit_edge.i81.i.i ], [ %i.fj, %_ZN4Luau11SmallVectorIjLj8EE4growEj.exit.i87.i.i ]
  %i.fs = zext i32 %i.fq to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  store i32 %i.eu, ptr %i.ft, align 4, !tbaa !167
  %i.fu = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.r, align 8, !tbaa !350, !noalias !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit149.i.i:                                 ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i93.i.i, %bb.ar
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp.i.i:                           ; preds = %bb.ba
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ax:                                            ; preds = %bb.ap
  %i.fx = load ptr, ptr %i.u, align 8, !tbaa !172, !alias.scope !348 ; 4 uses
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  %.not.i92.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i92.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.eu, ptr %i.fx, align 4, !tbaa !167
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store ptr %i.fz, ptr %i.u, align 8, !tbaa !172, !alias.scope !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge

bb.az:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %2, align 8, !tbaa !151, !alias.scope !348 ; 4 uses
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 5 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775804
  br i1 %i.ge, label %bb.ba, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i93.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc99.i.i unwind label %.loopexit.split-lp.i.i

.noexc99.i.i:                                     ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i93.i.i: ; preds = %bb.az
  %i.gf = ashr exact i64 %i.gd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i94.i.i = call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i94.i.i, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = call i64 @llvm.umin.i64(i64 %i.gg, i64 2305843009213693951)
  %i.gj = select i1 %i.gh, i64 2305843009213693951, i64 %i.gi ; 3 uses
  %.not.i.i.i95.i.i = icmp ne i64 %i.gj, 0
  call void @llvm.assume(i1 %.not.i.i.i95.i.i)
  %i.gk = shl nuw nsw i64 %i.gj, 2
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #25
          to label %.noexc100.i.i unwind label %.loopexit149.i.i ; 4 uses

.noexc100.i.i:                                    ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i93.i.i
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %i.gd ; 2 uses
  store i32 %i.eu, ptr %i.gm, align 4, !tbaa !167
  %i.gn = icmp sgt i64 %i.gd, 0
  br i1 %i.gn, label %bb.bb, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i96.i.i

bb.bb:                                            ; preds = %.noexc100.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gl, ptr align 4 %i.ga, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i96.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i96.i.i: ; preds = %bb.bb, %.noexc100.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %.not.i17.i.i97.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i17.i.i97.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i98.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i96.i.i
  %i.gp = load ptr, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gr) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i98.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i98.i.i: ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i96.i.i
  store ptr %i.gl, ptr %2, align 8, !tbaa !151, !alias.scope !348
  store ptr %i.go, ptr %i.u, align 8, !tbaa !172, !alias.scope !348
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gj
  store ptr %i.gs, ptr %i.v, align 8, !tbaa !152, !alias.scope !348
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i.backedge: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i98.i.i, %bb.ay, %_ZN4Luau11SmallVectorIjLj8EE9push_backERKj.exit91.i.i
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.i.i

bb.bd:                                            ; preds = %bb.ao
  %i.gt = load i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, align 8, !tbaa !170, !range !122, !noalias !348, !noundef !123
  %i.gu = trunc nuw i8 %i.gt to i1
  %.promoted.i.i.pre197.i.i = load i32, ptr %i.r, align 8, !tbaa !350, !noalias !348 ; 5 uses
  br i1 %i.gu, label %bb.be, label %.thread123.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gv = load ptr, ptr %1, align 8, !tbaa !352, !noalias !348 ; 5 uses
  %i.gw = zext i32 %.promoted.i.i.pre197.i.i to i64 ; 2 uses
  %.idx142.i.i = shl nuw nsw i64 %i.gw, 2         ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx142.i.i ; 2 uses
  %i.gy = lshr i64 %i.gw, 2                       ; 2 uses
  %.not141.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not141.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.be
  %.val38.val.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !348 ; 4 uses
  %.val38.val40.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !348 ; 4 uses
  %i.gz = and i64 %.idx142.i.i, 17179869168
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.gv, i64 %i.gz
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit99.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0119.i.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i.i ], [ %i.ik, %.loopexit99.i.i.i.i.i.i ] ; 2 uses
  %.029118.i.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %i.ij, %.loopexit99.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load i32, ptr %.029118.i.i.i.i.i.i, align 4, !tbaa !167
  %i.ha = zext i32 %.029.val39.i.i.i.i.i.i to i64
  %i.hb = getelementptr inbounds nuw [36 x i8], ptr %.val38.val.i.i.i.i.i.i, i64 %i.ha ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %.val1.i.i.i.i.i.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !125 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hb, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.hd, align 4 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i = icmp ugt i32 %.val1.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %.loopexit105.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.he = add i32 %.092.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i32 %i.he, %.val2.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit105.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bf, %bb.bg
  %.092.i.i.i.i.i.i.i.i.i = phi i32 [ %i.he, %bb.bg ], [ %.val1.i.i.i.i.i.i.i.i, %bb.bf ] ; 2 uses
  %i.hf = zext i32 %.092.i.i.i.i.i.i.i.i.i to i64
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %.val38.val40.i.i.i.i.i.i, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !130
  %.not12.not.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.hh, -101
  br i1 %.not12.not.i.not.i.i.i.i.i.i.i.i, label %.loopexit145.i.i, label %bb.bg

.loopexit105.i.i.i.i.i.i:                         ; preds = %bb.bg, %bb.bf
  %i.hi = getelementptr inbounds nuw i8, ptr %.029118.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i = load i32, ptr %i.hi, align 4, !tbaa !167
  %i.hj = zext i32 %.val37.i.i.i.i.i.i to i64
  %i.hk = getelementptr inbounds nuw [36 x i8], ptr %.val38.val.i.i.i.i.i.i, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %.val1.i.i47.i.i.i.i.i.i = load i32, ptr %i.hl, align 4, !tbaa !125 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 8
  %.val2.i.i48.i.i.i.i.i.i = load i32, ptr %i.hm, align 4 ; 2 uses
  %.not1.i.i.i49.i.i.i.i.i.i = icmp ugt i32 %.val1.i.i47.i.i.i.i.i.i, %.val2.i.i48.i.i.i.i.i.i
  br i1 %.not1.i.i.i49.i.i.i.i.i.i, label %.loopexit103.i.i.i.i.i.i, label %.lr.ph.i.i.i50.i.i.i.i.i.i

bb.bh:                                            ; preds = %.lr.ph.i.i.i50.i.i.i.i.i.i
  %i.hn = add i32 %.092.i.i.i51.i.i.i.i.i.i, 1    ; 2 uses
  %.not.i.i.i53.i.i.i.i.i.i = icmp ugt i32 %i.hn, %.val2.i.i48.i.i.i.i.i.i
  br i1 %.not.i.i.i53.i.i.i.i.i.i, label %.loopexit103.i.i.i.i.i.i, label %.lr.ph.i.i.i50.i.i.i.i.i.i, !llvm.loop !345

.lr.ph.i.i.i50.i.i.i.i.i.i:                       ; preds = %.loopexit105.i.i.i.i.i.i, %bb.bh
  %.092.i.i.i51.i.i.i.i.i.i = phi i32 [ %i.hn, %bb.bh ], [ %.val1.i.i47.i.i.i.i.i.i, %.loopexit105.i.i.i.i.i.i ] ; 2 uses
  %i.ho = zext i32 %.092.i.i.i51.i.i.i.i.i.i to i64
  %i.hp = getelementptr inbounds nuw [64 x i8], ptr %.val38.val40.i.i.i.i.i.i, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !130
  %.not12.not.i.not.i.i52.i.i.i.i.i.i = icmp eq i8 %i.hq, -101
  br i1 %.not12.not.i.not.i.i52.i.i.i.i.i.i, label %.loopexit145.i.i.loopexit361, label %bb.bh

.loopexit103.i.i.i.i.i.i:                         ; preds = %bb.bh, %.loopexit105.i.i.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.029118.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i = load i32, ptr %i.hr, align 4, !tbaa !167
  %i.hs = zext i32 %.val35.i.i.i.i.i.i to i64
  %i.ht = getelementptr inbounds nuw [36 x i8], ptr %.val38.val.i.i.i.i.i.i, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %.val1.i.i55.i.i.i.i.i.i = load i32, ptr %i.hu, align 4, !tbaa !125 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 8
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj:bb.a
  %i.cdo = phi ptr [ %i.u, %.lr.ph5120 ], [ %i.cfa, %bb.abn ]
  %.021205119 = phi i64 [ 0, %.lr.ph5120 ], [ %i.cfc, %bb.abn ] ; 3 uses
  %i.cdp = getelementptr inbounds nuw [12 x i8], ptr %i.cdo, i64 %.021205119 ; 3 uses
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !442
  %i.cdr = zext i32 %i.cdq to i64
  %i.cds = load ptr, ptr %i.v, align 8, !tbaa !129
  %i.cdt = getelementptr inbounds nuw [64 x i8], ptr %i.cds, i64 %i.cdr ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 8 ; 4 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdt, i64 16 ; 2 uses
  %i.cdw = load i32, ptr %i.cdv, align 8, !tbaa !131
  %.not.i3468.not = icmp eq i32 %i.cdw, 0
  br i1 %.not.i3468.not, label %bb.abf, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3469, !prof !132

bb.abf:                                           ; preds = %bb.abe
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cdu, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3469

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3469:   ; preds = %bb.abe, %bb.abf
  %i.cdx = load ptr, ptr %i.cdu, align 8, !tbaa !133
  %i.cdy = load i32, ptr %i.x, align 8, !tbaa !131
  %.not.i3470.not = icmp eq i32 %i.cdy, 0
  br i1 %.not.i3470.not, label %bb.abg, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471, !prof !132

bb.abg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3469
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3469, %bb.abg
  %i.cdz = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.cea = load i32, ptr %i.cdx, align 4
  %i.ceb = load i32, ptr %i.cdz, align 4
  %i.cec = icmp eq i32 %i.cea, %i.ceb
  br i1 %i.cec, label %bb.abh, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471._crit_edge

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471._crit_edge: ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471
  %.pre5627 = load ptr, ptr %i.s, align 8, !tbaa !198
  %.pre5629 = load ptr, ptr %i.r, align 8, !tbaa !159
  br label %bb.abn

bb.abh:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471
  %i.ced = load i32, ptr %i.cdv, align 8, !tbaa !131
  %.not.i3472 = icmp ugt i32 %i.ced, 2
  br i1 %.not.i3472, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3473, label %bb.abi, !prof !171

bb.abi:                                           ; preds = %bb.abh
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cdu, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3473

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3473:   ; preds = %bb.abh, %bb.abi
  %i.cee = load ptr, ptr %i.cdu, align 8, !tbaa !133
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cee, i64 8
  %i.ceg = load i32, ptr %i.x, align 8, !tbaa !131
  %.not.i3474 = icmp ugt i32 %i.ceg, 2
  br i1 %.not.i3474, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475, label %bb.abj, !prof !171

bb.abj:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3473
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3473, %bb.abj
  %i.ceh = load ptr, ptr %i.w, align 8, !tbaa !133
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 8
  %i.cej = load i32, ptr %i.cef, align 4
  %i.cek = load i32, ptr %i.cei, align 4
  %i.cel = icmp eq i32 %i.cej, %i.cek
  %.pre5628 = load ptr, ptr %i.s, align 8, !tbaa !198 ; 2 uses
  %.pre5630 = load ptr, ptr %i.r, align 8, !tbaa !159 ; 2 uses
  br i1 %i.cel, label %bb.abk, label %bb.abn

bb.abk:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475
  %i.cem = load i32, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, align 8, !tbaa !176 ; 2 uses
  %i.cen = ptrtoint ptr %.pre5628 to i64
  %i.ceo = ptrtoint ptr %.pre5630 to i64
  %i.cep = sub i64 %i.cen, %i.ceo
  %i.ceq = sdiv exact i64 %i.cep, 12
  %i.cer = trunc i64 %i.ceq to i32
  %i.ces = icmp slt i32 %i.cem, %i.cer
  br i1 %i.ces, label %bb.abl, label %bb.abm

bb.abl:                                           ; preds = %bb.abk
  %i.cet = tail call noundef i32 @_ZN4Luau7CodeGen14ConstPropState21getMaxInternalOverlapERSt6vectorINS0_19NumberedInstructionESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %.021205119)
  %i.ceu = icmp sgt i32 %i.cet, %i.cem
  br i1 %i.ceu, label %.critedge2377, label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.cev = load i32, ptr %i.n, align 4, !tbaa !430
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cdp, i64 8
  store i32 %i.cev, ptr %i.cew, align 4, !tbaa !300
  %i.cex = load i32, ptr %i.cdp, align 4, !tbaa !442
  %i.cey = shl i32 %i.cex, 4
  %i.cez = or disjoint i32 %i.cey, 4
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 %i.cez)
  br label %.critedge2377

bb.abn:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471._crit_edge, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475
  %i.cfa = phi ptr [ %.pre5629, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471._crit_edge ], [ %.pre5630, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475 ] ; 2 uses
  %i.cfb = phi ptr [ %.pre5627, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3471._crit_edge ], [ %.pre5628, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3475 ]
  %i.cfc = add nuw i64 %.021205119, 1             ; 2 uses
  %i.cfd = ptrtoint ptr %i.cfb to i64
  %i.cfe = ptrtoint ptr %i.cfa to i64
  %i.cff = sub i64 %i.cfd, %i.cfe
  %i.cfg = sdiv exact i64 %i.cff, 12              ; 2 uses
  %i.cfh = icmp ult i64 %i.cfc, %i.cfg
  br i1 %i.cfh, label %bb.abe, label %.critedge2350.loopexit, !llvm.loop !429

.critedge2350.loopexit:                           ; preds = %bb.abn
  %i.cfi = trunc i64 %i.cfg to i32
  br label %.critedge2350

.critedge2350:                                    ; preds = %.preheader, %.critedge2350.loopexit
  %.pre-phi5649 = phi i32 [ %i.cfi, %.critedge2350.loopexit ], [ 0, %.preheader ]
  %i.cfj = load i32, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, align 8, !tbaa !176
  %i.cfk = icmp sgt i32 %i.cfj, %.pre-phi5649
  br i1 %i.cfk, label %bb.abo, label %.critedge2377

bb.abo:                                           ; preds = %.critedge2350
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  store i32 %5, ptr %38, align 4, !tbaa !442
  %i.cfl = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.cfm = load i32, ptr %i.n, align 4, !tbaa !430 ; 2 uses
  store i32 %i.cfm, ptr %i.cfl, align 4, !tbaa !301
  %i.cfn = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %i.cfm, ptr %i.cfn, align 4, !tbaa !300
  call void @_ZNSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %.critedge2377

bb.abp:                                           ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.abq:                                           ; preds = %bb.a, %bb.a
  %i.cfo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cfq = load i32, ptr %i.cfp, align 8, !tbaa !131
  %.not.i3476 = icmp ugt i32 %i.cfq, 1
  br i1 %.not.i3476, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3477, label %bb.abr, !prof !171

bb.abr:                                           ; preds = %bb.abq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cfo, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3477

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3477:   ; preds = %bb.abq, %bb.abr
  %i.cfr = load ptr, ptr %i.cfo, align 8, !tbaa !133
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 4
  %i.cft = load i32, ptr %i.cfs, align 4          ; 3 uses
  %i.cfu = and i32 %i.cft, 15
  %i.cfv = icmp eq i32 %i.cfu, 2
  %i.cfw = load i32, ptr %i.cfp, align 8, !tbaa !131
  %.not.i3478 = icmp ugt i32 %i.cfw, 1            ; 2 uses
  br i1 %i.cfv, label %bb.abs, label %bb.abu

bb.abs:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3477
  br i1 %.not.i3478, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479, label %bb.abt, !prof !171

bb.abt:                                           ; preds = %bb.abs
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cfo, i32 noundef 2)
  %.pre5401 = load ptr, ptr %i.cfo, align 8, !tbaa !133
  %.phi.trans.insert5402 = getelementptr inbounds nuw i8, ptr %.pre5401, i64 4
  %.sroa.0406.0.copyload.pre = load i32, ptr %.phi.trans.insert5402, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479

bb.abu:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3477
  br i1 %.not.i3478, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3481, label %bb.abv, !prof !171

bb.abv:                                           ; preds = %bb.abu
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cfo, i32 noundef 2)
  %.pre5398 = load ptr, ptr %i.cfo, align 8, !tbaa !133
  %.phi.trans.insert5399 = getelementptr inbounds nuw i8, ptr %.pre5398, i64 4
  %.sroa.0405.0.copyload.pre = load i32, ptr %.phi.trans.insert5399, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3481

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3481:   ; preds = %bb.abu, %bb.abv
  %.sroa.0405.0.copyload = phi i32 [ %i.cft, %bb.abu ], [ %.sroa.0405.0.copyload.pre, %bb.abv ]
  %i.cfx = tail call i32 @_ZN4Luau7CodeGen14ConstPropState11tryGetValueENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %.sroa.0405.0.copyload)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479:   ; preds = %bb.abt, %bb.abs, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3481
  %.sroa.0406.0 = phi i32 [ %i.cfx, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3481 ], [ %i.cft, %bb.abs ], [ %.sroa.0406.0.copyload.pre, %bb.abt ] ; 2 uses
  %i.cfy = and i32 %.sroa.0406.0, 15
  %.not.i3482 = icmp eq i32 %i.cfy, 2
  br i1 %.not.i3482, label %bb.abw, label %bb.acc

bb.abw:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479
  %i.cfz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cga = lshr i32 %.sroa.0406.0, 4
  %i.cgb = zext nneg i32 %i.cga to i64
  %i.cgc = load ptr, ptr %i.cfz, align 8, !tbaa !276
  %i.cgd = getelementptr inbounds nuw [16 x i8], ptr %i.cgc, i64 %i.cgb ; 2 uses
  %i.cge = load i8, ptr %i.cgd, align 8, !tbaa !279
  %.not5.i3487 = icmp eq i8 %i.cge, 3
  br i1 %.not5.i3487, label %bb.abx, label %bb.acc

bb.abx:                                           ; preds = %bb.abw
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cgd, i64 8
  %i.cgg = load double, ptr %i.cgf, align 8, !tbaa !296 ; 2 uses
  %i.cgh = fcmp oeq double %i.cgg, 0.000000e+00
  br i1 %i.cgh, label %bb.aby, label %bb.acb

bb.aby:                                           ; preds = %bb.abx
  %74 = bitcast double %i.cgg to i64
  %75 = icmp slt i64 %74, 0
  %i.cgi = load i8, ptr %4, align 8, !tbaa !130
  %i.cgj = icmp ne i8 %i.cgi, 36
  %i.cgk = xor i1 %75, %i.cgj
  br i1 %i.cgk, label %bb.abz, label %bb.acb

bb.abz:                                           ; preds = %bb.aby
  %i.cgl = load i32, ptr %i.cfp, align 8, !tbaa !131
  %.not.i3489.not = icmp eq i32 %i.cgl, 0
  br i1 %.not.i3489.not, label %bb.aca, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3490, !prof !132

bb.aca:                                           ; preds = %bb.abz
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cfo, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3490

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3490:   ; preds = %bb.abz, %bb.aca
  %i.cgm = load ptr, ptr %i.cfo, align 8, !tbaa !133
  %.sroa.0404.0.copyload = load i32, ptr %i.cgm, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 %.sroa.0404.0.copyload)
  br label %.critedge2377

bb.acb:                                           ; preds = %bb.aby, %bb.abx
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.acc:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3479, %bb.abw
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.acd:                                           ; preds = %bb.a
  %i.cgn = load i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, align 8, !tbaa !170, !range !122, !noundef !123
  %i.cgo = trunc nuw i8 %i.cgn to i1
  %i.cgp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 30 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.cgr = load i32, ptr %i.cgq, align 8, !tbaa !131
  %.not.i3491 = icmp ugt i32 %i.cgr, 1            ; 2 uses
  br i1 %i.cgo, label %bb.ace, label %bb.adb

bb.ace:                                           ; preds = %bb.acd
  br i1 %.not.i3491, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3492, label %bb.acf, !prof !171

bb.acf:                                           ; preds = %bb.ace
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3492

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3492:   ; preds = %bb.ace, %bb.acf
  %i.cgs = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgs, i64 4
  %i.cgu = load i32, ptr %i.cgt, align 4          ; 3 uses
  %i.cgv = and i32 %i.cgu, 15
  %i.cgw = icmp eq i32 %i.cgv, 2
  %i.cgx = load i32, ptr %i.cgq, align 8, !tbaa !131
  %.not.i3493 = icmp ugt i32 %i.cgx, 1            ; 2 uses
  br i1 %i.cgw, label %bb.acg, label %bb.aci

bb.acg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3492
  br i1 %.not.i3493, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3494, label %bb.ach, !prof !171

bb.ach:                                           ; preds = %bb.acg
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 2)
  %.pre5392 = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %.phi.trans.insert5393 = getelementptr inbounds nuw i8, ptr %.pre5392, i64 4
  %.sroa.0403.0.copyload.pre = load i32, ptr %.phi.trans.insert5393, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3494

bb.aci:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3492
  br i1 %.not.i3493, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3496, label %bb.acj, !prof !171

bb.acj:                                           ; preds = %bb.aci
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 2)
  %.pre5389 = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %.phi.trans.insert5390 = getelementptr inbounds nuw i8, ptr %.pre5389, i64 4
  %.sroa.0402.0.copyload.pre = load i32, ptr %.phi.trans.insert5390, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3496

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3496:   ; preds = %bb.aci, %bb.acj
  %.sroa.0402.0.copyload = phi i32 [ %i.cgu, %bb.aci ], [ %.sroa.0402.0.copyload.pre, %bb.acj ]
  %i.cgy = tail call i32 @_ZN4Luau7CodeGen14ConstPropState11tryGetValueENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %.sroa.0402.0.copyload)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3494

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3494:   ; preds = %bb.ach, %bb.acg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3496
  %.sroa.0403.0 = phi i32 [ %i.cgy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3496 ], [ %i.cgu, %bb.acg ], [ %.sroa.0403.0.copyload.pre, %bb.ach ] ; 2 uses
  %i.cgz = and i32 %.sroa.0403.0, 15
  %.not.i3497 = icmp eq i32 %i.cgz, 2
  br i1 %.not.i3497, label %bb.ack, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread

bb.ack:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3494
  %i.cha = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.chb = lshr i32 %.sroa.0403.0, 4
  %i.chc = zext nneg i32 %i.chb to i64
  %i.chd = load ptr, ptr %i.cha, align 8, !tbaa !276
  %i.che = getelementptr inbounds nuw [16 x i8], ptr %i.chd, i64 %i.chc ; 2 uses
  %i.chf = load i8, ptr %i.che, align 8, !tbaa !279
  %.not5.i3502 = icmp eq i8 %i.chf, 3
  br i1 %.not5.i3502, label %bb.acl, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread

bb.acl:                                           ; preds = %bb.ack
  %i.chg = getelementptr inbounds nuw i8, ptr %i.che, i64 8
  %i.chh = load double, ptr %i.chg, align 8, !tbaa !296 ; 3 uses
  %i.chi = fcmp oeq double %i.chh, 1.000000e+00
  br i1 %i.chi, label %bb.acm, label %bb.aco

bb.acm:                                           ; preds = %bb.acl
  %i.chj = load i32, ptr %i.cgq, align 8, !tbaa !131
  %.not.i3504.not = icmp eq i32 %i.chj, 0
  br i1 %.not.i3504.not, label %bb.acn, label %bb.ada, !prof !132

bb.acn:                                           ; preds = %bb.acm
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 1)
  br label %bb.ada

bb.aco:                                           ; preds = %bb.acl
  %i.chk = fcmp oeq double %i.chh, 2.000000e+00
  br i1 %i.chk, label %bb.acp, label %bb.acu

bb.acp:                                           ; preds = %bb.aco
  store i8 36, ptr %39, align 8, !tbaa !130
  %i.chl = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.chm = load i32, ptr %i.cgq, align 8, !tbaa !131
  %.not.i3506.not = icmp eq i32 %i.chm, 0
  br i1 %.not.i3506.not, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507.thread, !prof !132

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507.thread: ; preds = %bb.acp
  %i.chn = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %i.cho = load i32, ptr %i.chn, align 4, !tbaa !52 ; 2 uses
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507:   ; preds = %bb.acp
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 1)
  %.pre5395 = load i32, ptr %i.cgq, align 8, !tbaa !131
  %i.chp = icmp eq i32 %.pre5395, 0
  %i.chq = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !52 ; 3 uses
  br i1 %i.chp, label %bb.acq, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509, !prof !298

bb.acq:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cgp, i32 noundef 1)
  %.pre5396 = load ptr, ptr %i.cgp, align 8, !tbaa !133
  %.pre5397 = load i32, ptr %.pre5396, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507.thread, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507, %bb.acq
  %i.chs = phi i32 [ %i.chr, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507 ], [ %i.chr, %bb.acq ], [ %i.cho, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507.thread ]
  %i.cht = phi i32 [ %i.chr, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507 ], [ %.pre5397, %bb.acq ], [ %i.cho, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3507.thread ]
  %i.chu = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 6, ptr %i.chv, align 4, !tbaa !144
  %i.chw = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 4 uses
  store ptr %i.chw, ptr %i.chl, align 8, !tbaa !133
  store i32 %i.chs, ptr %i.chw, align 8, !tbaa !52
  %.sroa.55198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 28
  store i32 %i.cht, ptr %.sroa.55198.0..sroa_idx, align 4, !tbaa !52
  store i32 2, ptr %i.chu, align 8, !tbaa !131
  %i.chx = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i32 0, ptr %i.chx, align 8, !tbaa !145
  %i.chy = getelementptr inbounds nuw i8, ptr %39, i64 52
  store i16 0, ptr %i.chy, align 4, !tbaa !146
  %i.chz = getelementptr inbounds nuw i8, ptr %39, i64 54
  store i8 -128, ptr %i.chz, align 2, !tbaa !52
  %i.cia = getelementptr inbounds nuw i8, ptr %39, i64 55
  store i32 0, ptr %i.cia, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %5, ptr noundef nonnull align 8 %39)
          to label %bb.acr unwind label %bb.acs

bb.acr:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509
  %.promoted.i.i.i3515 = load i32, ptr %i.chu, align 8, !tbaa !131
  %.not1.i.i.i3516 = icmp eq i32 %.promoted.i.i.i3515, 0
  br i1 %.not1.i.i.i3516, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3518, label %.lr.ph.preheader.i.i.i3517

.lr.ph.preheader.i.i.i3517:                       ; preds = %bb.acr
  store i32 0, ptr %i.chu, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3518

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3518: ; preds = %.lr.ph.preheader.i.i.i3517, %bb.acr
  %i.cib = load ptr, ptr %i.chl, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3519 = icmp eq ptr %i.cib, %i.chw
  br i1 %.not.i.i3519, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread.sink.split

bb.acs:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3509
  %i.cic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i3521 = load i32, ptr %i.chu, align 8, !tbaa !131
  %.not1.i.i.i3522 = icmp eq i32 %.promoted.i.i.i3521, 0
  br i1 %.not1.i.i.i3522, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524, label %.lr.ph.preheader.i.i.i3523

.lr.ph.preheader.i.i.i3523:                       ; preds = %bb.acs
  store i32 0, ptr %i.chu, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524: ; preds = %.lr.ph.preheader.i.i.i3523, %bb.acs
  %i.cid = load ptr, ptr %i.chl, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3525 = icmp eq ptr %i.cid, %i.chw
  br i1 %.not.i.i3525, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660, label %bb.act

bb.act:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3524
  call void @_ZdlPv(ptr noundef %i.cid) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660

bb.acu:                                           ; preds = %bb.aco
  %i.cie = fcmp oeq double %i.chh, -1.000000e+00
  br i1 %i.cie, label %bb.acv, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3503.thread

bb.acv:                                           ; preds = %bb.acu
  store i8 45, ptr %40, align 8, !tbaa !130
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj:bb.a
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3679

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3679: ; preds = %.lr.ph.preheader.i.i.i3678, %bb.afo
  %i.col = load ptr, ptr %i.coa, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3680 = icmp eq ptr %i.col, %i.cog
  br i1 %.not.i.i3680, label %.critedge2377, label %bb.afp

bb.afp:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3679
  call void @_ZdlPv(ptr noundef %i.col) #23
  br label %.critedge2377

bb.afq:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3670
  %i.com = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i3682 = load i32, ptr %i.coe, align 8, !tbaa !131
  %.not1.i.i.i3683 = icmp eq i32 %.promoted.i.i.i3682, 0
  br i1 %.not1.i.i.i3683, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685, label %.lr.ph.preheader.i.i.i3684

.lr.ph.preheader.i.i.i3684:                       ; preds = %bb.afq
  store i32 0, ptr %i.coe, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685: ; preds = %.lr.ph.preheader.i.i.i3684, %bb.afq
  %i.con = load ptr, ptr %i.coa, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3686 = icmp eq ptr %i.con, %i.cog
  br i1 %.not.i.i3686, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660, label %bb.afr

bb.afr:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3685
  call void @_ZdlPv(ptr noundef %i.con) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660

bb.afs:                                           ; preds = %bb.afl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i32 0, ptr %i.i, align 4, !tbaa !167
  %i.coo = call double @frexp(double noundef %i.cnv, ptr noundef nonnull %i.i) #23
  %i.cop = fcmp oeq double %i.coo, 5.000000e-01
  %i.coq = load i32, ptr %i.i, align 4
  %i.cor = add i32 %i.coq, 1000
  %i.cos = icmp ult i32 %i.cor, 2001
  %or.cond35 = select i1 %i.cop, i1 %i.cos, i1 false
  br i1 %or.cond35, label %bb.aft, label %bb.afz

bb.aft:                                           ; preds = %bb.afs
  store i8 38, ptr %46, align 8, !tbaa !130
  %i.cot = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.cou = load i32, ptr %i.cla, align 8, !tbaa !131
  %.not.i3688.not = icmp eq i32 %i.cou, 0
  br i1 %.not.i3688.not, label %bb.afu, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3689, !prof !132

bb.afu:                                           ; preds = %bb.aft
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ckz, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3689

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3689:   ; preds = %bb.aft, %bb.afu
  %i.cov = load ptr, ptr %i.ckz, align 8, !tbaa !133
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !52
  %i.cox = fdiv double 1.000000e+00, %i.cnv
  %i.coy = tail call i32 @_ZN4Luau7CodeGen9IrBuilder11constDoubleEd(ptr noundef nonnull align 8 dereferenceable(1056) %1, double noundef %i.cox)
  %i.coz = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 6, ptr %i.cpa, align 4, !tbaa !144
  %i.cpb = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 4 uses
  store ptr %i.cpb, ptr %i.cot, align 8, !tbaa !133
  store i32 %i.cow, ptr %i.cpb, align 8, !tbaa !52
  %.sroa.55188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 28
  store i32 %i.coy, ptr %.sroa.55188.0..sroa_idx, align 4, !tbaa !52
  store i32 2, ptr %i.coz, align 8, !tbaa !131
  %i.cpc = getelementptr inbounds nuw i8, ptr %46, i64 48
  store i32 0, ptr %i.cpc, align 8, !tbaa !145
  %i.cpd = getelementptr inbounds nuw i8, ptr %46, i64 52
  store i16 0, ptr %i.cpd, align 4, !tbaa !146
  %i.cpe = getelementptr inbounds nuw i8, ptr %46, i64 54
  store i8 -128, ptr %i.cpe, align 2, !tbaa !52
  %i.cpf = getelementptr inbounds nuw i8, ptr %46, i64 55
  store i32 0, ptr %i.cpf, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %5, ptr noundef nonnull align 8 %46)
          to label %bb.afv unwind label %bb.afx

bb.afv:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3689
  %.promoted.i.i.i3695 = load i32, ptr %i.coz, align 8, !tbaa !131
  %.not1.i.i.i3696 = icmp eq i32 %.promoted.i.i.i3695, 0
  br i1 %.not1.i.i.i3696, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3698, label %.lr.ph.preheader.i.i.i3697

.lr.ph.preheader.i.i.i3697:                       ; preds = %bb.afv
  store i32 0, ptr %i.coz, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3698

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3698: ; preds = %.lr.ph.preheader.i.i.i3697, %bb.afv
  %i.cpg = load ptr, ptr %i.cot, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3699 = icmp eq ptr %i.cpg, %i.cpb
  br i1 %.not.i.i3699, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit3700, label %bb.afw

bb.afw:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3698
  call void @_ZdlPv(ptr noundef %i.cpg) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit3700

bb.afx:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3689
  %i.cph = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i3701 = load i32, ptr %i.coz, align 8, !tbaa !131
  %.not1.i.i.i3702 = icmp eq i32 %.promoted.i.i.i3701, 0
  br i1 %.not1.i.i.i3702, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3704, label %.lr.ph.preheader.i.i.i3703

.lr.ph.preheader.i.i.i3703:                       ; preds = %bb.afx
  store i32 0, ptr %i.coz, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3704

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3704: ; preds = %.lr.ph.preheader.i.i.i3703, %bb.afx
  %i.cpi = load ptr, ptr %i.cot, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3705 = icmp eq ptr %i.cpi, %i.cpb
  br i1 %.not.i.i3705, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit3706, label %bb.afy

bb.afy:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3704
  call void @_ZdlPv(ptr noundef %i.cpi) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit3706

_ZN4Luau7CodeGen6IrInstD2Ev.exit3706:             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3704, %bb.afy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660

bb.afz:                                           ; preds = %bb.afs
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit3700

_ZN4Luau7CodeGen6IrInstD2Ev.exit3700:             ; preds = %bb.afw, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3698, %bb.afz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %.critedge2377

bb.aga:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3657, %bb.afh
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.agb:                                           ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.agc:                                           ; preds = %bb.a, %bb.a
  %i.cpj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cpl = load i32, ptr %i.cpk, align 8, !tbaa !131
  %.not.i3707 = icmp ugt i32 %i.cpl, 1
  br i1 %.not.i3707, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3708, label %bb.agd, !prof !171

bb.agd:                                           ; preds = %bb.agc
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cpj, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3708

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3708:   ; preds = %bb.agc, %bb.agd
  %i.cpm = load ptr, ptr %i.cpj, align 8, !tbaa !133
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpm, i64 4
  %i.cpo = load i32, ptr %i.cpn, align 4          ; 3 uses
  %i.cpp = and i32 %i.cpo, 15
  %i.cpq = icmp eq i32 %i.cpp, 2
  %i.cpr = load i32, ptr %i.cpk, align 8, !tbaa !131
  %.not.i3709 = icmp ugt i32 %i.cpr, 1            ; 2 uses
  br i1 %i.cpq, label %bb.age, label %bb.agg

bb.age:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3708
  br i1 %.not.i3709, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710, label %bb.agf, !prof !171

bb.agf:                                           ; preds = %bb.age
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cpj, i32 noundef 2)
  %.pre5365 = load ptr, ptr %i.cpj, align 8, !tbaa !133
  %.phi.trans.insert5366 = getelementptr inbounds nuw i8, ptr %.pre5365, i64 4
  %.sroa.0375.0.copyload.pre = load i32, ptr %.phi.trans.insert5366, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710

bb.agg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3708
  br i1 %.not.i3709, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3712, label %bb.agh, !prof !171

bb.agh:                                           ; preds = %bb.agg
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cpj, i32 noundef 2)
  %.pre5362 = load ptr, ptr %i.cpj, align 8, !tbaa !133
  %.phi.trans.insert5363 = getelementptr inbounds nuw i8, ptr %.pre5362, i64 4
  %.sroa.0374.0.copyload.pre = load i32, ptr %.phi.trans.insert5363, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3712

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3712:   ; preds = %bb.agg, %bb.agh
  %.sroa.0374.0.copyload = phi i32 [ %i.cpo, %bb.agg ], [ %.sroa.0374.0.copyload.pre, %bb.agh ]
  %i.cps = tail call i32 @_ZN4Luau7CodeGen14ConstPropState11tryGetValueENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %.sroa.0374.0.copyload)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710:   ; preds = %bb.agf, %bb.age, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3712
  %.sroa.0375.0 = phi i32 [ %i.cps, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3712 ], [ %i.cpo, %bb.age ], [ %.sroa.0375.0.copyload.pre, %bb.agf ] ; 2 uses
  %i.cpt = and i32 %.sroa.0375.0, 15
  %.not.i3713 = icmp eq i32 %i.cpt, 2
  br i1 %.not.i3713, label %bb.agi, label %bb.ago

bb.agi:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710
  %i.cpu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cpv = lshr i32 %.sroa.0375.0, 4
  %i.cpw = zext nneg i32 %i.cpv to i64
  %i.cpx = load ptr, ptr %i.cpu, align 8, !tbaa !276
  %i.cpy = getelementptr inbounds nuw [16 x i8], ptr %i.cpx, i64 %i.cpw ; 2 uses
  %i.cpz = load i8, ptr %i.cpy, align 8, !tbaa !279
  %.not5.i3718 = icmp eq i8 %i.cpz, 3
  br i1 %.not5.i3718, label %bb.agj, label %bb.ago

bb.agj:                                           ; preds = %bb.agi
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpy, i64 8
  %i.cqb = load double, ptr %i.cqa, align 8, !tbaa !296 ; 2 uses
  %i.cqc = fptrunc double %i.cqb to float
  %i.cqd = fcmp oeq float %i.cqc, 0.000000e+00
  br i1 %i.cqd, label %bb.agk, label %bb.agn

bb.agk:                                           ; preds = %bb.agj
  %76 = bitcast double %i.cqb to i64
  %77 = icmp slt i64 %76, 0
  %i.cqe = load i8, ptr %4, align 8, !tbaa !130
  %i.cqf = icmp ne i8 %i.cqe, 52
  %i.cqg = xor i1 %77, %i.cqf
  br i1 %i.cqg, label %bb.agl, label %bb.agn

bb.agl:                                           ; preds = %bb.agk
  %i.cqh = load i32, ptr %i.cpk, align 8, !tbaa !131
  %.not.i3720.not = icmp eq i32 %i.cqh, 0
  br i1 %.not.i3720.not, label %bb.agm, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3721, !prof !132

bb.agm:                                           ; preds = %bb.agl
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cpj, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3721

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3721:   ; preds = %bb.agl, %bb.agm
  %i.cqi = load ptr, ptr %i.cpj, align 8, !tbaa !133
  %.sroa.0373.0.copyload = load i32, ptr %i.cqi, align 4, !tbaa !52
  tail call void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 %.sroa.0373.0.copyload)
  br label %.critedge2377

bb.agn:                                           ; preds = %bb.agk, %bb.agj
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.ago:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3710, %bb.agi
  tail call void @_ZN4Luau7CodeGen14ConstPropState18substituteOrRecordERNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(3704) %0, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef %5)
  br label %.critedge2377

bb.agp:                                           ; preds = %bb.a
  %i.cqj = load i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, align 8, !tbaa !170, !range !122, !noundef !123
  %i.cqk = trunc nuw i8 %i.cqj to i1
  %i.cql = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 30 uses
  %i.cqm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.cqn = load i32, ptr %i.cqm, align 8, !tbaa !131
  %.not.i3722 = icmp ugt i32 %i.cqn, 1            ; 2 uses
  br i1 %i.cqk, label %bb.agq, label %bb.ahn

bb.agq:                                           ; preds = %bb.agp
  br i1 %.not.i3722, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3723, label %bb.agr, !prof !171

bb.agr:                                           ; preds = %bb.agq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3723

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3723:   ; preds = %bb.agq, %bb.agr
  %i.cqo = load ptr, ptr %i.cql, align 8, !tbaa !133
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 4
  %i.cqq = load i32, ptr %i.cqp, align 4          ; 3 uses
  %i.cqr = and i32 %i.cqq, 15
  %i.cqs = icmp eq i32 %i.cqr, 2
  %i.cqt = load i32, ptr %i.cqm, align 8, !tbaa !131
  %.not.i3724 = icmp ugt i32 %i.cqt, 1            ; 2 uses
  br i1 %i.cqs, label %bb.ags, label %bb.agu

bb.ags:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3723
  br i1 %.not.i3724, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3725, label %bb.agt, !prof !171

bb.agt:                                           ; preds = %bb.ags
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 2)
  %.pre5356 = load ptr, ptr %i.cql, align 8, !tbaa !133
  %.phi.trans.insert5357 = getelementptr inbounds nuw i8, ptr %.pre5356, i64 4
  %.sroa.0372.0.copyload.pre = load i32, ptr %.phi.trans.insert5357, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3725

bb.agu:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3723
  br i1 %.not.i3724, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3727, label %bb.agv, !prof !171

bb.agv:                                           ; preds = %bb.agu
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 2)
  %.pre5353 = load ptr, ptr %i.cql, align 8, !tbaa !133
  %.phi.trans.insert5354 = getelementptr inbounds nuw i8, ptr %.pre5353, i64 4
  %.sroa.0371.0.copyload.pre = load i32, ptr %.phi.trans.insert5354, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3727

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3727:   ; preds = %bb.agu, %bb.agv
  %.sroa.0371.0.copyload = phi i32 [ %i.cqq, %bb.agu ], [ %.sroa.0371.0.copyload.pre, %bb.agv ]
  %i.cqu = tail call i32 @_ZN4Luau7CodeGen14ConstPropState11tryGetValueENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 %.sroa.0371.0.copyload)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3725

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3725:   ; preds = %bb.agt, %bb.ags, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3727
  %.sroa.0372.0 = phi i32 [ %i.cqu, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3727 ], [ %i.cqq, %bb.ags ], [ %.sroa.0372.0.copyload.pre, %bb.agt ] ; 2 uses
  %i.cqv = and i32 %.sroa.0372.0, 15
  %.not.i3728 = icmp eq i32 %i.cqv, 2
  br i1 %.not.i3728, label %bb.agw, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread

bb.agw:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3725
  %i.cqw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cqx = lshr i32 %.sroa.0372.0, 4
  %i.cqy = zext nneg i32 %i.cqx to i64
  %i.cqz = load ptr, ptr %i.cqw, align 8, !tbaa !276
  %i.cra = getelementptr inbounds nuw [16 x i8], ptr %i.cqz, i64 %i.cqy ; 2 uses
  %i.crb = load i8, ptr %i.cra, align 8, !tbaa !279
  %.not5.i3733 = icmp eq i8 %i.crb, 3
  br i1 %.not5.i3733, label %bb.agx, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread

bb.agx:                                           ; preds = %bb.agw
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cra, i64 8
  %i.crd = load double, ptr %i.crc, align 8, !tbaa !296
  %i.cre = fptrunc double %i.crd to float         ; 3 uses
  %i.crf = fcmp oeq float %i.cre, 1.000000e+00
  br i1 %i.crf, label %bb.agy, label %bb.aha

bb.agy:                                           ; preds = %bb.agx
  %i.crg = load i32, ptr %i.cqm, align 8, !tbaa !131
  %.not.i3735.not = icmp eq i32 %i.crg, 0
  br i1 %.not.i3735.not, label %bb.agz, label %bb.ahm, !prof !132

bb.agz:                                           ; preds = %bb.agy
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 1)
  br label %bb.ahm

bb.aha:                                           ; preds = %bb.agx
  %i.crh = fcmp oeq float %i.cre, 2.000000e+00
  br i1 %i.crh, label %bb.ahb, label %bb.ahg

bb.ahb:                                           ; preds = %bb.aha
  store i8 52, ptr %47, align 8, !tbaa !130
  %i.cri = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.crj = load i32, ptr %i.cqm, align 8, !tbaa !131
  %.not.i3737.not = icmp eq i32 %i.crj, 0
  br i1 %.not.i3737.not, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738.thread, !prof !132

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738.thread: ; preds = %bb.ahb
  %i.crk = load ptr, ptr %i.cql, align 8, !tbaa !133
  %i.crl = load i32, ptr %i.crk, align 4, !tbaa !52 ; 2 uses
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738:   ; preds = %bb.ahb
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 1)
  %.pre5359 = load i32, ptr %i.cqm, align 8, !tbaa !131
  %i.crm = icmp eq i32 %.pre5359, 0
  %i.crn = load ptr, ptr %i.cql, align 8, !tbaa !133
  %i.cro = load i32, ptr %i.crn, align 4, !tbaa !52 ; 3 uses
  br i1 %i.crm, label %bb.ahc, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740, !prof !298

bb.ahc:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cql, i32 noundef 1)
  %.pre5360 = load ptr, ptr %i.cql, align 8, !tbaa !133
  %.pre5361 = load i32, ptr %.pre5360, align 4, !tbaa !52
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738.thread, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738, %bb.ahc
  %i.crp = phi i32 [ %i.cro, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738 ], [ %i.cro, %bb.ahc ], [ %i.crl, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738.thread ]
  %i.crq = phi i32 [ %i.cro, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738 ], [ %.pre5361, %bb.ahc ], [ %i.crl, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3738.thread ]
  %i.crr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 6, ptr %i.crs, align 4, !tbaa !144
  %i.crt = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 4 uses
  store ptr %i.crt, ptr %i.cri, align 8, !tbaa !133
  store i32 %i.crp, ptr %i.crt, align 8, !tbaa !52
  %.sroa.55186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 28
  store i32 %i.crq, ptr %.sroa.55186.0..sroa_idx, align 4, !tbaa !52
  store i32 2, ptr %i.crr, align 8, !tbaa !131
  %i.cru = getelementptr inbounds nuw i8, ptr %47, i64 48
  store i32 0, ptr %i.cru, align 8, !tbaa !145
  %i.crv = getelementptr inbounds nuw i8, ptr %47, i64 52
  store i16 0, ptr %i.crv, align 4, !tbaa !146
  %i.crw = getelementptr inbounds nuw i8, ptr %47, i64 54
  store i8 -128, ptr %i.crw, align 2, !tbaa !52
  %i.crx = getelementptr inbounds nuw i8, ptr %47, i64 55
  store i32 0, ptr %i.crx, align 1
  invoke void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 noundef %5, ptr noundef nonnull align 8 %47)
          to label %bb.ahd unwind label %bb.ahe

bb.ahd:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740
  %.promoted.i.i.i3746 = load i32, ptr %i.crr, align 8, !tbaa !131
  %.not1.i.i.i3747 = icmp eq i32 %.promoted.i.i.i3746, 0
  br i1 %.not1.i.i.i3747, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3749, label %.lr.ph.preheader.i.i.i3748

.lr.ph.preheader.i.i.i3748:                       ; preds = %bb.ahd
  store i32 0, ptr %i.crr, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3749

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3749: ; preds = %.lr.ph.preheader.i.i.i3748, %bb.ahd
  %i.cry = load ptr, ptr %i.cri, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3750 = icmp eq ptr %i.cry, %i.crt
  br i1 %.not.i.i3750, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread.sink.split

bb.ahe:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit3740
  %i.crz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i3752 = load i32, ptr %i.crr, align 8, !tbaa !131
  %.not1.i.i.i3753 = icmp eq i32 %.promoted.i.i.i3752, 0
  br i1 %.not1.i.i.i3753, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755, label %.lr.ph.preheader.i.i.i3754

.lr.ph.preheader.i.i.i3754:                       ; preds = %bb.ahe
  store i32 0, ptr %i.crr, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755: ; preds = %.lr.ph.preheader.i.i.i3754, %bb.ahe
  %i.csa = load ptr, ptr %i.cri, align 8, !tbaa !133 ; 2 uses
  %.not.i.i3756 = icmp eq ptr %i.csa, %i.crt
  br i1 %.not.i.i3756, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660, label %bb.ahf

bb.ahf:                                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i3755
  call void @_ZdlPv(ptr noundef %i.csa) #23
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit2660

bb.ahg:                                           ; preds = %bb.aha
  %i.csb = fcmp oeq float %i.cre, -1.000000e+00
  br i1 %i.csb, label %bb.ahh, label %_ZN4Luau7CodeGen10IrFunction10asDoubleOpENS0_4IrOpE.exit3734.thread

bb.ahh:                                           ; preds = %bb.ahg
end_hunk_2
begin_hunk_3_@_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE6rehashEv:bb.a
  %i.dx = add nuw nsw i64 %.071.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %i.db
  br i1 %exitcond.not.i, label %.preheader64.i, label %bb.v, !llvm.loop !19

bb.x:                                             ; preds = %bb.y
  %i.dy = add nuw nsw i64 %.172.i, 1              ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.dy, %i.dq
  br i1 %exitcond100.not.i, label %_ZNK4Luau7CodeGen8IrInstEqclERKNS0_6IrInstES4_.exit, label %bb.y, !llvm.loop !20

bb.y:                                             ; preds = %bb.x, %.lr.ph73.i
  %.172.i = phi i64 [ %i.db, %.lr.ph73.i ], [ %i.dy, %bb.x ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.172.i
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 15
  %.not48.i = icmp eq i32 %i.eb, 0
  br i1 %.not48.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.y, %bb.r, %bb.u, %bb.p, %.lr.ph
  %i.ec = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEE13insert_unsafeERS6_(ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(59) %i.ck)
          to label %bb.z unwind label %bb.af      ; 7 uses

bb.z:                                             ; preds = %.loopexit
  %i.ed = load ptr, ptr %0, align 8, !tbaa !165
  %i.ee = getelementptr inbounds nuw [72 x i8], ptr %i.ed, i64 %.01144 ; 9 uses
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !130
  store i8 %i.ef, ptr %i.ec, align 8, !tbaa !130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i.i22, label %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 4 uses
  %.promoted.i.i.i.i23 = load i32, ptr %i.ei, align 8, !tbaa !131
  %.not1.i.i.i.i24 = icmp eq i32 %.promoted.i.i.i.i23, 0
  br i1 %.not1.i.i.i.i24, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i26, label %.lr.ph.preheader.i.i.i.i25

.lr.ph.preheader.i.i.i.i25:                       ; preds = %bb.aa
  store i32 0, ptr %i.ei, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i26

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i26: ; preds = %.lr.ph.preheader.i.i.i.i25, %bb.aa
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !133 ; 7 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.ej, %i.el
  br i1 %.not19.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i26
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 4 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !131 ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.eo, 2          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.ab
  %i.eq = load ptr, ptr %i.eg, align 8, !tbaa !133 ; 4 uses
  %i.er = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.es = lshr exact i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check116 = icmp ult i64 %i.er, 28
  %i.eu = ptrtoaddr ptr %i.eq to i64
  %i.ev = sub i64 %i.ek, %i.eu
  %diff.check114 = icmp ugt i64 %i.ev, -32
  %or.cond132 = select i1 %min.iters.check116, i1 true, i1 %diff.check114
  br i1 %or.cond132, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %n.vec118 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.ew = shl i64 %n.vec118, 2                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ej, i64 %i.ew
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body119 ] ; 2 uses
  %i.ez = shl i64 %index120, 2                    ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.eq, i64 %i.ez ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.ej, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load123 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !52
  %wide.load124 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !52
  %i.fb = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %wide.load123, ptr %next.gep121, align 4, !tbaa !52
  store <4 x i32> %wide.load124, ptr %i.fb, align 4, !tbaa !52
  %index.next125 = add nuw i64 %index120, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.fc, label %middle.block126, label %vector.body119, !llvm.loop !537

middle.block126:                                  ; preds = %vector.body119
  %cmp.n127 = icmp eq i64 %i.et, %n.vec118
  br i1 %cmp.n127, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %middle.block126
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ex, %middle.block126 ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.ey, %middle.block126 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fd = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !52
  store i32 %i.fd, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !52
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fe, %i.ep
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !538

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block126
  %.pre21.i.i.i = load i32, ptr %i.em, align 8, !tbaa !131
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, %bb.ab
  %i.fg = phi i32 [ %.pre21.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i ], [ 0, %bb.ab ]
  store i32 %i.fg, ptr %i.ei, align 8, !tbaa !131
  %.promoted.i15.i.i.i = load i32, ptr %i.em, align 8, !tbaa !131
  %.not1.i16.i.i.i = icmp eq i32 %.promoted.i15.i.i.i, 0
  br i1 %.not1.i16.i.i.i, label %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit, label %.lr.ph.preheader.i17.i.i.i

.lr.ph.preheader.i17.i.i.i:                       ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store i32 0, ptr %i.em, align 8, !tbaa !131
  br label %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit

bb.ac:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i26
  %i.fh = load ptr, ptr %i.eg, align 8, !tbaa !133 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.not20.i.i.i = icmp eq ptr %i.fh, %i.fi
  br i1 %.not20.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.fh) #23
  %.pre.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !133
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fj = phi ptr [ %.pre.i.i.i, %bb.ad ], [ %i.ej, %bb.ac ]
  store ptr %i.fj, ptr %i.eg, align 8, !tbaa !133
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.fm = load <2 x i32>, ptr %i.fl, align 8, !tbaa !167
  store <2 x i32> %i.fm, ptr %i.ei, align 8, !tbaa !167
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !133
  store i32 6, ptr %i.fk, align 4, !tbaa !144
  store i32 0, ptr %i.fl, align 8, !tbaa !131
  br label %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit

_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit:  ; preds = %bb.z, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, %.lr.ph.preheader.i17.i.i.i, %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fn, ptr noundef nonnull align 8 dereferenceable(11) %i.fo, i64 11, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !167
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !542
  %.pre52 = load i64, ptr %i.a, align 8, !tbaa !166
  br label %_ZNK4Luau7CodeGen8IrInstEqclERKNS0_6IrInstES4_.exit

bb.af:                                            ; preds = %.loopexit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume

_ZNK4Luau7CodeGen8IrInstEqclERKNS0_6IrInstES4_.exit: ; preds = %bb.x, %bb.t, %bb.o, %.preheader.i, %.preheader64.i, %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit
  %i.ft = phi i64 [ %i.ci, %bb.t ], [ %i.ci, %bb.o ], [ %.pre52, %_ZNSt4pairIN4Luau7CodeGen6IrInstEjEaSEOS3_.exit ], [ %i.ci, %.preheader.i ], [ %i.ci, %.preheader64.i ], [ %i.ci, %bb.x ] ; 3 uses
  %i.fu = add nuw i64 %.01144, 1                  ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  br i1 %i.fv, label %.lr.ph, label %._crit_edge, !llvm.loop !539
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !131  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !131  ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !133    ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !133    ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !171

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 1
  br i1 %i.j, label %bb.f, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.f, align 4, !tbaa !52
  store i32 %i.k, ptr %i.g, align 4, !tbaa !52
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load i32, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !131
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !131
  %i.q = load i32, ptr %i.b, align 8, !tbaa !131
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !543

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !171

bb.h:                                             ; preds = %bb.g
  %i.t = zext i32 %i.e to i64
  %.idx16 = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx16, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %bb.j, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.f, align 4, !tbaa !52
  store i32 %i.v, ptr %i.g, align 4, !tbaa !52
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15: ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !131  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !144  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !133   ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 2            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ah to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 4, !tbaa !52
  %wide.load28 = load <4 x i32>, ptr %i.av, align 4, !tbaa !52
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %wide.load28, ptr %i.aw, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !544

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !52
  store i32 %i.ay, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !545

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !133
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !144
  %.pre = load i32, ptr %i.b, align 8, !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !133   ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %.not9.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bk ; 3 uses
  %i.bn = shl nuw nsw i64 %i.bg, 2
  %i.bo = shl nuw nsw i64 %i.bk, 2
  %i.bp = add nsw i64 %i.bn, -4
  %i.bq = sub nsw i64 %i.bp, %i.bo                ; 2 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bq, 44
  %i.bt = sub i64 %i.bi, %i.bj
  %diff.check31 = icmp ugt i64 %i.bt, -32
  %or.cond47 = select i1 %min.iters.check33, i1 true, i1 %diff.check31
  br i1 %or.cond47, label %.lr.ph.i.i.i.preheader48, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec35 = and i64 %i.bs, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec35, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bm, i64 %i.bu
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.bx = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !52
  %wide.load41 = load <4 x i32>, ptr %i.by, align 4, !tbaa !52
  %i.bz = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !52
  store <4 x i32> %wide.load41, ptr %i.bz, align 4, !tbaa !52
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.ca, label %middle.block43, label %vector.body36, !llvm.loop !546

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %i.bs, %n.vec35
  br i1 %cmp.n44, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block43
  %.011.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.bv, %middle.block43 ]
  %.0810.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.bw, %middle.block43 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %i.cb = load i32, ptr %.0810.i.i.i, align 4, !tbaa !52
  store i32 %i.cb, ptr %.011.i.i.i, align 4, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cc, %i.bh
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !547

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block43
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !131
  br label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit
  %i.ce = phi i32 [ %.pre18, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.bd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit ]
  store i32 %i.ce, ptr %i.d, align 8, !tbaa !131
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(27) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !271  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !52    ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm:bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #24
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !604, !alias.scope !603, !noalias !602
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !604, !alias.scope !602, !noalias !603
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45, !alias.scope !603, !noalias !602
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !45, !alias.scope !602, !noalias !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !603, !noalias !602
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !600

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !601
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !601
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_OptimizeConstProp.cpp() #18 section ".text.startup" {
bb.a:
  store i32 3, ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, i64 4), align 4, !tbaa !607
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, i64 8), align 8, !tbaa !608
  %i.a = load ptr, ptr @_ZN4Luau6FValueIiE4listE, align 8, !tbaa !609
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, i64 16), align 8, !tbaa !610
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, i64 24), align 8, !tbaa !611
  store i32 64, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, i64 4), align 4, !tbaa !607
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, i64 8), align 8, !tbaa !608
  store ptr @_ZN4FInt29LuauCodeGenMinLinearBlockPathE, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, i64 16), align 8, !tbaa !610
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, i64 24), align 8, !tbaa !611
  store i32 64, ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, i64 4), align 4, !tbaa !607
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, i64 8), align 8, !tbaa !608
  store ptr @_ZN4FInt25LuauCodeGenReuseSlotLimitE, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, i64 16), align 8, !tbaa !610
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, i64 24), align 8, !tbaa !611
  store i32 8, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, align 8, !tbaa !176
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, i64 4), align 4, !tbaa !607
  store ptr @.str.6, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, i64 8), align 8, !tbaa !608
  store ptr @_ZN4FInt29LuauCodeGenReuseUdataTagLimitE, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, i64 16), align 8, !tbaa !610
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, i64 24), align 8, !tbaa !611
  store ptr @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, ptr @_ZN4Luau6FValueIiE4listE, align 8, !tbaa !609
  store i8 0, ptr @_ZN5FFlag23DebugLuauAbortingChecksE, align 8, !tbaa !170
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23DebugLuauAbortingChecksE, i64 1), align 1, !tbaa !612
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23DebugLuauAbortingChecksE, i64 8), align 8, !tbaa !613
  %i.b = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !614
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23DebugLuauAbortingChecksE, i64 16), align 8, !tbaa !615
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23DebugLuauAbortingChecksE, i64 24), align 8, !tbaa !616
  store i8 0, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, align 8, !tbaa !170
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, i64 1), align 1, !tbaa !612
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, i64 8), align 8, !tbaa !613
  store ptr @_ZN5FFlag23DebugLuauAbortingChecksE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, i64 16), align 8, !tbaa !615
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, i64 24), align 8, !tbaa !616
  store ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !614
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.01115.i.i = phi ptr [ %.011.i.i, %bb.c ], [ @_ZN5FFlag23LuauCodegenLinearNoCallE, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !613
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @.str.10) #29
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 24
  store i32 2, ptr %i.g, align 8, !tbaa !616
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 16
  %.011.i.i = load ptr, ptr %i.h, align 8, !tbaa !614 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %.lr.ph19.i.i, label %.lr.ph.i.i, !llvm.loop !605

.lr.ph19.i.i:                                     ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ @_ZN4FInt29LuauCodeGenLiveSlotReuseLimitE, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(24) @.str.10) #29
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 24
  store i32 2, ptr %i.m, align 8, !tbaa !611
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.n, align 8, !tbaa !609 ; 2 uses
  %.not12.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not12.i.i, label %__cxx_global_var_init.11.exit, label %.lr.ph19.i.i, !llvm.loop !606

__cxx_global_var_init.11.exit:                    ; preds = %bb.e
  store i8 0, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, align 8, !tbaa !170
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, i64 1), align 1, !tbaa !612
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, i64 8), align 8, !tbaa !613
  store ptr @_ZN5FFlag23LuauCodegenLinearNoCallE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, i64 16), align 8, !tbaa !615
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, i64 24), align 8, !tbaa !616
  store i8 0, ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, align 8, !tbaa !170
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, i64 1), align 1, !tbaa !612
  store ptr @.str.15, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, i64 8), align 8, !tbaa !613
  store ptr @_ZN5FFlag33LuauCodegenSubstituteReplacementsE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, i64 16), align 8, !tbaa !615
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, i64 24), align 8, !tbaa !616
  store i8 0, ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, align 8, !tbaa !170
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, i64 1), align 1, !tbaa !612
  store ptr @.str.17, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, i64 8), align 8, !tbaa !613
  store ptr @_ZN5FFlag32LuauCodegenConstVectorBufferReadE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, i64 16), align 8, !tbaa !615
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, i64 24), align 8, !tbaa !616
  store ptr @_ZN5FFlag28LuauCodegenOriginVerifyMatchE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !614
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}
!llvm.errno.tbaa = !{!32}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = distinct !{!13, !46}
!14 = distinct !{!14, !46}
!15 = distinct !{!15, !46}
!16 = distinct !{!16, !46}
!17 = distinct !{!17, !46}
!18 = distinct !{!18, !46}
!19 = distinct !{!19, !46}
!20 = distinct !{!20, !46}
!21 = distinct !{!21, !46}
!22 = distinct !{!22, !46}
!23 = distinct !{!23, !46}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!"omnipotent char", !28, i64 0}
!30 = !{!"int", !29, i64 0}
!31 = !{!"__libc_errno", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !33, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !33, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!39, !38, i64 8}
!41 = !{!39, !38, i64 0}
!42 = !{!"p1 omnipotent char", !33, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 16}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"_ZTSN4Luau7CodeGen11IrBlockKindE", !29, i64 0}
!48 = !{!"short", !29, i64 0}
!49 = !{!"_ZTSN4Luau7CodeGen5LabelE", !30, i64 0, !30, i64 4}
!50 = !{!"_ZTSN4Luau7CodeGen7IrBlockE", !47, i64 0, !29, i64 1, !48, i64 2, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !49, i64 28}
!51 = !{!50, !47, i64 0}
!52 = !{!29, !29, i64 0}
!53 = !{!"p1 _ZTSN4Luau7CodeGen9IrBuilderE", !33, i64 0}
!54 = !{!"p1 _ZTSN4Luau7CodeGen10IrFunctionE", !33, i64 0}
!55 = !{!"_ZTSSt5arrayIN4Luau7CodeGen12RegisterInfoELm256EE", !29, i64 0}
!56 = !{!"bool", !29, i64 0}
!57 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen12RegisterLinkEE", !33, i64 0}
!58 = !{!"long", !29, i64 0}
!59 = !{!"_ZTSSt4hashIjE"}
!60 = !{!"_ZTSSt8equal_toIjE"}
!61 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen12RegisterLinkEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !57, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!62 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen12RegisterLinkESt4hashIjESt8equal_toIjEEE", !61, i64 0}
!63 = !{!"p1 _ZTSSt4pairIjhE", !33, i64 0}
!64 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjhES2_IKjhENS0_16ItemInterfaceMapIjhEESt4hashIjESt8equal_toIjEEE", !63, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!65 = !{!"_ZTSN4Luau12DenseHashMapIjhSt4hashIjESt8equal_toIjEEE", !64, i64 0}
!66 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen4IrOpEE", !33, i64 0}
!67 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen4IrOpEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !66, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!68 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen4IrOpESt4hashIjESt8equal_toIjEEE", !67, i64 0}
!69 = !{!"p1 _ZTSSt4pairIN4Luau7CodeGen6IrInstEjE", !33, i64 0}
!70 = !{!"_ZTSN4Luau7CodeGen5IrCmdE", !29, i64 0}
!71 = !{!"p1 _ZTSN4Luau7CodeGen4IrOpE", !33, i64 0}
!72 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEE", !71, i64 0, !30, i64 8, !30, i64 12, !29, i64 16}
!73 = !{!"_ZTSN4Luau7CodeGen3X647SizeX64E", !29, i64 0}
!74 = !{!"_ZTSN4Luau7CodeGen3X6411RegisterX64E", !73, i64 0, !29, i64 0}
!75 = !{!"_ZTSN4Luau7CodeGen3A647KindA64E", !29, i64 0}
!76 = !{!"_ZTSN4Luau7CodeGen3A6411RegisterA64E", !75, i64 0, !29, i64 0}
!77 = !{!"_ZTSN4Luau7CodeGen6IrInstE", !70, i64 0, !72, i64 8, !30, i64 48, !48, i64 52, !74, i64 54, !76, i64 55, !56, i64 56, !56, i64 57, !56, i64 58}
!78 = !{!"_ZTSN4Luau7CodeGen10IrInstHashE"}
!79 = !{!"_ZTSN4Luau7CodeGen8IrInstEqE"}
!80 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7CodeGen6IrInstESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_10IrInstHashENS2_8IrInstEqEEE", !69, i64 0, !58, i64 8, !58, i64 16, !77, i64 24, !78, i64 88, !79, i64 89}
!81 = !{!"_ZTSN4Luau12DenseHashMapINS_7CodeGen6IrInstEjNS1_10IrInstHashENS1_8IrInstEqEEE", !80, i64 0}
!82 = !{!"p1 _ZTSSt4pairIhjE", !33, i64 0}
!83 = !{!"_ZTSSt4hashIhE"}
!84 = !{!"_ZTSSt8equal_toIhE"}
!85 = !{!"_ZTSN4Luau6detail14DenseHashTableIhSt4pairIhjES2_IKhjENS0_16ItemInterfaceMapIhjEESt4hashIhESt8equal_toIhEEE", !82, i64 0, !58, i64 8, !58, i64 16, !29, i64 24, !83, i64 25, !84, i64 26}
!86 = !{!"_ZTSN4Luau12DenseHashMapIhjSt4hashIhESt8equal_toIhEEE", !85, i64 0}
!87 = !{!"p1 _ZTSSt4pairIjjE", !33, i64 0}
!88 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEE", !87, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!89 = !{!"_ZTSN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEE", !88, i64 0}
!90 = !{!"p1 _ZTSN4Luau7CodeGen15ArrayValueEntryE", !33, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIN4Luau7CodeGen15ArrayValueEntryESaIS2_EE", !93, i64 0}
!95 = !{!"p1 int", !33, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIjSaIjEE", !98, i64 0}
!100 = !{!"p1 _ZTSN4Luau7CodeGen19NumberedInstructionE", !33, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19NumberedInstructionESaIS2_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19NumberedInstructionESaIS2_EE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen19NumberedInstructionESaIS2_EE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorIN4Luau7CodeGen19NumberedInstructionESaIS2_EE", !103, i64 0}
!105 = !{!"p1 _ZTSN4Luau7CodeGen13NodeSlotStateE", !33, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13NodeSlotStateESaIS2_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13NodeSlotStateESaIS2_EE12_Vector_implE", !106, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13NodeSlotStateESaIS2_EE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13NodeSlotStateESaIS2_EE", !108, i64 0}
!110 = !{!"p1 _ZTSN4Luau7CodeGen19BufferLoadStoreInfoE", !33, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE12_Vector_implE", !111, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN4Luau7CodeGen19BufferLoadStoreInfoESaIS2_EE", !113, i64 0}
!115 = !{!"_ZTSN4Luau6detail14DenseHashTableIjjjNS0_16ItemInterfaceSetIjEESt4hashIjESt8equal_toIjEEE", !95, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!116 = !{!"_ZTSN4Luau12DenseHashSetIjSt4hashIjESt8equal_toIjEEE", !115, i64 0}
!117 = !{!"p1 _ZTSSt4pairIjiE", !33, i64 0}
!118 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEEE", !117, i64 0, !58, i64 8, !58, i64 16, !30, i64 24, !59, i64 28, !60, i64 29}
!119 = !{!"_ZTSN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEE", !118, i64 0}
!120 = !{!"_ZTSN4Luau7CodeGen14ConstPropStateE", !53, i64 0, !54, i64 8, !55, i64 16, !30, i64 3088, !30, i64 3092, !56, i64 3096, !56, i64 3097, !62, i64 3104, !65, i64 3136, !68, i64 3168, !81, i64 3200, !86, i64 3296, !89, i64 3328, !94, i64 3360, !99, i64 3384, !104, i64 3408, !109, i64 3432, !99, i64 3456, !99, i64 3480, !99, i64 3504, !99, i64 3528, !114, i64 3552, !30, i64 3576, !116, i64 3584, !116, i64 3616, !119, i64 3648, !99, i64 3680}
!121 = !{!120, !56, i64 3096}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !{!50, !29, i64 1}
!125 = !{!50, !30, i64 4}
!126 = !{!50, !30, i64 8}
!127 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !33, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!128, !127, i64 0}
!130 = !{!77, !70, i64 0}
!131 = !{!72, !30, i64 8}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !{!72, !71, i64 0}
!134 = !{!50, !48, i64 2}
!135 = !{!50, !30, i64 20}
!136 = !{!120, !30, i64 3088}
!137 = !{!43, !42, i64 8}
!138 = !{!53, !53, i64 0}
!139 = !{!"_ZTSN4Luau7CodeGen8IrOpKindE", !29, i64 0}
!140 = !{!"_ZTSN4Luau7CodeGen4IrOpE", !139, i64 0, !30, i64 0}
!141 = !{!"_ZTSN4Luau7CodeGen12RegisterInfoE", !29, i64 0, !140, i64 4, !30, i64 8}
!142 = !{!141, !29, i64 0}
!143 = !{!141, !30, i64 8}
!144 = !{!72, !30, i64 12}
!145 = !{!77, !30, i64 48}
!146 = !{!77, !48, i64 52}
!147 = !{!120, !30, i64 3576}
!148 = !{!67, !66, i64 0}
!149 = !{!64, !63, i64 0}
!150 = !{!61, !57, i64 0}
!151 = !{!96, !95, i64 0}
!152 = !{!96, !95, i64 16}
!153 = !{!118, !117, i64 0}
!154 = !{!115, !95, i64 0}
!155 = !{!111, !110, i64 0}
!156 = !{!111, !110, i64 16}
!157 = !{!106, !105, i64 0}
!158 = !{!106, !105, i64 16}
!159 = !{!101, !100, i64 0}
!160 = !{!101, !100, i64 16}
!161 = !{!91, !90, i64 0}
!162 = !{!91, !90, i64 16}
end_hunk_4
