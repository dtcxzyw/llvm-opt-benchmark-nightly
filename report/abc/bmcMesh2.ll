Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMesh2?download=true
inline.NumInlined: 87
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Bmc_MeshAddOneHotness2:bb.a

bb.d:                                             ; preds = %bb.b, %bb.c
  %.123 = phi i32 [ %i.k, %bb.c ], [ %.02229, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv.next
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28
  %.not.1 = icmp eq i32 %i.p, 1
  br i1 %.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %.123, 1
  %i.r = sext i32 %.123 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r
  %i.t = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.123.1 = phi i32 [ %i.q, %bb.e ], [ %.123, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.02229.epil.init = phi i32 [ 0, %.lr.ph ], [ %.123.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod56 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.u = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %.not.epil = icmp eq i32 %i.v, 1
  br i1 %.not.epil, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.epil.preheader
  %i.w = add nsw i32 %.02229.epil.init, 1
  %i.x = sext i32 %.02229.epil.init to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.x
  %i.z = trunc nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.g, %._crit_edge.unr-lcssa
  %.123.lcssa = phi i32 [ %.123.1, %._crit_edge.unr-lcssa ], [ %i.w, %bb.g ], [ %.02229.epil.init, %.epil.preheader ] ; 4 uses
  %i.aa = icmp slt i32 %.123.lcssa, 2
  br i1 %i.aa, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = zext nneg i32 %.123.lcssa to i64
  %wide.trip.count50 = zext nneg i32 %.123.lcssa to i64 ; 2 uses
  br label %bb.h

.loopexit.loopexit:                               ; preds = %bb.i
  %i.ae = add i32 %.02136, %indvars.iv42
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %.1.lcssa = phi i32 [ %.02136, %bb.h ], [ %i.ae, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.loopexit27, label %bb.h, !llvm.loop !1

bb.h:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv47 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next48, %.loopexit ] ; 2 uses
  %indvars.iv42.in = phi i32 [ %.123.lcssa, %.preheader ], [ %indvars.iv42, %.loopexit ]
  %indvars.iv38 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next39, %.loopexit ] ; 2 uses
  %.02136 = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv42 = add i32 %indvars.iv42.in, -1    ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next48, %i.ad
  br i1 %i.af, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv47
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = shl nsw i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph33, %bb.i
  %indvars.iv40 = phi i64 [ %indvars.iv38, %.lr.ph33 ], [ %indvars.iv.next41, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = shl nsw i32 %i.al, 1
  %i.an = or disjoint i32 %i.am, 1
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !28
  %i.ao = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count50
  br i1 %exitcond46.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !2

.loopexit27:                                      ; preds = %.loopexit, %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Bmc_MeshTest2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [100 x i32], align 16             ; 7 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [100 x i32], align 16             ; 7 uses
  %i.d = alloca [2 x i32], align 4                ; 6 uses
  %i.e = alloca [100 x i32], align 16             ; 7 uses
  %i.f = alloca [2 x i32], align 4                ; 6 uses
  %i.g = alloca [100 x i32], align 16             ; 7 uses
  %i.h = alloca [2 x i32], align 4                ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [102 x [102 x i32]], align 16     ; 13 uses
  %i.j = alloca [102 x [2 x i32]], align 16       ; 7 uses
  %i.k = alloca i32, align 4                      ; 24 uses
  %i.l = alloca [100 x i32], align 16             ; 67 uses
  %i.m = alloca [4 x i32], align 16               ; 8 uses
  %i.n = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.o = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #13
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %7, align 8, !tbaa !61
  %i.r = mul nsw i64 %i.q, 1000000
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62
  %i.u = sdiv i64 %i.t, 1000
  %i.v = add nsw i64 %i.u, %i.r
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.v, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.w = call ptr @sat_solver_new() #13           ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41616) %i.i, i8 0, i64 41616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(816) %i.j, i8 0, i64 816, i1 false)
  %i.x = getelementptr i8, ptr %0, i64 16
  %.val467 = load i32, ptr %i.x, align 8, !tbaa !80 ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val468 = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.z = getelementptr i8, ptr %.val468, i64 4    ; 2 uses
  %.val468.val = load i32, ptr %i.z, align 4, !tbaa !82 ; 3 uses
  %i.aa = sub nsw i32 %.val468.val, %.val467      ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !83 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val.i = load i32, ptr %i.af, align 4, !tbaa !82
  %i.ag = add i32 %.val.i, %.val468.val
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add i32 %i.aa, %i.ac
  %i.aj = add i32 %i.ai, %i.ah                    ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.ak = icmp sgt i32 %i.aa, 0                   ; 3 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %.preheader592

.lr.ph.preheader:                                 ; preds = %Abc_Clock.exit
  %i.al = zext nneg i32 %i.aa to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.j, i8 -1, i64 %i.am, i1 false), !tbaa !28
  br label %.preheader592

.preheader592:                                    ; preds = %.lr.ph.preheader, %Abc_Clock.exit
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %.lr.ph599, label %.critedge

.lr.ph599:                                        ; preds = %.preheader592
  %i.ao = getelementptr i8, ptr %0, i64 32
  %.val469 = load ptr, ptr %i.ao, align 8, !tbaa !85 ; 2 uses
  %.not = icmp eq ptr %.val469, null
  br i1 %.not, label %.critedge, label %.lr.ph599.split.preheader

.lr.ph599.split.preheader:                        ; preds = %.lr.ph599
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %.lr.ph599.split

.lr.ph599.split:                                  ; preds = %.lr.ph599.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph599.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val469, i64 %indvars.iv
  %.val470 = load i64, ptr %i.ap, align 4         ; 3 uses
  %i.aq = and i64 %.val470, 2147483648
  %.not.i = icmp ne i64 %i.aq, 0
  %i.ar = and i64 %.val470, 536870911
  %i.as = icmp eq i64 %i.ar, 536870911
  %narrow.i.not = or i1 %.not.i, %i.as
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph599.split
  %i.at = trunc nsw i64 %indvars.iv to i32
  %i.au = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %.inner = and i64 %.val470, 2305843005455597567
  %.inner982 = xor i64 %.inner, -1
  %8 = bitcast i64 %.inner982 to <2 x i32>
  %9 = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = add nsw <2 x i32> %10, %8
  store <2 x i32> %11, ptr %i.av, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph599.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph599.split, !llvm.loop !30

.critedge:                                        ; preds = %bb.d, %.lr.ph599, %.preheader592
  %.not444 = icmp eq i32 %4, 0                    ; 3 uses
  br i1 %.not444, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %.val466.val = load i32, ptr %i.z, align 4, !tbaa !82
  %i.aw = sub nsw i32 %.val466.val, %.val467
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aw) ; 0 uses
  br i1 %i.ak, label %.lr.ph602, label %._crit_edge

.lr.ph602:                                        ; preds = %bb.e, %.lr.ph602
  %.2432601 = phi i32 [ %i.ba, %.lr.ph602 ], [ 0, %bb.e ] ; 2 uses
  %i.ay = add nuw nsw i32 %.2432601, 97
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ay) ; 0 uses
  %i.ba = add nuw nsw i32 %.2432601, 1            ; 2 uses
  %exitcond770.not = icmp eq i32 %i.ba, %i.aa
  br i1 %exitcond770.not, label %._crit_edge, label %.lr.ph602, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph602, %bb.e
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !83
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val3.i473 = load i32, ptr %i.bd, align 4, !tbaa !82
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %.val.i474 = load i32, ptr %i.bf, align 4, !tbaa !82
  %i.bg = add i32 %.val.i474, %.val3.i473
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %i.bb, %i.bh
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bi) ; 0 uses
  %i.bk = icmp slt i32 %i.aa, %i.aj
  br i1 %i.bk, label %.lr.ph605.preheader, label %._crit_edge606

