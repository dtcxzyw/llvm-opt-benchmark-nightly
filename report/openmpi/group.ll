Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/group?download=true
inline.NumInlined: 26
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ompi_group_minloc:bb.a
  %i.j = icmp sle i32 %.1, %i.i
  %.not.1 = icmp eq i32 %i.i, -1
  %or.cond.1 = or i1 %i.j, %.not.1                ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next to i32
  %.113.1 = select i1 %or.cond.1, i32 %.113, i32 %i.k ; 3 uses
  %.1.1 = select i1 %or.cond.1, i32 %.1, i32 %i.i ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.018.epil.init = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01217.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.113.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12   ; 2 uses
  %i.n = icmp sle i32 %.018.epil.init, %i.m
  %.not.epil = icmp eq i32 %i.m, -1
  %or.cond.epil = or i1 %i.n, %.not.epil
  %i.o = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.113.epil = select i1 %or.cond.epil, i32 %.01217.epil.init, i32 %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.113.1, %._crit_edge.loopexit.unr-lcssa ], [ %.113.epil, %.lr.ph.epil.preheader ]
  ret i32 %.012.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @ompi_group_incl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ompi_group_incl_plist(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12
  ret i32 %i.a
}

declare i32 @ompi_group_incl_plist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_group_excl(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = sub nsw i32 %i.b, %1                     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = tail call i32 @ompi_group_incl_plist(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, ptr noundef %3) #12
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #13 ; 7 uses
  %i.i = icmp sgt i32 %i.b, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count53 = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.e
  %.02536.us = phi i32 [ %.1.us, %bb.e ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.02735.us = phi i32 [ %i.s, %bb.e ], [ 0, %.preheader.us.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv50 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next51, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv50
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = icmp eq i32 %i.l, %.02735.us
  br i1 %i.m, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge.us.thread, label %bb.c, !llvm.loop !61

._crit_edge.us:                                   ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %._crit_edge.us.thread, label %bb.e

._crit_edge.us.thread:                            ; preds = %bb.d, %._crit_edge.us
  %i.p = sext i32 %.02536.us to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p
  store i32 %.02735.us, ptr %i.q, align 4, !tbaa !12
  %i.r = add nsw i32 %.02536.us, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.thread, %._crit_edge.us
  %.1.us = phi i32 [ %i.r, %._crit_edge.us.thread ], [ %.02536.us, %._crit_edge.us ] ; 2 uses
  %i.s = add nuw nsw i32 %.02735.us, 1            ; 2 uses
  %exitcond55.not = icmp eq i32 %i.s, %i.b
  br i1 %exitcond55.not, label %._crit_edge37, label %.preheader.us, !llvm.loop !62

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.t = icmp eq i32 %1, 0
  br i1 %i.t, label %.preheader.us39.preheader, label %._crit_edge37

.preheader.us39.preheader:                        ; preds = %.preheader.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.preheader.us39.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us39.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge37.thread, label %.preheader.us39.preheader66

.preheader.us39.preheader66:                      ; preds = %.preheader.us39.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us39.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.us39

.preheader.us39:                                  ; preds = %.preheader.us39.preheader66, %.preheader.us39
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.us39 ], [ %indvars.iv.ph, %.preheader.us39.preheader66 ] ; 3 uses
  %indvars49 = trunc i64 %indvars.iv to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %indvars49, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge37.thread, label %.preheader.us39, !llvm.loop !64

._crit_edge37.thread:                             ; preds = %.preheader.us39, %middle.block
  %i.y = tail call i32 @ompi_group_incl_plist(ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %3) #12
  br label %bb.f

._crit_edge37:                                    ; preds = %bb.e, %.preheader.lr.ph.split, %bb.b
  %.025.lcssa = phi i32 [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split ], [ %.1.us, %bb.e ]
  %i.z = tail call i32 @ompi_group_incl_plist(ptr noundef %0, i32 noundef %.025.lcssa, ptr noundef %i.h, ptr noundef %3) #12 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge37.thread, %._crit_edge37
  %i.aa = phi i32 [ %i.y, %._crit_edge37.thread ], [ %i.z, %._crit_edge37 ]
  tail call void @free(ptr noundef nonnull %i.h) #12
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %._crit_edge37
  %i.ab = phi i32 [ %i.e, %.thread ], [ %i.aa, %bb.f ], [ %i.z, %._crit_edge37 ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ompi_group_range_incl(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge122.thread

._crit_edge122.thread:                            ; preds = %bb.a
  %i.b = tail call i32 @ompi_group_incl_plist(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef %3) #12
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit102
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit102 ] ; 2 uses
  %.0113 = phi i32 [ 0, %.lr.ph.preheader ], [ %.3, %.loopexit102 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 5 uses
  %i.i = icmp slt i32 %i.d, %i.f
  br i1 %i.i, label %.preheader101.preheader, label %bb.b

.preheader101.preheader:                          ; preds = %.lr.ph
  %i.j = add i32 %i.h, %i.d                       ; 3 uses
  %i.k = add i32 %i.f, 1                          ; 2 uses
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.k)
  %i.m = icmp slt i32 %i.j, %i.k
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  %i.o = add i32 %i.j, %i.n
  %i.p = sub i32 %i.l, %i.o
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.r = udiv i32 %i.p, %i.q
  %i.s = add i32 %i.r, %i.n
  %i.t = add i32 %i.s, 1                          ; 3 uses
  %min.iters.check = icmp ult i32 %i.t, 8
  br i1 %min.iters.check, label %.preheader101.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.preheader101.preheader
  %n.vec = and i32 %i.t, -8                       ; 3 uses
  %i.u = mul i32 %n.vec, %i.h
  %i.v = add i32 %i.d, %i.u
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0113, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.w, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi167 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.x = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.y = add <4 x i32> %vec.phi167, splat (i32 1) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.z = icmp eq i32 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit102, label %.preheader101.preheader183

.preheader101.preheader183:                       ; preds = %.preheader101.preheader, %middle.block
  %.1110.ph = phi i32 [ %.0113, %.preheader101.preheader ], [ %i.aa, %middle.block ]
  %.074109.ph = phi i32 [ %i.d, %.preheader101.preheader ], [ %i.v, %middle.block ]
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.preheader183, %.preheader101
  %.1110 = phi i32 [ %i.ab, %.preheader101 ], [ %.1110.ph, %.preheader101.preheader183 ]
  %.074109 = phi i32 [ %i.ac, %.preheader101 ], [ %.074109.ph, %.preheader101.preheader183 ]
  %i.ab = add nsw i32 %.1110, 1                   ; 2 uses
  %i.ac = add nsw i32 %.074109, %i.h              ; 2 uses
  %.not98 = icmp sgt i32 %i.ac, %i.f
  br i1 %.not98, label %.loopexit102, label %.preheader101, !llvm.loop !66

bb.b:                                             ; preds = %.lr.ph
  %i.ad = icmp sgt i32 %i.d, %i.f
  br i1 %i.ad, label %.preheader103, label %bb.c

.preheader103:                                    ; preds = %bb.b, %.preheader103
  %.2107 = phi i32 [ %i.ae, %.preheader103 ], [ %.0113, %bb.b ]
  %.175106 = phi i32 [ %i.af, %.preheader103 ], [ %i.d, %bb.b ]
  %i.ae = add nsw i32 %.2107, 1                   ; 2 uses
  %i.af = add nsw i32 %.175106, %i.h              ; 2 uses
  %.not97 = icmp slt i32 %i.af, %i.f
  br i1 %.not97, label %.loopexit102, label %.preheader103, !llvm.loop !67

bb.c:                                             ; preds = %bb.b
  %i.ag = add nsw i32 %.0113, 1
  br label %.loopexit102

.loopexit102:                                     ; preds = %.preheader103, %.preheader101, %middle.block, %bb.c
  %.3 = phi i32 [ %i.ag, %bb.c ], [ %i.ab, %.preheader101 ], [ %i.aa, %middle.block ], [ %i.ae, %.preheader103 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.loopexit102
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %.lr.ph121.preheader, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ah = sext i32 %.3 to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #13
  br label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge, %bb.d
  %.078 = phi ptr [ %i.aj, %bb.d ], [ null, %._crit_edge ] ; 6 uses
  %wide.trip.count141 = zext nneg i32 %1 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.loopexit
  %indvars.iv138 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next139, %.loopexit ] ; 2 uses
  %.4119 = phi i32 [ 0, %.lr.ph121.preheader ], [ %.7, %.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv138 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12 ; 6 uses
  %i.aq = icmp slt i32 %i.al, %i.an
  br i1 %i.aq, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %.lr.ph121
  %i.ar = sext i32 %.4119 to i64                  ; 3 uses
  %i.as = add i32 %i.ap, %i.al                    ; 3 uses
  %i.at = add i32 %i.an, 1                        ; 2 uses
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at)
  %i.av = icmp slt i32 %i.as, %i.at
  %i.aw = zext i1 %i.av to i32                    ; 2 uses
  %i.ax = add i32 %i.as, %i.aw
  %i.ay = sub i32 %i.au, %i.ax
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  %i.ba = udiv i32 %i.ay, %i.az
  %i.bb = add i32 %i.ba, %i.aw                    ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check169 = icmp ult i32 %i.bb, 7
  br i1 %min.iters.check169, label %.preheader.preheader181, label %vector.ph170

vector.ph170:                                     ; preds = %.preheader.preheader
  %n.vec171 = and i64 %i.bd, 8589934584           ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.be = add nsw i64 %n.vec171, %i.ar            ; 2 uses
  %i.bf = trunc i64 %n.vec171 to i32
  %i.bg = mul i32 %i.ap, %i.bf
  %i.bh = add i32 %i.al, %i.bg
  %i.bi = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert172 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat173 = shufflevector <4 x i32> %broadcast.splatinsert172, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bj = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add nsw <4 x i32> %broadcast.splat173, %i.bj
  %invariant.gep = getelementptr [4 x i8], ptr %.078, i64 %i.ar
  %invariant.op = add <4 x i32> %i.bi, %i.bi
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph170
  %index175 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body174 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph170 ], [ %vec.ind.next.reass, %vector.body174 ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.bi
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index175 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.bk, align 4, !tbaa !12
  %index.next176 = add nuw i64 %index175, 8       ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.bl = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.bl, label %middle.block177, label %vector.body174, !llvm.loop !69

middle.block177:                                  ; preds = %vector.body174
  %cmp.n178 = icmp eq i64 %i.bd, %n.vec171
  br i1 %cmp.n178, label %.loopexit.loopexit, label %.preheader.preheader181

.preheader.preheader181:                          ; preds = %.preheader.preheader, %middle.block177
  %indvars.iv135.ph = phi i64 [ %i.ar, %.preheader.preheader ], [ %i.be, %middle.block177 ]
  %.276117.ph = phi i32 [ %i.al, %.preheader.preheader ], [ %i.bh, %middle.block177 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader181, %.preheader
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.preheader ], [ %indvars.iv135.ph, %.preheader.preheader181 ] ; 2 uses
  %.276117 = phi i32 [ %i.bn, %.preheader ], [ %.276117.ph, %.preheader.preheader181 ] ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %.078, i64 %indvars.iv135
  store i32 %.276117, ptr %i.bm, align 4, !tbaa !12
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bn = add nsw i32 %.276117, %i.ap             ; 2 uses
  %.not96 = icmp sgt i32 %i.bn, %i.an
  br i1 %.not96, label %.loopexit.loopexit, label %.preheader, !llvm.loop !70

bb.e:                                             ; preds = %.lr.ph121
  %i.bo = icmp sgt i32 %i.al, %i.an
  %i.bp = sext i32 %.4119 to i64                  ; 2 uses
  br i1 %i.bo, label %.preheader99, label %bb.f

.preheader99:                                     ; preds = %bb.e, %.preheader99
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.preheader99 ], [ %i.bp, %bb.e ] ; 2 uses
  %.377115 = phi i32 [ %i.br, %.preheader99 ], [ %i.al, %bb.e ] ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.078, i64 %indvars.iv132
  store i32 %.377115, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.br = add nsw i32 %.377115, %i.ap             ; 2 uses
  %.not95 = icmp slt i32 %i.br, %i.an
  br i1 %.not95, label %.loopexit.loopexit124, label %.preheader99, !llvm.loop !71

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds [4 x i8], ptr %.078, i64 %i.bp
  store i32 %i.al, ptr %i.bs, align 4, !tbaa !12
  %i.bt = add nsw i32 %.4119, 1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader, %middle.block177
  %indvars.iv.next136.lcssa = phi i64 [ %i.be, %middle.block177 ], [ %indvars.iv.next136, %.preheader ]
  %i.bu = trunc nsw i64 %indvars.iv.next136.lcssa to i32
  br label %.loopexit

.loopexit.loopexit124:                            ; preds = %.preheader99
  %i.bv = trunc nsw i64 %indvars.iv.next133 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit124, %.loopexit.loopexit, %bb.f
  %.7 = phi i32 [ %i.bt, %bb.f ], [ %i.bu, %.loopexit.loopexit ], [ %i.bv, %.loopexit.loopexit124 ] ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge122.thread158, label %.lr.ph121, !llvm.loop !72

._crit_edge122.thread158:                         ; preds = %.loopexit
  %i.bw = tail call i32 @ompi_group_incl_plist(ptr noundef %0, i32 noundef %.7, ptr noundef nonnull %.078, ptr noundef %3) #12
  tail call void @free(ptr noundef nonnull %.078) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge122.thread, %._crit_edge122.thread158
  %i.bx = phi i32 [ %i.b, %._crit_edge122.thread ], [ %i.bw, %._crit_edge122.thread158 ]
  ret i32 %i.bx
}

; Function Attrs: nounwind uwtable
define i32 @ompi_group_range_excl(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge145

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit128
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit128 ] ; 2 uses
  %.0136 = phi i32 [ 0, %.lr.ph.preheader ], [ %.3, %.loopexit128 ] ; 4 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12   ; 5 uses
  %i.h = icmp slt i32 %i.c, %i.e
  br i1 %i.h, label %.preheader127.preheader, label %bb.b

.preheader127.preheader:                          ; preds = %.lr.ph
  %i.i = add i32 %i.g, %i.c                       ; 3 uses
  %i.j = add i32 %i.e, 1                          ; 2 uses
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.j)
  %i.l = icmp slt i32 %i.i, %i.j
  %i.m = zext i1 %i.l to i32                      ; 2 uses
  %i.n = add i32 %i.i, %i.m
  %i.o = sub i32 %i.k, %i.n
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.q = udiv i32 %i.o, %i.p
  %i.r = add i32 %i.q, %i.m
  %i.s = add i32 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %.preheader127.preheader257, label %vector.ph

