Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sfmDec?download=true
inline.NumInlined: 751
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Sfm_DecComputeFlipInvGain:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g, %bb.e
  %.129 = phi i32 [ %.02845, %bb.e ], [ 1, %bb.b ], [ %.02845, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.v, %bb.e ], [ %.046, %bb.b ], [ %i.am, %bb.g ], [ %.046, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val39 = load i32, ptr %i.a, align 4, !tbaa !119
  %i.an = sext i32 %.val39 to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %.critedge, !llvm.loop !127

.critedge:                                        ; preds = %bb.h
  %.not = icmp eq i32 %.129, 0
  br i1 %.not, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ar = sub nsw i32 %.1, %i.aq
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.i, %.critedge
  %.028.lcssa53 = phi i32 [ %.129, %bb.i ], [ 0, %.critedge ], [ 0, %bb.a ]
  %.2 = phi i32 [ %i.ar, %bb.i ], [ %.1, %.critedge ], [ 0, %bb.a ]
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.thread
  store i32 %.028.lcssa53, ptr %2, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.thread
  ret i32 %.2
}

declare i32 @Mio_GateIsInv(ptr noundef) local_unnamed_addr #5

declare i32 @Sfm_LibFindComplInputGate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @Abc_NodeFindFanin(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Sfm_DecCombineDec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %7 to i64                  ; 3 uses
  %i.d = icmp slt i32 %5, 7                       ; 3 uses
  %i.e = add nsw i32 %5, -6                       ; 3 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 11 uses
  %i.h = icmp eq i32 %5, %6
  %i.i = sext i32 %5 to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 4 uses
  br i1 %i.h, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %3, ptr %4, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %i.g to i64
  %i.l = shl nsw i64 %i.k, 3                      ; 2 uses
  %bcmp58 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2, i64 %i.l)
  %.not59 = icmp eq i32 %bcmp58, 0
  br i1 %.not59, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %3, i64 %i.j, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.l, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49   ; 3 uses
  %i.p = icmp eq i32 %5, %i.o
  br i1 %i.p, label %Abc_TtStretch6.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i32 %i.o, 7
  %i.r = add nsw i32 %i.o, -6
  %i.s = shl nuw i32 1, %i.r
  %i.t = select i1 %i.q, i32 1, i32 %i.s          ; 3 uses
  %i.u = icmp ne i32 %i.g, %i.t
  %i.v = icmp sgt i32 %i.t, 0
  %or.cond.i = and i1 %i.u, %i.v
  %i.w = icmp sgt i32 %i.g, 0
  %or.cond25.i = and i1 %i.w, %or.cond.i
  br i1 %or.cond25.i, label %.preheader.preheader.i, label %Abc_TtStretch6.exit

