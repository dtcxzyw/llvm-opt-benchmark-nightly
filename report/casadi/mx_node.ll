Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_node?download=true
inline.NumInlined: 9612
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 215
begin_hunk_0_@_ZNK6casadi6MXNode13get_vertsplitERKSt6vectorIxSaIxEE:bb.a
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0112
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !183 ; 2 uses
  %i.as = icmp slt i64 %.034110, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.thread77:                                        ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ab

bb.s:                                             ; preds = %.thread81, %.thread77
  %.pn80 = phi { ptr, i32 } [ %i.at, %.thread77 ], [ %i.ab, %.thread81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 112) #33
  br label %bb.ab

bb.t:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %.preheader, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit
  %.1106 = phi i64 [ %i.bg, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ], [ %.033111, %.preheader ] ; 4 uses
  %.135105 = phi i64 [ %i.bf, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ], [ %.034110, %.preheader ]
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %.not.i.i.i = icmp ult i64 %.1106, %i.bb
  br i1 %.not.i.i.i, label %bb.u, label %.invoke

bb.u:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.1106
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %.noexc58 unwind label %.loopexit83

.noexc58:                                         ; preds = %bb.u
  %i.be = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit unwind label %.loopexit83

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit: ; preds = %.noexc58
  %i.bf = add nsw i64 %i.be, %.135105             ; 3 uses
  %i.bg = add nuw nsw i64 %.1106, 1               ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0112
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !183 ; 2 uses
  %i.bk = icmp slt i64 %i.bf, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !614

.loopexit83:                                      ; preds = %bb.u, %.noexc58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aa, %.noexc64, %bb.y, %bb.x
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit, %.preheader
  %.135.lcssa = phi i64 [ %.034110, %.preheader ], [ %i.bf, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ] ; 3 uses
  %.1.lcssa = phi i64 [ %.033111, %.preheader ], [ %i.bg, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ]
  %.lcssa91 = phi ptr [ %i.ap, %.preheader ], [ %i.bh, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ] ; 2 uses
  %.lcssa = phi i64 [ %i.ar, %.preheader ], [ %i.bj, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit ]
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = add nsw i64 %i.bq, -1
  %spec.select = call i64 @llvm.smin.i64(i64 %.1.lcssa, i64 %i.br) ; 7 uses
  %i.bs = icmp eq i64 %.lcssa, %.135.lcssa
  %i.bt = add nuw nsw i64 %.0112, 1               ; 4 uses
  br i1 %i.bs, label %bb.v, label %_ZN6casadi2MXaSERKS0_.exit71

bb.v:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !300
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.lcssa91 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.lcssa91, i64 %i.bt
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !183
  br label %_ZNK6casadi6MXNode5size1Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cc = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %._ZNK6casadi6MXNode5size1Ev.exit_crit_edge unwind label %.loopexit.split-lp.loopexit

._ZNK6casadi6MXNode5size1Ev.exit_crit_edge:       ; preds = %bb.x
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !27
  %.pre133 = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.pre134 = ptrtoint ptr %.pre to i64
  %.pre135 = ptrtoint ptr %.pre133 to i64
  %.pre137 = sub i64 %.pre134, %.pre135
  %.pre139 = ashr exact i64 %.pre137, 3
  br label %_ZNK6casadi6MXNode5size1Ev.exit

_ZNK6casadi6MXNode5size1Ev.exit:                  ; preds = %._ZNK6casadi6MXNode5size1Ev.exit_crit_edge, %bb.w
  %.pre-phi140 = phi i64 [ %.pre139, %._ZNK6casadi6MXNode5size1Ev.exit_crit_edge ], [ %i.bq, %bb.w ] ; 2 uses
  %i.cd = phi ptr [ %.pre133, %._ZNK6casadi6MXNode5size1Ev.exit_crit_edge ], [ %i.bm, %bb.w ]
  %i.ce = phi i64 [ %i.cc, %._ZNK6casadi6MXNode5size1Ev.exit_crit_edge ], [ %i.cb, %bb.w ]
  %.not.i.i.i61 = icmp ult i64 %spec.select, %.pre-phi140
  br i1 %.not.i.i.i61, label %bb.y, label %.invoke

bb.y:                                             ; preds = %_ZNK6casadi6MXNode5size1Ev.exit
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %spec.select
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit

.noexc64:                                         ; preds = %bb.y
  %i.ch = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit66 unwind label %.loopexit.split-lp.loopexit

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit66: ; preds = %.noexc64
  %i.ci = add nsw i64 %i.ch, %.135.lcssa
  %i.cj = icmp eq i64 %i.ce, %i.ci
  br i1 %i.cj, label %bb.z, label %_ZN6casadi2MXaSERKS0_.exit71

bb.z:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit66
  %i.ck = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %.not.i.i.i67 = icmp ult i64 %spec.select, %i.cp
  br i1 %.not.i.i.i67, label %bb.aa, label %.invoke

.invoke:                                          ; preds = %bb.z, %_ZNK6casadi6MXNode5size1Ev.exit, %.lr.ph
  %i.cq = phi i64 [ %.1106, %.lr.ph ], [ %spec.select, %_ZNK6casadi6MXNode5size1Ev.exit ], [ %spec.select, %bb.z ]
  %i.cr = phi i64 [ %i.bb, %.lr.ph ], [ %.pre-phi140, %_ZNK6casadi6MXNode5size1Ev.exit ], [ %i.cp, %bb.z ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef %i.cq, i64 noundef %i.cr) #35
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %spec.select
  %i.ct = load ptr, ptr %0, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.0112
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_ZN6casadi2MXaSERKS0_.exit71 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN6casadi2MXaSERKS0_.exit71:                     ; preds = %._crit_edge, %bb.aa, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit66
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !300
  %i.cx = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp ult i64 %i.bt, %i.db
  br i1 %i.dc, label %.preheader, label %.loopexit, !llvm.loop !615

.loopexit.split-lp:                               ; preds = %.loopexit83, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.t
  %.pn51 = phi { ptr, i32 } [ %i.av, %bb.t ], [ %lpad.loopexit, %.loopexit83 ], [ %lpad.loopexit86, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  br label %bb.ab

.loopexit:                                        ; preds = %_ZN6casadi2MXaSERKS0_.exit71, %_ZN6casadi2MXaSERKS0_.exit, %.preheader84, %bb.e, %bb.o, %bb.q
  ret void

bb.ab:                                            ; preds = %bb.r, %bb.f, %bb.s, %bb.g, %.loopexit.split-lp, %bb.k
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.k ], [ %.pn5374, %bb.g ], [ %i.k, %bb.f ], [ %.pn51, %.loopexit.split-lp ], [ %.pn80, %bb.s ], [ %i.au, %bb.r ]
  resume { ptr, i32 } %.pn55.pn
}

declare void @_ZN6casadi9VertsplitC1ERKNS_2MXERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6casadi6MXNode8copy_fwdEPKyPyx(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2) local_unnamed_addr #19 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %2, 1
  br i1 %i.a, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %0, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.c = load i64, ptr %0, align 8, !tbaa !183
  store i64 %i.c, ptr %1, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6casadi6MXNode8copy_revEPyS1_x(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #20 align 2 {
bb.a:
  %.not = icmp ne ptr %0, %1
  %i.a = icmp sgt i64 %2, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 6
  br i1 %min.iters.check, label %.lr.ph.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep16
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 3                        ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.f  ; 3 uses
  %next.gep17 = getelementptr i8, ptr %1, i64 %i.f ; 3 uses
  %i.g = getelementptr i8, ptr %next.gep17, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !183, !alias.scope !616
  %wide.load18 = load <2 x i64>, ptr %i.g, align 8, !tbaa !183, !alias.scope !616
  %i.h = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load19 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !619, !noalias !616
  %wide.load20 = load <2 x i64>, ptr %i.h, align 8, !tbaa !183, !alias.scope !619, !noalias !616
  %i.i = or <2 x i64> %wide.load19, %wide.load
  %i.j = or <2 x i64> %wide.load20, %wide.load18
  store <2 x i64> %i.i, ptr %next.gep, align 8, !tbaa !183, !alias.scope !619, !noalias !616
  store <2 x i64> %i.j, ptr %i.h, align 8, !tbaa !183, !alias.scope !619, !noalias !616
  store <2 x i64> zeroinitializer, ptr %next.gep17, align 8, !tbaa !183, !alias.scope !616
  store <2 x i64> zeroinitializer, ptr %i.g, align 8, !tbaa !183, !alias.scope !616
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader23

.lr.ph.preheader23:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.d, %middle.block ] ; 2 uses
  %.0811.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ] ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader23, %.lr.ph.prol
  %.013.prol = phi i64 [ %i.q, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader23 ]
  %.0712.prol = phi ptr [ %i.m, %.lr.ph.prol ], [ %.0712.ph, %.lr.ph.preheader23 ] ; 3 uses
  %.0811.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.0811.ph, %.lr.ph.preheader23 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader23 ]
  %i.l = load i64, ptr %.0811.prol, align 8, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %.0712.prol, i64 8 ; 2 uses
  %i.n = load i64, ptr %.0712.prol, align 8, !tbaa !183
  %i.o = or i64 %i.n, %i.l
  store i64 %i.o, ptr %.0712.prol, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %.0811.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.prol, align 8, !tbaa !183
  %i.q = add nuw nsw i64 %.013.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !624

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader23
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader23 ], [ %i.q, %.lr.ph.prol ]
  %.0712.unr = phi ptr [ %.0712.ph, %.lr.ph.preheader23 ], [ %i.m, %.lr.ph.prol ]
  %.0811.unr = phi ptr [ %.0811.ph, %.lr.ph.preheader23 ], [ %i.p, %.lr.ph.prol ]
  %i.r = sub nsw i64 %.013.ph, %2
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.an, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0712 = phi ptr [ %i.aj, %.lr.ph ], [ %.0712.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0811 = phi ptr [ %i.am, %.lr.ph ], [ %.0811.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.t = load i64, ptr %.0811, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %.0712, i64 8 ; 2 uses
  %i.v = load i64, ptr %.0712, align 8, !tbaa !183
  %i.w = or i64 %i.v, %i.t
  store i64 %i.w, ptr %.0712, align 8, !tbaa !183
  %i.x = getelementptr inbounds nuw i8, ptr %.0811, i64 8 ; 2 uses
  store i64 0, ptr %.0811, align 8, !tbaa !183
  %i.y = load i64, ptr %i.x, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %.0712, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !183
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !183
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !183
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !183
  %i.ae = getelementptr inbounds nuw i8, ptr %.0712, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.z, align 8, !tbaa !183
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811, i64 24 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !183
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !183
  %i.aj = getelementptr inbounds nuw i8, ptr %.0712, i64 32
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !183
  %i.al = or i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 32
  store i64 0, ptr %i.ah, align 8, !tbaa !183
  %i.an = add nuw nsw i64 %.013, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.an, %2
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !625

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6casadi5Input11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #36 ; 4 uses
  invoke void @_ZN6casadi13IOInstructionC2ERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(42) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 888) (i8, ptr @_ZTVN6casadi5InputE, i64 16), ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6casadi6Output11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #36 ; 4 uses
  invoke void @_ZN6casadi13IOInstructionC2ERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(42) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 888) (i8, ptr @_ZTVN6casadi6OutputE, i64 16), ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6casadi10SymbolicMX11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 3 uses
  invoke void @_ZN6casadi10SymbolicMXC1ERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(42) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #33
  resume { ptr, i32 } %i.b
}

declare noundef ptr @_ZN6casadi10ConstantMX11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6casadi4Call11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK6casadi9TriuSolveILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9triusolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp sgt i64 %i.ad, 0
  %i.al = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader102.us.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader102.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre141.pre.i = load i64, ptr %i.ah, align 8, !tbaa !183
  br label %.preheader102.us.i

.preheader102.us.i:                               ; preds = %..loopexit103_crit_edge.us.i, %.preheader102.us.preheader.i
  %.0126.us.i = phi i64 [ %i.be, %..loopexit103_crit_edge.us.i ], [ 0, %.preheader102.us.preheader.i ]
  %.091124.us.i = phi ptr [ %i.bd, %..loopexit103_crit_edge.us.i ], [ %i.z, %.preheader102.us.preheader.i ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit98.us.i, %.preheader102.us.i
  %i.am = phi i64 [ %.pre141.pre.i, %.preheader102.us.i ], [ %i.ap, %.loopexit98.us.i ] ; 2 uses
  %.289118.us.i = phi i64 [ 0, %.preheader102.us.i ], [ %i.an, %.loopexit98.us.i ] ; 3 uses
  %i.an = add nuw nsw i64 %.289118.us.i, 1        ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 3 uses
  %i.aq = icmp slt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph117.us.i, label %.loopexit98.us.i

bb.j:                                             ; preds = %.lr.ph117.us.i, %bb.m
  %storemerge166.i = phi double [ %.promoted165.i, %.lr.ph117.us.i ], [ %storemerge.i, %bb.m ] ; 2 uses
  %.2116.us.i = phi i64 [ %i.am, %.lr.ph117.us.i ], [ %i.bb, %bb.m ] ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.2116.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %.289118.us.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.2116.us.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %.091124.us.i, i64 %i.as
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = fneg double %i.av
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %storemerge166.i)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = fdiv double %storemerge166.i, %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge.i = phi double [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  store double %storemerge.i, ptr %i.bc, align 8, !tbaa !560
  %i.bb = add nsw i64 %.2116.us.i, 1              ; 2 uses
  %exitcond136.not.i = icmp eq i64 %i.bb, %i.ap
  br i1 %exitcond136.not.i, label %.loopexit98.us.i, label %bb.j, !llvm.loop !1571

.loopexit98.us.i:                                 ; preds = %bb.m, %bb.i
  %exitcond137.not.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond137.not.i, label %..loopexit103_crit_edge.us.i, label %bb.i, !llvm.loop !1572

.lr.ph117.us.i:                                   ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.091124.us.i, i64 %.289118.us.i ; 2 uses
  %.promoted165.i = load double, ptr %i.bc, align 8
  br label %bb.j

..loopexit103_crit_edge.us.i:                     ; preds = %.loopexit98.us.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %.091124.us.i, i64 %i.ae
  %i.be = add nuw nsw i64 %.0126.us.i, 1          ; 2 uses
  %exitcond138.not.i = icmp eq i64 %i.be, %i.ad
  br i1 %exitcond138.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader102.us.i, !llvm.loop !1573

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit103_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !787
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !787
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_triusolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 1, i32 noundef 0, i64 noundef %i.ag)
end_hunk_1
begin_hunk_2_@_ZNK6casadi9TriuSolveILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9triusolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader.us.us.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader.us.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre142.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %..loopexit101_crit_edge.us.us.i, %.preheader.us.us.preheader.i
  %.0126.us.us.i = phi i64 [ %i.bg, %..loopexit101_crit_edge.us.us.i ], [ 0, %.preheader.us.us.preheader.i ]
  %.091124.us.us.i = phi ptr [ %i.bf, %..loopexit101_crit_edge.us.us.i ], [ %i.z, %.preheader.us.us.preheader.i ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.us.us.i, %.preheader.us.us.i
  %i.al = phi i64 [ %.pre142.pre.i, %.preheader.us.us.i ], [ %i.ao, %.loopexit.us.us.i ] ; 2 uses
  %.390122.us.us.i = phi i64 [ %i.ag, %.preheader.us.us.i ], [ %i.am, %.loopexit.us.us.i ] ; 2 uses
  %i.am = add nsw i64 %.390122.us.us.i, -1        ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 3 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph121.us.us.i, label %.loopexit.us.us.i

bb.j:                                             ; preds = %.lr.ph121.us.us.i, %bb.m
  %.3120.us.us.i = phi i64 [ %i.al, %.lr.ph121.us.us.i ], [ %i.aq, %bb.m ] ; 2 uses
  %i.aq = add nsw i64 %.3120.us.us.i, -1          ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ai, i64 %.3120.us.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.am
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  %i.aw = load double, ptr %i.be, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds [8 x i8], ptr %.091124.us.us.i, i64 %i.as ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !560
  %i.az = fneg double %i.av
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.aw, double %i.ay)
  store double %i.ba, ptr %i.ax, align 8, !tbaa !560
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = fdiv double %i.aw, %i.av
  store double %i.bb, ptr %i.be, align 8, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.j, label %.loopexit.us.us.i, !llvm.loop !1629

.loopexit.us.us.i:                                ; preds = %bb.m, %bb.i
  %i.bd = icmp sgt i64 %.390122.us.us.i, 1
  br i1 %i.bd, label %bb.i, label %..loopexit101_crit_edge.us.us.i, !llvm.loop !1630

.lr.ph121.us.us.i:                                ; preds = %bb.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.091124.us.us.i, i64 %i.am ; 2 uses
  br label %bb.j

..loopexit101_crit_edge.us.us.i:                  ; preds = %.loopexit.us.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %.091124.us.us.i, i64 %i.ae
  %i.bg = add nuw nsw i64 %.0126.us.us.i, 1       ; 2 uses
  %exitcond139.not.i = icmp eq i64 %i.bg, %i.ad
  br i1 %exitcond139.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader.us.us.i, !llvm.loop !1573

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit101_crit_edge.us.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !787
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !787
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_triusolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 0, i32 noundef 0, i64 noundef %i.ag)
  ret i32 0
}
end_hunk_2
begin_hunk_3_@_ZNK6casadi9TrilSolveILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9trilsolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader103.us.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader103.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre142.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader103.us.i

.preheader103.us.i:                               ; preds = %..loopexit104_crit_edge.us.i, %.preheader103.us.preheader.i
  %.0127.us.i = phi i64 [ %i.bf, %..loopexit104_crit_edge.us.i ], [ 0, %.preheader103.us.preheader.i ]
  %.091125.us.i = phi ptr [ %i.be, %..loopexit104_crit_edge.us.i ], [ %i.z, %.preheader103.us.preheader.i ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit99.us.i, %.preheader103.us.i
  %i.al = phi i64 [ %.pre142.pre.i, %.preheader103.us.i ], [ %i.ao, %.loopexit99.us.i ] ; 2 uses
  %.289119.us.i = phi i64 [ %i.ag, %.preheader103.us.i ], [ %i.am, %.loopexit99.us.i ] ; 2 uses
  %i.am = add nsw i64 %.289119.us.i, -1           ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 3 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph118.us.i, label %.loopexit99.us.i

bb.j:                                             ; preds = %.lr.ph118.us.i, %bb.m
  %storemerge167.i = phi double [ %.promoted166.i, %.lr.ph118.us.i ], [ %storemerge.i, %bb.m ] ; 2 uses
  %.2117.us.i = phi i64 [ %i.al, %.lr.ph118.us.i ], [ %i.aq, %bb.m ] ; 2 uses
  %i.aq = add nsw i64 %.2117.us.i, -1             ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ai, i64 %.2117.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.am
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %.091125.us.i, i64 %i.as
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = fneg double %i.av
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %storemerge167.i)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = fdiv double %storemerge167.i, %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge.i = phi double [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  store double %storemerge.i, ptr %i.bd, align 8, !tbaa !560
  %i.bb = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bb, label %bb.j, label %.loopexit99.us.i, !llvm.loop !1653

.loopexit99.us.i:                                 ; preds = %bb.m, %bb.i
  %i.bc = icmp sgt i64 %.289119.us.i, 1
  br i1 %i.bc, label %bb.i, label %..loopexit104_crit_edge.us.i, !llvm.loop !1654

.lr.ph118.us.i:                                   ; preds = %bb.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %.091125.us.i, i64 %i.am ; 2 uses
  %.promoted166.i = load double, ptr %i.bd, align 8
  br label %bb.j

..loopexit104_crit_edge.us.i:                     ; preds = %.loopexit99.us.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.091125.us.i, i64 %i.ae
  %i.bf = add nuw nsw i64 %.0127.us.i, 1          ; 2 uses
  %exitcond137.not.i = icmp eq i64 %i.bf, %i.ad
  br i1 %exitcond137.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader103.us.i, !llvm.loop !1655

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit104_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !787
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !787
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_trilsolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 1, i32 noundef 0, i64 noundef %i.ag)
  ret i32 0