vector.ph:                                        ; preds = %.preheader127.preheader
  %n.vec = and i32 %i.s, -8                       ; 3 uses
  %i.t = mul i32 %n.vec, %i.g
  %i.u = add i32 %i.c, %i.t
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0136, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi226 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.w = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.x = add <4 x i32> %vec.phi226, splat (i32 1) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.x, %i.w
  %i.z = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.preheader127.preheader257

.preheader127.preheader257:                       ; preds = %.preheader127.preheader, %middle.block
  %.1134.ph = phi i32 [ %.0136, %.preheader127.preheader ], [ %i.z, %middle.block ]
  %.092133.ph = phi i32 [ %i.c, %.preheader127.preheader ], [ %i.u, %middle.block ]
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.preheader257, %.preheader127
  %.1134 = phi i32 [ %i.aa, %.preheader127 ], [ %.1134.ph, %.preheader127.preheader257 ]
  %.092133 = phi i32 [ %i.ab, %.preheader127 ], [ %.092133.ph, %.preheader127.preheader257 ]
  %i.aa = add nsw i32 %.1134, 1                   ; 2 uses
  %i.ab = add nsw i32 %.092133, %i.g              ; 2 uses
  %.not123 = icmp sgt i32 %i.ab, %i.e
  br i1 %.not123, label %.loopexit128, label %.preheader127, !llvm.loop !74

