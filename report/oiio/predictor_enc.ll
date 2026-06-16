inline.NumInlined: 92
inline.NumDeleted: 33
begin_hunk_0_@VP8LOptimizeSampling:bb.a
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sub nsw i32 %i.l, %3
  %i.q = shl nuw i32 1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %invariant.op = sub nsw i64 %i.k, %i.s
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.r ; 2 uses
  %i.t = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = add nsw i64 %indvars.iv, %i.s
  %i.v = mul nsw i64 %indvars.iv, %i.i
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = mul nsw i64 %i.u, %i.i
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %bcmp = tail call i32 @bcmp(ptr %i.w, ptr %i.y, i64 %i.j)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %.loopexit, %.lr.ph
  %.090112 = phi i32 [ %.090114, %.lr.ph ], [ %4, %.loopexit ] ; 5 uses
  %i.z = icmp eq i32 %.090112, %3
  br i1 %i.z, label %.thread.thread, label %.preheader108

.preheader108:                                    ; preds = %.thread
  %i.aa = icmp sgt i32 %.fr131, 0
  %i.ab = icmp sgt i32 %.fr, 0
  %or.cond174 = and i1 %i.aa, %i.ab
  br i1 %or.cond174, label %.preheader108.split.us.split.us.preheader, label %.split.us

.preheader108.split.us.split.us.preheader:        ; preds = %.preheader108
  %i.ac = zext nneg i32 %.fr to i64               ; 2 uses
  %i.ad = zext nneg i32 %.fr131 to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %.090112, i32 %3) ; 2 uses
  %i.ae = icmp sgt i32 %.090112, %3
  br i1 %i.ae, label %.preheader107.lr.ph.us.us, label %.split.us

.preheader107.lr.ph.us.us:                        ; preds = %.preheader108.split.us.split.us.preheader, %._crit_edge119.split.us.us.us
  %.3.us.us183 = phi i32 [ %i.aq, %._crit_edge119.split.us.us.us ], [ %.090112, %.preheader108.split.us.split.us.preheader ] ; 3 uses
  %i.af = sub nsw i32 %.3.us.us183, %3
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = sext i32 %i.ag to i64
  br label %.preheader107.us.us.us

.preheader107.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader107.lr.ph.us.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %._crit_edge.us.us.us ], [ 0, %.preheader107.lr.ph.us.us ] ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv144, %i.ac   ; 2 uses
  %invariant.gep170 = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ai
  br label %.preheader106.us.us.us

bb.d:                                             ; preds = %.lr.ph182
  %indvars.iv.next141 = add nsw i64 %indvars.iv.next141181, 1 ; 2 uses
  %.not161.not = icmp slt i64 %indvars.iv.next141, %i.an
  br i1 %.not161.not, label %.lr.ph182, label %._crit_edge, !llvm.loop !9

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %bb.d
  %indvars.iv.next141181 = phi i64 [ %indvars.iv.next141, %bb.d ], [ %indvars.iv.next141179, %.lr.ph182.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next141181
  %i.aj = load i32, ptr %gep, align 4, !tbaa !3
  %.not104.us.us.us = icmp eq i32 %i.aj, %i.ao
  br i1 %.not104.us.us.us, label %bb.d, label %._crit_edge119.split.us.us.us, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.d, %.preheader106.us.us.us
  %i.ak = icmp slt i64 %indvars.iv.next139, %i.ac
  br i1 %i.ak, label %.preheader106.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !10

.preheader106.us.us.us:                           ; preds = %._crit_edge, %.preheader107.us.us.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ 0, %.preheader107.us.us.us ] ; 3 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.ah ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv.next139 to i32
  %i.am = tail call noundef i32 @llvm.smin.i32(i32 %i.al, i32 %.fr)
  %gep171 = getelementptr [4 x i8], ptr %invariant.gep170, i64 %indvars.iv138
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %indvars.iv.next141179 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %.not161.not180 = icmp slt i64 %indvars.iv.next141179, %i.an
  br i1 %.not161.not180, label %.lr.ph182.preheader, label %._crit_edge

.lr.ph182.preheader:                              ; preds = %.preheader106.us.us.us
  %i.ao = load i32, ptr %gep171, align 4, !tbaa !3
  br label %.lr.ph182

._crit_edge.us.us.us:                             ; preds = %._crit_edge
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next145, %i.ad
  br i1 %i.ap, label %.preheader107.us.us.us, label %.split.us, !llvm.loop !11

._crit_edge119.split.us.us.us:                    ; preds = %.lr.ph182
  %i.aq = add nsw i32 %.3.us.us183, -1            ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %3
  br i1 %i.ar, label %.preheader107.lr.ph.us.us, label %.split.us