end_hunk_3
begin_hunk_4_@_ZNK6casadi9TrilSolveILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9trilsolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp sgt i64 %i.ad, 0
  %i.al = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader.us.us.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader.us.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre143.pre.i = load i64, ptr %i.ah, align 8, !tbaa !183
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %..loopexit102_crit_edge.us.us.i, %.preheader.us.us.preheader.i
  %.0127.us.us.i = phi i64 [ %i.bf, %..loopexit102_crit_edge.us.us.i ], [ 0, %.preheader.us.us.preheader.i ]
  %.091125.us.us.i = phi ptr [ %i.be, %..loopexit102_crit_edge.us.us.i ], [ %i.z, %.preheader.us.us.preheader.i ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.us.us.i, %.preheader.us.us.i
  %i.am = phi i64 [ %.pre143.pre.i, %.preheader.us.us.i ], [ %i.ap, %.loopexit.us.us.i ] ; 2 uses
  %.390123.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.an, %.loopexit.us.us.i ] ; 3 uses
  %i.an = add nuw nsw i64 %.390123.us.us.i, 1     ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 3 uses
  %i.aq = icmp slt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph122.us.us.i, label %.loopexit.us.us.i

bb.j:                                             ; preds = %.lr.ph122.us.us.i, %bb.m
  %.3121.us.us.i = phi i64 [ %i.am, %.lr.ph122.us.us.i ], [ %i.bc, %bb.m ] ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.3121.us.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %.390123.us.us.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.3121.us.us.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  %i.aw = load double, ptr %i.bd, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds [8 x i8], ptr %.091125.us.us.i, i64 %i.as ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !560
  %i.az = fneg double %i.av
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.aw, double %i.ay)
  store double %i.ba, ptr %i.ax, align 8, !tbaa !560
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = fdiv double %i.aw, %i.av
  store double %i.bb, ptr %i.bd, align 8, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = add nsw i64 %.3121.us.us.i, 1           ; 2 uses
  %exitcond138.not.i = icmp eq i64 %i.bc, %i.ap
  br i1 %exitcond138.not.i, label %.loopexit.us.us.i, label %bb.j, !llvm.loop !1665

.loopexit.us.us.i:                                ; preds = %bb.m, %bb.i
  %exitcond139.not.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond139.not.i, label %..loopexit102_crit_edge.us.us.i, label %bb.i, !llvm.loop !1666

.lr.ph122.us.us.i:                                ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.091125.us.us.i, i64 %.390123.us.us.i ; 2 uses
  br label %bb.j

..loopexit102_crit_edge.us.us.i:                  ; preds = %.loopexit.us.us.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.091125.us.us.i, i64 %i.ae
  %i.bf = add nuw nsw i64 %.0127.us.us.i, 1       ; 2 uses
  %exitcond140.not.i = icmp eq i64 %i.bf, %i.ad
  br i1 %exitcond140.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader.us.us.i, !llvm.loop !1655

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit102_crit_edge.us.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !787
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !787
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_trilsolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 0, i32 noundef 0, i64 noundef %i.ag)
  ret i32 0
end_hunk_4
begin_hunk_5_@_ZNK6casadi14TriuSolveUnityILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9triusolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = icmp sgt i64 %i.ad, 0
  %i.al = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader106.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader106.preheader.i:                        ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre.pre.i = load i64, ptr %i.ah, align 8, !tbaa !183
  br label %.preheader106.i

.preheader106.i:                                  ; preds = %..loopexit107_crit_edge.i, %.preheader106.preheader.i
  %.0126.i = phi i64 [ %i.bu, %..loopexit107_crit_edge.i ], [ 0, %.preheader106.preheader.i ]
  %.091124.i = phi ptr [ %i.bt, %..loopexit107_crit_edge.i ], [ %i.z, %.preheader106.preheader.i ] ; 5 uses
  br label %bb.i

.loopexit100.i:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.i
  %exitcond133.not.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond133.not.i, label %..loopexit107_crit_edge.i, label %bb.i, !llvm.loop !1668

bb.i:                                             ; preds = %.loopexit100.i, %.preheader106.i
  %i.am = phi i64 [ %.pre.pre.i, %.preheader106.i ], [ %i.ap, %.loopexit100.i ] ; 7 uses
  %.087110.i = phi i64 [ 0, %.preheader106.i ], [ %i.an, %.loopexit100.i ] ; 2 uses
  %i.an = add nuw nsw i64 %.087110.i, 1           ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 5 uses
  %i.aq = icmp slt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit100.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.091124.i, i64 %.087110.i ; 4 uses
  %.promoted.i = load double, ptr %i.ar, align 8, !tbaa !560 ; 2 uses
  %i.as = sub i64 %i.ap, %i.am
  %.neg = add i64 %i.am, 1
  %xtraiter = and i64 %i.as, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.am
  %i.au = load double, ptr %i.at, align 8, !tbaa !560
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !183
  %i.ax = getelementptr inbounds [8 x i8], ptr %.091124.i, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !560
  %i.az = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ay, double %.promoted.i) ; 2 uses
  store double %i.az, ptr %i.ar, align 8, !tbaa !560
  %i.ba = add nsw i64 %i.am, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.unr = phi double [ %.promoted.i, %.lr.ph.i ], [ %i.az, %.prol.loopexit.unr-lcssa ]
  %.086109.i.unr = phi i64 [ %i.am, %.lr.ph.i ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %i.bb = icmp eq i64 %i.ap, %.neg
  br i1 %i.bb, label %.loopexit100.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.bc = phi double [ %i.br, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ]
  %.086109.i = phi i64 [ %i.bs, %.lr.ph.i.new ], [ %.086109.i.unr, %.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.086109.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !560
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.086109.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183
  %i.bh = getelementptr inbounds [8 x i8], ptr %.091124.i, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !560
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bi, double %i.bc) ; 2 uses
  store double %i.bj, ptr %i.ar, align 8, !tbaa !560
  %i.bk = add nsw i64 %.086109.i, 1               ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !560
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !183
  %i.bp = getelementptr inbounds [8 x i8], ptr %.091124.i, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !560
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bq, double %i.bj) ; 2 uses
  store double %i.br, ptr %i.ar, align 8, !tbaa !560
  %i.bs = add nsw i64 %.086109.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bs, %i.ap
  br i1 %exitcond.not.i.1, label %.loopexit100.i, label %.lr.ph.i.new, !llvm.loop !1669

..loopexit107_crit_edge.i:                        ; preds = %.loopexit100.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %.091124.i, i64 %i.ae
  %i.bu = add nuw nsw i64 %.0126.i, 1             ; 2 uses
  %exitcond134.not.i = icmp eq i64 %i.bu, %i.ad
  br i1 %exitcond134.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader106.i, !llvm.loop !1573

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit107_crit_edge.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_5
begin_hunk_6_@_ZNK6casadi14TriuSolveUnityILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9triusolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext true, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader104.us.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader104.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre140.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader104.us.i

.preheader104.us.i:                               ; preds = %..loopexit105_crit_edge.us.i, %.preheader104.us.preheader.i
  %.0126.us128.i = phi i64 [ %i.bx, %..loopexit105_crit_edge.us.i ], [ 0, %.preheader104.us.preheader.i ]
  %.091124.us129.i = phi ptr [ %i.bw, %..loopexit105_crit_edge.us.i ], [ %i.z, %.preheader104.us.preheader.i ] ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit99.us.i, %.preheader104.us.i
  %i.al = phi i64 [ %.pre140.pre.i, %.preheader104.us.i ], [ %i.ao, %.loopexit99.us.i ] ; 6 uses
  %.188114.us.i = phi i64 [ %i.ag, %.preheader104.us.i ], [ %i.am, %.loopexit99.us.i ] ; 2 uses
  %i.am = add nsw i64 %.188114.us.i, -1           ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 5 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph113.us.i, label %.loopexit99.us.i

.lr.ph113.us.i.new:                               ; preds = %.prol.loopexit, %.lr.ph113.us.i.new
  %.1112.us.i = phi i64 [ %i.az, %.lr.ph113.us.i.new ], [ %.1112.us.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aq = add nsw i64 %.1112.us.i, -1             ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !560
  %i.at = load double, ptr %i.bk, align 8, !tbaa !560
  %i.au = getelementptr [8 x i8], ptr %i.ai, i64 %.1112.us.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183
  %i.aw = getelementptr inbounds [8 x i8], ptr %.091124.us129.i, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !560
  %i.az = add nsw i64 %.1112.us.i, -2             ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bc = load double, ptr %i.bk, align 8, !tbaa !560
  %i.bd = getelementptr [8 x i8], ptr %i.ai, i64 %i.aq
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds [8 x i8], ptr %.091124.us129.i, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !560
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !560
  %i.bi = icmp sgt i64 %i.az, %i.ao
  br i1 %i.bi, label %.lr.ph113.us.i.new, label %.loopexit99.us.i, !llvm.loop !1671

.loopexit99.us.i:                                 ; preds = %.prol.loopexit, %.lr.ph113.us.i.new, %bb.i
  %i.bj = icmp sgt i64 %.188114.us.i, 1
  br i1 %i.bj, label %bb.i, label %..loopexit105_crit_edge.us.i, !llvm.loop !1672

.lr.ph113.us.i:                                   ; preds = %bb.i
  %i.bk = getelementptr inbounds [8 x i8], ptr %.091124.us129.i, i64 %i.am ; 3 uses
  %i.bl = sub i64 %i.al, %i.ao
  %.neg = add i64 %i.ao, 1
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph113.us.i
  %i.bm = add nsw i64 %i.al, -1                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !560
  %i.bp = load double, ptr %i.bk, align 8, !tbaa !560
  %i.bq = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !183
  %i.bs = getelementptr inbounds [8 x i8], ptr %.091124.us129.i, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !560
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bt)
  store double %i.bu, ptr %i.bs, align 8, !tbaa !560
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph113.us.i
  %.1112.us.i.unr = phi i64 [ %i.al, %.lr.ph113.us.i ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  %i.bv = icmp eq i64 %i.al, %.neg
  br i1 %i.bv, label %.loopexit99.us.i, label %.lr.ph113.us.i.new

..loopexit105_crit_edge.us.i:                     ; preds = %.loopexit99.us.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %.091124.us129.i, i64 %i.ae
  %i.bx = add nuw nsw i64 %.0126.us128.i, 1       ; 2 uses
  %exitcond135.not.i = icmp eq i64 %i.bx, %i.ad
  br i1 %exitcond135.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader104.us.i, !llvm.loop !1573

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit105_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
end_hunk_6
begin_hunk_7_@_ZNK6casadi14TrilSolveUnityILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9trilsolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader107.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader107.preheader.i:                        ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %..loopexit108_crit_edge.i, %.preheader107.preheader.i
  %.0127.i = phi i64 [ %i.bv, %..loopexit108_crit_edge.i ], [ 0, %.preheader107.preheader.i ]
  %.091125.i = phi ptr [ %i.bu, %..loopexit108_crit_edge.i ], [ %i.z, %.preheader107.preheader.i ] ; 5 uses
  br label %bb.i

.loopexit101.i:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.i
  %i.al = icmp sgt i64 %.087111.i, 1
  br i1 %i.al, label %bb.i, label %..loopexit108_crit_edge.i, !llvm.loop !1673

bb.i:                                             ; preds = %.loopexit101.i, %.preheader107.i
  %i.am = phi i64 [ %.pre.pre.i, %.preheader107.i ], [ %i.ap, %.loopexit101.i ] ; 6 uses
  %.087111.i = phi i64 [ %i.ag, %.preheader107.i ], [ %i.an, %.loopexit101.i ] ; 2 uses
  %i.an = add nsw i64 %.087111.i, -1              ; 3 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 5 uses
  %i.aq = icmp sgt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit101.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %.091125.i, i64 %i.an ; 4 uses
  %.promoted.i = load double, ptr %i.ar, align 8, !tbaa !560 ; 2 uses
  %i.as = sub i64 %i.am, %i.ap
  %.neg = add i64 %i.ap, 1
  %xtraiter = and i64 %i.as, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !560
  %i.aw = getelementptr [8 x i8], ptr %i.ai, i64 %i.am
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !183
  %i.ay = getelementptr inbounds [8 x i8], ptr %.091125.i, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !560
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %.promoted.i) ; 2 uses
  store double %i.ba, ptr %i.ar, align 8, !tbaa !560
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.unr = phi double [ %.promoted.i, %.lr.ph.i ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %.086110.i.unr = phi i64 [ %i.am, %.lr.ph.i ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %i.bb = icmp eq i64 %i.am, %.neg
  br i1 %i.bb, label %.loopexit101.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.bc = phi double [ %i.bs, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ]
  %.086110.i = phi i64 [ %i.bl, %.lr.ph.i.new ], [ %.086110.i.unr, %.prol.loopexit ] ; 3 uses
  %i.bd = add nsw i64 %.086110.i, -1              ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !560
  %i.bg = getelementptr [8 x i8], ptr %i.ai, i64 %.086110.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !183
  %i.bi = getelementptr inbounds [8 x i8], ptr %.091125.i, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !560
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bj, double %i.bc) ; 2 uses
  store double %i.bk, ptr %i.ar, align 8, !tbaa !560
  %i.bl = add nsw i64 %.086110.i, -2              ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !560
  %i.bo = getelementptr [8 x i8], ptr %i.ai, i64 %i.bd
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !183
  %i.bq = getelementptr inbounds [8 x i8], ptr %.091125.i, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !560
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.br, double %i.bk) ; 2 uses
  store double %i.bs, ptr %i.ar, align 8, !tbaa !560
  %i.bt = icmp sgt i64 %i.bl, %i.ap
  br i1 %i.bt, label %.lr.ph.i.new, label %.loopexit101.i, !llvm.loop !1674

..loopexit108_crit_edge.i:                        ; preds = %.loopexit101.i
  %i.bu = getelementptr inbounds [8 x i8], ptr %.091125.i, i64 %i.ae
  %i.bv = add nuw nsw i64 %.0127.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader107.i, !llvm.loop !1655

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit108_crit_edge.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
end_hunk_7
begin_hunk_8_@_ZNK6casadi14TrilSolveUnityILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %.not.i.i.i52 = icmp ugt i64 %i.bx, 1
  br i1 %.not.i.i.i52, label %_ZNK6casadi6MXNode3depEx.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.bx) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit53:                  ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.cf, 1
  br i1 %.not.i.i.i54, label %_ZNK6casadi6MXNode3depEx.exit55, label %bb.p

bb.p:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.cf) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit55:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit53
  %i.cg = load ptr, ptr %2, align 8, !tbaa !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %i.cl = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cm = load ptr, ptr %4, align 8, !tbaa !354
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !34
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp ne i64 %i.co, 0
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ci, i64 noundef %i.cl, i1 noundef zeroext %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.cq = load ptr, ptr %3, align 8, !tbaa !302
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !183
  %i.cs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u, !inline_history !357

.noexc56:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit55
  %i.cw = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %_ZNK6casadi6MXNode3nnzEx.exit58 unwind label %bb.u

_ZNK6casadi6MXNode3nnzEx.exit58:                  ; preds = %.noexc56
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.cr, i64 noundef %i.cw, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit58
  invoke void @_ZN6casadi13CodeGenerator9trilsolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext true, i64 noundef %i.f)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cx = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.cx, i8 noundef signext 10)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !785  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !785
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = icmp sgt i64 %i.ad, 0
  %i.al = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader105.us.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader105.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre141.pre.i = load i64, ptr %i.ah, align 8, !tbaa !183
  br label %.preheader105.us.i

.preheader105.us.i:                               ; preds = %..loopexit106_crit_edge.us.i, %.preheader105.us.preheader.i
  %.0127.us129.i = phi i64 [ %i.bw, %..loopexit106_crit_edge.us.i ], [ 0, %.preheader105.us.preheader.i ]
  %.091125.us130.i = phi ptr [ %i.bv, %..loopexit106_crit_edge.us.i ], [ %i.z, %.preheader105.us.preheader.i ] ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit100.us.i, %.preheader105.us.i
  %i.am = phi i64 [ %.pre141.pre.i, %.preheader105.us.i ], [ %i.ap, %.loopexit100.us.i ] ; 7 uses
  %.188115.us.i = phi i64 [ 0, %.preheader105.us.i ], [ %i.an, %.loopexit100.us.i ] ; 2 uses
  %i.an = add nuw nsw i64 %.188115.us.i, 1        ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 5 uses
  %i.aq = icmp slt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph114.us.i, label %.loopexit100.us.i

.lr.ph114.us.i.new:                               ; preds = %.prol.loopexit, %.lr.ph114.us.i.new
  %.1113.us.i = phi i64 [ %i.bi, %.lr.ph114.us.i.new ], [ %.1113.us.i.unr, %.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.1113.us.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !560
  %i.at = load double, ptr %i.bj, align 8, !tbaa !560
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.1113.us.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183
  %i.aw = getelementptr inbounds [8 x i8], ptr %.091125.us130.i, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !560
  %i.az = add nsw i64 %.1113.us.i, 1              ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bc = load double, ptr %i.bj, align 8, !tbaa !560
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.az
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds [8 x i8], ptr %.091125.us130.i, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !560
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !560
  %i.bi = add nsw i64 %.1113.us.i, 2              ; 2 uses
  %exitcond134.not.i.1 = icmp eq i64 %i.bi, %i.ap
  br i1 %exitcond134.not.i.1, label %.loopexit100.us.i, label %.lr.ph114.us.i.new, !llvm.loop !1675

.loopexit100.us.i:                                ; preds = %.prol.loopexit, %.lr.ph114.us.i.new, %bb.i
  %exitcond135.not.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond135.not.i, label %..loopexit106_crit_edge.us.i, label %bb.i, !llvm.loop !1676

.lr.ph114.us.i:                                   ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.091125.us130.i, i64 %.188115.us.i ; 3 uses
  %i.bk = sub i64 %i.ap, %i.am
  %.neg = add i64 %i.am, 1
  %xtraiter = and i64 %i.bk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph114.us.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.am
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !560
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !560
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !183
  %i.bq = getelementptr inbounds [8 x i8], ptr %.091125.us130.i, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !560
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double %i.br)
  store double %i.bs, ptr %i.bq, align 8, !tbaa !560
  %i.bt = add nsw i64 %i.am, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph114.us.i
  %.1113.us.i.unr = phi i64 [ %i.am, %.lr.ph114.us.i ], [ %i.bt, %.prol.loopexit.unr-lcssa ]
  %i.bu = icmp eq i64 %i.ap, %.neg
  br i1 %i.bu, label %.loopexit100.us.i, label %.lr.ph114.us.i.new