bb.b:                                             ; preds = %.lr.ph
  %i.ac = icmp sgt i32 %i.c, %i.e
  br i1 %i.ac, label %.preheader129, label %bb.c

.preheader129:                                    ; preds = %bb.b, %.preheader129
  %.2132 = phi i32 [ %i.ad, %.preheader129 ], [ %.0136, %bb.b ]
  %.193131 = phi i32 [ %i.ae, %.preheader129 ], [ %i.c, %bb.b ]
  %i.ad = add nsw i32 %.2132, 1                   ; 2 uses
  %i.ae = add nsw i32 %.193131, %i.g              ; 2 uses
  %.not122 = icmp slt i32 %i.ae, %i.e
  br i1 %.not122, label %.loopexit128, label %.preheader129, !llvm.loop !75

bb.c:                                             ; preds = %bb.b
  %i.af = add nsw i32 %.0136, 1
  br label %.loopexit128

.loopexit128:                                     ; preds = %.preheader129, %.preheader127, %middle.block, %bb.c
  %.3 = phi i32 [ %i.af, %bb.c ], [ %i.aa, %.preheader127 ], [ %i.z, %middle.block ], [ %i.ad, %.preheader129 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.loopexit128
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %.lr.ph144.preheader, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ag = sext i32 %.3 to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #13
  br label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %._crit_edge, %bb.d
  %.0.lcssa209 = phi i32 [ %.3, %bb.d ], [ 0, %._crit_edge ]
  %.096 = phi ptr [ %i.ai, %bb.d ], [ null, %._crit_edge ] ; 5 uses
  %wide.trip.count181 = zext nneg i32 %1 to i64
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %.loopexit
  %indvars.iv178 = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next179, %.loopexit ] ; 2 uses
  %.098142 = phi i32 [ 0, %.lr.ph144.preheader ], [ %.3101, %.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv178 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12 ; 6 uses
  %i.ap = icmp slt i32 %i.ak, %i.am
  br i1 %i.ap, label %.preheader124.preheader, label %bb.e

.preheader124.preheader:                          ; preds = %.lr.ph144
  %i.aq = sext i32 %.098142 to i64                ; 3 uses
  %i.ar = add i32 %i.ao, %i.ak                    ; 3 uses
  %i.as = add i32 %i.am, 1                        ; 2 uses
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.as)
  %i.au = icmp slt i32 %i.ar, %i.as
  %i.av = zext i1 %i.au to i32                    ; 2 uses
  %i.aw = add i32 %i.ar, %i.av
  %i.ax = sub i32 %i.at, %i.aw
  %i.ay = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 1)
  %i.az = udiv i32 %i.ax, %i.ay
  %i.ba = add i32 %i.az, %i.av                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check228 = icmp ult i32 %i.ba, 7
  br i1 %min.iters.check228, label %.preheader124.preheader255, label %vector.ph229