.split.us:                                        ; preds = %._crit_edge119.split.us.us.us, %._crit_edge.us.us.us, %.preheader108.split.us.split.us.preheader, %.preheader108
  %.us-phi125 = phi i32 [ %smin, %.preheader108.split.us.split.us.preheader ], [ %.090112, %.preheader108 ], [ %.3.us.us183, %._crit_edge.us.us.us ], [ %smin, %._crit_edge119.split.us.us.us ] ; 6 uses
  %i.as = icmp eq i32 %.us-phi125, %3
  br i1 %i.as, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.at = sub nsw i32 %.us-phi125, %3             ; 3 uses
  %i.au = shl nuw i32 1, %.us-phi125              ; 2 uses
  %i.av = add i32 %i.au, %i.b
  %i.aw = lshr i32 %i.av, %.us-phi125             ; 5 uses
  %i.ax = add i32 %i.au, %i.e
  %i.ay = lshr i32 %i.ax, %.us-phi125             ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = icmp sgt i32 %i.aw, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge130

.preheader.us.preheader:                          ; preds = %bb.e
  %i.bb = zext i32 %.fr to i64
  %wide.trip.count154 = zext nneg i32 %i.ay to i64
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bc = icmp eq i32 %i.aw, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod188 = trunc i32 %i.aw to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv151 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us ] ; 3 uses
  %i.bd = mul i64 %indvars.iv151, %i.bb           ; 3 uses
  %i.be = trunc i64 %indvars.iv151 to i32
  %i.bf = mul i32 %i.aw, %i.be
  %i.bg = zext i32 %i.bf to i64
  %invariant.gep172 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg ; 3 uses
  br i1 %i.bc, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.bh = add i64 %indvars.iv147, %i.bd
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = shl i32 %i.bi, %i.at
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %gep173 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv147
  store i32 %i.bm, ptr %gep173, align 4, !tbaa !3
  %indvars.iv.next148 = or disjoint i64 %indvars.iv147, 1 ; 2 uses
  %i.bn = add i64 %indvars.iv.next148, %i.bd
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, %i.at
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %gep173.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv.next148
  store i32 %i.bs, ptr %gep173.1, align 4, !tbaa !3
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !12

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv147.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next148.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.bt = add i64 %indvars.iv147.epil.init, %i.bd
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = shl i32 %i.bu, %i.at
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %gep173.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep172, i64 %indvars.iv147.epil.init
  store i32 %i.by, ptr %gep173.epil, align 4, !tbaa !3
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge130, label %.preheader.us, !llvm.loop !13

._crit_edge130:                                   ; preds = %._crit_edge.us, %bb.e
  store i32 %.us-phi125, ptr %5, align 4, !tbaa !3
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.a, %.split.us, %.thread, %._crit_edge130
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LResidualImage(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr nofree noundef captures(none) %14) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 7 uses
  %i.b = alloca [10 x ptr], align 16              ; 9 uses
  %i.c = alloca [10 x i32], align 16              ; 11 uses
  %i.d = load i32, ptr %13, align 4, !tbaa !3
  %.neg.i = sdiv i32 %8, -20
  %i.e = add nsw i32 %.neg.i, 5
  %i.f = shl nuw i32 1, %i.e
  %.fr130 = freeze i32 %i.f                       ; 6 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw i32 1, %3                        ; 2 uses
  %i.h = add i32 %0, -1                           ; 3 uses
  %i.i = add i32 %i.h, %i.g
  %i.j = lshr i32 %i.i, %3
  %i.k = add i32 %1, -1
  %i.l = add i32 %i.k, %i.g
  %i.m = lshr i32 %i.l, %3
  %i.n = mul nsw i32 %i.j, %i.m                   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader253, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 -16774400), ptr %i.p, align 4, !tbaa !3
  store <4 x i32> splat (i32 -16774400), ptr %i.q, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread, label %.lr.ph.preheader253