..loopexit106_crit_edge.us.i:                     ; preds = %.loopexit100.us.i
  %i.bv = getelementptr inbounds [8 x i8], ptr %.091125.us130.i, i64 %i.ae
  %i.bw = add nuw nsw i64 %.0127.us129.i, 1       ; 2 uses
  %exitcond136.not.i = icmp eq i64 %i.bw, %i.ad
  br i1 %exitcond136.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader105.us.i, !llvm.loop !1655

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit106_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !787
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !787
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_8
begin_hunk_9_@_ZNK6casadi10LinsolCallILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.fg = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.z

bb.s:                                             ; preds = %bb.h, %_ZNK6casadi6MXNode3depEx.exit87
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.s
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !38
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.z

bb.t:                                             ; preds = %.noexc91, %bb.k
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.v:                                             ; preds = %bb.m, %bb.l
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.v
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !38
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.u
  %.pn40 = phi { ptr, i32 } [ %i.fp, %bb.u ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.fq, %bb.v ]
  %i.fw = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.di
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fy = load i64, ptr %i.di, align 8, !tbaa !38
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %bb.t
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.fo, %bb.t ]
  %i.ga = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.w
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !38
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.z

._crit_edge.i.i139:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gg = call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gh, ptr %17, align 8, !tbaa !31
  store i16 29555, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.gi, align 8, !tbaa !39
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 18
  store i8 0, ptr %i.gj, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gk, ptr %18, align 8, !tbaa !31
  store i16 29298, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.gl, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 18
  store i8 0, ptr %i.gm, align 2, !tbaa !38
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(184) %i.gg, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.g, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i139
  %i.gq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gk
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.x
  %i.gs = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.gu = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gh
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.gw = load i64, ptr %i.gh, align 8, !tbaa !38
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  ret void

bb.y:                                             ; preds = %._crit_edge.i.i139
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gk
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.y
  %i.hb = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.hd = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gh
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.hf = load i64, ptr %i.gh, align 8, !tbaa !38
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn40.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  resume { ptr, i32 } %.pn44.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi10LinsolCallILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::scoped_checkout", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1678
  %i.o = tail call noundef i64 @_ZNK6casadi6Linsol8checkoutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.p = trunc i64 %i.o to i32                    ; 7 uses
  store i32 %i.p, ptr %5, align 8, !tbaa !1680
  %i.q = invoke noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.r = invoke noundef ptr @_ZNK6casadi13ProtoFunction6memoryEi(ptr noundef nonnull align 8 dereferenceable(168) %i.q, i32 noundef %i.p)
          to label %bb.h unwind label %bb.i       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not3536 = icmp eq ptr %i.t, %i.u
  br i1 %.not3536, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1682 ; 2 uses
  %.not23 = icmp eq ptr %i.w, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.i:                                             ; preds = %.noexc30, %_ZNK6casadi6MXNode3depEx.exit29, %bb.r, %bb.u, %bb.t, %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit, %bb.o, %bb.m, %bb.l, %bb.g, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.sroa.032.037 = phi ptr [ %i.z, %bb.j ], [ %i.t, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 64
  invoke void @_ZN6casadi6FStats5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.037) #37 ; 2 uses
  %.not35 = icmp eq ptr %i.z, %i.u
  br i1 %.not35, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN6casadi6FStats3ticEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.ad = invoke noundef i32 @_ZNK6casadi6Linsol5sfactEPKdi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ac, i32 noundef %i.p)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  %.not24 = icmp eq i32 %i.ad, 0
  br i1 %.not24, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.af = invoke noundef i32 @_ZNK6casadi6Linsol5nfactEPKdi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ae, i32 noundef %i.p)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  %.not25 = icmp eq i32 %i.af, 0
  br i1 %.not25, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.ah = load ptr, ptr %2, align 8, !tbaa !785
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i28.not = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i28.not, label %bb.r, label %_ZNK6casadi6MXNode3depEx.exit29

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNK6casadi6MXNode3depEx.exit29:                  ; preds = %bb.q
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc30 unwind label %bb.i

.noexc30:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit29
  %i.an = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit unwind label %bb.i

_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit: ; preds = %.noexc30
  %i.ao = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.an, i1 noundef zeroext true, i32 noundef %i.p)
          to label %bb.s unwind label %bb.i

bb.s:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ap = invoke noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.u unwind label %bb.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK6casadi13ProtoFunction10print_timeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6FStatsESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.v unwind label %bb.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.p, %bb.n
  %.020 = phi i32 [ 1, %bb.s ], [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.u ]
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK6casadi6Linsol7releaseEi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.p)
          to label %_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #34
  unreachable

_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret i32 %.020

bb.y:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.x, %bb.i ]
  call void @_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi10LinsolCallILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = tail call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = tail call noundef ptr @_ZNK6casadi13ProtoFunction6memoryEi(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i1 noundef zeroext true, i64 noundef %i.j)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi10LinsolCallILb1EE14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZNK6casadi6MXNode14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.265, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !382, !range !321, !noundef !322
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %.noexc6

bb.a:                                             ; preds = %._crit_edge.i.i
end_hunk_9
begin_hunk_10_@_ZNK6casadi10LinsolCallILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.fg = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.z

bb.s:                                             ; preds = %bb.h, %_ZNK6casadi6MXNode3depEx.exit87
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.s
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !38
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.z

bb.t:                                             ; preds = %.noexc91, %bb.k
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.v:                                             ; preds = %bb.m, %bb.l
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.v
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !38
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.u
  %.pn40 = phi { ptr, i32 } [ %i.fp, %bb.u ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.fq, %bb.v ]
  %i.fw = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.di
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fy = load i64, ptr %i.di, align 8, !tbaa !38
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %bb.t
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.fo, %bb.t ]
  %i.ga = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.w
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !38
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.z

._crit_edge.i.i139:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.j
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gg = call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gh, ptr %17, align 8, !tbaa !31
  store i16 29555, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.gi, align 8, !tbaa !39
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 18
  store i8 0, ptr %i.gj, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gk, ptr %18, align 8, !tbaa !31
  store i16 29298, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.gl, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 18
  store i8 0, ptr %i.gm, align 2, !tbaa !38
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(184) %i.gg, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.g, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i139
  %i.gq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gk
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.x
  %i.gs = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.gu = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gh
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.gw = load i64, ptr %i.gh, align 8, !tbaa !38
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  ret void

bb.y:                                             ; preds = %._crit_edge.i.i139
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gk
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.y
  %i.hb = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.hd = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gh
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.hf = load i64, ptr %i.gh, align 8, !tbaa !38
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn40.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  resume { ptr, i32 } %.pn44.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi10LinsolCallILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::scoped_checkout", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !785
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !785    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1678
  %i.o = tail call noundef i64 @_ZNK6casadi6Linsol8checkoutEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.p = trunc i64 %i.o to i32                    ; 7 uses
  store i32 %i.p, ptr %5, align 8, !tbaa !1680
  %i.q = invoke noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.r = invoke noundef ptr @_ZNK6casadi13ProtoFunction6memoryEi(ptr noundef nonnull align 8 dereferenceable(168) %i.q, i32 noundef %i.p)
          to label %bb.h unwind label %bb.i       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not3536 = icmp eq ptr %i.t, %i.u
  br i1 %.not3536, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1682 ; 2 uses
  %.not23 = icmp eq ptr %i.w, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.i:                                             ; preds = %.noexc30, %_ZNK6casadi6MXNode3depEx.exit29, %bb.r, %bb.u, %bb.t, %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit, %bb.o, %bb.m, %bb.l, %bb.g, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.sroa.032.037 = phi ptr [ %i.z, %bb.j ], [ %i.t, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 64
  invoke void @_ZN6casadi6FStats5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.037) #37 ; 2 uses
  %.not35 = icmp eq ptr %i.z, %i.u
  br i1 %.not35, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN6casadi6FStats3ticEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.ad = invoke noundef i32 @_ZNK6casadi6Linsol5sfactEPKdi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ac, i32 noundef %i.p)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  %.not24 = icmp eq i32 %i.ad, 0
  br i1 %.not24, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.af = invoke noundef i32 @_ZNK6casadi6Linsol5nfactEPKdi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ae, i32 noundef %i.p)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  %.not25 = icmp eq i32 %i.af, 0
  br i1 %.not25, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !785
  %i.ah = load ptr, ptr %2, align 8, !tbaa !785
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i28.not = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i28.not, label %bb.r, label %_ZNK6casadi6MXNode3depEx.exit29

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNK6casadi6MXNode3depEx.exit29:                  ; preds = %bb.q
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc30 unwind label %bb.i

.noexc30:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit29
  %i.an = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit unwind label %bb.i

_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit: ; preds = %.noexc30
  %i.ao = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.an, i1 noundef zeroext false, i32 noundef %i.p)
          to label %bb.s unwind label %bb.i

bb.s:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ap = invoke noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.u unwind label %bb.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK6casadi13ProtoFunction10print_timeERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6FStatsESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.v unwind label %bb.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.p, %bb.n
  %.020 = phi i32 [ 1, %bb.s ], [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.u ]
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNK6casadi6Linsol7releaseEi(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.p)
          to label %_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #34
  unreachable

_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret i32 %.020

bb.y:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.x, %bb.i ]
  call void @_ZN6casadi15scoped_checkoutINS_6LinsolEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi10LinsolCallILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = tail call noundef ptr @_ZNK6casadi6LinsolptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = tail call noundef ptr @_ZNK6casadi13ProtoFunction6memoryEi(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.d, i1 noundef zeroext false, i64 noundef %i.j)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi10LinsolCallILb0EE14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZNK6casadi6MXNode14serialize_bodyERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.265, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !382, !range !321, !noundef !322
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %.noexc6

bb.a:                                             ; preds = %._crit_edge.i.i
end_hunk_10
begin_hunk_11_@_ZNK6casadi16SetNonzerosSliceILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  ret void

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.bt
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.aj
  %i.ga = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.gc = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bq
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ge = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.gg = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bn
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.gi = load i64, ptr %i.bn, align 8, !tbaa !38
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.at

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.al:                                            ; preds = %.noexc96
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.cr
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.al
  %i.go = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.gq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.cl
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.gs = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ak
  %.pn43.pn = phi { ptr, i32 } [ %i.gk, %bb.ak ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.gu = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ci
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.gw = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.at

bb.am:                                            ; preds = %bb.r, %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %.noexc114, %bb.u, %bb.t, %bb.v
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ao:                                            ; preds = %bb.x, %bb.w
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ap:                                            ; preds = %.noexc116, %bb.y, %_ZNK6casadi6MXNode3nnzEx.exit118
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.aq:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.aq
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !38
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ap
  %.pn47 = phi { ptr, i32 } [ %i.hb, %bb.ap ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.hc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ao
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.ha, %bb.ao ] ; 2 uses
  %i.hi = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ar
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !38
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.an
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.an ], [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn47.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.am
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.gy, %bb.am ]
  %i.hn = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.as
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !38
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 5 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1712 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1709 ; 2 uses
  %.not1920.i = icmp eq i64 %i.r, %i.p
  br i1 %.not1920.i, label %_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1713
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.x, %bb.g ] ; 2 uses
  %.01621.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01621.i, i64 8
  %i.w = load double, ptr %.01621.i, align 8, !tbaa !560
  store double %i.w, ptr %.022.i, align 8, !tbaa !560
  %i.x = getelementptr inbounds [8 x i8], ptr %.022.i, i64 %i.u ; 2 uses
  %.not19.i = icmp eq ptr %i.x, %i.q
  br i1 %.not19.i, label %_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %bb.g, !llvm.loop !1714

_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %bb.g, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !787    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !787
  %i.d = load ptr, ptr %2, align 8, !tbaa !787    ; 4 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6casadi6MXNode3depEx.exit.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %_ZNK6casadi6MXNode3depEx.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNK6casadi6MXNode3depEx.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %_ZNK6casadi6MXNode3depEx.exit.i ] ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.o = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i, !llvm.loop !1574

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1712 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.s
  %i.u = load i64, ptr %i.q, align 8, !tbaa !1709 ; 2 uses
  %.not1920.i = icmp eq i64 %i.u, %i.s
  br i1 %.not1920.i, label %_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i
  %i.v = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.022.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.01621.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01621.i, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.022.i, ptr noundef nonnull align 8 dereferenceable(8) %.01621.i) ; 0 uses
  %i.z = load i64, ptr %i.w, align 8, !tbaa !1713
  %i.aa = getelementptr inbounds [8 x i8], ptr %.022.i, i64 %i.z ; 2 uses
  %.not19.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not19.i, label %_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_.exit, label %bb.d, !llvm.loop !1715

_ZNK6casadi16SetNonzerosSliceILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_.exit: ; preds = %bb.d, %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16SetNonzerosSliceILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.d ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %.loopexit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi11SetNonzerosILb0EE11eval_linearERKSt6vectorISt5arrayINS_2MXELm3EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi6MXNode21eval_linear_rearrangeERKSt6vectorISt5arrayINS_2MXELm3EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi11SetNonzerosILb0EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.111", align 8   ; 18 uses
  %4 = alloca %"class.std::vector.111", align 8   ; 17 uses
  %5 = alloca %"class.std::vector.111", align 8   ; 13 uses
  %6 = alloca %"class.std::vector.111", align 8   ; 20 uses
  %7 = alloca %"class.std::vector.111", align 8   ; 17 uses
  %8 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %9 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %10 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %11 = alloca %"class.std::vector.111", align 8  ; 8 uses
  %12 = alloca %"class.std::vector.111", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %14 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %15 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %16 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %17 = alloca %"class.casadi::MX", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 888
end_hunk_11
begin_hunk_12_@_ZNK6casadi11SetNonzerosILb0EE10ad_reverseERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_:bb.a
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.vl, i64 %.099734
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef nonnull align 8 dereferenceable(8) %i.vk)
          to label %.noexc199 unwind label %.loopexit321

.noexc199:                                        ; preds = %bb.dz
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 unwind label %bb.ea ; 0 uses

bb.ea:                                            ; preds = %.noexc199
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body200

