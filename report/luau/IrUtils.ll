Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrUtils?download=true
inline.NumInlined: 1158
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_7IrBlockEjNS0_6IrInstE:bb.a
  %i.ar = zext i32 %i.aq to i64
  %.idx73 = shl nuw nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx73
  %.not4364 = icmp eq i32 %i.aq, 0
  br i1 %.not4364, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.i, %.lr.ph67
  %.04265 = phi ptr [ %i.at, %.lr.ph67 ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.08.0.copyload = load i32, ptr %.04265, align 4, !tbaa !40
  tail call void @_ZN4Luau7CodeGen9removeUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.08.0.copyload)
  %i.at = getelementptr inbounds nuw i8, ptr %.04265, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %i.at, %i.as
  br i1 %.not43, label %.loopexit, label %.lr.ph67

bb.j:                                             ; preds = %_ZN4Luau7CodeGen4killERNS0_10IrFunctionEjj.exit
  store i32 %2, ptr %i.ac, align 4, !tbaa !35
  %.pre = load i8, ptr %i.d, align 8, !tbaa !36
  br label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47: ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %bb.j
  %i.au = phi i8 [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge ], [ %i.l, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit ], [ %.pre, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 %i.au, ptr %4, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 6, ptr %i.ay, align 4, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.az, ptr %i.av, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !39 ; 4 uses
  %i.bc = icmp ugt i32 %i.bb, 6
  br i1 %i.bc, label %bb.k, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.k:                                             ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47
  %i.bd = icmp ult i32 %i.bb, 9
  %i.be = add i32 %i.bb, 4
  %.09.i.i.i = select i1 %i.bd, i32 9, i32 %i.be  ; 2 uses
  %i.bf = zext i32 %.09.i.i.i to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19
          to label %.noexc.i unwind label %bb.m   ; 5 uses

.noexc.i:                                         ; preds = %bb.k
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !38 ; 6 uses
  %i.bj = load i32, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bk, 2          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.bm = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bn = lshr exact i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !40
  %wide.load85 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !40
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !40
  store <4 x i32> %wide.load85, ptr %i.bu, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader103

.lr.ph.i.i.i.i.i.i.i.preheader103:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader103, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader103 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader103 ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !40
  store i32 %i.bw, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !71

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.bi, %i.az
  br i1 %.not.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #18
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.bh, ptr %i.av, align 8, !tbaa !38
  store i32 %.09.i.i.i, ptr %i.ay, align 4, !tbaa !42
  %.pre.i59 = load i32, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47
  %i.bz = phi ptr [ %i.bh, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.az, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47 ] ; 4 uses
  %.pre6.i = phi i32 [ %.pre.i59, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.bb, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit47 ] ; 3 uses
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 5 uses
  %i.cb = zext i32 %.pre6.i to i64
  %.idx.i = shl nuw nsw i64 %i.cb, 2              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i
  %.not9.i.i.i.i = icmp eq i32 %.pre6.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.cd = ptrtoaddr ptr %i.ca to i64
  %i.ce = ptrtoaddr ptr %i.bz to i64
  %i.cf = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.cg = lshr exact i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.cf, 44
  %i.ci = sub i64 %i.cd, %i.ce
  %diff.check = icmp ugt i64 %i.ci, -32
  %or.cond = select i1 %min.iters.check88, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader102, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec90 = and i64 %i.ch, 9223372036854775800   ; 3 uses
  %i.cj = shl i64 %n.vec90, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bz, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.cj
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next97, %vector.body91 ] ; 2 uses
  %i.cm = shl i64 %index92, 2                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.ca, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load95 = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !40
  %wide.load96 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !40
  %i.co = getelementptr i8, ptr %next.gep93, i64 16
  store <4 x i32> %wide.load95, ptr %next.gep93, align 4, !tbaa !40
  store <4 x i32> %wide.load96, ptr %i.co, align 4, !tbaa !40
  %index.next97 = add nuw i64 %index92, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next97, %n.vec90
  br i1 %i.cp, label %middle.block98, label %vector.body91, !llvm.loop !72