vector.ph229:                                     ; preds = %.preheader124.preheader
  %n.vec230 = and i64 %i.bc, 8589934584           ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = add nsw i64 %n.vec230, %i.aq            ; 2 uses
  %i.be = trunc i64 %n.vec230 to i32
  %i.bf = mul i32 %i.ao, %i.be
  %i.bg = add i32 %i.ak, %i.bf
  %i.bh = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bi = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add nsw <4 x i32> %broadcast.splat232, %i.bi
  %invariant.gep = getelementptr [4 x i8], ptr %.096, i64 %i.aq
  %invariant.op = add <4 x i32> %i.bh, %i.bh
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph229
  %index234 = phi i64 [ 0, %vector.ph229 ], [ %index.next235, %vector.body233 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph229 ], [ %vec.ind.next.reass, %vector.body233 ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.bh
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index234 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.bj, align 4, !tbaa !12
  %index.next235 = add nuw i64 %index234, 8       ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.bk = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.bk, label %middle.block236, label %vector.body233, !llvm.loop !77

middle.block236:                                  ; preds = %vector.body233
  %cmp.n237 = icmp eq i64 %i.bc, %n.vec230
  br i1 %cmp.n237, label %.loopexit.loopexit, label %.preheader124.preheader255

.preheader124.preheader255:                       ; preds = %.preheader124.preheader, %middle.block236
  %indvars.iv175.ph = phi i64 [ %i.aq, %.preheader124.preheader ], [ %i.bd, %middle.block236 ]
  %.294140.ph = phi i32 [ %i.ak, %.preheader124.preheader ], [ %i.bg, %middle.block236 ]
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.preheader255, %.preheader124
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.preheader124 ], [ %indvars.iv175.ph, %.preheader124.preheader255 ] ; 2 uses
  %.294140 = phi i32 [ %i.bm, %.preheader124 ], [ %.294140.ph, %.preheader124.preheader255 ] ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.096, i64 %indvars.iv175
  store i32 %.294140, ptr %i.bl, align 4, !tbaa !12
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.bm = add nsw i32 %.294140, %i.ao             ; 2 uses
  %.not121 = icmp sgt i32 %i.bm, %i.am
  br i1 %.not121, label %.loopexit.loopexit, label %.preheader124, !llvm.loop !78