_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202: ; preds = %.noexc199
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202, %bb.ad, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %.sroa.10306.3 = phi ptr [ %.sroa.10306.0726, %bb.ad ], [ %.sroa.10306.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.10306.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0295.3 = phi ptr [ %.sroa.0295.0727, %bb.ad ], [ %.sroa.0295.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.0295.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.sroa.10.3 = phi ptr [ %.sroa.10.0728, %bb.ad ], [ %.sroa.10.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.10.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0285.3 = phi ptr [ %.sroa.0285.0729, %bb.ad ], [ %.sroa.0285.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.0285.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.0730, %bb.ad ], [ %.sroa.11.1, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.11.1, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ]
  %.sroa.16.3 = phi ptr [ %.sroa.16.0731, %bb.ad ], [ %.sroa.16.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.16.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0301.3 = phi ptr [ %.sroa.0301.0732, %bb.ad ], [ %.sroa.0301.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ %.sroa.0301.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.2102 = phi i1 [ %.0100733, %bb.ad ], [ false, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit202 ], [ false, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ]
  %i.vq = add nuw nsw i64 %.099734, 1             ; 2 uses
  %exitcond1110.not = icmp eq i64 %i.vq, %i.k
  br i1 %exitcond1110.not, label %._crit_edge737, label %bb.t, !llvm.loop !1734

.body200:                                         ; preds = %.loopexit315, %.loopexit.split-lp316, %.loopexit, %.loopexit.split-lp, %.loopexit321, %.loopexit.split-lp322, %bb.ea, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198, %bb.br, %bb.ay, %bb.ax, %bb.aw, %bb.al, %bb.ag
  %.sroa.10306.4 = phi ptr [ %.sroa.10306.0726, %bb.al ], [ %.sroa.10306.0726, %bb.ag ], [ %i.dy, %bb.br ], [ %.sroa.10306.2, %.loopexit.split-lp ], [ %.sroa.10306.1.ph323, %.loopexit.split-lp322 ], [ %.sroa.10306.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %i.dy, %bb.ay ], [ %i.dy, %bb.ax ], [ %.sroa.10306.0726, %bb.aw ], [ %.sroa.10306.2, %bb.ea ], [ %.sroa.10306.1.ph, %.loopexit321 ], [ %.sroa.10306.2, %.loopexit ], [ %.sroa.10306.2, %.loopexit315 ], [ %.sroa.10306.2, %.loopexit.split-lp316 ]
  %.sroa.0295.4 = phi ptr [ %.sroa.0295.0727, %bb.al ], [ %.sroa.0295.0727, %bb.ag ], [ %i.eg, %bb.br ], [ %.sroa.0295.2, %.loopexit.split-lp ], [ %.sroa.0295.1.ph324, %.loopexit.split-lp322 ], [ %.sroa.0295.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %i.eg, %bb.ay ], [ %.sroa.0295.0727, %bb.ax ], [ %.sroa.0295.0727, %bb.aw ], [ %.sroa.0295.2, %bb.ea ], [ %.sroa.0295.1.ph, %.loopexit321 ], [ %.sroa.0295.2, %.loopexit ], [ %.sroa.0295.2, %.loopexit315 ], [ %.sroa.0295.2, %.loopexit.split-lp316 ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.0728, %bb.al ], [ %.sroa.10.0728, %bb.ag ], [ %i.eh, %bb.br ], [ %.sroa.10.2, %.loopexit.split-lp ], [ %.sroa.10.1.ph325, %.loopexit.split-lp322 ], [ %.sroa.10.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %i.eh, %bb.ay ], [ %.sroa.10.0728, %bb.ax ], [ %.sroa.10.0728, %bb.aw ], [ %.sroa.10.2, %bb.ea ], [ %.sroa.10.1.ph, %.loopexit321 ], [ %.sroa.10.2, %.loopexit ], [ %.sroa.10.2, %.loopexit315 ], [ %.sroa.10.2, %.loopexit.split-lp316 ]
  %.sroa.0285.4 = phi ptr [ %.sroa.0285.0729, %bb.al ], [ %.sroa.0285.0729, %bb.ag ], [ %.sroa.0285.5, %bb.br ], [ %.sroa.0285.2, %.loopexit.split-lp ], [ %.sroa.0285.1.ph326, %.loopexit.split-lp322 ], [ %.sroa.0285.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %.sroa.0285.0729, %bb.ay ], [ %.sroa.0285.0729, %bb.ax ], [ %.sroa.0285.0729, %bb.aw ], [ %.sroa.0285.2, %bb.ea ], [ %.sroa.0285.1.ph, %.loopexit321 ], [ %.sroa.0285.2, %.loopexit ], [ %.sroa.0285.2, %.loopexit315 ], [ %.sroa.0285.2, %.loopexit.split-lp316 ] ; 3 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.0731, %bb.al ], [ %.sroa.16.0731, %bb.ag ], [ %.sroa.16.5, %bb.br ], [ %.sroa.16.2, %.loopexit.split-lp ], [ %.sroa.16.1.ph327, %.loopexit.split-lp322 ], [ %.sroa.16.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %.sroa.16.0731, %bb.ay ], [ %.sroa.16.0731, %bb.ax ], [ %.sroa.16.0731, %bb.aw ], [ %.sroa.16.2, %bb.ea ], [ %.sroa.16.1.ph, %.loopexit321 ], [ %.sroa.16.2, %.loopexit ], [ %.sroa.16.2, %.loopexit315 ], [ %.sroa.16.2, %.loopexit.split-lp316 ]
  %.sroa.0301.4 = phi ptr [ %.sroa.0301.0732, %bb.al ], [ %.sroa.0301.0732, %bb.ag ], [ %i.dx, %bb.br ], [ %.sroa.0301.2, %.loopexit.split-lp ], [ %.sroa.0301.1.ph328, %.loopexit.split-lp322 ], [ %.sroa.0301.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %i.dx, %bb.ay ], [ %i.dx, %bb.ax ], [ %.sroa.0301.0732, %bb.aw ], [ %.sroa.0301.2, %bb.ea ], [ %.sroa.0301.1.ph, %.loopexit321 ], [ %.sroa.0301.2, %.loopexit ], [ %.sroa.0301.2, %.loopexit315 ], [ %.sroa.0301.2, %.loopexit.split-lp316 ] ; 3 uses
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %bb.al ], [ %.pn113, %bb.ag ], [ %i.lf, %bb.br ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp330, %.loopexit.split-lp322 ], [ %.pn106.pn.pn.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit198 ], [ %i.fn, %bb.ay ], [ %i.fm, %bb.ax ], [ %i.fl, %bb.aw ], [ %i.vp, %bb.ea ], [ %lpad.loopexit329, %.loopexit321 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit317, %.loopexit315 ], [ %lpad.loopexit.split-lp318, %.loopexit.split-lp316 ] ; 2 uses
  %i.vr = load ptr, ptr %14, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i203 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIxSaIxEED2Ev.exit204, label %bb.ec

bb.ec:                                            ; preds = %.body200
  %i.vs = load ptr, ptr %i.ag, align 8, !tbaa !303
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vr to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @_ZdlPvm(ptr noundef nonnull %i.vr, i64 noundef %i.vv) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit204

_ZNSt6vectorIxSaIxEED2Ev.exit204:                 ; preds = %.body200, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.vw = load ptr, ptr %13, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i205 = icmp eq ptr %i.vw, null
  br i1 %.not.i.i.i205, label %_ZNSt6vectorIxSaIxEED2Ev.exit206, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit204
  %i.vx = load ptr, ptr %i.al, align 8, !tbaa !303
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %i.vw to i64
  %i.wa = sub i64 %i.vy, %i.vz
  call void @_ZdlPvm(ptr noundef nonnull %i.vw, i64 noundef %i.wa) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit206

_ZNSt6vectorIxSaIxEED2Ev.exit206:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit204, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.wb = load ptr, ptr %12, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i207 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i.i207, label %_ZNSt6vectorIxSaIxEED2Ev.exit208, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit206
  %i.wc = load ptr, ptr %i.am, align 8, !tbaa !303
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = ptrtoint ptr %i.wb to i64
  %i.wf = sub i64 %i.wd, %i.we
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef %i.wf) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit208

_ZNSt6vectorIxSaIxEED2Ev.exit208:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit206, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.wg = load ptr, ptr %11, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i209 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorIxSaIxEED2Ev.exit210, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit208
  %i.wh = load ptr, ptr %i.ai, align 8, !tbaa !303
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = ptrtoint ptr %i.wg to i64
  %i.wk = sub i64 %i.wi, %i.wj
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wk) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit210

_ZNSt6vectorIxSaIxEED2Ev.exit210:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit208, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.wl = load ptr, ptr %10, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i211 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i211, label %_ZNSt6vectorIxSaIxEED2Ev.exit212, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit210
  %i.wm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !303
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit212

_ZNSt6vectorIxSaIxEED2Ev.exit212:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit210, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not.i.i.i213 = icmp eq ptr %.sroa.0285.4, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIxSaIxEED2Ev.exit214, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit212
  %i.wr = ptrtoint ptr %.sroa.16.4 to i64
  %i.ws = ptrtoint ptr %.sroa.0285.4 to i64
  %i.wt = sub i64 %i.wr, %i.ws
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0285.4, i64 noundef %i.wt) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit214

_ZNSt6vectorIxSaIxEED2Ev.exit214:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit212, %bb.eh
  %i.wu = load ptr, ptr %9, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i215 = icmp eq ptr %i.wu, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorIxSaIxEED2Ev.exit216, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit214
  %i.wv = load ptr, ptr %i.ad, align 8, !tbaa !303
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.wy) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit216

_ZNSt6vectorIxSaIxEED2Ev.exit216:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit214, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %.not.i.i.i217 = icmp eq ptr %.sroa.0295.4, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIxSaIxEED2Ev.exit218, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit216
  %i.wz = ptrtoint ptr %.sroa.10.4 to i64
  %i.xa = ptrtoint ptr %.sroa.0295.4 to i64
  %i.xb = sub i64 %i.wz, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0295.4, i64 noundef %i.xb) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit218

_ZNSt6vectorIxSaIxEED2Ev.exit218:                 ; preds = %bb.ej, %_ZNSt6vectorIxSaIxEED2Ev.exit216
  %.not.i.i.i219 = icmp eq ptr %.sroa.0301.4, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorIxSaIxEED2Ev.exit220, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit218
  %i.xc = ptrtoint ptr %.sroa.10306.4 to i64
  %i.xd = ptrtoint ptr %.sroa.0301.4 to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0301.4, i64 noundef %i.xe) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit220

_ZNSt6vectorIxSaIxEED2Ev.exit220:                 ; preds = %bb.s, %bb.r, %bb.ek, %_ZNSt6vectorIxSaIxEED2Ev.exit218, %bb.q
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.q ], [ %.pn115.pn.pn, %bb.ek ], [ %.pn115.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit218 ], [ %i.cn, %bb.s ], [ %i.cm, %bb.r ]
  %i.xf = load ptr, ptr %8, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i221 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIxSaIxEED2Ev.exit222, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit220
  %i.xg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !303
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit222

_ZNSt6vectorIxSaIxEED2Ev.exit222:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit220, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn115.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb0EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1709 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1712
  %.not1718 = icmp eq i64 %i.n, %i.p
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.020 = phi i64 [ %i.n, %.lr.ph ], [ %i.v, %bb.f ] ; 2 uses
  %.01419 = phi ptr [ %i.c, %.lr.ph ], [ %i.r, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01419, i64 8
  %i.s = load i64, ptr %.01419, align 8, !tbaa !183
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.020
  store i64 %i.s, ptr %i.t, align 8, !tbaa !183
  %i.u = load i64, ptr %i.q, align 8, !tbaa !1713
  %i.v = add nsw i64 %i.u, %.020                  ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !1712
  %.not17 = icmp eq i64 %i.v, %i.w
  br i1 %.not17, label %._crit_edge, label %bb.f, !llvm.loop !1735
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb0EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1709 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1712
  %.not12 = icmp eq i64 %i.c, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.n = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 8 uses
  %.not.i = icmp ne ptr %i.i, %i.a
  %i.o = icmp sgt i64 %i.n, 0
  %or.cond.i = and i1 %.not.i, %i.o
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.n, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.p = shl i64 %i.n, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.p
  %scevgep18 = getelementptr i8, ptr %i.a, i64 %i.p
  %bound0 = icmp ult ptr %i.i, %scevgep18
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775804      ; 4 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.a, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.t ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.a, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !183, !alias.scope !1736
  %wide.load20 = load <2 x i64>, ptr %i.u, align 8, !tbaa !183, !alias.scope !1736
  %i.v = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load21 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1739, !noalias !1736
  %wide.load22 = load <2 x i64>, ptr %i.v, align 8, !tbaa !183, !alias.scope !1739, !noalias !1736
  %i.w = or <2 x i64> %wide.load21, %wide.load
  %i.x = or <2 x i64> %wide.load22, %wide.load20
  store <2 x i64> %i.w, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1739, !noalias !1736
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !183, !alias.scope !1739, !noalias !1736
  store <2 x i64> zeroinitializer, ptr %next.gep19, align 8, !tbaa !183, !alias.scope !1736
  store <2 x i64> zeroinitializer, ptr %i.u, align 8, !tbaa !183, !alias.scope !1736
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader25, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ae, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader25 ]
  %.0712.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader25 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader25 ]
  %i.z = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ab = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ae = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1742

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader25
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader25 ], [ %i.ae, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader25 ], [ %i.aa, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader25 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = sub nsw i64 %.013.i.ph, %i.n
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ah = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.ai = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.aj = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.ak = or i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %.0712.i, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.am = load i64, ptr %i.al, align 8, !tbaa !183
  %i.an = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !183
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !183
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !183
  %i.as = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !183
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.an, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !183
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !183
  %i.az = or i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.as, align 8, !tbaa !183
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.av, align 8, !tbaa !183
  %i.bb = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1743

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi i64 [ %i.c, %.lr.ph ], [ %i.bi, %bb.b ] ; 2 uses
  %.01113 = phi ptr [ %i.g, %.lr.ph ], [ %i.be, %bb.b ] ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.014 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.01113, i64 8
  %i.bf = load i64, ptr %.01113, align 8, !tbaa !183
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %.01113, align 8, !tbaa !183
  store i64 0, ptr %i.bc, align 8, !tbaa !183
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !1713
  %i.bi = add nsw i64 %i.bh, %.014                ; 2 uses
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !1712
end_hunk_12
begin_hunk_13_@_ZNK6casadi11SetNonzerosILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_:bb.a
bb.ds:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit160
  %i.pk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !303
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.po) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit162

_ZNSt6vectorIxSaIxEED2Ev.exit162:                 ; preds = %bb.ds, %_ZNSt6vectorIxSaIxEED2Ev.exit160, %bb.n
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn93.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit160 ], [ %.pn93.pn.pn, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit162, %bb.m
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit162 ], [ %i.ai, %bb.m ] ; 2 uses
  %i.pp = load ptr, ptr %4, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIxSaIxEED2Ev.exit164, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !303
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pp to i64
  %i.pu = sub i64 %i.ps, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.pu) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit164

_ZNSt6vectorIxSaIxEED2Ev.exit164:                 ; preds = %bb.du, %bb.dt, %bb.l
  %.pn93.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn93.pn.pn.pn.pn, %bb.dt ], [ %.pn93.pn.pn.pn.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit164, %bb.k
  %.pn93.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit164 ], [ %i.ag, %bb.k ]
  %i.pv = load ptr, ptr %3, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIxSaIxEED2Ev.exit166, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !303
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit166

_ZNSt6vectorIxSaIxEED2Ev.exit166:                 ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK6casadi8Sparsity7get_colEv(ptr dead_on_unwind writable sret(%"class.std::vector.111") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK6casadi8Sparsity4findERSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK6casadi8Sparsity6get_nzERSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK6casadi8Sparsity5uniteERKS0_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !302    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !183
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !300
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #35
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !183
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !183
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !302
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !300
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !303
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

declare void @_ZNK6casadi5Slice4dispERSob(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPxS1_EEmRKx(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !183    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !304

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !300
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !183
  store i64 %i.s, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !300
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !304

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !183
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !183
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !183
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1754

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1755

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !183
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !183
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1757

_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !300
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !304

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !300
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !183
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !300
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !183
  store <2 x i64> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !183
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1758

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !183
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1759

end_hunk_13
begin_hunk_14_@_ZNK6casadi17SetNonzerosSlice2ILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bc

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.at:                                            ; preds = %.noexc104
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.cr
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.at
  %i.hw = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hy = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.cl
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.ia = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.as
  %.pn47.pn = phi { ptr, i32 } [ %i.hs, %bb.as ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ic = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ci
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.ie = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bc

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.dm
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.au
  %i.ij = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.il = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.dj
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.in = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ip = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.dg
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.ir = load i64, ptr %i.dg, align 8, !tbaa !38
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.bc

bb.av:                                            ; preds = %bb.s, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %.noexc143, %bb.v, %bb.u, %bb.w
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.ax:                                            ; preds = %bb.y, %bb.x
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %.noexc145, %bb.z, %_ZNK6casadi6MXNode3nnzEx.exit147
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.az:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.az
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !38
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ay
  %.pn55 = phi { ptr, i32 } [ %i.iw, %bb.ay ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.ix, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %bb.ax
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.iv, %bb.ax ] ; 2 uses
  %i.jd = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ba
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !38
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.aw
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.aw ], [ %.pn55.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn55.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.av
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.it, %bb.av ]
  %i.ji = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bb
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !38
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.pn55.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  resume { ptr, i32 } %.pn55.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 5 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1771 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1769 ; 2 uses
  %.not2429.i = icmp eq i64 %i.r, %i.p
  br i1 %.not2429.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1773 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1774 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1772
  %.not2526.i = icmp eq i64 %i.t, %i.v
  br i1 %.not2526.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i.split

.lr.ph32.i.split:                                 ; preds = %.lr.ph32.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1775
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i.split
  %.02031.i = phi ptr [ %i.y, %.lr.ph32.i.split ], [ %i.ad, %._crit_edge.i.loopexit ] ; 3 uses
  %.02130.i = phi ptr [ %i.c, %.lr.ph32.i.split ], [ %i.ae, %._crit_edge.i.loopexit ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.v
  %i.ac = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.t
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.x ; 2 uses
  %.not24.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not24.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1776

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.028.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.127.i = phi ptr [ %.02130.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.i, i64 8 ; 2 uses
  %i.af = load double, ptr %.127.i, align 8, !tbaa !560
  store double %i.af, ptr %.028.i, align 8, !tbaa !560
  %i.ag = getelementptr inbounds [8 x i8], ptr %.028.i, i64 %i.aa ; 2 uses
  %.not25.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not25.i, label %._crit_edge.i.loopexit, label %bb.g, !llvm.loop !1777

_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosSlice2ILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36, !noalias !1778, !inline_history !492 ; 6 uses
  invoke void @_ZN6casadi11SetNonzerosILb0EEC2ERKNS_2MXES4_(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit unwind label %bb.c, !noalias !1778, !inline_history !493

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.ad, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 112) #33, !noalias !1778, !inline_history !492
  br label %common.resume

_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit: ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 896) (i8, ptr @_ZTVN6casadi17SetNonzerosSlice2ILb0EEE, i64 16), ptr %i.v, align 8, !tbaa !8, !noalias !1778
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1778
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1778
  call void @_ZN6casadi2MX6createEPNS_6MXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull %i.v), !inline_history !492
  %i.ab = load ptr, ptr %2, align 8, !tbaa !26
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.e:                                             ; preds = %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1769 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1771 ; 2 uses
  %.not2227 = icmp eq i64 %i.n, %i.p
  br i1 %.not2227, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %i.r, align 8, !tbaa !1774
  br label %bb.f

._crit_edge31:                                    ; preds = %._crit_edge, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph30, %._crit_edge
  %i.u = phi i64 [ %i.p, %.lr.ph30 ], [ %i.y, %._crit_edge ]
  %i.v = phi i64 [ %.pre, %.lr.ph30 ], [ %i.z, %._crit_edge ] ; 2 uses
  %.01829 = phi i64 [ %i.n, %.lr.ph30 ], [ %i.ab, %._crit_edge ] ; 3 uses
  %.01928 = phi ptr [ %i.c, %.lr.ph30 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !1773 ; 2 uses
  %.not2324 = icmp eq i64 %i.w, %i.v
  br i1 %.not2324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.x = add nsw i64 %i.w, %.01829
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre32 = load i64, ptr %i.o, align 8, !tbaa !1771
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.y = phi i64 [ %i.u, %bb.f ], [ %.pre32, %._crit_edge.loopexit ] ; 2 uses
  %i.z = phi i64 [ %i.v, %bb.f ], [ %i.ah, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01928, %bb.f ], [ %i.ac, %._crit_edge.loopexit ]
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !1772
  %i.ab = add nsw i64 %i.aa, %.01829              ; 2 uses
  %.not22 = icmp eq i64 %i.ab, %i.y
  br i1 %.not22, label %._crit_edge31, label %bb.f, !llvm.loop !1781

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi i64 [ %i.ag, %.lr.ph ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.ac, %.lr.ph ], [ %.01928, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.125, i64 8 ; 2 uses
  %i.ad = load i64, ptr %.125, align 8, !tbaa !183
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.026
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !183
  %i.af = load i64, ptr %i.s, align 8, !tbaa !1775
  %i.ag = add nsw i64 %i.af, %.026                ; 2 uses
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !1774 ; 2 uses
  %i.ai = add nsw i64 %i.ah, %.01829
  %.not23 = icmp eq i64 %i.ag, %i.ai
  br i1 %.not23, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1782
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1769 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1771 ; 2 uses
  %.not21 = icmp eq i64 %i.c, %i.e
  br i1 %.not21, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1774
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 8 uses
  %.not.i = icmp ne ptr %i.l, %i.a
  %i.r = icmp sgt i64 %i.q, 0
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge26
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl i64 %i.q, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.s
  %scevgep37 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.l, %scevgep37
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 4 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.w ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep38, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !183, !alias.scope !1783
  %wide.load39 = load <2 x i64>, ptr %i.x, align 8, !tbaa !183, !alias.scope !1783
  %i.y = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1786, !noalias !1783
  %wide.load41 = load <2 x i64>, ptr %i.y, align 8, !tbaa !183, !alias.scope !1786, !noalias !1783
  %i.z = or <2 x i64> %wide.load40, %wide.load
  %i.aa = or <2 x i64> %wide.load41, %wide.load39
  store <2 x i64> %i.z, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1786, !noalias !1783
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !183, !alias.scope !1786, !noalias !1783
  store <2 x i64> zeroinitializer, ptr %next.gep38, align 8, !tbaa !183, !alias.scope !1783
  store <2 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !183, !alias.scope !1783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader44

.lr.ph.i.preheader44:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader44, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ah, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader44 ]
  %.0712.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader44 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ag, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader44 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader44 ]
  %i.ac = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ae = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ah = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1789

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader44
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader44 ], [ %i.ah, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader44 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader44 ], [ %i.ag, %.lr.ph.i.prol ]
  %i.ai = sub nsw i64 %.013.i.ph, %i.q
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ak = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.am = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %.0712.i, align 8, !tbaa !183
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !183
  %i.as = or i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.al, align 8, !tbaa !183
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNK6casadi17SetNonzerosVectorILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cn
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.hs = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.aw

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.am:                                            ; preds = %.noexc127
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.dr
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.am
  %i.hy = load i64, ptr %i.dr, align 8, !tbaa !38
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ia = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.dl
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ic = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.al
  %.pn52.pn = phi { ptr, i32 } [ %i.hu, %bb.al ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ie = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.di
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.ig = load i64, ptr %i.di, align 8, !tbaa !38
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.aw

bb.an:                                            ; preds = %bb.au, %bb.at, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ao:                                            ; preds = %.noexc142, %bb.s, %_ZNK6casadi6MXNode3nnzEx.exit144
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.ap:                                            ; preds = %bb.v, %bb.u, %bb.t
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %.noexc148, %bb.y, %bb.x, %bb.z
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.ar:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.ar
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !38
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.aq
  %.pn56 = phi { ptr, i32 } [ %i.il, %bb.aq ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.im, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.ap
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.ik, %bb.ap ] ; 2 uses
  %i.is = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.as
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !38
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.ao
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.ij, %bb.ao ], [ %.pn56.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn56.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.aw

_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit
  %i.ix = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.296)
          to label %bb.at unwind label %bb.an

bb.at:                                            ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread
  %i.iy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ix, ptr noundef nonnull @.str.22)
          to label %bb.au unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.iz = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.iy, ptr noundef nonnull @.str.297)
          to label %bb.av unwind label %bb.an     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.ja = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.av
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !38
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.pn60 = phi { ptr, i32 } [ %i.ii, %bb.an ], [ %.pn56.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ]
  %i.jf = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.aw
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !38
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 4 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !281  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !281  ; 2 uses
  %.not1819.i = icmp eq ptr %i.o, %i.q
  br i1 %.not1819.i, label %_ZNK6casadi17SetNonzerosVectorILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, %bb.h
  %.021.i = phi ptr [ %i.w, %bb.h ], [ %i.c, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i ] ; 2 uses
  %.sroa.014.020.i = phi ptr [ %i.v, %bb.h ], [ %i.o, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i ] ; 2 uses
  %i.r = load i64, ptr %.sroa.014.020.i, align 8, !tbaa !183 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.t = load double, ptr %.021.i, align 8, !tbaa !560
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.r
  store double %i.t, ptr %i.u, align 8, !tbaa !560
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.not18.i = icmp eq ptr %i.v, %i.q
  br i1 %.not18.i, label %_ZNK6casadi17SetNonzerosVectorILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1804