.preheader.preheader.i:                           ; preds = %bb.e
  %i.x = zext nneg i32 %i.g to i64                ; 4 uses
  %min.iters.check265 = icmp ult i32 %i.g, 4
  %i.y = select i1 %i.d, i32 0, i32 %i.e
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 3
  %n.vec267 = and i64 %i.x, 2147483644
  %xtraiter300 = and i64 %i.x, 3                  ; 3 uses
  %i.ab = icmp ult i32 %i.g, 4
  %unroll_iter304 = and i64 %i.x, 2147483644
  %lcmp.mod302.not = icmp eq i64 %xtraiter300, 0
  %lcmp.mod303 = icmp ne i64 %xtraiter300, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvar261 = phi i64 [ %indvar.next262, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv27.i ; 6 uses
  br i1 %min.iters.check265, label %scalar.ph264.preheader, label %vector.memcheck260

scalar.ph264.preheader:                           ; preds = %vector.memcheck260, %.preheader.i
  br i1 %i.ab, label %scalar.ph264.epil.preheader, label %scalar.ph264

vector.memcheck260:                               ; preds = %.preheader.i
  %i.ac = shl i64 %indvar261, %i.aa
  %i.ad = add i64 %i.ac, -1
  %diff.check263 = icmp ult i64 %i.ad, 31
  br i1 %diff.check263, label %scalar.ph264.preheader, label %vector.body268

vector.body268:                                   ; preds = %vector.memcheck260, %vector.body268
  %index269 = phi i64 [ %index.next272, %vector.body268 ], [ 0, %vector.memcheck260 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index269 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load270 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !72
  %wide.load271 = load <2 x i64>, ptr %i.af, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index269 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %wide.load270, ptr %i.ag, align 8, !tbaa !72
  store <2 x i64> %wide.load271, ptr %i.ah, align 8, !tbaa !72
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.ai, label %._crit_edge.i, label %vector.body268, !llvm.loop !128

scalar.ph264:                                     ; preds = %scalar.ph264.preheader, %scalar.ph264
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph264 ], [ 0, %scalar.ph264.preheader ] ; 6 uses
  %niter305 = phi i64 [ %niter305.next.3, %scalar.ph264 ], [ 0, %scalar.ph264.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !72
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.ak, ptr %gep.i, align 8, !tbaa !72
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !72
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.am, ptr %gep.i.1, align 8, !tbaa !72
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next.i.1
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !72
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.ao, ptr %gep.i.2, align 8, !tbaa !72
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next.i.2
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !72
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.aq, ptr %gep.i.3, align 8, !tbaa !72
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter305.next.3 = add i64 %niter305, 4         ; 2 uses
  %niter305.ncmp.3 = icmp eq i64 %niter305.next.3, %unroll_iter304
  br i1 %niter305.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph264, !llvm.loop !131

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph264
  br i1 %lcmp.mod302.not, label %._crit_edge.i, label %scalar.ph264.epil.preheader

scalar.ph264.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph264.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph264.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod303)
  br label %scalar.ph264.epil

scalar.ph264.epil:                                ; preds = %scalar.ph264.epil, %scalar.ph264.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph264.epil ], [ %indvars.iv.i.epil.init, %scalar.ph264.epil.preheader ] ; 3 uses
  %epil.iter301 = phi i64 [ %epil.iter301.next, %scalar.ph264.epil ], [ 0, %scalar.ph264.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i.epil
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.as, ptr %gep.i.epil, align 8, !tbaa !72
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter301.next = add i64 %epil.iter301, 1   ; 2 uses
  %epil.iter301.cmp.not = icmp eq i64 %epil.iter301.next, %xtraiter300
  br i1 %epil.iter301.cmp.not, label %._crit_edge.i, label %scalar.ph264.epil, !llvm.loop !132

._crit_edge.i:                                    ; preds = %vector.body268, %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph264.epil
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %i.x ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv.next28.i to i32
  %i.au = icmp sgt i32 %i.t, %i.at
  %indvar.next262 = add i64 %indvar261, 1
  br i1 %i.au, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.b
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.j ; 3 uses
  %i.aw = sext i32 %6 to i64
  %.idx19.i = shl nsw i64 %i.aw, 2                ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %.idx19.i ; 3 uses
  %i.ay = icmp sgt i32 %5, 0
  %i.az = icmp sgt i32 %6, 0
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %bb.j, %._crit_edge
  %.036.lcssa.i = phi ptr [ %8, %._crit_edge ], [ %.137.i, %bb.j ] ; 5 uses
  %.033.lcssa.i = phi ptr [ %3, %._crit_edge ], [ %.134.i, %bb.j ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %4, %._crit_edge ], [ %.1.i, %bb.j ] ; 5 uses
  %.0.lcssa.i176 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 3 uses
  %i.bb = icmp ult ptr %.033.lcssa.i, %i.av
  br i1 %i.bb, label %.lr.ph13.i.preheader, label %.preheader.i64

.lr.ph13.i.preheader:                             ; preds = %.preheader5.i
  %.033.lcssa.i170 = ptrtoaddr ptr %.033.lcssa.i to i64 ; 3 uses
  %.036.lcssa.i169 = ptrtoaddr ptr %.036.lcssa.i to i64
  %i.bc = ptrtoaddr ptr %3 to i64
  %10 = add i64 %i.j, %i.bc
  %i.bd = add i64 %.033.lcssa.i170, 4
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 %i.bd)
  %i.be = xor i64 %.033.lcssa.i170, -1
  %i.bf = add i64 %11, %i.be                      ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 44
  %i.bi = sub i64 %.033.lcssa.i170, %.036.lcssa.i169
  %diff.check = icmp ugt i64 %i.bi, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph13.i.preheader283, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i.preheader
  %n.vec = and i64 %i.bh, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bm ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12
  %wide.load172 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr i8, ptr %next.gep171, i64 16
  store <4 x i32> %wide.load, ptr %next.gep171, align 4, !tbaa !12
  store <4 x i32> %wide.load172, ptr %i.bo, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.preheader.i64, label %.lr.ph13.i.preheader283