middle.block98:                                   ; preds = %vector.body91
  %cmp.n99 = icmp eq i64 %i.ch, %n.vec90
  br i1 %cmp.n99, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader102

.lr.ph.i.i.i.i.preheader102:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block98
  %.011.i.i.i.i.ph = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block98 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %middle.block98 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader102, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader102 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader102 ] ; 2 uses
  %i.cq = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !40
  store i32 %i.cq, ptr %.011.i.i.i.i, align 4, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cr, %i.cc
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !73

bb.m:                                             ; preds = %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i54 = load i32, ptr %i.ax, align 8, !tbaa !39
  %.not1.i.i.i55 = icmp eq i32 %.promoted.i.i.i54, 0
  br i1 %.not1.i.i.i55, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57, label %.lr.ph.preheader.i.i.i56

.lr.ph.preheader.i.i.i56:                         ; preds = %bb.m
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57: ; preds = %.lr.ph.preheader.i.i.i56, %bb.m
  %i.cu = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cu, %i.az
  br i1 %.not.i.i58, label %common.resume, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57
  call void @_ZdlPv(ptr noundef %i.cu) #18
  br label %common.resume

common.resume:                                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57, %bb.n, %_ZN4Luau7CodeGen6IrInstD2Ev.exit53
  %common.resume.op = phi { ptr, i32 } [ %5, %_ZN4Luau7CodeGen6IrInstD2Ev.exit53 ], [ %i.ct, %bb.n ], [ %i.ct, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i57 ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block98, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  store i32 %.pre6.i, ptr %i.ax, align 8, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cv, ptr noundef nonnull align 8 dereferenceable(11) %i.cw, i64 11, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i16 %i.cy, ptr %i.cz, align 4, !tbaa !25
  %i.da = load i8, ptr %3, align 8, !tbaa !36
  store i8 %i.da, ptr %i.d, align 8, !tbaa !36
  %i.db = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cw, ptr noundef nonnull align 8 dereferenceable(11) %i.dc, i64 11, i1 false)
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.de = load i32, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %.idx74 = shl nuw nsw i64 %i.df, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx74
  %.not4468 = icmp eq i32 %i.de, 0
  br i1 %.not4468, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph71

._crit_edge72:                                    ; preds = %.lr.ph71
  %.promoted.i.i.i.pre = load i32, ptr %i.ax, align 8, !tbaa !39
  %i.dh = icmp eq i32 %.promoted.i.i.i.pre, 0
  br i1 %i.dh, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge72
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %bb.o, %.lr.ph.preheader.i.i.i, %._crit_edge72
  %i.di = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, %i.az
  br i1 %.not.i.i, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.di) #18
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit

bb.q:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit
  %5 = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i48.a = load i32, ptr %i.ax, align 8, !tbaa !39
  %.not1.i.i.i49.a = icmp eq i32 %.promoted.i.i.i48.a, 0
  br i1 %.not1.i.i.i49.a, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i51, label %.lr.ph.preheader.i.i.i50

.lr.ph71:                                         ; preds = %bb.o, %.lr.ph71
  %.069 = phi ptr [ %6, %.lr.ph71 ], [ %i.dd, %bb.o ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.069, align 4, !tbaa !40
  call void @_ZN4Luau7CodeGen9removeUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.0.0.copyload)
  %6 = getelementptr inbounds nuw i8, ptr %.069, i64 4 ; 2 uses
  %.not44 = icmp eq ptr %6, %i.dg
  br i1 %.not44, label %._crit_edge72, label %.lr.ph71

.loopexit:                                        ; preds = %.lr.ph67, %bb.i, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  ret void

.lr.ph.preheader.i.i.i50:                         ; preds = %bb.q
  store i32 0, ptr %i.ax, align 8, !tbaa !39
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i51

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i51: ; preds = %.lr.ph.preheader.i.i.i50, %bb.q
  %i.dj = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.dj, %i.az
  br i1 %.not.i.i52, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit53, label %bb.r

bb.r:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i51
  call void @_ZdlPv(ptr noundef %i.dj) #18
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit53