_ZNK6casadi17SetNonzerosVectorILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %bb.h, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosVectorILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosVectorILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKSt6vectorIxSaIxEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.d ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %.loopexit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb0EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !281  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !281  ; 2 uses
  %.not1819 = icmp eq ptr %i.n, %i.p
  br i1 %.not1819, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, %bb.g
  %.021 = phi ptr [ %i.v, %bb.g ], [ %i.c, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ] ; 2 uses
  %.sroa.014.020 = phi ptr [ %i.u, %bb.g ], [ %i.n, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ] ; 2 uses
  %i.q = load i64, ptr %.sroa.014.020, align 8, !tbaa !183 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = load i64, ptr %.021, align 8, !tbaa !183
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  store i64 %i.s, ptr %i.t, align 8, !tbaa !183
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.not18 = icmp eq ptr %i.u, %i.p
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !1805
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb0EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281  ; 2 uses
  %.not14 = icmp eq ptr %i.c, %i.e
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 8 uses
  %.not.i = icmp ne ptr %i.h, %i.a
  %i.n = icmp sgt i64 %i.m, 0
  %or.cond.i = and i1 %.not.i, %i.n
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.m, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.o = shl i64 %i.m, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.o
  %scevgep23 = getelementptr i8, ptr %i.a, i64 %i.o
  %bound0 = icmp ult ptr %i.h, %scevgep23
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 9223372036854775804      ; 4 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.s ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep24, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !183, !alias.scope !1806
  %wide.load25 = load <2 x i64>, ptr %i.t, align 8, !tbaa !183, !alias.scope !1806
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load26 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1809, !noalias !1806
  %wide.load27 = load <2 x i64>, ptr %i.u, align 8, !tbaa !183, !alias.scope !1809, !noalias !1806
  %i.v = or <2 x i64> %wide.load26, %wide.load
  %i.w = or <2 x i64> %wide.load27, %wide.load25
  store <2 x i64> %i.v, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1809, !noalias !1806
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !183, !alias.scope !1809, !noalias !1806
  store <2 x i64> zeroinitializer, ptr %next.gep24, align 8, !tbaa !183, !alias.scope !1806
  store <2 x i64> zeroinitializer, ptr %i.t, align 8, !tbaa !183, !alias.scope !1806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader30 ]
  %.0712.i.prol = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader30 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader30 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.y = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.aa = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ad = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1812

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader30 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader30 ], [ %i.z, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader30 ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %.013.i.ph, %i.m
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ag = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.ai = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.aj = or i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %.0712.i, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !183
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.ah, align 8, !tbaa !183
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !183
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !183
  %i.ar = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !183
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.am, align 8, !tbaa !183
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !183
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183
  %i.aw = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !183
  %i.ay = or i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !183
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.au, align 8, !tbaa !183
  %i.ba = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ba, %i.m
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1813

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.016 = phi ptr [ %i.bk, %bb.c ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %i.bj, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %i.bb = load i64, ptr %.sroa.09.015, align 8, !tbaa !183 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
  %i.bf = load i64, ptr %.016, align 8, !tbaa !183
  %i.bg = or i64 %i.bf, %i.be
end_hunk_15
begin_hunk_16_@_ZNK6casadi16SetNonzerosSliceILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  ret void

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.bt
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.aj
  %i.ga = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.gc = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bq
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ge = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.gg = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bn
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.gi = load i64, ptr %i.bn, align 8, !tbaa !38
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.at

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.al:                                            ; preds = %.noexc96
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.cr
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.al
  %i.go = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.gq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.cl
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.gs = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ak
  %.pn43.pn = phi { ptr, i32 } [ %i.gk, %bb.ak ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.gu = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ci
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.gw = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.at

bb.am:                                            ; preds = %bb.r, %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %.noexc114, %bb.u, %bb.t, %bb.v
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ao:                                            ; preds = %bb.x, %bb.w
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ap:                                            ; preds = %.noexc116, %bb.y, %_ZNK6casadi6MXNode3nnzEx.exit118
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.aq:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.aq
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !38
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ap
  %.pn47 = phi { ptr, i32 } [ %i.hb, %bb.ap ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.hc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ao
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.ha, %bb.ao ] ; 2 uses
  %i.hi = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ar
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !38
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.an
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.an ], [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn47.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.am
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.gy, %bb.am ]
  %i.hn = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.as
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !38
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 5 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1834 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1831 ; 2 uses
  %.not1920.i = icmp eq i64 %i.r, %i.p
  br i1 %.not1920.i, label %_ZNK6casadi16SetNonzerosSliceILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1835
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.z, %bb.g ] ; 3 uses
  %.01621.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01621.i, i64 8
  %i.w = load double, ptr %.01621.i, align 8, !tbaa !560
  %i.x = load double, ptr %.022.i, align 8, !tbaa !560
  %i.y = fadd double %i.w, %i.x
  store double %i.y, ptr %.022.i, align 8, !tbaa !560
  %i.z = getelementptr inbounds [8 x i8], ptr %.022.i, i64 %i.u ; 2 uses
  %.not19.i = icmp eq ptr %i.z, %i.q
  br i1 %.not19.i, label %_ZNK6casadi16SetNonzerosSliceILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %bb.g, !llvm.loop !1836

_ZNK6casadi16SetNonzerosSliceILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %bb.g, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi16SetNonzerosSliceILb1EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi16SetNonzerosSliceILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.d ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %.loopexit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi11SetNonzerosILb1EE11eval_linearERKSt6vectorISt5arrayINS_2MXELm3EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi6MXNode21eval_linear_rearrangeERKSt6vectorISt5arrayINS_2MXELm3EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi11SetNonzerosILb1EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.111", align 8   ; 17 uses
  %4 = alloca %"class.std::vector.111", align 8   ; 15 uses
  %5 = alloca %"class.std::vector.111", align 8   ; 13 uses
  %6 = alloca %"class.std::vector.111", align 8   ; 15 uses
  %7 = alloca %"class.std::vector.111", align 8   ; 17 uses
  %8 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %9 = alloca %"class.std::vector.111", align 8   ; 8 uses
  %10 = alloca %"class.std::vector.111", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %12 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %13 = alloca %"class.casadi::MX", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.111") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !604
  %i.g = load ptr, ptr %2, align 8, !tbaa !607
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.m = invoke noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.u, 1
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.u) #35
          to label %.noexc unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit164.thread

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.e unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit164.thread ; 3 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.x = icmp sgt i64 %i.j, 0
  br i1 %i.x, label %.lr.ph529, label %_ZNSt6vectorIxSaIxEED2Ev.exit

.lr.ph529:                                        ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.o

._crit_edge530:                                   ; preds = %.critedge
end_hunk_16
begin_hunk_17_@_ZNK6casadi11SetNonzerosILb1EE10ad_reverseERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_:bb.a
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %.094644
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr noundef nonnull align 8 dereferenceable(8) %i.ux)
          to label %.noexc187 unwind label %.loopexit309

.noexc187:                                        ; preds = %bb.dk
  %i.vb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 unwind label %bb.dl ; 0 uses

bb.dl:                                            ; preds = %.noexc187
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body135

_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190: ; preds = %.noexc187
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %.sroa.10294.3 = phi ptr [ %.sroa.10294.0636, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.10294.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.10294.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0283.3 = phi ptr [ %.sroa.0283.0637, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.0283.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.0283.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.sroa.10.3 = phi ptr [ %.sroa.10.0638, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.10.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.10.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0273.3 = phi ptr [ %.sroa.0273.0639, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.0273.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.0273.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.0640, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.11.1, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.11.1, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ]
  %.sroa.16.3 = phi ptr [ %.sroa.16.0641, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.16.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.16.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 2 uses
  %.sroa.0289.3 = phi ptr [ %.sroa.0289.0642, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ %.sroa.0289.2, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ %.sroa.0289.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  %.297 = phi i1 [ %.095643, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit137 ], [ false, %_ZN6casadi17GenericExpressionINS_2MXEEpLERKS1_.exit190 ], [ false, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ]
  %i.vd = add nuw nsw i64 %.094644, 1             ; 2 uses
  %exitcond942.not = icmp eq i64 %i.vd, %i.k
  br i1 %exitcond942.not, label %._crit_edge647, label %bb.t, !llvm.loop !1854

.body135:                                         ; preds = %.loopexit303, %.loopexit.split-lp304, %.loopexit, %.loopexit.split-lp, %.loopexit309, %.loopexit.split-lp310, %bb.aa, %bb.dl, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186, %bb.bj, %bb.aq, %bb.ap, %bb.ao, %bb.ad
  %.sroa.10294.4 = phi ptr [ %.sroa.10294.1.ph311, %.loopexit.split-lp310 ], [ %.sroa.10294.0636, %bb.ad ], [ %i.dr, %bb.bj ], [ %.sroa.10294.2, %bb.dl ], [ %.sroa.10294.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %i.dr, %bb.aq ], [ %i.dr, %bb.ap ], [ %.sroa.10294.0636, %bb.ao ], [ %.sroa.10294.0636, %bb.aa ], [ %.sroa.10294.2, %.loopexit.split-lp ], [ %.sroa.10294.1.ph, %.loopexit309 ], [ %.sroa.10294.2, %.loopexit ], [ %.sroa.10294.2, %.loopexit303 ], [ %.sroa.10294.2, %.loopexit.split-lp304 ]
  %.sroa.0283.4 = phi ptr [ %.sroa.0283.1.ph312, %.loopexit.split-lp310 ], [ %.sroa.0283.0637, %bb.ad ], [ %i.dz, %bb.bj ], [ %.sroa.0283.2, %bb.dl ], [ %.sroa.0283.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %i.dz, %bb.aq ], [ %.sroa.0283.0637, %bb.ap ], [ %.sroa.0283.0637, %bb.ao ], [ %.sroa.0283.0637, %bb.aa ], [ %.sroa.0283.2, %.loopexit.split-lp ], [ %.sroa.0283.1.ph, %.loopexit309 ], [ %.sroa.0283.2, %.loopexit ], [ %.sroa.0283.2, %.loopexit303 ], [ %.sroa.0283.2, %.loopexit.split-lp304 ] ; 3 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.1.ph313, %.loopexit.split-lp310 ], [ %.sroa.10.0638, %bb.ad ], [ %i.ea, %bb.bj ], [ %.sroa.10.2, %bb.dl ], [ %.sroa.10.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %i.ea, %bb.aq ], [ %.sroa.10.0638, %bb.ap ], [ %.sroa.10.0638, %bb.ao ], [ %.sroa.10.0638, %bb.aa ], [ %.sroa.10.2, %.loopexit.split-lp ], [ %.sroa.10.1.ph, %.loopexit309 ], [ %.sroa.10.2, %.loopexit ], [ %.sroa.10.2, %.loopexit303 ], [ %.sroa.10.2, %.loopexit.split-lp304 ]
  %.sroa.0273.4 = phi ptr [ %.sroa.0273.1.ph314, %.loopexit.split-lp310 ], [ %.sroa.0273.0639, %bb.ad ], [ %.sroa.0273.6, %bb.bj ], [ %.sroa.0273.2, %bb.dl ], [ %.sroa.0273.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %.sroa.0273.0639, %bb.aq ], [ %.sroa.0273.0639, %bb.ap ], [ %.sroa.0273.0639, %bb.ao ], [ %.sroa.0273.0639, %bb.aa ], [ %.sroa.0273.2, %.loopexit.split-lp ], [ %.sroa.0273.1.ph, %.loopexit309 ], [ %.sroa.0273.2, %.loopexit ], [ %.sroa.0273.2, %.loopexit303 ], [ %.sroa.0273.2, %.loopexit.split-lp304 ] ; 3 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.1.ph315, %.loopexit.split-lp310 ], [ %.sroa.16.0641, %bb.ad ], [ %.sroa.16.6, %bb.bj ], [ %.sroa.16.2, %bb.dl ], [ %.sroa.16.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %.sroa.16.0641, %bb.aq ], [ %.sroa.16.0641, %bb.ap ], [ %.sroa.16.0641, %bb.ao ], [ %.sroa.16.0641, %bb.aa ], [ %.sroa.16.2, %.loopexit.split-lp ], [ %.sroa.16.1.ph, %.loopexit309 ], [ %.sroa.16.2, %.loopexit ], [ %.sroa.16.2, %.loopexit303 ], [ %.sroa.16.2, %.loopexit.split-lp304 ]
  %.sroa.0289.4 = phi ptr [ %.sroa.0289.1.ph316, %.loopexit.split-lp310 ], [ %.sroa.0289.0642, %bb.ad ], [ %i.dq, %bb.bj ], [ %.sroa.0289.2, %bb.dl ], [ %.sroa.0289.2, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %i.dq, %bb.aq ], [ %i.dq, %bb.ap ], [ %.sroa.0289.0642, %bb.ao ], [ %.sroa.0289.0642, %bb.aa ], [ %.sroa.0289.2, %.loopexit.split-lp ], [ %.sroa.0289.1.ph, %.loopexit309 ], [ %.sroa.0289.2, %.loopexit ], [ %.sroa.0289.2, %.loopexit303 ], [ %.sroa.0289.2, %.loopexit.split-lp304 ] ; 3 uses
  %.pn108 = phi { ptr, i32 } [ %lpad.loopexit.split-lp318, %.loopexit.split-lp310 ], [ %.pn106, %bb.ad ], [ %i.ky, %bb.bj ], [ %i.vc, %bb.dl ], [ %.pn101.pn, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit186 ], [ %i.fg, %bb.aq ], [ %i.ff, %bb.ap ], [ %i.fe, %bb.ao ], [ %i.dn, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit317, %.loopexit309 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit305, %.loopexit303 ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp304 ] ; 2 uses
  %i.ve = load ptr, ptr %14, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIxSaIxEED2Ev.exit192, label %bb.dn

bb.dn:                                            ; preds = %.body135
  %i.vf = load ptr, ptr %i.ag, align 8, !tbaa !303
  %i.vg = ptrtoint ptr %i.vf to i64
  %i.vh = ptrtoint ptr %i.ve to i64
  %i.vi = sub i64 %i.vg, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %i.ve, i64 noundef %i.vi) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit192

_ZNSt6vectorIxSaIxEED2Ev.exit192:                 ; preds = %.body135, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.vj = load ptr, ptr %13, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIxSaIxEED2Ev.exit194, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit192
  %i.vk = load ptr, ptr %i.al, align 8, !tbaa !303
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vj to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.vn) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit194

_ZNSt6vectorIxSaIxEED2Ev.exit194:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit192, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.vo = load ptr, ptr %12, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIxSaIxEED2Ev.exit196, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit194
  %i.vp = load ptr, ptr %i.am, align 8, !tbaa !303
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %i.vo to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vs) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit196

_ZNSt6vectorIxSaIxEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit194, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.vt = load ptr, ptr %11, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i197 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIxSaIxEED2Ev.exit198, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit196
  %i.vu = load ptr, ptr %i.ai, align 8, !tbaa !303
  %i.vv = ptrtoint ptr %i.vu to i64
  %i.vw = ptrtoint ptr %i.vt to i64
  %i.vx = sub i64 %i.vv, %i.vw
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef %i.vx) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit198

_ZNSt6vectorIxSaIxEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit196, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.vy = load ptr, ptr %10, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIxSaIxEED2Ev.exit200, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit198
  %i.vz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !303
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = ptrtoint ptr %i.vy to i64
  %i.wd = sub i64 %i.wb, %i.wc
  call void @_ZdlPvm(ptr noundef nonnull %i.vy, i64 noundef %i.wd) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit200

_ZNSt6vectorIxSaIxEED2Ev.exit200:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit198, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not.i.i.i201 = icmp eq ptr %.sroa.0273.4, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIxSaIxEED2Ev.exit202, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit200
  %i.we = ptrtoint ptr %.sroa.16.4 to i64
  %i.wf = ptrtoint ptr %.sroa.0273.4 to i64
  %i.wg = sub i64 %i.we, %i.wf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0273.4, i64 noundef %i.wg) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit202

_ZNSt6vectorIxSaIxEED2Ev.exit202:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit200, %bb.ds
  %i.wh = load ptr, ptr %9, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i203 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIxSaIxEED2Ev.exit204, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit202
  %i.wi = load ptr, ptr %i.ad, align 8, !tbaa !303
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wh to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef %i.wl) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit204