.lr.ph13.i.preheader283:                          ; preds = %.lr.ph13.i.preheader, %middle.block
  %.23512.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph13.i.preheader ], [ %i.bk, %middle.block ]
  %.23811.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph13.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph13.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.j
  %.08.i = phi ptr [ %.1.i, %bb.j ], [ %4, %._crit_edge ] ; 4 uses
  %.0337.i = phi ptr [ %.134.i, %bb.j ], [ %3, %._crit_edge ] ; 4 uses
  %.0366.i = phi ptr [ %.137.i, %bb.j ], [ %8, %._crit_edge ] ; 4 uses
  %i.bq = load i32, ptr %.0337.i, align 4, !tbaa !12 ; 4 uses
  %i.br = load i32, ptr %.08.i, align 4, !tbaa !12 ; 3 uses
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0337.i, i64 4
  store i32 %i.bq, ptr %.0366.i, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i
  %i.bv = icmp slt i32 %i.bq, %i.br
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.0337.i, i64 4
  store i32 %i.bq, ptr %.0366.i, align 4, !tbaa !12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i32 %i.br, ptr %.0366.i, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.134.i = phi ptr [ %i.bt, %bb.f ], [ %i.bw, %bb.h ], [ %.0337.i, %bb.i ] ; 3 uses
  %.1.i = phi ptr [ %i.bu, %bb.f ], [ %.08.i, %bb.h ], [ %i.bx, %bb.i ] ; 3 uses
  %.137.i = getelementptr inbounds nuw i8, ptr %.0366.i, i64 4 ; 2 uses
  %i.by = icmp ult ptr %.134.i, %i.av
  %i.bz = icmp ult ptr %.1.i, %i.ax
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph.i, label %.preheader5.i, !llvm.loop !136

.preheader.i64:                                   ; preds = %.lr.ph13.i, %middle.block, %.preheader5.i
  %.238.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader5.i ], [ %i.bl, %middle.block ], [ %i.cs, %.lr.ph13.i ] ; 5 uses
  %i.cb = icmp ult ptr %.0.lcssa.i, %i.ax
  br i1 %i.cb, label %.lr.ph17.i.preheader, label %Vec_IntTwoMerge2Int.exit

.lr.ph17.i.preheader:                             ; preds = %.preheader.i64
  %.238.lcssa.i175 = ptrtoaddr ptr %.238.lcssa.i to i64
  %i.cc = ptrtoaddr ptr %4 to i64
  %12 = add i64 %.idx19.i, %i.cc
  %i.cd = add i64 %.0.lcssa.i176, 4
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %i.cd)
  %i.ce = xor i64 %.0.lcssa.i176, -1
  %i.cf = add i64 %13, %i.ce                      ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.cf, 44
  %i.ci = sub i64 %.0.lcssa.i176, %.238.lcssa.i175
  %diff.check177 = icmp ugt i64 %i.ci, -32
  %or.cond276 = select i1 %min.iters.check179, i1 true, i1 %diff.check177
  br i1 %or.cond276, label %.lr.ph17.i.preheader282, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph17.i.preheader
  %n.vec181 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec181, 2                    ; 2 uses
  %i.ck = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.238.lcssa.i, i64 %i.cj ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.cm = shl i64 %index183, 2                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cm ; 2 uses
  %next.gep185 = getelementptr i8, ptr %.238.lcssa.i, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep184, i64 16
  %wide.load186 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !12
  %wide.load187 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr i8, ptr %next.gep185, i64 16
  store <4 x i32> %wide.load186, ptr %next.gep185, align 4, !tbaa !12
  store <4 x i32> %wide.load187, ptr %i.co, align 4, !tbaa !12
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.cp, label %middle.block189, label %vector.body182, !llvm.loop !137

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.ch, %n.vec181
  br i1 %cmp.n190, label %Vec_IntTwoMerge2Int.exit, label %.lr.ph17.i.preheader282