.lr.ph.preheader253:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader253, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader253 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 -16774400, ptr %i.s, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not84107 = icmp sgt i32 %2, %3
  br i1 %.not84107, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.c
  %i.t = add i32 %0, -1                           ; 3 uses
  %i.u = add i32 %1, -1                           ; 3 uses
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %15 = add i32 %3, 1
  %16 = sub i32 %15, %2                           ; 3 uses
  %xtraiter = and i32 %16, 1
  %i.w = icmp eq i32 %3, %2
  br i1 %i.w, label %.epil.preheader, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter = and i32 %16, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph111.new
  %indvars.iv145 = phi i64 [ %i.v, %.lr.ph111.new ], [ %indvars.iv.next146.1, %bb.d ] ; 4 uses
  %.080108 = phi i32 [ 0, %.lr.ph111.new ], [ %i.ao, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph111.new ], [ %niter.next.1, %bb.d ]
  %i.x = trunc nsw i64 %indvars.iv145 to i32      ; 3 uses
  %i.y = shl nuw i32 1, %i.x                      ; 2 uses
  %i.z = add i32 %i.t, %i.y
  %i.aa = lshr i32 %i.z, %i.x
  %i.ab = add i32 %i.u, %i.y
  %i.ac = lshr i32 %i.ab, %i.x
  %i.ad = mul nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv145
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = add i32 %i.ad, %.080108
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ag = trunc nsw i64 %indvars.iv.next146 to i32 ; 3 uses
  %i.ah = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.ai = add i32 %i.t, %i.ah
  %i.aj = lshr i32 %i.ai, %i.ag
  %i.ak = add i32 %i.u, %i.ah
  %i.al = lshr i32 %i.ak, %i.ag
  %i.am = mul nsw i32 %i.aj, %i.al                ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next146
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = add i32 %i.am, %i.af                    ; 3 uses
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge112.loopexit.unr-lcssa, label %bb.d, !llvm.loop !18

._crit_edge112.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge112.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111
  %indvars.iv145.epil.init = phi i64 [ %i.v, %.lr.ph111 ], [ %indvars.iv.next146.1, %._crit_edge112.loopexit.unr-lcssa ] ; 2 uses
  %.080108.epil.init = phi i32 [ 0, %.lr.ph111 ], [ %i.ao, %._crit_edge112.loopexit.unr-lcssa ]
  %lcmp.mod255 = trunc i32 %16 to i1
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.ap = trunc nsw i64 %indvars.iv145.epil.init to i32 ; 3 uses
  %i.aq = shl nuw i32 1, %i.ap                    ; 2 uses
  %i.ar = add i32 %i.t, %i.aq
  %i.as = lshr i32 %i.ar, %i.ap
  %i.at = add i32 %i.u, %i.aq
  %i.au = lshr i32 %i.at, %i.ap
  %i.av = mul nsw i32 %i.as, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv145.epil.init
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %i.ax = add i32 %i.av, %.080108.epil.init
  br label %._crit_edge112.loopexit

._crit_edge112.loopexit:                          ; preds = %._crit_edge112.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa251 = phi i32 [ %i.ao, %._crit_edge112.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %i.ay = zext i32 %.lcssa251 to i64
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %bb.c
  %.080.lcssa = phi i64 [ 0, %bb.c ], [ %i.ay, %._crit_edge112.loopexit ]
  %i.az = tail call ptr @WebPSafeMalloc(i64 noundef %.080.lcssa, i64 noundef 4) #10 ; 6 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.bs, label %bb.e

bb.e:                                             ; preds = %._crit_edge112
  %i.bb = sext i32 %2 to i64                      ; 5 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bb ; 3 uses
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !19
  %.not85.not113 = icmp slt i32 %2, %3
  br i1 %.not85.not113, label %.lr.ph116.preheader, label %._crit_edge117

.lr.ph116.preheader:                              ; preds = %bb.e
  %wide.trip.count152 = sext i32 %3 to i64        ; 3 uses
  %i.bd = sub nsw i64 %wide.trip.count152, %i.bb
  %xtraiter256 = and i64 %i.bd, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol

.lr.ph116.prol:                                   ; preds = %.lr.ph116.preheader, %.lr.ph116.prol
  %17 = phi ptr [ %i.bh, %.lr.ph116.prol ], [ %i.az, %.lr.ph116.preheader ]
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph116.prol ], [ %i.bb, %.lr.ph116.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph116.prol ], [ 0, %.lr.ph116.preheader ]
  %indvars.iv.next150.prol = add nsw i64 %indvars.iv149.prol, 1 ; 3 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.prol
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !19
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol, !llvm.loop !22