_ZNSt6vectorIxSaIxEED2Ev.exit204:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit202, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %.not.i.i.i205 = icmp eq ptr %.sroa.0283.4, null
  br i1 %.not.i.i.i205, label %_ZNSt6vectorIxSaIxEED2Ev.exit206, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit204
  %i.wm = ptrtoint ptr %.sroa.10.4 to i64
  %i.wn = ptrtoint ptr %.sroa.0283.4 to i64
  %i.wo = sub i64 %i.wm, %i.wn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0283.4, i64 noundef %i.wo) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit206

_ZNSt6vectorIxSaIxEED2Ev.exit206:                 ; preds = %bb.du, %_ZNSt6vectorIxSaIxEED2Ev.exit204
  %.not.i.i.i207 = icmp eq ptr %.sroa.0289.4, null
  br i1 %.not.i.i.i207, label %_ZNSt6vectorIxSaIxEED2Ev.exit208, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit206
  %i.wp = ptrtoint ptr %.sroa.10294.4 to i64
  %i.wq = ptrtoint ptr %.sroa.0289.4 to i64
  %i.wr = sub i64 %i.wp, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.4, i64 noundef %i.wr) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit208

_ZNSt6vectorIxSaIxEED2Ev.exit208:                 ; preds = %bb.s, %bb.r, %bb.dv, %_ZNSt6vectorIxSaIxEED2Ev.exit206, %bb.q
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.q ], [ %.pn108, %bb.dv ], [ %.pn108, %_ZNSt6vectorIxSaIxEED2Ev.exit206 ], [ %i.cn, %bb.s ], [ %i.cm, %bb.r ]
  %i.ws = load ptr, ptr %8, align 8, !tbaa !302   ; 3 uses
  %.not.i.i.i209 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorIxSaIxEED2Ev.exit210, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit208
  %i.wt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !303
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.ws, i64 noundef %i.wx) #33
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit210

_ZNSt6vectorIxSaIxEED2Ev.exit210:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit208, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn108.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb1EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1831 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1834
  %.not1718 = icmp eq i64 %i.n, %i.p
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.020 = phi i64 [ %i.n, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %.01419 = phi ptr [ %i.c, %.lr.ph ], [ %i.r, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01419, i64 8
  %i.s = load i64, ptr %.01419, align 8, !tbaa !183
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.020 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !183
  %i.v = or i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !183
  %i.w = load i64, ptr %i.q, align 8, !tbaa !1835
  %i.x = add nsw i64 %i.w, %.020                  ; 2 uses
  %i.y = load i64, ptr %i.o, align 8, !tbaa !1834
  %.not17 = icmp eq i64 %i.x, %i.y
  br i1 %.not17, label %._crit_edge, label %bb.f, !llvm.loop !1855
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi16SetNonzerosSliceILb1EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1831 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1834
  %.not10 = icmp eq i64 %i.c, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.n = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 8 uses
  %.not.i = icmp ne ptr %i.i, %i.a
  %i.o = icmp sgt i64 %i.n, 0
  %or.cond.i = and i1 %.not.i, %i.o
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.n, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.p = shl i64 %i.n, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.p
  %scevgep16 = getelementptr i8, ptr %i.a, i64 %i.p
  %bound0 = icmp ult ptr %i.i, %scevgep16
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775804      ; 4 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.a, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.t ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.a, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep17, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !183, !alias.scope !1856
  %wide.load18 = load <2 x i64>, ptr %i.u, align 8, !tbaa !183, !alias.scope !1856
  %i.v = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load19 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1859, !noalias !1856
  %wide.load20 = load <2 x i64>, ptr %i.v, align 8, !tbaa !183, !alias.scope !1859, !noalias !1856
  %i.w = or <2 x i64> %wide.load19, %wide.load
  %i.x = or <2 x i64> %wide.load20, %wide.load18
  store <2 x i64> %i.w, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1859, !noalias !1856
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !183, !alias.scope !1859, !noalias !1856
  store <2 x i64> zeroinitializer, ptr %next.gep17, align 8, !tbaa !183, !alias.scope !1856
  store <2 x i64> zeroinitializer, ptr %i.u, align 8, !tbaa !183, !alias.scope !1856
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader23

.lr.ph.i.preheader23:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader23, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ae, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader23 ]
  %.0712.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader23 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader23 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader23 ]
  %i.z = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ab = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ae = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1862

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader23
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader23 ], [ %i.ae, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader23 ], [ %i.aa, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader23 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = sub nsw i64 %.013.i.ph, %i.n
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ah = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.ai = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.aj = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.ak = or i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %.0712.i, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.am = load i64, ptr %i.al, align 8, !tbaa !183
  %i.an = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !183
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !183
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !183
  %i.as = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !183
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.an, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !183
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !183
  %i.az = or i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.as, align 8, !tbaa !183
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.av, align 8, !tbaa !183
  %i.bb = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1863

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.012 = phi i64 [ %i.c, %.lr.ph ], [ %i.bi, %bb.b ] ; 2 uses
  %.0911 = phi ptr [ %i.g, %.lr.ph ], [ %i.be, %bb.b ] ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.012
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.0911, i64 8
  %i.bf = load i64, ptr %.0911, align 8, !tbaa !183
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %.0911, align 8, !tbaa !183
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !1835
  %i.bi = add nsw i64 %i.bh, %.012                ; 2 uses
end_hunk_17
begin_hunk_18_@_ZNK6casadi17SetNonzerosSlice2ILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bc

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.at:                                            ; preds = %.noexc104
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.cr
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.at
  %i.hw = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hy = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.cl
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.ia = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.as
  %.pn47.pn = phi { ptr, i32 } [ %i.hs, %bb.as ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ic = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ci
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.ie = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bc

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.dm
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.au
  %i.ij = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.il = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.dj
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.in = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.ip = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.dg
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.ir = load i64, ptr %i.dg, align 8, !tbaa !38
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.bc

bb.av:                                            ; preds = %bb.s, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %.noexc143, %bb.v, %bb.u, %bb.w
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.ax:                                            ; preds = %bb.y, %bb.x
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %.noexc145, %bb.z, %_ZNK6casadi6MXNode3nnzEx.exit147
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.az:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.az
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !38
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ay
  %.pn55 = phi { ptr, i32 } [ %i.iw, %bb.ay ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.ix, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %bb.ax
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.iv, %bb.ax ] ; 2 uses
  %i.jd = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ba
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !38
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.aw
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.aw ], [ %.pn55.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn55.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.av
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.it, %bb.av ]
  %i.ji = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bb
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !38
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.pn55.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  resume { ptr, i32 } %.pn55.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 5 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1883 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1881 ; 2 uses
  %.not2429.i = icmp eq i64 %i.r, %i.p
  br i1 %.not2429.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1885 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1886 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1884
  %.not2526.i = icmp eq i64 %i.t, %i.v
  br i1 %.not2526.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i.split

.lr.ph32.i.split:                                 ; preds = %.lr.ph32.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1887
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i.split
  %.02031.i = phi ptr [ %i.y, %.lr.ph32.i.split ], [ %i.ad, %._crit_edge.i.loopexit ] ; 3 uses
  %.02130.i = phi ptr [ %i.c, %.lr.ph32.i.split ], [ %i.ae, %._crit_edge.i.loopexit ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.v
  %i.ac = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.t
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.x ; 2 uses
  %.not24.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not24.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1888

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.028.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.127.i = phi ptr [ %.02130.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.i, i64 8 ; 2 uses
  %i.af = load double, ptr %.127.i, align 8, !tbaa !560
  %i.ag = load double, ptr %.028.i, align 8, !tbaa !560
  %i.ah = fadd double %i.af, %i.ag
  store double %i.ah, ptr %.028.i, align 8, !tbaa !560
  %i.ai = getelementptr inbounds [8 x i8], ptr %.028.i, i64 %i.aa ; 2 uses
  %.not25.i = icmp eq ptr %i.ai, %i.ab
  br i1 %.not25.i, label %._crit_edge.i.loopexit, label %bb.g, !llvm.loop !1889

_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosSlice2ILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36, !noalias !1890, !inline_history !497 ; 6 uses
  invoke void @_ZN6casadi11SetNonzerosILb1EEC2ERKNS_2MXES4_(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit unwind label %bb.c, !noalias !1890, !inline_history !498

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.ad, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 112) #33, !noalias !1890, !inline_history !497
  br label %common.resume

_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit: ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 896) (i8, ptr @_ZTVN6casadi17SetNonzerosSlice2ILb1EEE, i64 16), ptr %i.v, align 8, !tbaa !8, !noalias !1890
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1890
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1890
  call void @_ZN6casadi2MX6createEPNS_6MXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull %i.v), !inline_history !497
  %i.ab = load ptr, ptr %2, align 8, !tbaa !26
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.e:                                             ; preds = %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1881 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1883 ; 2 uses
  %.not2227 = icmp eq i64 %i.n, %i.p
  br i1 %.not2227, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %i.r, align 8, !tbaa !1886
  br label %bb.f

._crit_edge31:                                    ; preds = %._crit_edge, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph30, %._crit_edge
  %i.u = phi i64 [ %i.p, %.lr.ph30 ], [ %i.y, %._crit_edge ]
  %i.v = phi i64 [ %.pre, %.lr.ph30 ], [ %i.z, %._crit_edge ] ; 2 uses
  %.01829 = phi i64 [ %i.n, %.lr.ph30 ], [ %i.ab, %._crit_edge ] ; 3 uses
  %.01928 = phi ptr [ %i.c, %.lr.ph30 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !1885 ; 2 uses
  %.not2324 = icmp eq i64 %i.w, %i.v
  br i1 %.not2324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.x = add nsw i64 %i.w, %.01829
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre32 = load i64, ptr %i.o, align 8, !tbaa !1883
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.y = phi i64 [ %i.u, %bb.f ], [ %.pre32, %._crit_edge.loopexit ] ; 2 uses
  %i.z = phi i64 [ %i.v, %bb.f ], [ %i.aj, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01928, %bb.f ], [ %i.ac, %._crit_edge.loopexit ]
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !1884
  %i.ab = add nsw i64 %i.aa, %.01829              ; 2 uses
  %.not22 = icmp eq i64 %i.ab, %i.y
  br i1 %.not22, label %._crit_edge31, label %bb.f, !llvm.loop !1893

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi i64 [ %i.ai, %.lr.ph ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.ac, %.lr.ph ], [ %.01928, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.125, i64 8 ; 2 uses
  %i.ad = load i64, ptr %.125, align 8, !tbaa !183
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.026 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !183
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !183
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !1887
  %i.ai = add nsw i64 %i.ah, %.026                ; 2 uses
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !1886 ; 2 uses
  %i.ak = add nsw i64 %i.aj, %.01829
  %.not23 = icmp eq i64 %i.ai, %i.ak
  br i1 %.not23, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1894
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1881 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1883 ; 2 uses
  %.not19 = icmp eq i64 %i.c, %i.e
  br i1 %.not19, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1886
  br label %bb.b

._crit_edge24:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 8 uses
  %.not.i = icmp ne ptr %i.l, %i.a
  %i.r = icmp sgt i64 %i.q, 0
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge24
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl i64 %i.q, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.s
  %scevgep35 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.l, %scevgep35
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 4 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.w ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.a, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !183, !alias.scope !1895
  %wide.load37 = load <2 x i64>, ptr %i.x, align 8, !tbaa !183, !alias.scope !1895
  %i.y = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load38 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1898, !noalias !1895
  %wide.load39 = load <2 x i64>, ptr %i.y, align 8, !tbaa !183, !alias.scope !1898, !noalias !1895
  %i.z = or <2 x i64> %wide.load38, %wide.load
  %i.aa = or <2 x i64> %wide.load39, %wide.load37
  store <2 x i64> %i.z, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1898, !noalias !1895
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !183, !alias.scope !1898, !noalias !1895
  store <2 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !183, !alias.scope !1895
  store <2 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !183, !alias.scope !1895
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader42, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ah, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader42 ]
  %.0712.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader42 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ag, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader42 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader42 ]
  %i.ac = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ae = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ah = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1901

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader42
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader42 ], [ %i.ah, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader42 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader42 ], [ %i.ag, %.lr.ph.i.prol ]
  %i.ai = sub nsw i64 %.013.i.ph, %i.q
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ak = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.am = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %.0712.i, align 8, !tbaa !183
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !183
  %i.as = or i64 %i.ar, %i.ap
end_hunk_18
begin_hunk_19_@_ZNK6casadi17SetNonzerosVectorILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cn
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.hs = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.aw

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.am:                                            ; preds = %.noexc127
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.dr
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.am
  %i.hy = load i64, ptr %i.dr, align 8, !tbaa !38
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ia = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.dl
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ic = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.al
  %.pn52.pn = phi { ptr, i32 } [ %i.hu, %bb.al ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ie = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.di
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.ig = load i64, ptr %i.di, align 8, !tbaa !38
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.aw

bb.an:                                            ; preds = %bb.au, %bb.at, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ao:                                            ; preds = %.noexc142, %bb.s, %_ZNK6casadi6MXNode3nnzEx.exit144
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.ap:                                            ; preds = %bb.v, %bb.u, %bb.t
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %.noexc148, %bb.y, %bb.x, %bb.z
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.ar:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.ar
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !38
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.aq
  %.pn56 = phi { ptr, i32 } [ %i.il, %bb.aq ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.im, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.ap
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.ik, %bb.ap ] ; 2 uses
  %i.is = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.as
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !38
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.ao
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.ij, %bb.ao ], [ %.pn56.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn56.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.aw

_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit
  %i.ix = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.296)
          to label %bb.at unwind label %bb.an

bb.at:                                            ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread
  %i.iy = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ix, ptr noundef nonnull @.str.301)
          to label %bb.au unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.iz = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.iy, ptr noundef nonnull @.str.297)
          to label %bb.av unwind label %bb.an     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.ja = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.av
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !38
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.pn60 = phi { ptr, i32 } [ %i.ii, %bb.an ], [ %.pn56.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ]
  %i.jf = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.aw
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !38
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = load ptr, ptr %2, align 8, !tbaa !785    ; 4 uses
  %.not.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not.i, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit.i:                  ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !304

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.m, ptr %i.d, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !281  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !281  ; 2 uses
  %.not1819.i = icmp eq ptr %i.o, %i.q
  br i1 %.not1819.i, label %_ZNK6casadi17SetNonzerosVectorILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i, %bb.h
  %.021.i = phi ptr [ %i.y, %bb.h ], [ %i.c, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i ] ; 2 uses
  %.sroa.014.020.i = phi ptr [ %i.x, %bb.h ], [ %i.o, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i ] ; 2 uses
  %i.r = load i64, ptr %.sroa.014.020.i, align 8, !tbaa !183 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.t = load double, ptr %.021.i, align 8, !tbaa !560
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.r ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !560
  %i.w = fadd double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !560
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.not18.i = icmp eq ptr %i.x, %i.q
  br i1 %.not18.i, label %_ZNK6casadi17SetNonzerosVectorILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1915