bb.e:                                             ; preds = %.lr.ph144
  %i.bn = icmp sgt i32 %i.ak, %i.am
  %i.bo = sext i32 %.098142 to i64                ; 2 uses
  br i1 %i.bn, label %.preheader125, label %bb.f

.preheader125:                                    ; preds = %bb.e, %.preheader125
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.preheader125 ], [ %i.bo, %bb.e ] ; 2 uses
  %.395138 = phi i32 [ %i.bq, %.preheader125 ], [ %i.ak, %bb.e ] ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.096, i64 %indvars.iv172
  store i32 %.395138, ptr %i.bp, align 4, !tbaa !12
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.bq = add nsw i32 %.395138, %i.ao             ; 2 uses
  %.not120 = icmp slt i32 %i.bq, %i.am
  br i1 %.not120, label %.loopexit.loopexit165, label %.preheader125, !llvm.loop !79

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds [4 x i8], ptr %.096, i64 %i.bo
  store i32 %i.ak, ptr %i.br, align 4, !tbaa !12
  %i.bs = add nsw i32 %.098142, 1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader124, %middle.block236
  %indvars.iv.next176.lcssa = phi i64 [ %i.bd, %middle.block236 ], [ %indvars.iv.next176, %.preheader124 ]
  %i.bt = trunc nsw i64 %indvars.iv.next176.lcssa to i32
  br label %.loopexit