.lr.ph116.prol.loopexit:                          ; preds = %.lr.ph116.prol, %.lr.ph116.preheader
  %.unr = phi ptr [ %i.az, %.lr.ph116.preheader ], [ %i.bh, %.lr.ph116.prol ]
  %indvars.iv149.unr = phi i64 [ %i.bb, %.lr.ph116.preheader ], [ %indvars.iv.next150.prol, %.lr.ph116.prol ]
  %18 = sub nsw i64 %i.bb, %wide.trip.count152
  %19 = icmp ugt i64 %18, -4
  br i1 %19, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116
  %20 = phi ptr [ %i.cb, %.lr.ph116 ], [ %.unr, %.lr.ph116.prol.loopexit ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %.lr.ph116 ], [ %indvars.iv149.unr, %.lr.ph116.prol.loopexit ] ; 5 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !19
  %indvars.iv.next150.1 = add nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.1
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !19
  %indvars.iv.next150.2 = add nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.2
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !19
  %indvars.iv.next150.3 = add nsw i64 %indvars.iv149, 4 ; 3 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.3
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !19
  %exitcond153.not.3 = icmp eq i64 %indvars.iv.next150.3, %wide.trip.count152
  br i1 %exitcond153.not.3, label %._crit_edge117, label %.lr.ph116, !llvm.loop !24

._crit_edge117:                                   ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116, %bb.e
  %i.cd = shl nuw i32 1, %2                       ; 5 uses
  %i.ce = add i32 %0, -1                          ; 4 uses
  %i.cf = add i32 %i.cd, %i.ce
  %i.cg = lshr i32 %i.cf, %2
  %i.ch = add i32 %1, -1                          ; 2 uses
  %i.ci = add i32 %i.cd, %i.ch
  %i.cj = lshr i32 %i.ci, %2                      ; 4 uses
  %i.ck = sub nsw i32 %3, %2                      ; 7 uses
  %i.cl = add i32 %i.ck, 1                        ; 3 uses
  %i.cm = mul i32 %i.cl, 14336
  %i.cn = shl i32 %i.cl, 10
  %i.co = mul i32 %i.cl, 15374
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call ptr @WebPSafeCalloc(i64 noundef %i.cp, i64 noundef 4) #10 ; 11 uses
  %i.cr = sext i32 %i.cm to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr ; 3 uses
  %i.ct = sext i32 %i.cn to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %13, align 4, !tbaa !3
  %i.cw = tail call noundef i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %3, i32 4) ; 2 uses
  %i.cx = tail call noundef i32 @llvm.smax.i32(i32 %i.cw, i32 %2)
  %i.cy = sub nsw i32 %i.cx, %2                   ; 2 uses
  store i32 0, ptr %14, align 4, !tbaa !3
  %i.cz = icmp eq ptr %i.cq, null
  br i1 %i.cz, label %GetBestPredictorsAndSubSampling.exit.thread, label %.preheader180.i

.preheader180.i:                                  ; preds = %._crit_edge117
  %.not195.i = icmp eq i32 %i.cj, 0
  br i1 %.not195.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader180.i
  %i.da = sext i32 %0 to i64                      ; 5 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %6, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 5 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 4 uses
  %i.df = icmp sgt i32 %.fr130, 1                 ; 2 uses
  %.not.i.not.i = icmp slt i32 %2, %i.cw
  %i.dg = add i32 %i.cy, 1
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.dg, i32 2)
  %i.dh = sext i32 %1 to i64
  %invariant.op.i.i = add nsw i64 %i.dh, -1       ; 3 uses
  %i.di = add i32 %i.cg, -1
  %i.dj = add i32 %i.cj, -1
  %.pre.i = mul i32 %i.ck, 14336
  %i.dk = add i32 %.pre.i, 14336
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %.lr.ph.i
  %.0145190.i = phi i32 [ 0, %.lr.ph.i ], [ %.1146.i, %bb.bo ] ; 2 uses
  %.0147189.i = phi i32 [ 0, %.lr.ph.i ], [ %.1148.i, %bb.bo ] ; 2 uses
  %.0150188.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qw, %bb.bo ] ; 3 uses
  %.0151187.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qu, %bb.bo ] ; 3 uses
  %.0152186.i = phi i32 [ 0, %.lr.ph.i ], [ %.2154.i, %bb.bo ] ; 2 uses
  %.0155185.i = phi i32 [ 0, %.lr.ph.i ], [ %.2157.i, %bb.bo ] ; 2 uses
  %i.dn = shl i32 %.0151187.i, %2                 ; 7 uses
  %i.do = shl i32 %.0150188.i, %2                 ; 4 uses
  %i.dp = sub nsw i32 %1, %i.do
  %i.dq = call noundef i32 @llvm.smin.i32(i32 %i.cd, i32 %i.dp) ; 2 uses
  %i.dr = sub nsw i32 %0, %i.dn                   ; 3 uses
  %i.ds = call noundef i32 @llvm.smin.i32(i32 %i.cd, i32 %i.dr) ; 3 uses
  %i.dt = icmp sgt i32 %i.dn, 0
  %i.du = zext i1 %i.dt to i32                    ; 2 uses
  %i.dv = sub nsw i32 %i.dn, %i.du
  %i.dw = add nsw i32 %i.ds, %i.du                ; 5 uses
  %i.dx = icmp slt i32 %i.cd, %i.dr
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add nsw i32 %i.dw, %i.dy                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ea = icmp sgt i32 %i.do, 0                   ; 4 uses
  %i.eb = icmp sgt i32 %i.dq, 0
  %i.ec = sext i32 %i.dv to i64                   ; 10 uses
  %i.ed = add nsw i32 %i.do, -1
  %i.ee = mul nsw i32 %i.ed, %0
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ec ; 17 uses
  %i.ei = add nsw i32 %i.dw, 1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 2                    ; 17 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %5, i64 %i.ec ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.de, i64 %i.ec ; 2 uses
  %i.em = add nsw i32 %i.ds, %i.dn                ; 3 uses
  br i1 %i.eb, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %bb.f
  %i.en = icmp sgt i32 %i.dr, 0
  %i.eo = sext i32 %i.do to i64                   ; 3 uses
  %wide.trip.count152.i.i = zext nneg i32 %i.dq to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ds to i64 ; 2 uses
  br i1 %i.en, label %.split.us.i.us.i, label %.split.us.i.i.preheader