.lr.ph605.preheader:                              ; preds = %._crit_edge
  %i.bl = sext i32 %i.aa to i64
  br label %.lr.ph605

.lr.ph605:                                        ; preds = %.lr.ph605.preheader, %.lr.ph605
  %indvars.iv771 = phi i64 [ %i.bl, %.lr.ph605.preheader ], [ %indvars.iv.next772, %.lr.ph605 ] ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv771 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !28
  %i.bo = add nsw i32 %i.bn, 97
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !28
  %i.br = add nsw i32 %i.bq, 97
  %i.bs = trunc i64 %indvars.iv771 to i32
  %i.bt = add i32 %i.bs, 97
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bt, i32 noundef %i.bo, i32 noundef %i.br) ; 0 uses
  %indvars.iv.next772 = add nsw i64 %indvars.iv771, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next772 to i32
  %exitcond774.not = icmp eq i32 %i.aj, %lftr.wideiv
  br i1 %exitcond774.not, label %._crit_edge606, label %.lr.ph605, !llvm.loop !32

._crit_edge606:                                   ; preds = %.lr.ph605, %._crit_edge
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge606, %.critedge
  %i.bv = icmp slt i32 %2, 1                      ; 4 uses
  br i1 %i.bv, label %._crit_edge613, label %.preheader591.lr.ph