_ZN4Luau7CodeGen6IrInstD2Ev.exit53:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i51, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen10substituteERNS0_10IrFunctionERNS0_6IrInstENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(59) initializes((0, 1)) %1, i32 %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 -85, ptr %1, align 8, !tbaa !36
  %i.a = and i32 %2, 15
  switch i32 %i.a, label %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit [
    i32 4, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = lshr i32 %2, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !25
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 4, !tbaa !25
  br label %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = lshr i32 %2, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !32
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !32
  br label %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit

_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr %i.s, align 8, !tbaa !39
  %i.w = icmp eq i32 %.pre, 0
  br i1 %i.w, label %._crit_edge.thread, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj.exit

._crit_edge.thread:                               ; preds = %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit, %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %..lr.ph13.i_crit_edge

..lr.ph13.i_crit_edge:                            ; preds = %._crit_edge.thread
  %.pre17 = load ptr, ptr %i.q, align 8, !tbaa !38
  br label %.lr.ph13.i

bb.d:                                             ; preds = %._crit_edge.thread
  %i.aa = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #19 ; 5 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !38  ; 6 uses
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %i.af = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.ai = shl i64 %n.vec, 2                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ab, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !40
  %wide.load19 = load <4 x i32>, ptr %i.am, align 4, !tbaa !40
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !40
  store <4 x i32> %wide.load19, ptr %i.an, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.preheader21:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !40
  store i32 %i.ap, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !75

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not.i.i = icmp eq ptr %i.ab, %i.as
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ab) #18
  %.pre.pre.i = load i32, ptr %i.s, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, %bb.e
  %.pre.i = phi i32 [ %i.ac, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !38
  store i32 5, ptr %i.x, align 4, !tbaa !42
  %i.at = icmp eq i32 %.pre.i, 0
  br i1 %i.at, label %.lr.ph13.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj.exit

.lr.ph13.i:                                       ; preds = %..lr.ph13.i_crit_edge, %bb.f
  %i.au = phi ptr [ %.pre17, %..lr.ph13.i_crit_edge ], [ %i.aa, %bb.f ]
  store i32 0, ptr %i.au, align 4
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj.exit: ; preds = %.lr.ph13.i, %._crit_edge, %bb.f
  store i32 1, ptr %i.s, align 8, !tbaa !39
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !38
  store i32 %2, ptr %i.av, align 4, !tbaa !40
  ret void

.lr.ph:                                           ; preds = %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit, %.lr.ph
  %.016 = phi ptr [ %i.aw, %.lr.ph ], [ %i.r, %_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.016, align 4, !tbaa !40
  tail call void @_ZN4Luau7CodeGen9removeUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.0.0.copyload)
  %i.aw = getelementptr inbounds nuw i8, ptr %.016, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 3 uses
  %i.f = icmp ugt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %i.e, 1
  %i.h = add i32 %i.g, %i.e                       ; 2 uses
  %i.i = icmp ugt i32 %i.h, %1
  %i.j = add i32 %1, 4
  %.09.i = select i1 %i.i, i32 %i.h, i32 %i.j     ; 2 uses
  %i.k = zext i32 %.09.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !38     ; 6 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !39   ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL27substituteWithTruncatedUintERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstENS0_4IrOpE:bb.a
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %bb.d, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %_ZN4Luau7CodeGen29producesDirtyHighRegisterBitsENS0_5IrCmdE.exit
  ret void
}