.split.us.i.i.preheader:                          ; preds = %.split.us.preheader.i.i
  br i1 %i.df, label %.split.us.i.i.us, label %.split.us.i.i

.split.us.i.i.us:                                 ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us126
  %indvars.iv154.i.i.us = phi i64 [ %indvars.iv.next155.i.i.us, %._crit_edge127.us.i.split.i.split.us126 ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0131.us.i.i.us = phi ptr [ %.1100123.us.i.i.us121, %._crit_edge127.us.i.split.i.split.us126 ], [ %6, %.split.us.i.i.preheader ]
  %.099130.us.i.i.us = phi ptr [ %.1124.us.i.i.us120, %._crit_edge127.us.i.split.i.split.us126 ], [ %i.dc, %.split.us.i.i.preheader ] ; 2 uses
  br i1 %i.ea, label %bb.g, label %.lr.ph126.us.i.i.us

bb.g:                                             ; preds = %.split.us.i.i.us
  %i.ep = getelementptr inbounds [4 x i8], ptr %.099130.us.i.i.us, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ep, ptr readonly align 4 %i.eh, i64 %i.ek, i1 false)
  br label %.lr.ph126.us.i.i.us

.lr.ph126.us.i.i.us:                              ; preds = %bb.g, %.split.us.i.i.us
  %i.eq = trunc nuw nsw i64 %indvars.iv154.i.i.us to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph126.us.i.i.us, %.loopexit.us.i.i.us123
  %indvars.iv149.i.i.us119 = phi i64 [ 0, %.lr.ph126.us.i.i.us ], [ %indvars.iv.next150.i.i.us124, %.loopexit.us.i.i.us123 ] ; 2 uses
  %.1124.us.i.i.us120 = phi ptr [ %.0131.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1100123.us.i.i.us121, %.loopexit.us.i.i.us123 ] ; 4 uses
  %.1100123.us.i.i.us121 = phi ptr [ %.099130.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1124.us.i.i.us120, %.loopexit.us.i.i.us123 ] ; 3 uses
  %i.er = add nsw i64 %indvars.iv149.i.i.us119, %i.eo ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.1124.us.i.i.us120, i64 %i.ec
  %i.et = mul nsw i64 %i.er, %i.da
  %gep.us.i.i.us122 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.et ; 2 uses
  %i.eu = icmp slt i64 %i.er, %invariant.op.i.i   ; 2 uses
  %i.ev = zext i1 %i.eu to i32
  %i.ew = add nsw i32 %i.dw, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.es, ptr readonly align 4 %gep.us.i.i.us122, i64 %i.ey, i1 false)
  %i.ez = icmp sgt i64 %i.er, 0
  %brmerge.not.us.i.i.us = select i1 %i.ez, i1 %i.eu, i1 false
  br i1 %brmerge.not.us.i.i.us, label %bb.i, label %.loopexit.us.i.i.us123

bb.i:                                             ; preds = %bb.h
  call fastcc void @MaxDiffsForRow(i32 noundef %i.dz, i32 noundef %0, ptr noundef readonly %gep.us.i.i.us122, ptr noundef nonnull %i.el, i32 noundef %10)
  br label %.loopexit.us.i.i.us123