.preheader591.lr.ph:                              ; preds = %bb.f
  %i.bw = icmp sgt i32 %1, 0
  %i.bx = add i32 %3, 17
  %i.by = add i32 %i.bx, %i.aj                    ; 5 uses
  br i1 %i.bw, label %.preheader591.us.preheader, label %._crit_edge613

.preheader591.us.preheader:                       ; preds = %.preheader591.lr.ph
  %wide.trip.count783 = zext nneg i32 %2 to i64
  %wide.trip.count778 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count778, 3      ; 3 uses
  %i.bz = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count778, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod997 = icmp ne i64 %xtraiter, 0
  br label %.preheader591.us

.preheader591.us:                                 ; preds = %.preheader591.us.preheader, %._crit_edge610.us
  %indvars.iv780 = phi i64 [ 0, %.preheader591.us.preheader ], [ %indvars.iv.next781, %._crit_edge610.us ] ; 2 uses
  %.0399612.us = phi i32 [ 0, %.preheader591.us.preheader ], [ %.lcssa995, %._crit_edge610.us ] ; 2 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv780 ; 5 uses
  br i1 %i.bz, label %.epil.preheader, label %.preheader591.us.new

.preheader591.us.new:                             ; preds = %.preheader591.us, %.preheader591.us.new
  %indvars.iv775 = phi i64 [ %indvars.iv.next776.3, %.preheader591.us.new ], [ 0, %.preheader591.us ] ; 5 uses
  %.1400608.us = phi i32 [ %i.cg, %.preheader591.us.new ], [ %.0399612.us, %.preheader591.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader591.us.new ], [ 0, %.preheader591.us ]
  %gep.us = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  store i32 %.1400608.us, ptr %gep.us, align 4, !tbaa !28
  %i.ca = add nsw i32 %i.by, %.1400608.us         ; 2 uses
  %i.cb = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 408
  store i32 %i.ca, ptr %gep.us.1, align 4, !tbaa !28
  %i.cc = add nsw i32 %i.by, %i.ca                ; 2 uses
  %i.cd = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.2 = getelementptr inbounds nuw i8, ptr %i.cd, i64 816
  store i32 %i.cc, ptr %gep.us.2, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.by, %i.cc                ; 2 uses
  %i.cf = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 1224
  store i32 %i.ce, ptr %gep.us.3, align 4, !tbaa !28
  %i.cg = add nsw i32 %i.by, %i.ce                ; 3 uses
  %indvars.iv.next776.3 = add nuw nsw i64 %indvars.iv775, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge610.us.unr-lcssa, label %.preheader591.us.new, !llvm.loop !33