.loopexit.loopexit165:                            ; preds = %.preheader125
  %i.bu = trunc nsw i64 %indvars.iv.next173 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit165, %.loopexit.loopexit, %bb.f
  %.3101 = phi i32 [ %i.bs, %bb.f ], [ %i.bt, %.loopexit.loopexit ], [ %i.bu, %.loopexit.loopexit165 ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge145, label %.lr.ph144, !llvm.loop !80

._crit_edge145:                                   ; preds = %.loopexit, %bb.a
  %.096213 = phi ptr [ null, %bb.a ], [ %.096, %.loopexit ] ; 3 uses
  %.0.lcssa209212 = phi i32 [ 0, %bb.a ], [ %.0.lcssa209, %.loopexit ] ; 2 uses
  %.098.lcssa = phi i32 [ 0, %bb.a ], [ %.3101, %.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !27 ; 8 uses
  %.not117 = icmp eq i32 %i.bw, %.0.lcssa209212
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge145
  %i.bx = sub nsw i32 %i.bw, %.0.lcssa209212
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bz) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge145
  %.097 = phi ptr [ %i.ca, %bb.g ], [ null, %._crit_edge145 ] ; 6 uses
  %i.cb = icmp sgt i32 %i.bw, 0
  br i1 %i.cb, label %.preheader.lr.ph, label %._crit_edge155

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.cc = icmp sgt i32 %.098.lcssa, 0
  br i1 %i.cc, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count193 = zext nneg i32 %.098.lcssa to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.k
  %.0102154.us = phi i32 [ %.1103.us, %bb.k ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.2106153.us = phi i32 [ %i.cl, %bb.k ], [ 0, %.preheader.us.preheader ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.j
  %indvars.iv190 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next191, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.096213, i64 %indvars.iv190
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = icmp eq i32 %i.ce, %.2106153.us
  br i1 %i.cf, label %._crit_edge149.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %._crit_edge149.us.thread, label %bb.i, !llvm.loop !81

._crit_edge149.us:                                ; preds = %bb.i
  %i.cg = trunc nuw nsw i64 %indvars.iv190 to i32
  %i.ch = icmp eq i32 %.098.lcssa, %i.cg
  br i1 %i.ch, label %._crit_edge149.us.thread, label %bb.k

._crit_edge149.us.thread:                         ; preds = %bb.j, %._crit_edge149.us
  %i.ci = sext i32 %.0102154.us to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.097, i64 %i.ci
  store i32 %.2106153.us, ptr %i.cj, align 4, !tbaa !12
  %i.ck = add nsw i32 %.0102154.us, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge149.us.thread, %._crit_edge149.us
  %.1103.us = phi i32 [ %i.ck, %._crit_edge149.us.thread ], [ %.0102154.us, %._crit_edge149.us ] ; 2 uses
  %i.cl = add nuw nsw i32 %.2106153.us, 1         ; 2 uses
  %exitcond195.not = icmp eq i32 %i.cl, %i.bw
  br i1 %exitcond195.not, label %._crit_edge155.thread, label %.preheader.us, !llvm.loop !82

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cm = icmp eq i32 %.098.lcssa, 0
  br i1 %i.cm, label %.preheader.us157.preheader, label %._crit_edge155

.preheader.us157.preheader:                       ; preds = %.preheader.lr.ph.split
  %wide.trip.count188 = zext nneg i32 %i.bw to i64 ; 3 uses
  %min.iters.check241 = icmp ult i32 %i.bw, 8
  br i1 %min.iters.check241, label %.preheader.us157.preheader254, label %vector.ph242

vector.ph242:                                     ; preds = %.preheader.us157.preheader
  %n.vec243 = and i64 %wide.trip.count188, 2147483640 ; 3 uses
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next248, %vector.body244 ] ; 2 uses
  %vec.ind246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph242 ], [ %vec.ind.next249, %vector.body244 ] ; 3 uses
  %step.add247 = add <4 x i32> %vec.ind246, splat (i32 4)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.097, i64 %index245 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> %vec.ind246, ptr %i.cn, align 4, !tbaa !12
  store <4 x i32> %step.add247, ptr %i.co, align 4, !tbaa !12
  %index.next248 = add nuw i64 %index245, 8       ; 2 uses
  %vec.ind.next249 = add <4 x i32> %vec.ind246, splat (i32 8)
  %i.cp = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.cp, label %middle.block250, label %vector.body244, !llvm.loop !83

middle.block250:                                  ; preds = %vector.body244
  %cmp.n251 = icmp eq i64 %n.vec243, %wide.trip.count188
  br i1 %cmp.n251, label %._crit_edge155, label %.preheader.us157.preheader254

.preheader.us157.preheader254:                    ; preds = %.preheader.us157.preheader, %middle.block250
  %indvars.iv183.ph = phi i64 [ 0, %.preheader.us157.preheader ], [ %n.vec243, %middle.block250 ]
  br label %.preheader.us157

.preheader.us157:                                 ; preds = %.preheader.us157.preheader254, %.preheader.us157
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %.preheader.us157 ], [ %indvars.iv183.ph, %.preheader.us157.preheader254 ] ; 3 uses
  %indvars187 = trunc i64 %indvars.iv183 to i32
end_hunk_0