.loopexit.us.i.i.us123:                           ; preds = %bb.i, %bb.h
  %i.fa = trunc nsw i64 %i.er to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.i.us121, ptr noundef %.1124.us.i.i.us120, ptr noundef nonnull %i.de, i32 noundef %i.eq, i32 noundef %i.dn, i32 noundef %i.em, i32 noundef %i.fa, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  %indvars.iv.next150.i.i.us124 = add nuw nsw i64 %indvars.iv149.i.i.us119, 1 ; 2 uses
  %exitcond153.not.i.i.us125 = icmp eq i64 %indvars.iv.next150.i.i.us124, %wide.trip.count152.i.i
  br i1 %exitcond153.not.i.i.us125, label %._crit_edge127.us.i.split.i.split.us126, label %bb.h, !llvm.loop !25

._crit_edge127.us.i.split.i.split.us126:          ; preds = %.loopexit.us.i.i.us123
  %indvars.iv.next155.i.i.us = add nuw nsw i64 %indvars.iv154.i.i.us, 1 ; 2 uses
  %exitcond157.not.i.i.us = icmp eq i64 %indvars.iv.next155.i.i.us, 14
  br i1 %exitcond157.not.i.i.us, label %ComputeResidualsForTile.exit.i, label %.split.us.i.i.us, !llvm.loop !26

.split.us.i.us.i:                                 ; preds = %.split.us.preheader.i.i, %._crit_edge127.us.i.split.us.us.i
  %indvars.iv154.i.us.i = phi i64 [ %indvars.iv.next155.i.us.i, %._crit_edge127.us.i.split.us.us.i ], [ 0, %.split.us.preheader.i.i ] ; 3 uses
  %.0131.us.i.us.i = phi ptr [ %.1100123.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %6, %.split.us.preheader.i.i ]
  %.099130.us.i.us.i = phi ptr [ %.1124.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %i.dc, %.split.us.preheader.i.i ] ; 2 uses
  %.idx.i.us.i = shl nuw nsw i64 %indvars.iv154.i.us.i, 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i.us.i ; 4 uses
  br i1 %i.ea, label %bb.j, label %.lr.ph126.us.i.us.i

bb.j:                                             ; preds = %.split.us.i.us.i
  %i.fc = getelementptr inbounds [4 x i8], ptr %.099130.us.i.us.i, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fc, ptr readonly align 4 %i.eh, i64 %i.ek, i1 false)
  br label %.lr.ph126.us.i.us.i