._crit_edge610.us.unr-lcssa:                      ; preds = %.preheader591.us.new
  br i1 %lcmp.mod.not, label %._crit_edge610.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge610.us.unr-lcssa, %.preheader591.us
  %indvars.iv775.epil.init = phi i64 [ 0, %.preheader591.us ], [ %indvars.iv.next776.3, %._crit_edge610.us.unr-lcssa ]
  %.1400608.us.epil.init = phi i32 [ %.0399612.us, %.preheader591.us ], [ %i.cg, %._crit_edge610.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod997)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv775.epil = phi i64 [ %indvars.iv775.epil.init, %.epil.preheader ], [ %indvars.iv.next776.epil, %bb.g ] ; 2 uses
  %.1400608.us.epil = phi i32 [ %.1400608.us.epil.init, %.epil.preheader ], [ %i.ch, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %gep.us.epil = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775.epil
  store i32 %.1400608.us.epil, ptr %gep.us.epil, align 4, !tbaa !28
  %i.ch = add nsw i32 %i.by, %.1400608.us.epil    ; 2 uses
  %indvars.iv.next776.epil = add nuw nsw i64 %indvars.iv775.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge610.us, label %bb.g, !llvm.loop !34

._crit_edge610.us:                                ; preds = %bb.g, %._crit_edge610.us.unr-lcssa
  %.lcssa995 = phi i32 [ %i.cg, %._crit_edge610.us.unr-lcssa ], [ %i.ch, %bb.g ] ; 2 uses
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count783
  br i1 %exitcond784.not, label %._crit_edge613, label %.preheader591.us, !llvm.loop !35

._crit_edge613:                                   ; preds = %._crit_edge610.us, %.preheader591.lr.ph, %bb.f
  %.0399.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.preheader591.lr.ph ], [ %.lcssa995, %._crit_edge610.us ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 41608 ; 2 uses
  store i32 %3, ptr %i.ci, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 41612
  store i32 %i.aj, ptr %i.cj, align 4, !tbaa !28
  br i1 %.not444, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge613
  %i.ck = mul nsw i32 %2, %1                      ; 4 uses
  %i.cl = mul nsw i32 %i.ck, %3
  %i.cm = mul nsw i32 %i.aj, %i.ck
  %i.cn = shl nsw i32 %i.ck, 4
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.0399.lcssa, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef %i.ck) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge613
  %i.cp = icmp slt i32 %1, 1                      ; 4 uses
  %i.cq = add i32 %1, -1                          ; 4 uses
  br i1 %i.cp, label %._crit_edge670, label %.preheader590.lr.ph

.preheader590.lr.ph:                              ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 9 uses
  %i.cs = icmp slt i32 %i.aa, %i.aj
  %.fr = freeze i1 %i.cs                          ; 4 uses
  br i1 %i.bv, label %.preheader587, label %.preheader590.lr.ph.split

.preheader590.lr.ph.split:                        ; preds = %.preheader590.lr.ph
  %i.ct = add nsw i32 %2, -1
  %i.cu = icmp sgt i32 %3, 0
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = zext nneg i32 %i.cq to i64              ; 2 uses
  %wide.trip.count821 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count804 = zext nneg i32 %2 to i64   ; 2 uses
  %wide.trip.count810 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.cu, label %.preheader590.lr.ph.split.split.us, label %.preheader590

.preheader590.lr.ph.split.split.us:               ; preds = %.preheader590.lr.ph.split
  %wide.trip.count816 = zext nneg i32 %2 to i64
  br label %.preheader590.us

.preheader590.us:                                 ; preds = %._crit_edge623.split.us.us, %.preheader590.lr.ph.split.split.us
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %._crit_edge623.split.us.us ], [ 0, %.preheader590.lr.ph.split.split.us ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %indvars.iv818 ; 3 uses
  %i.cy = icmp eq i64 %indvars.iv818, 0
  %i.cz = icmp eq i64 %indvars.iv818, %i.cw
  br i1 %i.cy, label %.lr.ph622.split.us.us.split.us, label %.lr.ph622.split.us.us.split

.lr.ph622.split.us.us.split.us:                   ; preds = %.preheader590.us
  br i1 %.fr, label %.lr.ph617.us.us.us.us, label %.lr.ph617.us.us.us

.lr.ph617.us.us.us.us:                            ; preds = %.lr.ph622.split.us.us.split.us, %..loopexit589_crit_edge.us.us.us.us
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %..loopexit589_crit_edge.us.us.us.us ], [ 0, %.lr.ph622.split.us.us.split.us ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv813
  %i.db = load i32, ptr %i.da, align 4, !tbaa !28 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph617.us.us.us.us
  %.0413615.us.us.us.us = phi i32 [ 0, %.lr.ph617.us.us.us.us ], [ %i.di, %bb.j ] ; 3 uses
end_hunk_0