.lr.ph17.i.preheader282:                          ; preds = %.lr.ph17.i.preheader, %middle.block189
  %.216.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph17.i.preheader ], [ %i.ck, %middle.block189 ]
  %.315.i.ph = phi ptr [ %.238.lcssa.i, %.lr.ph17.i.preheader ], [ %i.cl, %middle.block189 ]
  br label %.lr.ph17.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader283, %.lr.ph13.i
  %.23512.i = phi ptr [ %i.cq, %.lr.ph13.i ], [ %.23512.i.ph, %.lr.ph13.i.preheader283 ] ; 2 uses
  %.23811.i = phi ptr [ %i.cs, %.lr.ph13.i ], [ %.23811.i.ph, %.lr.ph13.i.preheader283 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.23512.i, i64 4 ; 2 uses
  %i.cr = load i32, ptr %.23512.i, align 4, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %.23811.i, i64 4 ; 2 uses
  store i32 %i.cr, ptr %.23811.i, align 4, !tbaa !12
  %i.ct = icmp ult ptr %i.cq, %i.av
  br i1 %i.ct, label %.lr.ph13.i, label %.preheader.i64, !llvm.loop !138

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader282, %.lr.ph17.i
  %.216.i = phi ptr [ %i.cu, %.lr.ph17.i ], [ %.216.i.ph, %.lr.ph17.i.preheader282 ] ; 2 uses
  %.315.i = phi ptr [ %i.cw, %.lr.ph17.i ], [ %.315.i.ph, %.lr.ph17.i.preheader282 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.216.i, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.216.i, align 4, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.315.i, i64 4 ; 2 uses
  store i32 %i.cv, ptr %.315.i, align 4, !tbaa !12
  %i.cx = icmp ult ptr %i.cu, %i.ax
  br i1 %i.cx, label %.lr.ph17.i, label %Vec_IntTwoMerge2Int.exit, !llvm.loop !139

Vec_IntTwoMerge2Int.exit:                         ; preds = %.lr.ph17.i, %middle.block189, %.preheader.i64
  %.3.lcssa.i = phi ptr [ %.238.lcssa.i, %.preheader.i64 ], [ %i.cl, %middle.block189 ], [ %i.cw, %.lr.ph17.i ]
  %i.cy = ptrtoint ptr %.3.lcssa.i to i64
  %i.cz = ptrtoint ptr %8 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 2                 ; 3 uses
  %i.dc = trunc i64 %i.db to i32                  ; 3 uses
  %i.dd = icmp eq i32 %i.dc, 16
  br i1 %i.dd, label %bb.k, label %Vec_IntGrow.exit24.i

bb.k:                                             ; preds = %Vec_IntTwoMerge2Int.exit
  %.not9.i23.i = icmp eq ptr %8, null
  br i1 %.not9.i23.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %8, i64 noundef 128) #28
  br label %.lr.ph.i67

bb.m:                                             ; preds = %bb.k
  %i.df = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %.lr.ph.i67

Vec_IntGrow.exit24.i:                             ; preds = %Vec_IntTwoMerge2Int.exit
  %i.dg = add nsw i32 %i.dc, 1                    ; 2 uses
  %i.dh = icmp sgt i32 %i.dc, 0
  br i1 %i.dh, label %.lr.ph.i67, label %Vec_IntPushOrder.exit

.lr.ph.i67:                                       ; preds = %bb.m, %bb.l, %Vec_IntGrow.exit24.i
  %i.di = phi i32 [ %i.dg, %Vec_IntGrow.exit24.i ], [ 17, %bb.l ], [ 17, %bb.m ] ; 2 uses
  %.sroa.12.0134 = phi ptr [ %8, %Vec_IntGrow.exit24.i ], [ %i.de, %bb.l ], [ %i.df, %bb.m ] ; 4 uses
  %i.dj = and i64 %i.db, 4294967295
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i67
  %indvars.iv.i68 = phi i64 [ %i.dj, %.lr.ph.i67 ], [ %indvars.iv.next.i69, %bb.o ] ; 4 uses
  %indvars.iv.next.i69 = add nsw i64 %indvars.iv.i68, -1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.0134, i64 %indvars.iv.next.i69
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, %9
  br i1 %i.dm, label %bb.o, label %Vec_IntPushOrder.exit

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.0134, i64 %indvars.iv.i68
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !12
  %i.do = icmp samesign ugt i64 %indvars.iv.i68, 1
  br i1 %i.do, label %bb.n, label %Vec_IntPushOrder.exit, !llvm.loop !140

Vec_IntPushOrder.exit:                            ; preds = %bb.n, %bb.o, %Vec_IntGrow.exit24.i
  %i.dp = phi i32 [ %i.dg, %Vec_IntGrow.exit24.i ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 19 uses
  %.sroa.12.0133 = phi ptr [ %8, %Vec_IntGrow.exit24.i ], [ %.sroa.12.0134, %bb.o ], [ %.sroa.12.0134, %bb.n ] ; 2 uses
  %.0.in.lcssa.i = phi i64 [ %i.db, %Vec_IntGrow.exit24.i ], [ %indvars.iv.i68, %bb.n ], [ 0, %bb.o ]
  %sext = shl i64 %.0.in.lcssa.i, 32
  %i.dq = ashr exact i64 %sext, 30
  %i.dr = getelementptr inbounds i8, ptr %.sroa.12.0133, i64 %i.dq
  store i32 %9, ptr %i.dr, align 4, !tbaa !12
  %i.ds = load ptr, ptr %0, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !49
  %i.dv = icmp sgt i32 %i.dp, %i.du
  br i1 %i.dv, label %Abc_TtStretch6.exit, label %bb.p

bb.p:                                             ; preds = %Vec_IntPushOrder.exit
  %i.dw = icmp eq i32 %5, %i.dp
  br i1 %i.dw, label %Abc_TtStretch6.exit82, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = icmp slt i32 %i.dp, 7
  %i.dy = add nsw i32 %i.dp, -6
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = select i1 %i.dx, i32 1, i32 %i.dz       ; 3 uses
  %i.eb = icmp ne i32 %i.g, %i.ea
  %i.ec = icmp sgt i32 %i.ea, 0
  %or.cond.i70 = and i1 %i.eb, %i.ec
  %i.ed = icmp sgt i32 %i.g, 0
  %or.cond25.i71 = and i1 %i.ed, %or.cond.i70
  br i1 %or.cond25.i71, label %.preheader.preheader.i72, label %Abc_TtStretch6.exit82

.preheader.preheader.i72:                         ; preds = %bb.q
  %i.ee = zext nneg i32 %i.g to i64               ; 4 uses
  %min.iters.check196 = icmp ult i32 %i.g, 4
  %i.ef = select i1 %i.d, i32 0, i32 %i.e
  %i.eg = zext i32 %i.ef to i64
  %i.eh = add nuw nsw i64 %i.eg, 3
  %n.vec198 = and i64 %i.ee, 2147483644
  %xtraiter = and i64 %i.ee, 3                    ; 3 uses
  %i.ei = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %i.ee, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod285 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i73

.preheader.i73:                                   ; preds = %._crit_edge.i80, %.preheader.preheader.i72
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i80 ], [ 0, %.preheader.preheader.i72 ] ; 2 uses
  %indvars.iv27.i74 = phi i64 [ %indvars.iv.next28.i81, %._crit_edge.i80 ], [ 0, %.preheader.preheader.i72 ] ; 2 uses
  %invariant.gep.i75 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv27.i74 ; 6 uses
  br i1 %min.iters.check196, label %scalar.ph195.preheader, label %vector.memcheck193

scalar.ph195.preheader:                           ; preds = %vector.memcheck193, %.preheader.i73
  br i1 %i.ei, label %scalar.ph195.epil.preheader, label %scalar.ph195

vector.memcheck193:                               ; preds = %.preheader.i73
  %i.ej = shl i64 %indvar, %i.eh
  %i.ek = add i64 %i.ej, -1
  %diff.check194 = icmp ult i64 %i.ek, 31
  br i1 %diff.check194, label %scalar.ph195.preheader, label %vector.body199

vector.body199:                                   ; preds = %vector.memcheck193, %vector.body199
  %index200 = phi i64 [ %index.next203, %vector.body199 ], [ 0, %vector.memcheck193 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index200 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load201 = load <2 x i64>, ptr %i.el, align 8, !tbaa !72
  %wide.load202 = load <2 x i64>, ptr %i.em, align 8, !tbaa !72
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i75, i64 %index200 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i64> %wide.load201, ptr %i.en, align 8, !tbaa !72
  store <2 x i64> %wide.load202, ptr %i.eo, align 8, !tbaa !72
  %index.next203 = add nuw i64 %index200, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next203, %n.vec198
  br i1 %i.ep, label %._crit_edge.i80, label %vector.body199, !llvm.loop !141

scalar.ph195:                                     ; preds = %scalar.ph195.preheader, %scalar.ph195
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i78.3, %scalar.ph195 ], [ 0, %scalar.ph195.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph195 ], [ 0, %scalar.ph195.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i76
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !72
  %gep.i77 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.i76
  store i64 %i.er, ptr %gep.i77, align 8, !tbaa !72
  %indvars.iv.next.i78 = or disjoint i64 %indvars.iv.i76, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i78
  %i.et = load i64, ptr %i.es, align 8, !tbaa !72
  %gep.i77.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.next.i78
  store i64 %i.et, ptr %gep.i77.1, align 8, !tbaa !72
  %indvars.iv.next.i78.1 = or disjoint i64 %indvars.iv.i76, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i78.1
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !72
  %gep.i77.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.next.i78.1
  store i64 %i.ev, ptr %gep.i77.2, align 8, !tbaa !72
  %indvars.iv.next.i78.2 = or disjoint i64 %indvars.iv.i76, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i78.2
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !72
  %gep.i77.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.next.i78.2
end_hunk_0
begin_hunk_1_@Exp_Truth6:bb.a
  br label %Exp_Truth6Lit.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = ashr exact i32 %i.i, 1
  %i.ab = sub nsw i32 %i.aa, %0
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !72
  br label %Exp_Truth6Lit.exit

Exp_Truth6Lit.exit:                               ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.t, %bb.g ], [ -1, %bb.c ], [ 0, %bb.b ], [ %i.p, %bb.f ], [ %i.z, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12 ; 7 uses
  switch i32 %i.ag, label %bb.l [
    i32 -1, label %Exp_Truth6Lit.exit31
    i32 -2, label %bb.k
  ]

bb.k:                                             ; preds = %Exp_Truth6Lit.exit
  br label %Exp_Truth6Lit.exit31

bb.l:                                             ; preds = %Exp_Truth6Lit.exit
  %i.ah = icmp slt i32 %i.ag, %i.g
  %i.ai = and i32 %i.ag, 1
  %.not17.i30 = icmp eq i32 %i.ai, 0              ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not17.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = sdiv i32 %i.ag, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !72
  %i.an = xor i64 %i.am, -1
  br label %Exp_Truth6Lit.exit31

bb.o:                                             ; preds = %bb.m
  %i.ao = ashr exact i32 %i.ag, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !72
  br label %Exp_Truth6Lit.exit31

bb.p:                                             ; preds = %bb.l
  br i1 %.not17.i30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = sdiv i32 %i.ag, 2
  %i.at = sub nsw i32 %i.as, %0
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72
  %i.ax = xor i64 %i.aw, -1
  br label %Exp_Truth6Lit.exit31

bb.r:                                             ; preds = %bb.p
  %i.ay = ashr exact i32 %i.ag, 1
  %i.az = sub nsw i32 %i.ay, %0
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !72
  br label %Exp_Truth6Lit.exit31

Exp_Truth6Lit.exit31:                             ; preds = %Exp_Truth6Lit.exit, %bb.k, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i29 = phi i64 [ %i.ar, %bb.o ], [ -1, %bb.k ], [ 0, %Exp_Truth6Lit.exit ], [ %i.an, %bb.n ], [ %i.ax, %bb.q ], [ %i.bc, %bb.r ]
  %i.bd = and i64 %.0.i29, %.0.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !350

._crit_edge:                                      ; preds = %Exp_Truth6Lit.exit31, %bb.a
  %i.bf = sext i32 %.val26 to i64
  %i.bg = getelementptr [4 x i8], ptr %.val24, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12 ; 7 uses
  switch i32 %i.bi, label %bb.t [
    i32 -1, label %Exp_Truth6Lit.exit34
    i32 -2, label %bb.s
  ]

bb.s:                                             ; preds = %._crit_edge
  br label %Exp_Truth6Lit.exit34

bb.t:                                             ; preds = %._crit_edge
  %i.bj = shl nsw i32 %0, 1
  %i.bk = icmp slt i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bi, 1
  %.not17.i33 = icmp eq i32 %i.bl, 0              ; 2 uses
  br i1 %i.bk, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  br i1 %.not17.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = sdiv i32 %i.bi, 2
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !72
  %i.bq = xor i64 %i.bp, -1
  br label %Exp_Truth6Lit.exit34

bb.w:                                             ; preds = %bb.u
  %i.br = ashr exact i32 %i.bi, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !72
  br label %Exp_Truth6Lit.exit34

bb.x:                                             ; preds = %bb.t
  br i1 %.not17.i33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = sdiv i32 %i.bi, 2
  %i.bw = sub nsw i32 %i.bv, %0
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %i.ca = xor i64 %i.bz, -1
  br label %Exp_Truth6Lit.exit34.thread

bb.z:                                             ; preds = %bb.x
  %i.cb = ashr exact i32 %i.bi, 1
  %i.cc = sub nsw i32 %i.cb, %0
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !72
  br label %Exp_Truth6Lit.exit34.thread

Exp_Truth6Lit.exit34:                             ; preds = %._crit_edge, %bb.s, %bb.v, %bb.w
  %.0.i32 = phi i64 [ %i.bu, %bb.w ], [ -1, %bb.s ], [ 0, %._crit_edge ], [ %i.bq, %bb.v ] ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.aa, label %Exp_Truth6Lit.exit34.thread

Exp_Truth6Lit.exit34.thread:                      ; preds = %bb.z, %bb.y, %Exp_Truth6Lit.exit34
  %.0.i3237 = phi i64 [ %.0.i32, %Exp_Truth6Lit.exit34 ], [ %i.cf, %bb.z ], [ %i.ca, %bb.y ]
  tail call void @free(ptr noundef nonnull %i.d) #27
  br label %bb.aa

bb.aa:                                            ; preds = %Exp_Truth6Lit.exit34, %Exp_Truth6Lit.exit34.thread
  %.0.i3238 = phi i64 [ %.0.i32, %Exp_Truth6Lit.exit34 ], [ %.0.i3237, %Exp_Truth6Lit.exit34.thread ]
  ret i64 %.0.i3238
}

declare i32 @Sfm_MitNodeIsNonCritical(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @Sfm_TimNodeIsNonCritical(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

declare i32 @Sfm_MitReadNtkDelay(ptr noundef) local_unnamed_addr #5

declare i32 @Sfm_TimReadNtkDelay(ptr noundef) local_unnamed_addr #5

declare i32 @Sfm_MitReadNtkMinSlack(ptr noundef) local_unnamed_addr #5

declare i64 @Gia_ManRandomW(i32 noundef) local_unnamed_addr #5

declare ptr @Abc_NtkDfs(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Sfm_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120}
!10 = !{!9, !5, i64 4}
!11 = !{!9, !5, i64 8}
!12 = !{!5, !5, i64 0}
!13 = !{!9, !5, i64 36}
!14 = !{!9, !5, i64 56}
!15 = !{!9, !5, i64 72}
!16 = !{!9, !5, i64 116}
!17 = !{!9, !5, i64 120}
!18 = !{!19, !20, i64 0}
!19 = !{!"timespec", !20, i64 0, !20, i64 8}
!20 = !{!"long", !6, i64 0}
!21 = !{!19, !20, i64 8}
!22 = !{!23, !20, i64 1104}
!23 = !{!"Sfm_Dec_t_", !24, i64 0, !26, i64 8, !27, i64 16, !28, i64 24, !29, i64 32, !30, i64 40, !32, i64 56, !34, i64 72, !36, i64 88, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !6, i64 120, !6, i64 136, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !38, i64 192, !20, i64 200, !30, i64 208, !30, i64 224, !34, i64 240, !30, i64 256, !30, i64 272, !30, i64 288, !30, i64 304, !32, i64 320, !32, i64 336, !36, i64 352, !36, i64 368, !39, i64 384, !34, i64 392, !6, i64 408, !6, i64 440, !6, i64 472, !6, i64 480, !5, i64 488, !5, i64 492, !6, i64 496, !6, i64 752, !6, i64 816, !30, i64 880, !30, i64 896, !30, i64 912, !30, i64 928, !30, i64 944, !30, i64 960, !30, i64 976, !6, i64 992, !5, i64 1024, !20, i64 1032, !20, i64 1040, !20, i64 1048, !20, i64 1056, !20, i64 1064, !20, i64 1072, !20, i64 1080, !20, i64 1088, !20, i64 1096, !20, i64 1104, !20, i64 1112, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !5, i64 1160, !5, i64 1164, !5, i64 1168, !5, i64 1172, !5, i64 1176, !5, i64 1180, !5, i64 1184, !5, i64 1188, !5, i64 1192, !5, i64 1196, !5, i64 1200, !20, i64 1208, !20, i64 1216, !6, i64 1224, !6, i64 1260}
!24 = !{!"p1 _ZTS10Sfm_Par_t_", !25, i64 0}
!25 = !{!"any pointer", !6, i64 0}
!26 = !{!"p1 _ZTS10Sfm_Lib_t_", !25, i64 0}
!27 = !{!"p1 _ZTS10Sfm_Tim_t_", !25, i64 0}
!28 = !{!"p1 _ZTS10Sfm_Mit_t_", !25, i64 0}
!29 = !{!"p1 _ZTS10Abc_Ntk_t_", !25, i64 0}
!30 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !31, i64 8}
!31 = !{!"p1 int", !25, i64 0}
!32 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !33, i64 8}
!33 = !{!"p1 long", !25, i64 0}
!34 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !35, i64 8}
!35 = !{!"p1 _ZTS10Vec_Int_t_", !25, i64 0}
!36 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !37, i64 8}
!37 = !{!"any p2 pointer", !25, i64 0}
!38 = !{!"p1 _ZTS17Mio_GateStruct_t_", !25, i64 0}
!39 = !{!"p1 _ZTS12sat_solver_t", !25, i64 0}
!40 = !{!23, !24, i64 0}
!41 = !{!23, !29, i64 32}
!42 = !{!23, !39, i64 384}
!43 = !{!23, !38, i64 192}
!44 = !{!23, !5, i64 180}
!45 = !{!23, !5, i64 184}
!46 = !{!9, !5, i64 60}
!47 = !{!23, !5, i64 176}
!48 = !{!23, !20, i64 1032}
!49 = !{!9, !5, i64 16}
!50 = !{!9, !5, i64 108}
!51 = !{!23, !26, i64 8}
!52 = !{!23, !28, i64 24}
!53 = !{!23, !27, i64 16}
!54 = !{!55, !25, i64 344}
!55 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !56, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !29, i64 160, !5, i64 168, !59, i64 176, !29, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !60, i64 208, !5, i64 216, !30, i64 224, !61, i64 240, !62, i64 248, !25, i64 256, !63, i64 264, !25, i64 272, !64, i64 280, !5, i64 284, !35, i64 288, !58, i64 296, !31, i64 304, !65, i64 312, !58, i64 320, !29, i64 328, !25, i64 336, !25, i64 344, !29, i64 352, !25, i64 360, !25, i64 368, !35, i64 376, !35, i64 384, !56, i64 392, !66, i64 400, !58, i64 408, !35, i64 416, !35, i64 424, !58, i64 432, !35, i64 440, !35, i64 448, !35, i64 456}
!56 = !{!"p1 omnipotent char", !25, i64 0}
!57 = !{!"p1 _ZTS9Nm_Man_t_", !25, i64 0}
!58 = !{!"p1 _ZTS10Vec_Ptr_t_", !25, i64 0}
!59 = !{!"p1 _ZTS10Abc_Des_t_", !25, i64 0}
!60 = !{!"double", !6, i64 0}
!61 = !{!"p1 _ZTS12Mem_Fixed_t_", !25, i64 0}
!62 = !{!"p1 _ZTS11Mem_Step_t_", !25, i64 0}
!63 = !{!"p1 _ZTS14Abc_ManTime_t_", !25, i64 0}
!64 = !{!"float", !6, i64 0}
!65 = !{!"p1 _ZTS10Abc_Cex_t_", !25, i64 0}
!66 = !{!"p1 float", !25, i64 0}
!67 = !{!23, !5, i64 104}
!68 = !{!23, !5, i64 108}
!69 = !{!23, !5, i64 112}
!70 = !{!23, !5, i64 116}
!71 = !{!33, !33, i64 0}
!72 = !{!20, !20, i64 0}
!73 = !{!23, !5, i64 172}
!74 = !{!55, !58, i64 32}
!75 = !{!36, !5, i64 4}
!76 = !{!36, !37, i64 8}
!77 = !{!25, !25, i64 0}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!30, !31, i64 8}
!81 = !{!30, !5, i64 4}
!82 = !{!30, !5, i64 0}
!83 = !{!32, !33, i64 8}
!84 = !{!32, !5, i64 4}
!85 = !{!32, !5, i64 0}
!86 = !{!34, !5, i64 0}
!87 = !{!34, !35, i64 8}
!88 = distinct !{!88, !79}
!89 = !{!34, !5, i64 4}
!90 = !{!36, !5, i64 0}
!91 = !{!23, !5, i64 168}
!92 = distinct !{!92, !79}
!93 = distinct !{!93, !79}
!94 = distinct !{!94, !79}
!95 = distinct !{!95, !79}
!96 = distinct !{!96, !79}
!97 = distinct !{!97, !79}
!98 = distinct !{!98, !79}
!99 = distinct !{!99, !79}
!100 = !{!23, !5, i64 152}
!101 = distinct !{!101, !79}
!102 = distinct !{!102, !79}
!103 = distinct !{!103, !79}
!104 = distinct !{!104, !79}
!105 = distinct !{!105, !79}
!106 = distinct !{!106, !79}
!107 = distinct !{!107, !79}
!108 = distinct !{!108, !79}
!109 = distinct !{!109, !79}
!110 = distinct !{!110, !79}
!111 = distinct !{!111, !79}
!112 = !{!6, !6, i64 0}
!113 = distinct !{!113, !79}
!114 = !{!115, !5, i64 28}
!115 = !{!"Abc_Obj_t_", !29, i64 0, !116, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !30, i64 24, !30, i64 40, !25, i64 56, !6, i64 64, !6, i64 72}
!116 = !{!"p1 _ZTS10Abc_Obj_t_", !25, i64 0}
!117 = !{!115, !29, i64 0}
!118 = !{!115, !31, i64 32}
!119 = !{!115, !5, i64 44}
!120 = distinct !{!120, !79}
!121 = distinct !{!121, !79}
!122 = !{!115, !5, i64 16}
!123 = distinct !{!123, !79}
!124 = distinct !{!124, !79}
!125 = distinct !{!125, !79}
!126 = !{!115, !31, i64 48}
!127 = distinct !{!127, !79}
!128 = distinct !{!128, !79, !129, !130}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = distinct !{!131, !79, !129}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = distinct !{!134, !79}
!135 = distinct !{!135, !79, !129, !130}
!136 = distinct !{!136, !79}
!137 = distinct !{!137, !79, !129, !130}
!138 = distinct !{!138, !79, !129}
!139 = distinct !{!139, !79, !129}
!140 = distinct !{!140, !79}
!141 = distinct !{!141, !79, !129, !130}
!142 = distinct !{!142, !79, !129}
!143 = distinct !{!143, !133}
!144 = distinct !{!144, !79, !129, !130}
!145 = distinct !{!145, !79, !129}
!146 = distinct !{!146, !133}
!147 = distinct !{!147, !79, !129, !130}
!148 = distinct !{!148, !79, !129}
!149 = distinct !{!149, !79, !129, !130}
!150 = distinct !{!150, !133}
!151 = distinct !{!151, !79, !129}
!152 = distinct !{!152, !79}
!153 = distinct !{!153, !79, !129, !130}
!154 = !{!155}
!155 = distinct !{!155, !156}
!156 = distinct !{!156, !"LVerDomain"}
!157 = !{!158}
!158 = distinct !{!158, !156}
end_hunk_1