declare i32 @_ZN4Luau7CodeGen9IrBuilder5undefEv(ptr noundef nonnull align 8 dereferenceable(1056)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 377) i32 @_ZN4Luau7CodeGen22getNativeContextOffsetEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.r [
    i32 3, label %bb.s
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 11, label %bb.g
    i32 16, label %bb.h
    i32 17, label %bb.i
    i32 23, label %bb.j
    i32 24, label %bb.k
    i32 26, label %bb.l
    i32 27, label %bb.m
    i32 13, label %bb.n
    i32 21, label %bb.o
    i32 256, label %bb.p
    i32 15, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.r ], [ 376, %bb.q ], [ 272, %bb.b ], [ 328, %bb.c ], [ 320, %bb.d ], [ 312, %bb.e ], [ 304, %bb.f ], [ 248, %bb.g ], [ 368, %bb.h ], [ 352, %bb.i ], [ 288, %bb.j ], [ 280, %bb.k ], [ 344, %bb.l ], [ 336, %bb.m ], [ 264, %bb.n ], [ 256, %bb.o ], [ 360, %bb.p ], [ 296, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen16killUnusedBlocksERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 36
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.pre1216 = phi ptr [ %i.c, %.lr.ph ], [ %.pre1217, %bb.g ] ; 2 uses
  %.pre13 = phi ptr [ %i.b, %.lr.ph ], [ %.pre14, %bb.g ] ; 2 uses
  %i.j = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %bb.g ] ; 2 uses
  %i.k = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.g ]
  %i.l = phi i64 [ 1, %.lr.ph ], [ %i.ah, %bb.g ]
  %.011 = phi i32 [ 1, %.lr.ph ], [ %i.ag, %bb.g ]
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %i.j, i64 %i.l ; 5 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !33
  %.not = icmp ne i8 %i.n, 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  %or.cond = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i8 5, ptr %i.m, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35   ; 2 uses
  %.not.i6.i = icmp slt i32 %i.u, %i.s
  br i1 %.not.i6.i, label %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = sext i32 %i.u to i64
  %i.w = sext i32 %i.s to i64
  %.pre9.i = load ptr, ptr %i.i, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.x = phi ptr [ %.pre9.i, %.lr.ph.i ], [ %i.ad, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %indvars.iv.i ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !36
  %i.aa = icmp ne i8 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ac = load i16, ptr %i.ab, align 4
  %.not9.i.i = icmp eq i16 %i.ac, 0
  %or.cond.i.i = select i1 %i.aa, i1 %.not9.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(59) %i.y), !inline_history !82
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %.pre.i, %bb.e ], [ %i.x, %bb.d ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i.not.i = icmp sgt i64 %indvars.iv.i, %i.w
  br i1 %.not.i.not.i, label %bb.d, label %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit.loopexit, !llvm.loop !0

_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit.loopexit: ; preds = %bb.f
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !51
  %.pre12.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit

_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit: ; preds = %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit.loopexit, %bb.c
  %.pre12 = phi ptr [ %.pre12.pre, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit.loopexit ], [ %.pre1216, %bb.c ] ; 2 uses
  %.pre = phi ptr [ %.pre.pre, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit.loopexit ], [ %.pre13, %bb.c ] ; 2 uses
  store i32 -1, ptr %i.r, align 4, !tbaa !34
  store i32 -1, ptr %i.t, align 4, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit, %bb.b
  %.pre1217 = phi ptr [ %.pre12, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit ], [ %.pre1216, %bb.b ]
  %.pre14 = phi ptr [ %.pre, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit ], [ %.pre13, %bb.b ]
  %i.ae = phi ptr [ %.pre12, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit ], [ %i.j, %bb.b ] ; 2 uses
  %i.af = phi ptr [ %.pre, %_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_7IrBlockE.exit ], [ %i.k, %bb.b ] ; 2 uses
  %i.ag = add i32 %.011, 1                        ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 36
  %i.am = icmp ugt i64 %i.al, %i.ah
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !81
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen19getSortedBlockOrderERNS0_10IrFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.25") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 36                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not49 = icmp eq ptr %i.b, %i.c
  br i1 %.not49, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a: ; preds = %bb.b
  %2 = shl nuw nsw i64 %i.g, 2
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %0, align 8, !tbaa !54
  store ptr %3, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !85
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !51
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a, %bb.b
  %i.l = phi ptr [ %.pre33, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a ], [ %i.b, %bb.b ] ; 2 uses
  %.promoted17 = phi ptr [ %3, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.k, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %i.m, %i.l
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  store ptr %.promoted, ptr %i.i, align 8
  store ptr %.promoted17, ptr %0, align 8
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit"

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  store ptr %i.bq, ptr %i.i, align 8
  store ptr %i.bp, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = ptrtoint ptr %i.bo to i64
  %i.p = ptrtoint ptr %i.bp to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_SF_T0_T1_"(ptr %i.bp, ptr nonnull %i.bo, i64 noundef %i.u, ptr nonnull readonly %1)
  %i.v = icmp sgt i64 %i.q, 64
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_SF_T0_"(ptr %i.bp, ptr nonnull %i.w, ptr nonnull readonly %1)
  %.not7.i.i.i.i = icmp eq ptr %i.w, %i.bo
  br i1 %.not7.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.val.val.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !28 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.aq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 3 uses
  %i.x = load i32, ptr %.sroa.0.08.i.i.i.i, align 4, !tbaa !56 ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [36 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !33   ; 2 uses
  %switch.selectcmp.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 4
  %switch.select.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i.i, i32 2, i32 0
  %switch.selectcmp4.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 1
  %switch.select5.i.i.i.i.i.i.i.i = select i1 %switch.selectcmp4.i.i.i.i.i.i.i.i, i32 1, i32 %switch.select.i.i.i.i.i.i.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !56 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ae ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !33  ; 2 uses
  %switch.selectcmp.i16.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 4
  %switch.select.i17.i.i.i.i.i.i.i = select i1 %switch.selectcmp.i16.i.i.i.i.i.i.i, i32 2, i32 0
  %switch.selectcmp4.i18.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 1
  %switch.select5.i19.i.i.i.i.i.i.i = select i1 %switch.selectcmp4.i18.i.i.i.i.i.i.i, i32 1, i32 %switch.select.i17.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %switch.select5.i.i.i.i.i.i.i.i, %switch.select5.i19.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.f
  %i.ah = icmp samesign ult i32 %switch.select5.i.i.i.i.i.i.i.i, %switch.select5.i19.i.i.i.i.i.i.i
  br i1 %i.ah, label %bb.h, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !57 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !57 ; 2 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %.not15.i.i.i.i.i.i.i, label %.split9.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNS3_10IrFunctionEE3$_0EclIjNS_17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbRT_T0_.exit.i.i.i.i.i"

.split9.i.i.i.i.i:                                ; preds = %bb.g
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNS3_10IrFunctionEE3$_0EclIjNS_17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %bb.g
  %i.ap = icmp ult i32 %i.ai, %i.ak
  br i1 %i.ap, label %bb.h, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNS3_10IrFunctionEE3$_0EclIjNS_17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbRT_T0_.exit.i.i.i.i.i", %.split9.i.i.i.i.i, %.split.i.i.i.i.i
  store i32 %i.ad, ptr %.sroa.06.0.i.i.i.i.i, align 4, !tbaa !56
  br label %bb.f, !llvm.loop !1

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNS3_10IrFunctionEE3$_0EclIjNS_17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbRT_T0_.exit.i.i.i.i.i", %.split9.i.i.i.i.i, %.split.i.i.i.i.i
  store i32 %i.x, ptr %.sroa.06.0.i.i.i.i.i, align 4, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.bo
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit", label %bb.e, !llvm.loop !83

bb.i:                                             ; preds = %bb.c
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_SF_T0_"(ptr %i.bp, ptr nonnull %i.bo, ptr nonnull readonly %1)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit"

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ar = phi ptr [ %i.l, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.as = phi ptr [ %i.m, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.at = phi ptr [ %.promoted17, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %storemerge21 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.au = phi ptr [ %.promoted, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.av = phi ptr [ %.promoted17, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 10 uses
  %.not.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %storemerge21, ptr %i.at, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !55
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 6 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.m, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.au, ptr %i.i, align 8
  store ptr %i.av, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %storemerge21, ptr %i.bi, align 4, !tbaa !56
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.av, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !51
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.k
  %i.bm = phi ptr [ %.pre35, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ar, %bb.k ] ; 2 uses
  %i.bn = phi ptr [ %.pre34, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.bo = phi ptr [ %i.bk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.aw, %bb.k ] ; 7 uses
  %i.bp = phi ptr [ %i.bh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.av, %bb.k ] ; 8 uses
  %i.bq = phi ptr [ %i.bl, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.br = add i32 %storemerge21, 1                ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = ptrtoint ptr %i.bm to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 36
  %i.bx = icmp ugt i64 %i.bw, %i.bs
  br i1 %i.bx, label %bb.j, label %._crit_edge, !llvm.loop !84

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %i.i, align 8
  store ptr %i.av, ptr %0, align 8
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEZN4Luau7CodeGen19getSortedBlockOrderERNS8_10IrFunctionEE3$_0EvT_SC_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIZN4Luau7CodeGen19getSortedBlockOrderERNSA_10IrFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i", %._crit_edge.thread, %bb.i, %bb.d, %._crit_edge
  ret void

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i12 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = ptrtoint ptr %i.at to i64
  %i.bz = ptrtoint ptr %i.av to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ca) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(36) ptr @_ZN4Luau7CodeGen12getNextBlockERNS0_10IrFunctionERKSt6vectorIjSaIjEERNS0_7IrBlockEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(36) %2, i64 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = load ptr, ptr %0, align 8
  %.01217 = add i64 %3, 1                         ; 2 uses
  %i.i = icmp ult i64 %.01217, %i.g
  br i1 %i.i, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %.012 = add i64 %.01218, 1                      ; 2 uses
  %i.j = icmp ult i64 %.012, %i.g
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !86

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01218 = phi i64 [ %.012, %bb.b ], [ %.01217, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01218
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !33
  %.not = icmp eq i8 %i.o, 5
  br i1 %.not, label %bb.b, label %._crit_edge19, !llvm.loop !86

._crit_edge19:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.b, %._crit_edge19, %bb.a
  %i.p = phi ptr [ %i.n, %._crit_edge19 ], [ %2, %bb.a ], [ %2, %bb.b ]
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau7CodeGen22tryGetNextBlockInChainERNS0_10IrFunctionERNS0_7IrBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !36
  %i.h = icmp eq i8 %i.g, 88
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %.not.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.i.not, label %bb.c, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = and i32 %i.m, 15
  %i.o = icmp eq i32 %i.n, 5
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %i.p = load i32, ptr %i.j, align 8, !tbaa !39
  %.not.i13.not = icmp eq i32 %i.p, 0
  br i1 %.not.i13.not, label %bb.e, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit14, !prof !45

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef 1)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !38
  %.sroa.0.0.copyload.pre = load i32, ptr %.pre, align 4, !tbaa !40
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit14

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit14:     ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload = phi i32 [ %i.m, %bb.d ], [ %.sroa.0.0.copyload.pre, %bb.e ]
  %i.q = lshr i32 %.sroa.0.0.copyload, 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !57
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit14
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ad = add i32 %i.ac, 1
  %i.ae = icmp eq i32 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit, %.critedge, %bb.f
  %.1 = phi ptr [ %i.t, %bb.f ], [ null, %.critedge ], [ null, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau7CodeGen12isEntryBlockERKNS0_7IrBlockE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !32
  %i.c = icmp eq i16 %i.b, 0
  %i.d = load i8, ptr %0, align 4
  %i.e = icmp ne i8 %i.d, 5
  %i.f = select i1 %i.c, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i16 0, 512) i16 @_ZN4Luau7CodeGen16tryGetOperandTagERNS0_10IrFunctionENS0_4IrOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0, i32 %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 15
  %i.b = icmp ne i32 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = lshr i32 %1, 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %.not18 = icmp eq ptr %i.f, null
  %.not = select i1 %i.b, i1 true, i1 %.not18
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.g, align 8, !tbaa !36
  switch i8 %i.h, label %bb.f [
    i8 117, label %bb.c
    i8 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !39
  %i.k = icmp ugt i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 15
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.f, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit:       ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %i.q = lshr i32 %i.o, 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.v, 256
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.b, %bb.c, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit
  %.sroa.3.1 = phi i16 [ %i.w, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit ], [ 261, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i16 %.sroa.3.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen29propagateTagsFromPredecessorsERKNS0_10IrFunctionERKNS0_7IrBlockESt8functionIFhmEES7_IFvmhEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef align 8 %2, ptr noundef align 8 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 36                  ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
end_hunk_1