.lr.ph126.us.i.us.i:                              ; preds = %bb.j, %.split.us.i.us.i
  %i.fd = trunc nuw nsw i64 %indvars.iv154.i.us.i to i32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us.i.us.us.i, %.lr.ph126.us.i.us.i
  %indvars.iv149.i.us.us.i = phi i64 [ 0, %.lr.ph126.us.i.us.i ], [ %indvars.iv.next150.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 2 uses
  %.1124.us.i.us.us.i = phi ptr [ %.0131.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1100123.us.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 4 uses
  %.1100123.us.i.us.us.i = phi ptr [ %.099130.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1124.us.i.us.us.i, %.loopexit.us.i.us.us.i ] ; 3 uses
  %i.fe = add nsw i64 %indvars.iv149.i.us.us.i, %i.eo ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %.1124.us.i.us.us.i, i64 %i.ec
  %i.fg = mul nsw i64 %i.fe, %i.da
  %gep.us.i.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.fg ; 2 uses
  %i.fh = icmp slt i64 %i.fe, %invariant.op.i.i   ; 2 uses
  %i.fi = zext i1 %i.fh to i32
  %i.fj = add nsw i32 %i.dw, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ff, ptr readonly align 4 %gep.us.i.us.us.i, i64 %i.fl, i1 false)
  %i.fm = icmp sgt i64 %i.fe, 0
  %or.cond.not112.not115.us.i.us.us.i = select i1 %i.df, i1 %i.fm, i1 false
  %brmerge.not.us.i.us.us.i = select i1 %or.cond.not112.not115.us.i.us.us.i, i1 %i.fh, i1 false
  br i1 %brmerge.not.us.i.us.us.i, label %bb.l, label %.lr.ph.us.i.preheader.us.us.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @MaxDiffsForRow(i32 noundef %i.dz, i32 noundef %0, ptr noundef readonly %gep.us.i.us.us.i, ptr noundef nonnull %i.el, i32 noundef %10)
  br label %.lr.ph.us.i.preheader.us.us.i

.lr.ph.us.i.preheader.us.us.i:                    ; preds = %bb.l, %bb.k
  %i.fn = trunc nsw i64 %i.fe to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.us.us.i, ptr noundef %.1124.us.i.us.us.i, ptr noundef nonnull %i.de, i32 noundef %i.fd, i32 noundef %i.dn, i32 noundef %i.em, i32 noundef %i.fn, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  br label %.lr.ph.us.i.us.us.i

.lr.ph.us.i.us.us.i:                              ; preds = %.lr.ph.us.i.us.us.i, %.lr.ph.us.i.preheader.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.lr.ph.us.i.us.us.i ], [ 0, %.lr.ph.us.i.preheader.us.us.i ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 4 uses
  %i.fq = lshr i32 %i.fp, 24
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fr ; 2 uses
end_hunk_0
begin_hunk_1_@GetResidual:bb.a
  %i.fp = add nsw i32 %i.fo, %.037.i              ; 3 uses
  %i.fq = sub nsw i32 %i.fl, %i.fh
  %i.fr = and i32 %i.fq, 255
  %i.fs = icmp samesign ult i32 %i.fr, %i.fn
  %i.ft = zext i1 %i.fs to i32
  %i.fu = sub nsw i32 %i.fj, %i.fo
  %i.fv = sub i32 %i.fp, %i.fj
  %i.fw = add nsw i32 %i.fv, %i.ft
  %i.fx = icmp slt i32 %i.fu, %i.fw
  %i.fy = icmp samesign ule i32 %i.fj, %i.fn      ; 2 uses
  %i.fz = add nuw i32 %i.fo, %i.dp                ; 2 uses
  br i1 %i.fx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %NearLosslessComponent.exit49.i
  %.not33.i55.i = icmp samesign ugt i32 %i.fo, %i.fn
  %or.cond.i56.i = select i1 %i.fy, i1 true, i1 %.not33.i55.i
  %spec.select76.i = select i1 %or.cond.i56.i, i32 %i.fo, i32 %i.fz
  br label %NearLosslessComponent.exit57.i

bb.ai:                                            ; preds = %NearLosslessComponent.exit49.i
  %i.ga = icmp sgt i32 %i.fp, %i.fn
  %or.cond34.i52.i = and i1 %i.fy, %i.ga
  %spec.select77.i = select i1 %or.cond34.i52.i, i32 %i.fz, i32 %i.fp
  br label %NearLosslessComponent.exit57.i

NearLosslessComponent.exit57.i:                   ; preds = %bb.ai, %bb.ah
  %.0.in.i53.i = phi i32 [ %spec.select76.i, %bb.ah ], [ %spec.select77.i, %bb.ai ]
  %i.gb = trunc i32 %i.db to i8
  %.narrow.i58.i = sub i8 %i.gb, %.040.i
  %i.gc = zext i8 %.narrow.i58.i to i32           ; 2 uses
  %i.gd = sub i32 %i.gc, %i.cy
  %i.ge = and i32 %i.gd, 255                      ; 4 uses
  %i.gf = sub i32 %i.fl, %i.cy
  %i.gg = and i32 %i.gf, 255                      ; 4 uses
  %i.gh = and i32 %i.ge, %.pre-phi.i              ; 5 uses
  %i.gi = add nsw i32 %i.gh, %.037.i              ; 3 uses
  %i.gj = sub nsw i32 %i.fl, %i.gc
  %i.gk = and i32 %i.gj, 255
  %i.gl = icmp samesign ult i32 %i.gk, %i.gg
  %i.gm = zext i1 %i.gl to i32
  %i.gn = sub nsw i32 %i.ge, %i.gh
  %i.go = sub i32 %i.gi, %i.ge
  %i.gp = add nsw i32 %i.go, %i.gm
  %i.gq = icmp slt i32 %i.gn, %i.gp
  %i.gr = icmp samesign ule i32 %i.ge, %i.gg      ; 2 uses
  %i.gs = add nuw i32 %i.gh, %i.dp                ; 2 uses
  br i1 %i.gq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %NearLosslessComponent.exit57.i
  %.not33.i62.i = icmp samesign ugt i32 %i.gh, %i.gg
  %or.cond.i63.i = select i1 %i.gr, i1 true, i1 %.not33.i62.i
  %spec.select78.i = select i1 %or.cond.i63.i, i32 %i.gh, i32 %i.gs
  br label %NearLosslessComponent.exit64.i

bb.ak:                                            ; preds = %NearLosslessComponent.exit57.i
  %i.gt = icmp sgt i32 %i.gi, %i.gg
  %or.cond34.i59.i = and i1 %i.gr, %i.gt
  %spec.select79.i = select i1 %or.cond34.i59.i, i32 %i.gs, i32 %i.gi
  br label %NearLosslessComponent.exit64.i

NearLosslessComponent.exit64.i:                   ; preds = %bb.ak, %bb.aj
  %.0.in.i60.i = phi i32 [ %spec.select78.i, %bb.aj ], [ %spec.select79.i, %bb.ak ]
  %i.gu = shl i32 %.039.i, 24
  %i.gv = shl i32 %.0.in.i53.i, 16
  %i.gw = and i32 %i.gv, 16711680
  %i.gx = or disjoint i32 %i.gw, %i.gu
  %i.gy = shl i32 %.0.in.i45.i, 8
  %i.gz = and i32 %i.gy, 65280
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = and i32 %.0.in.i60.i, 255
  %i.hc = or disjoint i32 %i.hb, %i.ha
  %.pre = and i32 %i.cy, -16711936
  %.pre115 = and i32 %i.cy, 16711935
  br label %.thread126

bb.al:                                            ; preds = %bb.x, %.thread121
  %.069124 = phi i32 [ %i.cu, %.thread121 ], [ %i.cy, %bb.x ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3  ; 3 uses
  %i.hf = or i32 %i.he, 16711680
  %i.hg = and i32 %.069124, -16711936
  %i.hh = sub i32 %i.hf, %i.hg                    ; 2 uses
  %i.hi = or i32 %i.he, 65280
  %i.hj = and i32 %.069124, 16711935
  %i.hk = sub i32 %i.hi, %i.hj
  %i.hl = and i32 %i.hh, -16711936
  %i.hm = and i32 %i.hk, 16711935
  %i.hn = or disjoint i32 %i.hl, %i.hm
  %i.ho = icmp ult i32 %i.he, 16777216
  br i1 %i.ho, label %bb.am, label %bb.ao

.thread126:                                       ; preds = %NearLosslessComponent.exit64.i, %bb.z
  %.pre-phi116 = phi i32 [ %i.dk, %bb.z ], [ %.pre115, %NearLosslessComponent.exit64.i ]
  %.pre-phi = phi i32 [ %i.dh, %bb.z ], [ %.pre, %NearLosslessComponent.exit64.i ]
  %.0.i75 = phi i32 [ %i.do, %bb.z ], [ %i.hc, %NearLosslessComponent.exit64.i ] ; 4 uses
  %i.hp = and i32 %.0.i75, -16711936
  %i.hq = add i32 %i.hp, %.pre-phi                ; 2 uses
  %i.hr = and i32 %.0.i75, 16711935
  %i.hs = add nuw nsw i32 %i.hr, %.pre-phi116
  %i.ht = and i32 %i.hq, -16711936
  %i.hu = and i32 %i.hs, 16711935
  %i.hv = or disjoint i32 %i.ht, %i.hu
  store i32 %i.hv, ptr %i.da, align 4, !tbaa !3
  %i.hw = icmp ult i32 %i.hq, 16777216
  br i1 %i.hw, label %.thread131, label %bb.ao

.thread131:                                       ; preds = %.thread126
  %i.hx = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.hy = and i32 %.0.i75, -16777216
  %i.hz = and i32 %i.cy, 16777215
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !3
  br label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ia = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.ib = and i32 %i.hh, -16777216                ; 2 uses
  %i.ic = and i32 %.069124, 16777215
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !3
  br i1 %i.ct, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.id = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.id, ptr %i.aa, align 4, !tbaa !3
  br label %bb.ao

bb.ao:                                            ; preds = %.thread131, %.thread126, %bb.am, %bb.an, %bb.al
  %.1 = phi i32 [ %i.ib, %bb.an ], [ %i.ib, %bb.am ], [ %i.hn, %bb.al ], [ %.0.i75, %.thread126 ], [ %i.hy, %.thread131 ]
  %i.ie = sub nsw i64 %indvars.iv, %i.ay
  %i.if = getelementptr inbounds [4 x i8], ptr %12, i64 %i.ie
  store i32 %.1, ptr %i.if, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %PredictBatch.exit, label %.lr.ph.split.split.split, !llvm.loop !62

PredictBatch.exit:                                ; preds = %bb.ao, %bb.w, %bb.r, %bb.m, %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !8, !16, !15}
!18 = distinct !{!18, !8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 int", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!21, !21, i64 0}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !8}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{null, null}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{null}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{null}
!54 = distinct !{null, null}
!55 = distinct !{!55, !8}
!56 = !{!5, !5, i64 0}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{null}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
end_hunk_1