_ZNK6casadi17SetNonzerosVectorILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %bb.h, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosVectorILb1EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosVectorILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1716

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKSt6vectorIxSaIxEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.d ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %.loopexit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb1EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !281    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %2, align 8, !tbaa !281    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !304

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !183
  store i64 %i.l, ptr %i.d, align 8, !tbaa !183
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !281  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !281  ; 2 uses
  %.not1819 = icmp eq ptr %i.n, %i.p
  br i1 %.not1819, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, %bb.g
  %.021 = phi ptr [ %i.x, %bb.g ], [ %i.c, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ] ; 2 uses
  %.sroa.014.020 = phi ptr [ %i.w, %bb.g ], [ %i.n, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit ] ; 2 uses
  %i.q = load i64, ptr %.sroa.014.020, align 8, !tbaa !183 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = load i64, ptr %.021, align 8, !tbaa !183
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !183
  %i.v = or i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !183
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.not18 = icmp eq ptr %i.w, %i.p
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !1916
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosVectorILb1EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281  ; 2 uses
  %.not12 = icmp eq ptr %i.c, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 8 uses
  %.not.i = icmp ne ptr %i.h, %i.a
  %i.n = icmp sgt i64 %i.m, 0
  %or.cond.i = and i1 %.not.i, %i.n
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.m, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.o = shl i64 %i.m, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.o
  %scevgep21 = getelementptr i8, ptr %i.a, i64 %i.o
  %bound0 = icmp ult ptr %i.h, %scevgep21
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 9223372036854775804      ; 4 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.s ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep22, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !183, !alias.scope !1917
  %wide.load23 = load <2 x i64>, ptr %i.t, align 8, !tbaa !183, !alias.scope !1917
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load24 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1920, !noalias !1917
  %wide.load25 = load <2 x i64>, ptr %i.u, align 8, !tbaa !183, !alias.scope !1920, !noalias !1917
  %i.v = or <2 x i64> %wide.load24, %wide.load
  %i.w = or <2 x i64> %wide.load25, %wide.load23
  store <2 x i64> %i.v, ptr %next.gep, align 8, !tbaa !183, !alias.scope !1920, !noalias !1917
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !183, !alias.scope !1920, !noalias !1917
  store <2 x i64> zeroinitializer, ptr %next.gep22, align 8, !tbaa !183, !alias.scope !1917
  store <2 x i64> zeroinitializer, ptr %i.t, align 8, !tbaa !183, !alias.scope !1917
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1922

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader28, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader28 ]
  %.0712.i.prol = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader28 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader28 ]
  %i.y = load i64, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.aa = load i64, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %.0712.i.prol, align 8, !tbaa !183
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !183
  %i.ad = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1923

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader28
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader28 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader28 ], [ %i.z, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader28 ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %.013.i.ph, %i.m
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ag = load i64, ptr %.0811.i, align 8, !tbaa !183
  %i.ah = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.ai = load i64, ptr %.0712.i, align 8, !tbaa !183
  %i.aj = or i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %.0712.i, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !183
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !183
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.ah, align 8, !tbaa !183
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !183
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !183
  %i.ar = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !183
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.am, align 8, !tbaa !183
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !183
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183
  %i.aw = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !183
  %i.ay = or i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !183
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.au, align 8, !tbaa !183
  %i.ba = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ba, %i.m
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1924

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.014 = phi ptr [ %i.bi, %bb.c ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.bh, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.bb = load i64, ptr %.sroa.08.013, align 8, !tbaa !183 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
end_hunk_19
begin_hunk_20_@_ZNK6casadi22SetNonzerosParamVectorILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.fa = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ay
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fc = load i64, ptr %i.ay, align 8, !tbaa !38
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.z
  %.pn37.pn = phi { ptr, i32 } [ %i.eu, %bb.z ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.fe = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.av
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.fg = load i64, ptr %i.av, align 8, !tbaa !38
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ac:                                            ; preds = %.noexc90
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.cc
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ac
  %i.fm = load i64, ptr %i.cc, align 8, !tbaa !38
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fo = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.fq = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ab
  %.pn41.pn = phi { ptr, i32 } [ %i.fi, %bb.ab ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.fs = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bt
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.fu = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ag

bb.ad:                                            ; preds = %.noexc108, %_ZNK6casadi6MXNode3depEx.exit107, %bb.p, %bb.q, %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc110, %bb.r, %_ZNK6casadi6MXNode3nnzEx.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.af:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.af
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !38
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.ae
  %.pn45 = phi { ptr, i32 } [ %i.fx, %bb.ae ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.fy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %i.fw, %bb.ad ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.ge = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ag
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !38
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.x
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.x ], [ %.pn45.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn45.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.gj = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn45.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi22SetNonzerosParamVectorILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 5 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i25.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i25.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit26

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit26:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit26
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i27.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i27.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit28

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit28:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit28
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit28
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit26
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.q, 1
  %i.ad = icmp eq i64 %i.q, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02030.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.02129.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.ae = load double, ptr %.02030.epil.init, align 8, !tbaa !560
  %i.af = fptosi double %i.ae to i64              ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  %i.ah = icmp sgt i64 %i.u, %i.af
  %or.cond.epil = and i1 %i.ag, %i.ah
  br i1 %or.cond.epil, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.ai = load double, ptr %.02129.epil.init, align 8, !tbaa !560
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af
  store double %i.ai, ptr %i.aj, align 8, !tbaa !560
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.i, %.lr.ph.epil.preheader, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %bb.l, %.lr.ph.preheader.new
  %.02030 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.ar, %bb.l ] ; 3 uses
  %.02129 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.az, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.02030, i64 8
  %i.al = load double, ptr %.02030, align 8, !tbaa !560
  %i.am = fptosi double %i.al to i64              ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  %i.ao = icmp sgt i64 %i.u, %i.am
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.j, label %.lr.ph.1

bb.j:                                             ; preds = %.lr.ph
  %i.ap = load double, ptr %.02129, align 8, !tbaa !560
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  store double %i.ap, ptr %i.aq, align 8, !tbaa !560
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.02030, i64 16 ; 2 uses
  %i.as = load double, ptr %i.ak, align 8, !tbaa !560
  %i.at = fptosi double %i.as to i64              ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  %i.av = icmp sgt i64 %i.u, %i.at
  %or.cond.1 = and i1 %i.au, %i.av
  br i1 %or.cond.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.02129, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.at
  store double %i.ax, ptr %i.ay, align 8, !tbaa !560
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.1
  %i.az = getelementptr inbounds nuw i8, ptr %.02129, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1934
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi22SetNonzerosParamVectorILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 712
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %2, align 8, !tbaa !26
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.l

end_hunk_20
begin_hunk_21_@_ZNK6casadi21SetNonzerosParamSliceILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.z
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !38
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ab:                                            ; preds = %.noexc102
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.co
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.ab
  %i.hk = load i64, ptr %i.co, align 8, !tbaa !38
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.hm = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ci
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.ho = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.aa
  %.pn46.pn = phi { ptr, i32 } [ %i.hg, %bb.aa ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cf
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.hs = load i64, ptr %i.cf, align 8, !tbaa !38
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dj
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.ac
  %i.hx = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.hz = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.dg
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.ib = load i64, ptr %i.dg, align 8, !tbaa !38
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.id = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.dd
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.if = load i64, ptr %i.dd, align 8, !tbaa !38
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.af

bb.ad:                                            ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.ad
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !38
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.af

bb.ae:                                            ; preds = %bb.u, %bb.t, %bb.s, %_ZNK6casadi6MXNode3depEx.exit142
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.ae
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !38
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn54 = phi { ptr, i32 } [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ]
  resume { ptr, i32 } %.pn54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosParamSliceILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i43.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i43.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit44

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit44:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit44
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i45.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i45.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit46

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit46:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit46
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit46
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit44
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.q, 4
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03548.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %.03647.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03548.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.03548.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.03647.epil = phi ptr [ %i.ae, %.lr.ph.epil ], [ %.03647.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.03647.epil, i64 8
  %i.af = load double, ptr %.03647.epil, align 8, !tbaa !560
  %i.ag = fptosi double %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548.epil
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !183
  %i.ai = add nuw nsw i64 %.03548.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1953

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1948 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1951 ; 2 uses
  %i.an = icmp slt i64 %i.ak, %i.am
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %.idx57 = shl i64 %i.q, 3                       ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %.idx57
  %.not4249 = icmp eq i64 %i.q, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1952
  br i1 %.not4249, label %._crit_edge56, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ar = add i64 %.idx57, -8                     ; 2 uses
  %i.as = and i64 %i.ar, 8
  %lcmp.mod72.not.not = icmp eq i64 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = icmp eq i64 %i.ar, 0
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03548 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 5 uses
  %.03647 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.av = getelementptr inbounds nuw i8, ptr %.03647, i64 8
  %i.aw = load double, ptr %.03647, align 8, !tbaa !560
  %i.ax = fptosi double %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !183
  %i.az = getelementptr inbounds nuw i8, ptr %.03647, i64 16
  %i.ba = load double, ptr %i.av, align 8, !tbaa !560
  %i.bb = fptosi double %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.03647, i64 24
  %i.bf = load double, ptr %i.az, align 8, !tbaa !560
  %i.bg = fptosi double %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw i8, ptr %.03647, i64 32 ; 2 uses
  %i.bk = load double, ptr %i.be, align 8, !tbaa !560
  %i.bl = fptosi double %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !183
  %i.bo = add nuw nsw i64 %.03548, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1954

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge53
  %.03455 = phi i64 [ %i.bw, %._crit_edge53 ], [ %i.ak, %.preheader.preheader ] ; 4 uses
  %.03754 = phi ptr [ %.lcssa, %._crit_edge53 ], [ %i.c, %.preheader.preheader ] ; 3 uses
  br i1 %lcmp.mod72.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.preheader
  %i.bp = load i64, ptr %3, align 8, !tbaa !183
  %i.bq = add nsw i64 %i.bp, %.03455              ; 3 uses
  %i.br = icmp sgt i64 %i.bq, -1
  %i.bs = icmp slt i64 %i.bq, %i.u
  %or.cond.prol = and i1 %i.br, %i.bs
  br i1 %or.cond.prol, label %bb.i, label %.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.prol.preheader
  %i.bt = load double, ptr %.03754, align 8, !tbaa !560
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bq
  store double %i.bt, ptr %i.bu, align 8, !tbaa !560
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.i, %.prol.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %.03754, i64 8 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader ], [ %i.bv, %.prol.loopexit.unr-lcssa ]
  %.051.unr = phi ptr [ %3, %.preheader ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %.150.unr = phi ptr [ %.03754, %.preheader ], [ %i.bv, %.prol.loopexit.unr-lcssa ]
  br i1 %i.au, label %._crit_edge53, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge53, %.preheader.lr.ph, %._crit_edge
  ret i32 0

._crit_edge53:                                    ; preds = %bb.m, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.cm, %bb.m ]
  %i.bw = add nsw i64 %i.aq, %.03455              ; 2 uses
  %i.bx = icmp slt i64 %i.bw, %i.am
  br i1 %i.bx, label %.preheader, label %._crit_edge56, !llvm.loop !1955

.preheader.new:                                   ; preds = %.prol.loopexit, %bb.m
  %.051 = phi ptr [ %i.cn, %bb.m ], [ %.051.unr, %.prol.loopexit ] ; 3 uses
  %.150 = phi ptr [ %i.cm, %bb.m ], [ %.150.unr, %.prol.loopexit ] ; 3 uses
  %i.by = load i64, ptr %.051, align 8, !tbaa !183
  %i.bz = add nsw i64 %i.by, %.03455              ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  %i.cb = icmp slt i64 %i.bz, %i.u
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.new
  %i.cc = load double, ptr %.150, align 8, !tbaa !560
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bz
  store double %i.cc, ptr %i.cd, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.new
  %i.ce = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !183
  %i.cg = add nsw i64 %i.cf, %.03455              ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  %i.ci = icmp slt i64 %i.cg, %i.u
  %or.cond.1 = and i1 %i.ch, %i.ci
  br i1 %or.cond.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.150, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !560
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cg
  store double %i.ck, ptr %i.cl, align 8, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %.150, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 2 uses
  %.not42.1 = icmp eq ptr %i.cn, %i.ao
  br i1 %.not42.1, label %._crit_edge53, label %.preheader.new, !llvm.loop !1956
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosParamSliceILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
end_hunk_21
begin_hunk_22_@_ZNK6casadi21SetNonzerosSliceParamILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

bb.ad:                                            ; preds = %.noexc161
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.dl
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.ad
  %i.jk = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.jm = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.df
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.jo = load i64, ptr %i.df, align 8, !tbaa !38
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %.pn65.pn = phi { ptr, i32 } [ %i.jg, %bb.ac ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.jq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dc
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.js = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.am

bb.ae:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.j
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.ag:                                            ; preds = %bb.l, %bb.k
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.m
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

bb.ai:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ai
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !38
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.ah
  %.pn69 = phi { ptr, i32 } [ %i.jx, %bb.ah ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.jy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.ag
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.jw, %bb.ag ] ; 2 uses
  %i.ke = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.aj
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.af
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.af ], [ %.pn69.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.pn69.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.ae
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.ju, %bb.ae ]
  %i.kj = load ptr, ptr %21, align 8, !tbaa !36   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ak
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !38
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.am

bb.al:                                            ; preds = %bb.v, %bb.u, %bb.t, %_ZNK6casadi6MXNode3depEx.exit186
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.al
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !38
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn74 = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosSliceParamILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i30.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i30.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit31

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit31:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit31
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i32.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i32.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit33

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit33:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit31
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1968 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph39.split, label %._crit_edge40.split

.lr.ph39.split:                                   ; preds = %.lr.ph39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1969
  br label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph39.split, %._crit_edge
  %.02438 = phi i64 [ 0, %.lr.ph39.split ], [ %i.al, %._crit_edge ]
  %.02537 = phi ptr [ %i.e, %.lr.ph39.split ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.02636 = phi ptr [ %i.c, %.lr.ph39.split ], [ %i.ar, %._crit_edge ]
  %i.ai = load double, ptr %.02537, align 8, !tbaa !560
  %i.aj = fptosi double %i.ai to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.02537, i64 8
  %i.al = add nuw nsw i64 %.02438, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !1970

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.035 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.134 = phi ptr [ %.02636, %.lr.ph ], [ %i.ar, %bb.k ] ; 2 uses
  %i.am = add nsw i64 %.035, %i.aj                ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  %i.ao = icmp slt i64 %i.am, %i.u
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load double, ptr %.134, align 8, !tbaa !560
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  store double %i.ap, ptr %i.aq, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 2 uses
  %i.as = add nsw i64 %i.ah, %.035                ; 2 uses
  %i.at = icmp slt i64 %i.as, %i.ae
  br i1 %i.at, label %bb.i, label %._crit_edge, !llvm.loop !1971
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 728
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %2, align 8, !tbaa !26
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb0EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
end_hunk_22
begin_hunk_23_@_ZNK6casadi21SetNonzerosParamParamILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.kp = load i64, ptr %i.ek, align 8, !tbaa !38
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.ah
  %.pn71.pn = phi { ptr, i32 } [ %i.kh, %bb.ah ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.kr = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.eh
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.kt = load i64, ptr %i.eh, align 8, !tbaa !38
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.ar

bb.aj:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.m
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.al:                                            ; preds = %bb.o, %bb.n
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.p
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.an:                                            ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.an
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !38
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.am
  %.pn75 = phi { ptr, i32 } [ %i.ky, %bb.am ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %i.kz, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.al
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.kx, %bb.al ] ; 2 uses
  %i.lf = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.ao
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !38
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ak
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.ak ], [ %.pn75.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn75.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.aj
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.kv, %bb.aj ]
  %i.lk = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.ap
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !38
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ar

bb.aq:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZNK6casadi6MXNode3depEx.exit197
  %i.lp = landingpad { ptr, i32 }
          cleanup
  %i.lq = load ptr, ptr %25, align 8, !tbaa !36   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.aq
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !38
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %.pn80 = phi { ptr, i32 } [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn75.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn71.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  resume { ptr, i32 } %.pn80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosParamParamILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !785
  %i.h = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.p, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.p) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 6 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.y, 3
  br i1 %.not.i.i.i47, label %_ZNK6casadi6MXNode3depEx.exit48, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 3, i64 noundef %i.y) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit48:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ab = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i49.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i49.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit50

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit48
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit50:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit48
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.h
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit50
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i51.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i51.not, label %bb.f, label %_ZNK6casadi6MXNode3depEx.exit52

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit52:                  ; preds = %bb.e
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.aj = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !304

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit52
  %.idx = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit52
  %i.al = icmp eq i64 %i.aj, 1
  br i1 %i.al, label %bb.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.am, ptr %i.h, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.i, %bb.h, %bb.g, %_ZNK6casadi6MXNode3depEx.exit50
  %i.an = icmp sgt i64 %i.s, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.ao = icmp ult i64 %i.s, 4
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03854.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader.loopexit.unr-lcssa ]
  %.04053.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bo, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03854.epil = phi i64 [ %i.at, %.lr.ph.epil ], [ %.03854.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.04053.epil = phi ptr [ %i.ap, %.lr.ph.epil ], [ %.04053.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.04053.epil, i64 8
  %i.aq = load double, ptr %.04053.epil, align 8, !tbaa !560
  %i.ar = fptosi double %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854.epil
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !183
  %i.at = add nuw nsw i64 %.03854.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !1981

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.au = icmp sgt i64 %i.ab, 0
  br i1 %i.au, label %.lr.ph62, label %._crit_edge63.split

.lr.ph62:                                         ; preds = %.preheader
  %.idx64 = shl i64 %i.s, 3                       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.idx64
  %.not4655 = icmp eq i64 %i.s, 0
  br i1 %.not4655, label %._crit_edge63.split, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.aw = add i64 %.idx64, -8                     ; 2 uses
  %i.ax = and i64 %i.aw, 8
  %lcmp.mod79.not.not = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = icmp eq i64 %i.aw, 0
  br label %.lr.ph58

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03854 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph ] ; 5 uses
  %.04053 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.04053, i64 8
  %i.bb = load double, ptr %.04053, align 8, !tbaa !560
  %i.bc = fptosi double %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.04053, i64 16
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bg = fptosi double %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw i8, ptr %.04053, i64 24
  %i.bk = load double, ptr %i.be, align 8, !tbaa !560
  %i.bl = fptosi double %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !183
  %i.bo = getelementptr inbounds nuw i8, ptr %.04053, i64 32 ; 2 uses
  %i.bp = load double, ptr %i.bj, align 8, !tbaa !560
  %i.bq = fptosi double %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !183
  %i.bt = add nuw nsw i64 %.03854, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1982

._crit_edge63.split:                              ; preds = %._crit_edge, %.lr.ph62, %.preheader
  ret i32 0

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %._crit_edge
  %.03761 = phi i64 [ %i.ce, %._crit_edge ], [ 0, %.lr.ph58.preheader ]
  %.03960 = phi ptr [ %i.cd, %._crit_edge ], [ %i.g, %.lr.ph58.preheader ] ; 2 uses
  %.04159 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.c, %.lr.ph58.preheader ] ; 3 uses
  %i.bu = load double, ptr %.03960, align 8, !tbaa !560
  %i.bv = fptosi double %i.bu to i64              ; 3 uses
  br i1 %lcmp.mod79.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph58
  %i.bw = load i64, ptr %3, align 8, !tbaa !183
  %i.bx = add nsw i64 %i.bw, %i.bv                ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  %i.bz = icmp slt i64 %i.bx, %i.af
  %or.cond.prol = and i1 %i.by, %i.bz
  br i1 %or.cond.prol, label %bb.j, label %.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.prol.preheader
  %i.ca = load double, ptr %.04159, align 8, !tbaa !560
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx
  store double %i.ca, ptr %i.cb, align 8, !tbaa !560
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.j, %.prol.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.04159, i64 8 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph58
  %.lcssa.unr = phi ptr [ poison, %.lr.ph58 ], [ %i.cc, %.prol.loopexit.unr-lcssa ]
  %.057.unr = phi ptr [ %3, %.lr.ph58 ], [ %i.ay, %.prol.loopexit.unr-lcssa ]
  %.156.unr = phi ptr [ %.04159, %.lr.ph58 ], [ %i.cc, %.prol.loopexit.unr-lcssa ]
  br i1 %i.az, label %._crit_edge, label %.lr.ph58.new

._crit_edge:                                      ; preds = %bb.n, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ct, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.03960, i64 8
  %i.ce = add nuw nsw i64 %.03761, 1              ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond65.not, label %._crit_edge63.split, label %.lr.ph58, !llvm.loop !1983

.lr.ph58.new:                                     ; preds = %.prol.loopexit, %bb.n
  %.057 = phi ptr [ %i.cu, %bb.n ], [ %.057.unr, %.prol.loopexit ] ; 3 uses
  %.156 = phi ptr [ %i.ct, %bb.n ], [ %.156.unr, %.prol.loopexit ] ; 3 uses
  %i.cf = load i64, ptr %.057, align 8, !tbaa !183
  %i.cg = add nsw i64 %i.cf, %i.bv                ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  %i.ci = icmp slt i64 %i.cg, %i.af
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph58.new
  %i.cj = load double, ptr %.156, align 8, !tbaa !560
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cg
  store double %i.cj, ptr %i.ck, align 8, !tbaa !560
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph58.new
  %i.cl = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !183
  %i.cn = add nsw i64 %i.cm, %i.bv                ; 3 uses
  %i.co = icmp sgt i64 %i.cn, -1
  %i.cp = icmp slt i64 %i.cn, %i.af
  %or.cond.1 = and i1 %i.co, %i.cp
  br i1 %or.cond.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.156, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !560
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cn
  store double %i.cr, ptr %i.cs, align 8, !tbaa !560
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %.156, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.057, i64 16 ; 2 uses
  %.not46.1 = icmp eq ptr %i.cu, %i.av
  br i1 %.not46.1, label %._crit_edge, label %.lr.ph58.new, !llvm.loop !1984
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosParamParamILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %7 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable
end_hunk_23
begin_hunk_24_@_ZNK6casadi22SetNonzerosParamVectorILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.fa = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ay
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fc = load i64, ptr %i.ay, align 8, !tbaa !38
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.z
  %.pn37.pn = phi { ptr, i32 } [ %i.eu, %bb.z ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.fe = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.av
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.fg = load i64, ptr %i.av, align 8, !tbaa !38
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ac:                                            ; preds = %.noexc90
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.cc
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ac
  %i.fm = load i64, ptr %i.cc, align 8, !tbaa !38
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.fo = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.fq = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ab
  %.pn41.pn = phi { ptr, i32 } [ %i.fi, %bb.ab ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.fs = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bt
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.fu = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ag

bb.ad:                                            ; preds = %.noexc108, %_ZNK6casadi6MXNode3depEx.exit107, %bb.p, %bb.q, %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc110, %bb.r, %_ZNK6casadi6MXNode3nnzEx.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.af:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.af
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !38
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.ae
  %.pn45 = phi { ptr, i32 } [ %i.fx, %bb.ae ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.fy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %i.fw, %bb.ad ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.ge = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ag
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !38
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.x
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.x ], [ %.pn45.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn45.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.gj = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !38
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn45.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi22SetNonzerosParamVectorILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 5 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i25.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i25.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit26

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit26:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit26
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i27.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i27.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit28

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit28:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit28
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit28
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit26
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.q, 1
  %i.ad = icmp eq i64 %i.q, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02030.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.02129.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.ae = load double, ptr %.02030.epil.init, align 8, !tbaa !560
  %i.af = fptosi double %i.ae to i64              ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  %i.ah = icmp sgt i64 %i.u, %i.af
  %or.cond.epil = and i1 %i.ag, %i.ah
  br i1 %or.cond.epil, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.ai = load double, ptr %.02129.epil.init, align 8, !tbaa !560
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !560
  %i.al = fadd double %i.ai, %i.ak
  store double %i.al, ptr %i.aj, align 8, !tbaa !560
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.i, %.lr.ph.epil.preheader, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %bb.l, %.lr.ph.preheader.new
  %.02030 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.av, %bb.l ] ; 3 uses
  %.02129 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.bf, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %.02030, i64 8
  %i.an = load double, ptr %.02030, align 8, !tbaa !560
  %i.ao = fptosi double %i.an to i64              ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  %i.aq = icmp sgt i64 %i.u, %i.ao
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.j, label %.lr.ph.1

bb.j:                                             ; preds = %.lr.ph
  %i.ar = load double, ptr %.02129, align 8, !tbaa !560
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ao ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !560
  %i.au = fadd double %i.ar, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !560
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.02030, i64 16 ; 2 uses
  %i.aw = load double, ptr %i.am, align 8, !tbaa !560
  %i.ax = fptosi double %i.aw to i64              ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  %i.az = icmp sgt i64 %i.u, %i.ax
  %or.cond.1 = and i1 %i.ay, %i.az
  br i1 %or.cond.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.1
  %i.ba = getelementptr inbounds nuw i8, ptr %.02129, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ax ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !560
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !560
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.1
  %i.bf = getelementptr inbounds nuw i8, ptr %.02129, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1994
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi22SetNonzerosParamVectorILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 744
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %2, align 8, !tbaa !26
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

end_hunk_24
begin_hunk_25_@_ZNK6casadi21SetNonzerosParamSliceILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.z
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !38
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ab:                                            ; preds = %.noexc102
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.co
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.ab
  %i.hk = load i64, ptr %i.co, align 8, !tbaa !38
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.hm = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ci
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.ho = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.aa
  %.pn46.pn = phi { ptr, i32 } [ %i.hg, %bb.aa ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cf
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.hs = load i64, ptr %i.cf, align 8, !tbaa !38
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dj
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.ac
  %i.hx = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.hz = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.dg
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.ib = load i64, ptr %i.dg, align 8, !tbaa !38
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.id = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.dd
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.if = load i64, ptr %i.dd, align 8, !tbaa !38
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.af

bb.ad:                                            ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.ad
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !38
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.af

bb.ae:                                            ; preds = %bb.u, %bb.t, %bb.s, %_ZNK6casadi6MXNode3depEx.exit142
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.ae
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !38
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn54 = phi { ptr, i32 } [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ]
  resume { ptr, i32 } %.pn54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosParamSliceILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i43.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i43.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit44

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit44:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit44
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i45.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i45.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit46

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit46:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit46
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit46
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit44
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.q, 4
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03548.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %.03647.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03548.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.03548.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.03647.epil = phi ptr [ %i.ae, %.lr.ph.epil ], [ %.03647.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.03647.epil, i64 8
  %i.af = load double, ptr %.03647.epil, align 8, !tbaa !560
  %i.ag = fptosi double %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548.epil
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !183
  %i.ai = add nuw nsw i64 %.03548.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !2013

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2008 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2011 ; 2 uses
  %i.an = icmp slt i64 %i.ak, %i.am
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %.idx57 = shl i64 %i.q, 3                       ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %.idx57
  %.not4249 = icmp eq i64 %i.q, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2012
  br i1 %.not4249, label %._crit_edge56, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ar = add i64 %.idx57, -8                     ; 2 uses
  %i.as = and i64 %i.ar, 8
  %lcmp.mod72.not.not = icmp eq i64 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = icmp eq i64 %i.ar, 0
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03548 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 5 uses
  %.03647 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.av = getelementptr inbounds nuw i8, ptr %.03647, i64 8
  %i.aw = load double, ptr %.03647, align 8, !tbaa !560
  %i.ax = fptosi double %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !183
  %i.az = getelementptr inbounds nuw i8, ptr %.03647, i64 16
  %i.ba = load double, ptr %i.av, align 8, !tbaa !560
  %i.bb = fptosi double %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.03647, i64 24
  %i.bf = load double, ptr %i.az, align 8, !tbaa !560
  %i.bg = fptosi double %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw i8, ptr %.03647, i64 32 ; 2 uses
  %i.bk = load double, ptr %i.be, align 8, !tbaa !560
  %i.bl = fptosi double %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03548
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !183
  %i.bo = add nuw nsw i64 %.03548, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2014

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge53
  %.03455 = phi i64 [ %i.by, %._crit_edge53 ], [ %i.ak, %.preheader.preheader ] ; 4 uses
  %.03754 = phi ptr [ %.lcssa, %._crit_edge53 ], [ %i.c, %.preheader.preheader ] ; 3 uses
  br i1 %lcmp.mod72.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.preheader
  %i.bp = load i64, ptr %3, align 8, !tbaa !183
  %i.bq = add nsw i64 %i.bp, %.03455              ; 3 uses
  %i.br = icmp sgt i64 %i.bq, -1
  %i.bs = icmp slt i64 %i.bq, %i.u
  %or.cond.prol = and i1 %i.br, %i.bs
  br i1 %or.cond.prol, label %bb.i, label %.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.prol.preheader
  %i.bt = load double, ptr %.03754, align 8, !tbaa !560
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bq ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !560
  %i.bw = fadd double %i.bt, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !560
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.i, %.prol.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.03754, i64 8 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %.051.unr = phi ptr [ %3, %.preheader ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %.150.unr = phi ptr [ %.03754, %.preheader ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  br i1 %i.au, label %._crit_edge53, label %.preheader.new

._crit_edge56:                                    ; preds = %._crit_edge53, %.preheader.lr.ph, %._crit_edge
  ret i32 0

._crit_edge53:                                    ; preds = %bb.m, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.cs, %bb.m ]
  %i.by = add nsw i64 %i.aq, %.03455              ; 2 uses
  %i.bz = icmp slt i64 %i.by, %i.am
  br i1 %i.bz, label %.preheader, label %._crit_edge56, !llvm.loop !2015

.preheader.new:                                   ; preds = %.prol.loopexit, %bb.m
  %.051 = phi ptr [ %i.ct, %bb.m ], [ %.051.unr, %.prol.loopexit ] ; 3 uses
  %.150 = phi ptr [ %i.cs, %bb.m ], [ %.150.unr, %.prol.loopexit ] ; 3 uses
  %i.ca = load i64, ptr %.051, align 8, !tbaa !183
  %i.cb = add nsw i64 %i.ca, %.03455              ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  %i.cd = icmp slt i64 %i.cb, %i.u
  %or.cond = and i1 %i.cc, %i.cd
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.new
  %i.ce = load double, ptr %.150, align 8, !tbaa !560
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cb ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !560
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.new
  %i.ci = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !183
  %i.ck = add nsw i64 %i.cj, %.03455              ; 3 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  %i.cm = icmp slt i64 %i.ck, %i.u
  %or.cond.1 = and i1 %i.cl, %i.cm
  br i1 %or.cond.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.150, i64 8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !560
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ck ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !560
  %i.cr = fadd double %i.co, %i.cq
  store double %i.cr, ptr %i.cp, align 8, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.150, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 2 uses
  %.not42.1 = icmp eq ptr %i.ct, %i.ao
  br i1 %.not42.1, label %._crit_edge53, label %.preheader.new, !llvm.loop !2016
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosParamSliceILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
end_hunk_25
begin_hunk_26_@_ZNK6casadi21SetNonzerosSliceParamILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

bb.ad:                                            ; preds = %.noexc161
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.dl
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.ad
  %i.jk = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.jm = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.df
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.jo = load i64, ptr %i.df, align 8, !tbaa !38
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %.pn65.pn = phi { ptr, i32 } [ %i.jg, %bb.ac ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.jq = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dc
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.js = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.am

bb.ae:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.j
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.ag:                                            ; preds = %bb.l, %bb.k
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.m
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

bb.ai:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.ai
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !38
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.ah
  %.pn69 = phi { ptr, i32 } [ %i.jx, %bb.ah ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.jy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.ag
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.jw, %bb.ag ] ; 2 uses
  %i.ke = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.aj
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.af
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.af ], [ %.pn69.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.pn69.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.ae
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.ju, %bb.ae ]
  %i.kj = load ptr, ptr %21, align 8, !tbaa !36   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ak
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !38
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.am

bb.al:                                            ; preds = %bb.v, %bb.u, %bb.t, %_ZNK6casadi6MXNode3depEx.exit186
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.al
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !38
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn74 = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosSliceParamILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785
  %i.f = load ptr, ptr %2, align 8, !tbaa !785    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.n, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.n) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i30.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i30.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit31

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit31:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.not = icmp eq ptr %i.a, %i.f
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit31
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i32.not = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i32.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit33

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit33:                  ; preds = %bb.d
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 3 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !304

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit33
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.ab, ptr %i.f, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %_ZNK6casadi6MXNode3depEx.exit31
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2028 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph39.split, label %._crit_edge40.split

.lr.ph39.split:                                   ; preds = %.lr.ph39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2029
  br label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph39.split, %._crit_edge
  %.02438 = phi i64 [ 0, %.lr.ph39.split ], [ %i.al, %._crit_edge ]
  %.02537 = phi ptr [ %i.e, %.lr.ph39.split ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.02636 = phi ptr [ %i.c, %.lr.ph39.split ], [ %i.at, %._crit_edge ]
  %i.ai = load double, ptr %.02537, align 8, !tbaa !560
  %i.aj = fptosi double %i.ai to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.02537, i64 8
  %i.al = add nuw nsw i64 %.02438, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !2030

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.035 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.k ] ; 2 uses
  %.134 = phi ptr [ %.02636, %.lr.ph ], [ %i.at, %bb.k ] ; 2 uses
  %i.am = add nsw i64 %.035, %i.aj                ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  %i.ao = icmp slt i64 %i.am, %i.u
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load double, ptr %.134, align 8, !tbaa !560
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !560
  %i.as = fadd double %i.ap, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 2 uses
  %i.au = add nsw i64 %i.ah, %.035                ; 2 uses
  %i.av = icmp slt i64 %i.au, %i.ae
  br i1 %i.av, label %bb.i, label %._crit_edge, !llvm.loop !2031
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not.i.i.i12 = icmp ugt i64 %i.n, 1
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.n) #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i1 noundef zeroext false)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.h

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.q = load ptr, ptr %1, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  store ptr %i.s, ptr %5, align 8, !tbaa !84
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %bb.i

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = invoke noundef ptr @_ZN6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %2, align 8, !tbaa !26
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.g
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %_ZN6casadi2MXC2ERKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosSliceParamILb1EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_26
begin_hunk_27_@_ZNK6casadi21SetNonzerosParamParamILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.kp = load i64, ptr %i.ek, align 8, !tbaa !38
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.ah
  %.pn71.pn = phi { ptr, i32 } [ %i.kh, %bb.ah ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.kr = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.eh
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.kt = load i64, ptr %i.eh, align 8, !tbaa !38
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.ar

bb.aj:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.m
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.al:                                            ; preds = %bb.o, %bb.n
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.p
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.an:                                            ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.an
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !38
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.am
  %.pn75 = phi { ptr, i32 } [ %i.ky, %bb.am ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %i.kz, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.al
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.kx, %bb.al ] ; 2 uses
  %i.lf = load ptr, ptr %23, align 8, !tbaa !36   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.ao
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !38
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ak
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.ak ], [ %.pn75.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn75.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.aj
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.kv, %bb.aj ]
  %i.lk = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.ap
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !38
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ar

bb.aq:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZNK6casadi6MXNode3depEx.exit197
  %i.lp = landingpad { ptr, i32 }
          cleanup
  %i.lq = load ptr, ptr %25, align 8, !tbaa !36   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.aq
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !38
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %.pn80 = phi { ptr, i32 } [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn75.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn71.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  resume { ptr, i32 } %.pn80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi21SetNonzerosParamParamILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !785    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !785  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !785
  %i.h = load ptr, ptr %2, align 8, !tbaa !785    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.p, 2
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 2, i64 noundef %i.p) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 6 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.y, 3
  br i1 %.not.i.i.i47, label %_ZNK6casadi6MXNode3depEx.exit48, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 3, i64 noundef %i.y) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit48:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ab = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i49.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i49.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit50

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit48
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit50:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit48
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 3 uses
  %.not = icmp eq ptr %i.a, %i.h
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit50
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i51.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i51.not, label %bb.f, label %_ZNK6casadi6MXNode3depEx.exit52

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit52:                  ; preds = %bb.e
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.aj = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !304

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit52
  %.idx = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit52
  %i.al = icmp eq i64 %i.aj, 1
  br i1 %i.al, label %bb.i, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.am, ptr %i.h, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.i, %bb.h, %bb.g, %_ZNK6casadi6MXNode3depEx.exit50
  %i.an = icmp sgt i64 %i.s, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.ao = icmp ult i64 %i.s, 4
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 9223372036854775804
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03854.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader.loopexit.unr-lcssa ]
  %.04053.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bo, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03854.epil = phi i64 [ %i.at, %.lr.ph.epil ], [ %.03854.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.04053.epil = phi ptr [ %i.ap, %.lr.ph.epil ], [ %.04053.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.04053.epil, i64 8
  %i.aq = load double, ptr %.04053.epil, align 8, !tbaa !560
  %i.ar = fptosi double %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854.epil
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !183
  %i.at = add nuw nsw i64 %.03854.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !2049

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.au = icmp sgt i64 %i.ab, 0
  br i1 %i.au, label %.lr.ph62, label %._crit_edge63.split

.lr.ph62:                                         ; preds = %.preheader
  %.idx64 = shl i64 %i.s, 3                       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.idx64
  %.not4655 = icmp eq i64 %i.s, 0
  br i1 %.not4655, label %._crit_edge63.split, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %.lr.ph62
  %i.aw = add i64 %.idx64, -8                     ; 2 uses
  %i.ax = and i64 %i.aw, 8
  %lcmp.mod79.not.not = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = icmp eq i64 %i.aw, 0
  br label %.lr.ph58

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03854 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph ] ; 5 uses
  %.04053 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.04053, i64 8
  %i.bb = load double, ptr %.04053, align 8, !tbaa !560
  %i.bc = fptosi double %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %.04053, i64 16
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bg = fptosi double %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw i8, ptr %.04053, i64 24
  %i.bk = load double, ptr %i.be, align 8, !tbaa !560
  %i.bl = fptosi double %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !183
  %i.bo = getelementptr inbounds nuw i8, ptr %.04053, i64 32 ; 2 uses
  %i.bp = load double, ptr %i.bj, align 8, !tbaa !560
  %i.bq = fptosi double %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03854
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !183
  %i.bt = add nuw nsw i64 %.03854, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2050

._crit_edge63.split:                              ; preds = %._crit_edge, %.lr.ph62, %.preheader
  ret i32 0

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %._crit_edge
  %.03761 = phi i64 [ %i.cg, %._crit_edge ], [ 0, %.lr.ph58.preheader ]
  %.03960 = phi ptr [ %i.cf, %._crit_edge ], [ %i.g, %.lr.ph58.preheader ] ; 2 uses
  %.04159 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.c, %.lr.ph58.preheader ] ; 3 uses
  %i.bu = load double, ptr %.03960, align 8, !tbaa !560
  %i.bv = fptosi double %i.bu to i64              ; 3 uses
  br i1 %lcmp.mod79.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph58
  %i.bw = load i64, ptr %3, align 8, !tbaa !183
  %i.bx = add nsw i64 %i.bw, %i.bv                ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  %i.bz = icmp slt i64 %i.bx, %i.af
  %or.cond.prol = and i1 %i.by, %i.bz
  br i1 %or.cond.prol, label %bb.j, label %.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.prol.preheader
  %i.ca = load double, ptr %.04159, align 8, !tbaa !560
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !560
  %i.cd = fadd double %i.ca, %i.cc
  store double %i.cd, ptr %i.cb, align 8, !tbaa !560
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.j, %.prol.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %.04159, i64 8 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph58
  %.lcssa.unr = phi ptr [ poison, %.lr.ph58 ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  %.057.unr = phi ptr [ %3, %.lr.ph58 ], [ %i.ay, %.prol.loopexit.unr-lcssa ]
  %.156.unr = phi ptr [ %.04159, %.lr.ph58 ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  br i1 %i.az, label %._crit_edge, label %.lr.ph58.new

._crit_edge:                                      ; preds = %bb.n, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.cz, %bb.n ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03960, i64 8
  %i.cg = add nuw nsw i64 %.03761, 1              ; 2 uses
  %exitcond65.not = icmp eq i64 %i.cg, %i.ab
  br i1 %exitcond65.not, label %._crit_edge63.split, label %.lr.ph58, !llvm.loop !2051

.lr.ph58.new:                                     ; preds = %.prol.loopexit, %bb.n
  %.057 = phi ptr [ %i.da, %bb.n ], [ %.057.unr, %.prol.loopexit ] ; 3 uses
  %.156 = phi ptr [ %i.cz, %bb.n ], [ %.156.unr, %.prol.loopexit ] ; 3 uses
  %i.ch = load i64, ptr %.057, align 8, !tbaa !183
  %i.ci = add nsw i64 %i.ch, %i.bv                ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = icmp slt i64 %i.ci, %i.af
  %or.cond = and i1 %i.cj, %i.ck
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph58.new
  %i.cl = load double, ptr %.156, align 8, !tbaa !560
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !560
  %i.co = fadd double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !560
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph58.new
  %i.cp = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !183
  %i.cr = add nsw i64 %i.cq, %i.bv                ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  %i.ct = icmp slt i64 %i.cr, %i.af
  %or.cond.1 = and i1 %i.cs, %i.ct
  br i1 %or.cond.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %.156, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !560
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cr ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !560
  %i.cy = fadd double %i.cv, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !560
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.156, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.057, i64 16 ; 2 uses
  %.not46.1 = icmp eq ptr %i.da, %i.av
  br i1 %.not46.1, label %._crit_edge, label %.lr.ph58.new, !llvm.loop !2052
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi21SetNonzerosParamParamILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %6 = alloca %"class.casadi::MX", align 8        ; 8 uses
  %7 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
end_hunk_27
