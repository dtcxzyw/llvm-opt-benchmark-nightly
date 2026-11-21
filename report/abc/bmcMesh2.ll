Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMesh2?download=true
inline.NumInlined: 87
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Bmc_MeshAddOneHotness2:bb.a

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
  %.inner991 = xor i64 %.inner, -1
  %i.aw = bitcast i64 %.inner991 to <2 x i32>
  %i.ax = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.az = add nsw <2 x i32> %i.ay, %i.aw
  store <2 x i32> %i.az, ptr %i.av, align 8, !tbaa !28
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
  %i.ba = sub nsw i32 %.val466.val, %.val467
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ba) ; 0 uses
  br i1 %i.ak, label %.lr.ph602, label %._crit_edge

.lr.ph602:                                        ; preds = %bb.e, %.lr.ph602
  %.2432601 = phi i32 [ %i.be, %.lr.ph602 ], [ 0, %bb.e ] ; 2 uses
  %i.bc = add nuw nsw i32 %.2432601, 97
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bc) ; 0 uses
  %i.be = add nuw nsw i32 %.2432601, 1            ; 2 uses
  %exitcond770.not = icmp eq i32 %i.be, %i.aa
  br i1 %exitcond770.not, label %._crit_edge, label %.lr.ph602, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph602, %bb.e
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !83
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val3.i473 = load i32, ptr %i.bh, align 4, !tbaa !82
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val.i474 = load i32, ptr %i.bj, align 4, !tbaa !82
  %i.bk = add i32 %.val.i474, %.val3.i473
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %i.bf, %i.bl
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bm) ; 0 uses
  %i.bo = icmp slt i32 %i.aa, %i.aj
  br i1 %i.bo, label %.lr.ph605.preheader, label %._crit_edge606

.lr.ph605.preheader:                              ; preds = %._crit_edge
  %i.bp = sext i32 %i.aa to i64
  br label %.lr.ph605

.lr.ph605:                                        ; preds = %.lr.ph605.preheader, %.lr.ph605
  %indvars.iv771 = phi i64 [ %i.bp, %.lr.ph605.preheader ], [ %indvars.iv.next772, %.lr.ph605 ] ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv771 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !28
  %i.bs = add nsw i32 %i.br, 97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !28
  %i.bv = add nsw i32 %i.bu, 97
  %i.bw = trunc i64 %indvars.iv771 to i32
  %i.bx = add i32 %i.bw, 97
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bx, i32 noundef %i.bs, i32 noundef %i.bv) ; 0 uses
  %indvars.iv.next772 = add nsw i64 %indvars.iv771, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next772 to i32
  %exitcond774.not = icmp eq i32 %i.aj, %lftr.wideiv
  br i1 %exitcond774.not, label %._crit_edge606, label %.lr.ph605, !llvm.loop !32

._crit_edge606:                                   ; preds = %.lr.ph605, %._crit_edge
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge606, %.critedge
  %i.bz = icmp slt i32 %2, 1                      ; 5 uses
  br i1 %i.bz, label %._crit_edge613, label %.preheader591.lr.ph

.preheader591.lr.ph:                              ; preds = %bb.f
  %i.ca = icmp sgt i32 %1, 0
  %i.cb = add i32 %3, 17
  %i.cc = add i32 %i.cb, %i.aj                    ; 5 uses
  br i1 %i.ca, label %.preheader591.us.preheader, label %._crit_edge613

.preheader591.us.preheader:                       ; preds = %.preheader591.lr.ph
  %wide.trip.count783 = zext nneg i32 %2 to i64
  %wide.trip.count778 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count778, 3      ; 3 uses
  %i.cd = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count778, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1007 = icmp ne i64 %xtraiter, 0
  br label %.preheader591.us

.preheader591.us:                                 ; preds = %.preheader591.us.preheader, %._crit_edge610.us
  %indvars.iv780 = phi i64 [ 0, %.preheader591.us.preheader ], [ %indvars.iv.next781, %._crit_edge610.us ] ; 2 uses
  %.0399612.us = phi i32 [ 0, %.preheader591.us.preheader ], [ %.lcssa1005, %._crit_edge610.us ] ; 2 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv780 ; 5 uses
  br i1 %i.cd, label %.epil.preheader, label %.preheader591.us.new

.preheader591.us.new:                             ; preds = %.preheader591.us, %.preheader591.us.new
  %indvars.iv775 = phi i64 [ %indvars.iv.next776.3, %.preheader591.us.new ], [ 0, %.preheader591.us ] ; 5 uses
  %.1400608.us = phi i32 [ %i.ck, %.preheader591.us.new ], [ %.0399612.us, %.preheader591.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader591.us.new ], [ 0, %.preheader591.us ]
  %gep.us = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  store i32 %.1400608.us, ptr %gep.us, align 4, !tbaa !28
  %i.ce = add nsw i32 %i.cc, %.1400608.us         ; 2 uses
  %i.cf = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 408
  store i32 %i.ce, ptr %gep.us.1, align 4, !tbaa !28
  %i.cg = add nsw i32 %i.cc, %i.ce                ; 2 uses
  %i.ch = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 816
  store i32 %i.cg, ptr %gep.us.2, align 4, !tbaa !28
  %i.ci = add nsw i32 %i.cc, %i.cg                ; 2 uses
  %i.cj = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775
  %gep.us.3 = getelementptr inbounds nuw i8, ptr %i.cj, i64 1224
  store i32 %i.ci, ptr %gep.us.3, align 4, !tbaa !28
  %i.ck = add nsw i32 %i.cc, %i.ci                ; 3 uses
  %indvars.iv.next776.3 = add nuw nsw i64 %indvars.iv775, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge610.us.unr-lcssa, label %.preheader591.us.new, !llvm.loop !33

._crit_edge610.us.unr-lcssa:                      ; preds = %.preheader591.us.new
  br i1 %lcmp.mod.not, label %._crit_edge610.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge610.us.unr-lcssa, %.preheader591.us
  %indvars.iv775.epil.init = phi i64 [ 0, %.preheader591.us ], [ %indvars.iv.next776.3, %._crit_edge610.us.unr-lcssa ]
  %.1400608.us.epil.init = phi i32 [ %.0399612.us, %.preheader591.us ], [ %i.ck, %._crit_edge610.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1007)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv775.epil = phi i64 [ %indvars.iv775.epil.init, %.epil.preheader ], [ %indvars.iv.next776.epil, %bb.g ] ; 2 uses
  %.1400608.us.epil = phi i32 [ %.1400608.us.epil.init, %.epil.preheader ], [ %i.cl, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %gep.us.epil = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv775.epil
  store i32 %.1400608.us.epil, ptr %gep.us.epil, align 4, !tbaa !28
  %i.cl = add nsw i32 %i.cc, %.1400608.us.epil    ; 2 uses
  %indvars.iv.next776.epil = add nuw nsw i64 %indvars.iv775.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge610.us, label %bb.g, !llvm.loop !34

._crit_edge610.us:                                ; preds = %bb.g, %._crit_edge610.us.unr-lcssa
  %.lcssa1005 = phi i32 [ %i.ck, %._crit_edge610.us.unr-lcssa ], [ %i.cl, %bb.g ] ; 2 uses
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count783
  br i1 %exitcond784.not, label %._crit_edge613, label %.preheader591.us, !llvm.loop !35

._crit_edge613:                                   ; preds = %._crit_edge610.us, %.preheader591.lr.ph, %bb.f
  %.0399.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.preheader591.lr.ph ], [ %.lcssa1005, %._crit_edge610.us ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 41608 ; 2 uses
  store i32 %3, ptr %i.cm, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 41612
  store i32 %i.aj, ptr %i.cn, align 4, !tbaa !28
  br i1 %.not444, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge613
  %i.co = mul nsw i32 %2, %1                      ; 4 uses
  %i.cp = mul nsw i32 %i.co, %3
  %i.cq = mul nsw i32 %i.aj, %i.co
  %i.cr = shl nsw i32 %i.co, 4
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.0399.lcssa, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.co) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge613
  %i.ct = icmp slt i32 %1, 1                      ; 3 uses
  %i.cu = add i32 %1, -1                          ; 4 uses
  br i1 %i.ct, label %._crit_edge670, label %.preheader590.lr.ph

.preheader590.lr.ph:                              ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 9 uses
  %i.cw = icmp slt i32 %i.aa, %i.aj
  %.fr = freeze i1 %i.cw                          ; 4 uses
  br i1 %i.bz, label %.preheader587, label %.preheader590.lr.ph.split

.preheader590.lr.ph.split:                        ; preds = %.preheader590.lr.ph
  %i.cx = add nsw i32 %2, -1
  %i.cy = icmp sgt i32 %3, 0
  %i.cz = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.da = zext nneg i32 %i.cu to i64              ; 2 uses
  %wide.trip.count821 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count804 = zext nneg i32 %2 to i64   ; 2 uses
  %wide.trip.count810 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.cy, label %.preheader590.lr.ph.split.split.us, label %.preheader590

.preheader590.lr.ph.split.split.us:               ; preds = %.preheader590.lr.ph.split
  %wide.trip.count816 = zext nneg i32 %2 to i64
  br label %.preheader590.us

.preheader590.us:                                 ; preds = %._crit_edge623.split.us.us, %.preheader590.lr.ph.split.split.us
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %._crit_edge623.split.us.us ], [ 0, %.preheader590.lr.ph.split.split.us ] ; 4 uses
  %i.db = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %indvars.iv818 ; 3 uses
  %i.dc = icmp eq i64 %indvars.iv818, 0
  %i.dd = icmp eq i64 %indvars.iv818, %i.da
  br i1 %i.dc, label %.lr.ph622.split.us.us.split.us, label %.lr.ph622.split.us.us.split

.lr.ph622.split.us.us.split.us:                   ; preds = %.preheader590.us
  br i1 %.fr, label %.lr.ph617.us.us.us.us, label %.lr.ph617.us.us.us

.lr.ph617.us.us.us.us:                            ; preds = %.lr.ph622.split.us.us.split.us, %..loopexit589_crit_edge.us.us.us.us
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %..loopexit589_crit_edge.us.us.us.us ], [ 0, %.lr.ph622.split.us.us.split.us ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv813
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph617.us.us.us.us
  %.0413615.us.us.us.us = phi i32 [ 0, %.lr.ph617.us.us.us.us ], [ %i.dm, %bb.j ] ; 3 uses
  %i.dg = add nsw i32 %.0413615.us.us.us.us, %i.df
  %i.dh = icmp ne i32 %.0413615.us.us.us.us, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = shl nsw i32 %i.dg, 1
  %i.dk = or disjoint i32 %i.dj, %i.di
  store i32 %i.dk, ptr %i.k, align 4, !tbaa !28
  %i.dl = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.dm = add nuw nsw i32 %.0413615.us.us.us.us, 1 ; 2 uses
  %exitcond812.not = icmp eq i32 %i.dm, %3
  br i1 %exitcond812.not, label %..preheader588_crit_edge.us.us.us.us.preheader, label %bb.j, !llvm.loop !36

..preheader588_crit_edge.us.us.us.us.preheader:   ; preds = %bb.j
  %i.dn = add nsw i32 %i.df, %3
  br label %..preheader588_crit_edge.us.us.us.us

..preheader588_crit_edge.us.us.us.us:             ; preds = %..preheader588_crit_edge.us.us.us.us.preheader, %..preheader588_crit_edge.us.us.us.us
  %.0407618.us.us.us.us = phi i32 [ %i.ds, %..preheader588_crit_edge.us.us.us.us ], [ %i.aa, %..preheader588_crit_edge.us.us.us.us.preheader ] ; 2 uses
  %i.do = add nsw i32 %i.dn, %.0407618.us.us.us.us
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = or disjoint i32 %i.dp, 1
  store i32 %i.dq, ptr %i.k, align 4, !tbaa !28
  %i.dr = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.ds = add nsw i32 %.0407618.us.us.us.us, 1    ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.aj
  br i1 %i.dt, label %..preheader588_crit_edge.us.us.us.us, label %..loopexit589_crit_edge.us.us.us.us, !llvm.loop !37

..loopexit589_crit_edge.us.us.us.us:              ; preds = %..preheader588_crit_edge.us.us.us.us
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next814, %wide.trip.count816
  br i1 %exitcond817.not, label %._crit_edge623.split.us.us, label %.lr.ph617.us.us.us.us, !llvm.loop !38

.lr.ph617.us.us.us:                               ; preds = %.lr.ph622.split.us.us.split.us, %..preheader588_crit_edge.us.us.us
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %..preheader588_crit_edge.us.us.us ], [ 0, %.lr.ph622.split.us.us.split.us ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv807
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph617.us.us.us
  %.0413615.us.us.us = phi i32 [ 0, %.lr.ph617.us.us.us ], [ %i.ec, %bb.k ] ; 3 uses
  %i.dw = add nsw i32 %.0413615.us.us.us, %i.dv
  %i.dx = icmp ne i32 %.0413615.us.us.us, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = shl nsw i32 %i.dw, 1
  %i.ea = or disjoint i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.k, align 4, !tbaa !28
  %i.eb = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.ec = add nuw nsw i32 %.0413615.us.us.us, 1   ; 2 uses
  %exitcond806.not = icmp eq i32 %i.ec, %3
  br i1 %exitcond806.not, label %..preheader588_crit_edge.us.us.us, label %bb.k, !llvm.loop !36

..preheader588_crit_edge.us.us.us:                ; preds = %bb.k
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %exitcond811.not = icmp eq i64 %indvars.iv.next808, %wide.trip.count810
  br i1 %exitcond811.not, label %._crit_edge623.split.us.us, label %.lr.ph617.us.us.us, !llvm.loop !38

.lr.ph622.split.us.us.split:                      ; preds = %.preheader590.us, %.loopexit589.us.us
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %.loopexit589.us.us ], [ 0, %.preheader590.us ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv801
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28 ; 3 uses
  %i.ef = add nsw i32 %i.ee, %3
  %i.eg = icmp eq i64 %indvars.iv801, 0
  %or.cond.us.us = or i1 %i.dd, %i.eg
  %i.eh = icmp eq i64 %indvars.iv801, %i.cz
  %or.cond455.us.us = select i1 %or.cond.us.us, i1 true, i1 %i.eh
  br i1 %or.cond455.us.us, label %.lr.ph617.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph622.split.us.us.split
  %i.ei = shl nsw i32 %i.ee, 1
  %i.ej = or disjoint i32 %i.ei, 1
  store i32 %i.ej, ptr %i.k, align 4, !tbaa !28
  %i.ek = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  br label %.loopexit589.us.us

.lr.ph617.us.us:                                  ; preds = %.lr.ph622.split.us.us.split, %.lr.ph617.us.us
  %.0413615.us.us = phi i32 [ %i.er, %.lr.ph617.us.us ], [ 0, %.lr.ph622.split.us.us.split ] ; 3 uses
  %i.el = add nsw i32 %.0413615.us.us, %i.ee
  %i.em = icmp ne i32 %.0413615.us.us, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = shl nsw i32 %i.el, 1
  %i.ep = or disjoint i32 %i.eo, %i.en
  store i32 %i.ep, ptr %i.k, align 4, !tbaa !28
  %i.eq = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.er = add nuw nsw i32 %.0413615.us.us, 1      ; 2 uses
  %exitcond800.not = icmp eq i32 %i.er, %3
  br i1 %exitcond800.not, label %..preheader588_crit_edge.us.us, label %.lr.ph617.us.us, !llvm.loop !36

..preheader588_crit_edge.us.us:                   ; preds = %.lr.ph617.us.us
  br i1 %.fr, label %.lr.ph619.us.us, label %.loopexit589.us.us

.lr.ph619.us.us:                                  ; preds = %..preheader588_crit_edge.us.us, %.lr.ph619.us.us
  %.0407618.us.us = phi i32 [ %i.ew, %.lr.ph619.us.us ], [ %i.aa, %..preheader588_crit_edge.us.us ] ; 2 uses
  %i.es = add nsw i32 %i.ef, %.0407618.us.us
  %i.et = shl nsw i32 %i.es, 1
  %i.eu = or disjoint i32 %i.et, 1
  store i32 %i.eu, ptr %i.k, align 4, !tbaa !28
  %i.ev = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.ew = add nsw i32 %.0407618.us.us, 1          ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %i.aj
  br i1 %i.ex, label %.lr.ph619.us.us, label %.loopexit589.us.us, !llvm.loop !37

.loopexit589.us.us:                               ; preds = %.lr.ph619.us.us, %..preheader588_crit_edge.us.us, %bb.l
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond805.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count804
  br i1 %exitcond805.not, label %._crit_edge623.split.us.us, label %.lr.ph622.split.us.us.split, !llvm.loop !38

._crit_edge623.split.us.us:                       ; preds = %.loopexit589.us.us, %..preheader588_crit_edge.us.us.us, %..loopexit589_crit_edge.us.us.us.us
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1 ; 2 uses
  %exitcond822.not = icmp eq i64 %indvars.iv.next819, %wide.trip.count821
  br i1 %exitcond822.not, label %.preheader587, label %.preheader590.us, !llvm.loop !39

.preheader590:                                    ; preds = %.preheader590.lr.ph.split, %._crit_edge623.split
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %._crit_edge623.split ], [ 0, %.preheader590.lr.ph.split ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %indvars.iv795 ; 2 uses
  %i.ez = icmp eq i64 %indvars.iv795, 0
  %i.fa = icmp eq i64 %indvars.iv795, %i.da
  br i1 %i.ez, label %.lr.ph622.split.split.us, label %.lr.ph622.split.split

.lr.ph622.split.split.us:                         ; preds = %.preheader590
  br i1 %.fr, label %.preheader588.us625, label %._crit_edge623.split

.preheader588.us625:                              ; preds = %.lr.ph622.split.split.us, %..loopexit589_crit_edge.us628
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %..loopexit589_crit_edge.us628 ], [ 0, %.lr.ph622.split.split.us ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv790
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !28
  %i.fd = add nsw i32 %i.fc, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader588.us625
  %.0407618.us627 = phi i32 [ %i.aa, %.preheader588.us625 ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fe = add nsw i32 %i.fd, %.0407618.us627
  %i.ff = shl nsw i32 %i.fe, 1
  %i.fg = or disjoint i32 %i.ff, 1
  store i32 %i.fg, ptr %i.k, align 4, !tbaa !28
  %i.fh = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cv) #13 ; 0 uses
  %i.fi = add nsw i32 %.0407618.us627, 1          ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %i.aj
  br i1 %i.fj, label %bb.m, label %..loopexit589_crit_edge.us628, !llvm.loop !37

..loopexit589_crit_edge.us628:                    ; preds = %bb.m
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791, %wide.trip.count810
  br i1 %exitcond794.not, label %._crit_edge623.split, label %.preheader588.us625, !llvm.loop !38

.preheader587:                                    ; preds = %._crit_edge623.split, %._crit_edge623.split.us.us, %.preheader590.lr.ph
  %i.fk = icmp sgt i32 %1, 2
  br i1 %i.fk, label %.preheader586.lr.ph, label %._crit_edge670

.preheader586.lr.ph:                              ; preds = %.preheader587
  %i.fl = icmp sgt i32 %2, 2
  %i.fm = add i32 %3, 16
  %i.fn = add i32 %i.fm, %i.aj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.fu = icmp sgt i32 %i.aj, 0                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 26 uses
end_hunk_0
begin_hunk_1_@Bmc_MeshTest2:bb.a
  store i32 %i.vf, ptr %i.ve, align 4, !tbaa !28
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.epil.preheader1032, %bb.bd, %._crit_edge.i.us.unr-lcssa
  %.123.i.us.lcssa = phi i32 [ %.123.i.us.1, %._crit_edge.i.us.unr-lcssa ], [ %i.vc, %bb.bd ], [ %.02229.i.us.epil.init, %.epil.preheader1032 ] ; 3 uses
  %i.vg = icmp slt i32 %.123.i.us.lcssa, 2
  br i1 %i.vg, label %Bmc_MeshAddOneHotness2.exit.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us
  %i.vh = zext nneg i32 %.123.i.us.lcssa to i64   ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.i.us, %.preheader.i.us
  %indvars.iv47.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next48.i.us, %.loopexit.i.us ] ; 2 uses
  %indvars.iv42.in.i.us = phi i32 [ %.123.i.us.lcssa, %.preheader.i.us ], [ %indvars.iv42.i.us, %.loopexit.i.us ]
  %indvars.iv38.i.us = phi i64 [ 1, %.preheader.i.us ], [ %indvars.iv.next39.i.us, %.loopexit.i.us ] ; 2 uses
  %.02136.i.us = phi i32 [ 0, %.preheader.i.us ], [ %.1.lcssa.i.us, %.loopexit.i.us ] ; 2 uses
  %indvars.iv42.i.us = add i32 %indvars.iv42.in.i.us, -1 ; 2 uses
  %indvars.iv.next48.i.us = add nuw nsw i64 %indvars.iv47.i.us, 1 ; 3 uses
  %i.vi = icmp samesign ult i64 %indvars.iv.next48.i.us, %i.vh
  br i1 %i.vi, label %.lr.ph33.i.us, label %.loopexit.i.us

.lr.ph33.i.us:                                    ; preds = %bb.be
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv47.i.us
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !28
  %i.vl = shl nsw i32 %i.vk, 1
  %i.vm = or disjoint i32 %i.vl, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph33.i.us
  %indvars.iv40.i.us = phi i64 [ %indvars.iv38.i.us, %.lr.ph33.i.us ], [ %indvars.iv.next41.i.us, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i32 %i.vm, ptr %i.h, align 4, !tbaa !28
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv40.i.us
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !28
  %i.vp = shl nsw i32 %i.vo, 1
  %i.vq = or disjoint i32 %i.vp, 1
  store i32 %i.vq, ptr %i.po, align 4, !tbaa !28
  %i.vr = call i32 @sat_solver_addclause(ptr noundef %i.w, ptr noundef nonnull %i.h, ptr noundef nonnull %i.pp) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  %indvars.iv.next41.i.us = add nuw nsw i64 %indvars.iv40.i.us, 1 ; 2 uses
  %exitcond46.not.i.us = icmp eq i64 %indvars.iv.next41.i.us, %i.vh
  br i1 %exitcond46.not.i.us, label %.loopexit.loopexit.i.us, label %bb.bf, !llvm.loop !2

.loopexit.loopexit.i.us:                          ; preds = %bb.bf
  %i.vs = add i32 %.02136.i.us, %indvars.iv42.i.us
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.be
  %.1.lcssa.i.us = phi i32 [ %.02136.i.us, %bb.be ], [ %i.vs, %.loopexit.loopexit.i.us ] ; 2 uses
  %indvars.iv.next39.i.us = add nuw nsw i64 %indvars.iv38.i.us, 1
  %exitcond51.not.i.us = icmp eq i64 %indvars.iv.next48.i.us, %i.vh
  br i1 %exitcond51.not.i.us, label %Bmc_MeshAddOneHotness2.exit.us, label %bb.be, !llvm.loop !1

Bmc_MeshAddOneHotness2.exit.us:                   ; preds = %.loopexit.i.us, %._crit_edge.i.us, %bb.ax
  %.0.i477.us = phi i32 [ 0, %._crit_edge.i.us ], [ 0, %bb.ax ], [ %.1.lcssa.i.us, %.loopexit.i.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.vt = add nsw i32 %.0.i477.us, %.1391677.us
  br label %bb.bg

bb.bg:                                            ; preds = %Bmc_MeshAddOneHotness2.exit.us, %Bmc_MeshAddOneHotness2.exit566.us
  %.2392.us = phi i32 [ %i.vt, %Bmc_MeshAddOneHotness2.exit.us ], [ %i.uf, %Bmc_MeshAddOneHotness2.exit566.us ] ; 4 uses
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1 ; 2 uses
  %exitcond864.not = icmp eq i64 %indvars.iv.next861, %wide.trip.count863
  br i1 %exitcond864.not, label %._crit_edge679.us, label %bb.w, !llvm.loop !50

._crit_edge679.us:                                ; preds = %bb.bg
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1 ; 2 uses
  %exitcond869.not = icmp eq i64 %indvars.iv.next866, %wide.trip.count868
  br i1 %exitcond869.not, label %._crit_edge682, label %.preheader578.us, !llvm.loop !51

bb.bh:                                            ; preds = %bb.v
  %i.vu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  br label %bb.bk

bb.bi:                                            ; preds = %bb.v
  %i.vv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.bk

._crit_edge682:                                   ; preds = %._crit_edge679.us
  %i.vw = icmp sgt i32 %.2392.us, 0
  br i1 %i.vw, label %bb.bj, label %._crit_edge682.thread

._crit_edge682.thread:                            ; preds = %.preheader579, %._crit_edge682
  %i.vx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.vy = icmp eq i32 %i.ps, 1
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge682
  %i.vz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.2392.us) ; 0 uses
  br label %bb.v

bb.bk:                                            ; preds = %bb.bh, %bb.bi, %._crit_edge682.thread
  %i.wa = phi i1 [ false, %bb.bh ], [ false, %bb.bi ], [ %i.vy, %._crit_edge682.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.wb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #13
  %i.wc = icmp slt i32 %i.wb, 0
  br i1 %i.wc, label %Abc_Clock.exit568, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.wd = load i64, ptr %5, align 8, !tbaa !61
  %i.we = mul nsw i64 %i.wd, 1000000
  %i.wf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !62
  %i.wh = sdiv i64 %i.wg, 1000
  %i.wi = add nsw i64 %i.wh, %i.we
  br label %Abc_Clock.exit568

Abc_Clock.exit568:                                ; preds = %bb.bk, %bb.bl
  %.0.i567 = phi i64 [ %i.wi, %bb.bl ], [ -1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.wj = sub nsw i64 %.0.i567, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7)
  %i.wk = sitofp i64 %i.wj to double
  %i.wl = fdiv double %i.wk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.20, double noundef %i.wl)
  br i1 %i.wa, label %.preheader577, label %.loopexit

.preheader577:                                    ; preds = %Abc_Clock.exit568
  %i.wm = icmp slt i32 %2, 3
  %brmerge976 = or i1 %i.wm, %.not975
  br i1 %brmerge976, label %._crit_edge699, label %.preheader575.us.preheader

.preheader575.us.preheader:                       ; preds = %.preheader577
  %.val464.us = load ptr, ptr %i.pg, align 8, !tbaa !27 ; 5 uses
  br label %.preheader575.us

.preheader575.us:                                 ; preds = %.preheader575.us.preheader, %.preheader575.us.split
  %indvars.iv878 = phi i64 [ %i.wo, %.preheader575.us.split ], [ 1, %.preheader575.us.preheader ] ; 2 uses
  %i.wn = phi <2 x i32> [ %i.yc, %.preheader575.us.split ], [ zeroinitializer, %.preheader575.us.preheader ]
  %invariant.gep1050 = getelementptr inbounds [408 x i8], ptr %i.i, i64 %indvars.iv878
  br label %._crit_edge694.us

.preheader575.us.split:                           ; preds = %._crit_edge694.us
  %i.wo = add nuw nsw i64 %indvars.iv878, 1       ; 2 uses
  %i.wp = icmp eq i64 %i.wo, %i.pr
  br i1 %i.wp, label %._crit_edge699, label %.preheader575.us, !llvm.loop !52

._crit_edge694.us:                                ; preds = %._crit_edge694.us, %.preheader575.us
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %._crit_edge694.us ], [ 1, %.preheader575.us ] ; 2 uses
  %i.wq = phi <2 x i32> [ %i.yc, %._crit_edge694.us ], [ %i.wn, %.preheader575.us ] ; 2 uses
  %gep = getelementptr inbounds [4 x i8], ptr %invariant.gep1050, i64 %indvars.iv883
  %i.wr = load i32, ptr %gep, align 4, !tbaa !28
  %.reass.us = add i32 %i.wr, %i.ol
  %i.ws = sext i32 %.reass.us to i64              ; 5 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %.val464.us, i64 %i.ws
  %i.wu = getelementptr [4 x i8], ptr %.val464.us, i64 %i.ws
  %i.wv = getelementptr i8, ptr %i.wu, i64 8
  %i.ww = getelementptr [4 x i8], ptr %.val464.us, i64 %i.ws
  %i.wx = getelementptr i8, ptr %i.ww, i64 16
  %i.wy = extractelement <2 x i32> %i.wq, i64 1
  %i.wz = load <8 x i32>, ptr %i.wx, align 4, !tbaa !28
  %i.xa = icmp eq <8 x i32> %i.wz, splat (i32 1)
  %i.xb = bitcast <8 x i1> %i.xa to i8
  %i.xc = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.xb)
  %i.xd = zext nneg i8 %i.xc to i32
  %op.rdx = add i32 %i.wy, %i.xd
  %i.xe = getelementptr [4 x i8], ptr %.val464.us, i64 %i.ws
  %i.xf = getelementptr i8, ptr %i.xe, i64 48
  %i.xg = getelementptr [4 x i8], ptr %.val464.us, i64 %i.ws
  %i.xh = getelementptr i8, ptr %i.xg, i64 56
  %i.xi = load <2 x i32>, ptr %i.wt, align 4, !tbaa !28 ; 2 uses
  %i.xj = load <2 x i32>, ptr %i.wv, align 4, !tbaa !28 ; 2 uses
  %i.xk = load <2 x i32>, ptr %i.xf, align 4, !tbaa !28 ; 2 uses
  %i.xl = shufflevector <2 x i32> %i.xi, <2 x i32> %i.xk, <2 x i32> <i32 0, i32 2>
  %i.xm = icmp eq <2 x i32> %i.xl, splat (i32 1)
  %i.xn = zext <2 x i1> %i.xm to <2 x i32>
  %i.xo = insertelement <2 x i32> %i.wq, i32 %op.rdx, i64 1
  %i.xp = add <2 x i32> %i.xo, %i.xn
  %i.xq = shufflevector <2 x i32> %i.xi, <2 x i32> %i.xk, <2 x i32> <i32 1, i32 3>
  %i.xr = icmp eq <2 x i32> %i.xq, splat (i32 1)
  %i.xs = zext <2 x i1> %i.xr to <2 x i32>
  %i.xt = add <2 x i32> %i.xp, %i.xs
  %i.xu = load <2 x i32>, ptr %i.xh, align 4, !tbaa !28 ; 2 uses
  %i.xv = shufflevector <2 x i32> %i.xj, <2 x i32> %i.xu, <2 x i32> <i32 0, i32 2>
  %i.xw = icmp eq <2 x i32> %i.xv, splat (i32 1)
  %i.xx = zext <2 x i1> %i.xw to <2 x i32>
  %i.xy = add <2 x i32> %i.xt, %i.xx
  %i.xz = shufflevector <2 x i32> %i.xj, <2 x i32> %i.xu, <2 x i32> <i32 1, i32 3>
  %i.ya = icmp eq <2 x i32> %i.xz, splat (i32 1)
  %i.yb = zext <2 x i1> %i.ya to <2 x i32>
  %i.yc = add <2 x i32> %i.xy, %i.yb              ; 3 uses
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond887.not = icmp eq i64 %indvars.iv.next884, %i.pq
  br i1 %exitcond887.not, label %.preheader575.us.split, label %._crit_edge694.us, !llvm.loop !53

._crit_edge699:                                   ; preds = %.preheader575.us.split, %.preheader577
  %i.yd = phi <2 x i32> [ zeroinitializer, %.preheader577 ], [ %i.yc, %.preheader575.us.split ] ; 2 uses
  %i.ye = extractelement <2 x i32> %i.yd, i64 0   ; 2 uses
  %i.yf = extractelement <2 x i32> %i.yd, i64 1   ; 2 uses
  %i.yg = add nsw i32 %i.yf, %i.ye
  %i.yh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.yg, i32 noundef %i.yf, i32 noundef %i.ye) ; 0 uses
  %i.yi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  br i1 %i.ct, label %._crit_edge712.a, label %.lr.ph711

.lr.ph711:                                        ; preds = %._crit_edge699, %.lr.ph711
  %.5428709 = phi i32 [ %i.yk, %.lr.ph711 ], [ 0, %._crit_edge699 ] ; 2 uses
  %i.yj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.5428709) ; 0 uses
  %i.yk = add nuw nsw i32 %.5428709, 1            ; 2 uses
  %exitcond888.not = icmp eq i32 %i.yk, %1
  br i1 %exitcond888.not, label %._crit_edge712, label %.lr.ph711, !llvm.loop !54

._crit_edge712:                                   ; preds = %.lr.ph711
  %putchar446 = call i32 @putchar(i32 10)         ; 0 uses
  br i1 %i.bz, label %.loopexit, label %.lr.ph744

._crit_edge712.a:                                 ; preds = %._crit_edge699
  %putchar446.a = call i32 @putchar(i32 10)       ; 0 uses
  br i1 %i.bz, label %.loopexit, label %.lr.ph744.thread

.lr.ph744.thread:                                 ; preds = %._crit_edge712.a
  %wide.trip.count910965 = zext nneg i32 %2 to i64
  br label %._crit_edge733

.lr.ph744:                                        ; preds = %._crit_edge712
  %i.yl = load i32, ptr %i.cm, align 8
  %wide.trip.count910 = zext nneg i32 %2 to i64
  %8 = add nsw i32 %1, -2
  %wide.trip.count905 = zext nneg i32 %1 to i64
  %wide.trip.count900 = zext nneg i32 %3 to i64
  %wide.trip.count895 = zext nneg i32 %i.aj to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph732.split, %.lr.ph744
  %indvars.iv907.a = phi i64 [ 0, %.lr.ph744 ], [ %indvars.iv.next908.us, %.lr.ph732.split ] ; 5 uses
  %i.ym = trunc nuw nsw i64 %indvars.iv907.a to i32
  %i.yn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ym) ; 0 uses
  %invariant.gep.us912 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv907.a
  %9 = icmp eq i64 %indvars.iv907.a, 0
  %10 = icmp eq i64 %indvars.iv907.a, %i.pq
  %invariant.op734.us = or i1 %9, %10             ; 2 uses
  br i1 %i.pf, label %.preheader.lr.ph.us.us, label %.lr.ph732.split.us

.lr.ph732.split.us:                               ; preds = %bb.bm
  br i1 %invariant.op734.us, label %.preheader.us.us.preheader, label %.lr.ph732.split.split

.lr.ph732:                                        ; preds = %.lr.ph732.split.split, %.lr.ph732
  %.6429729.us = phi i32 [ %12, %.lr.ph732 ], [ 1, %.lr.ph732.split.split ] ; 2 uses
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  %12 = add nuw nsw i32 %.6429729.us, 1           ; 2 uses
  %exitcond889.us.not = icmp eq i32 %.6429729.us, %8
  br i1 %exitcond889.us.not, label %.lr.ph732.split.split.peel, label %.lr.ph732, !llvm.loop !55

.preheader.us.us.preheader:                       ; preds = %.lr.ph732.split.us, %.preheader.us.us.preheader
  %.6429729.us740.us = phi i32 [ %i.yo, %.preheader.us.us.preheader ], [ 0, %.lr.ph732.split.us ]
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  %i.yo = add nuw nsw i32 %.6429729.us740.us, 1   ; 2 uses
  %exitcond891.us.not = icmp eq i32 %i.yo, %1
  br i1 %exitcond891.us.not, label %.lr.ph732.split, label %.preheader.us.us.preheader, !llvm.loop !56

.preheader.lr.ph.us.us:                           ; preds = %bb.bm, %bb.bq
  %indvars.iv902.us = phi i64 [ %indvars.iv.next903, %bb.bq ], [ 0, %bb.bm ] ; 4 uses
  br i1 %i.pj, label %.lr.ph732.split.split.us, label %._crit_edge722.us.thread

.preheader.us.us:                                 ; preds = %.lr.ph732.split.split.us, %._crit_edge716.us.us
  %.val462.us.us.pre916 = phi ptr [ %.pre917, %.lr.ph732.split.split.us ], [ %.val462.us.us.pre916921, %._crit_edge716.us.us ] ; 3 uses
  %i.yp = phi ptr [ %.pre917, %.lr.ph732.split.split.us ], [ %i.zc, %._crit_edge716.us.us ] ; 2 uses
  %indvars.iv897 = phi i64 [ 0, %.lr.ph732.split.split.us ], [ %indvars.iv.next898, %._crit_edge716.us.us ] ; 3 uses
  %.0721.us.us = phi i32 [ 0, %.lr.ph732.split.split.us ], [ %.us-phi718.us.us, %._crit_edge716.us.us ] ; 2 uses
  %i.yq = add nsw i64 %indvars.iv897, %17         ; 2 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !28
  %i.yt = icmp eq i32 %i.ys, 1
  br i1 %i.yt, label %bb.br, label %._crit_edge716.us.us

.lr.ph715.split.us724.us:                         ; preds = %bb.br, %bb.bp
  %.val462.us.us.pre916923 = phi ptr [ %.val462.us.us.pre916, %bb.br ], [ %.val462.us.us.pre916922, %bb.bp ] ; 2 uses
  %.val462.us.us = phi ptr [ %.val462.us.us.pre916, %bb.br ], [ %.pre914, %bb.bp ] ; 4 uses
  %indvars.iv892 = phi i64 [ 0, %bb.br ], [ %indvars.iv.next893, %bb.bp ] ; 3 uses
  %.1714.us.us = phi i32 [ %.0721.us.us, %bb.br ], [ %.2.us.us, %bb.bp ] ; 2 uses
  %i.yu = getelementptr inbounds [4 x i8], ptr %.val462.us.us, i64 %i.yq
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !28
  %.not571.us.us = icmp eq i32 %i.yv, 1
  br i1 %.not571.us.us, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph715.split.us724.us
  %i.yw = getelementptr [4 x i8], ptr %.val462.us.us, i64 %indvars.iv892
  %i.yx = getelementptr [4 x i8], ptr %i.yw, i64 %16
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !28
  %.not572.us.us = icmp eq i32 %i.yy, 1
  br i1 %.not572.us.us, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.yz = trunc i64 %indvars.iv892 to i32
  %i.za = add i32 %i.yz, 97
  %i.zb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.za, i32 noundef %14) ; 0 uses
  %.val462.us.us.pre = load ptr, ptr %i.pg, align 8, !tbaa !27 ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %.lr.ph715.split.us724.us
  %.val462.us.us.pre916922 = phi ptr [ %.val462.us.us.pre, %bb.bo ], [ %.val462.us.us.pre916923, %bb.bn ], [ %.val462.us.us.pre916923, %.lr.ph715.split.us724.us ] ; 2 uses
  %.pre914 = phi ptr [ %.val462.us.us.pre, %bb.bo ], [ %.val462.us.us, %bb.bn ], [ %.val462.us.us, %.lr.ph715.split.us724.us ] ; 2 uses
  %.2.us.us = phi i32 [ 1, %bb.bo ], [ %.1714.us.us, %bb.bn ], [ %.1714.us.us, %.lr.ph715.split.us724.us ] ; 2 uses
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1 ; 2 uses
  %exitcond896.not = icmp eq i64 %indvars.iv.next893, %wide.trip.count895
  br i1 %exitcond896.not, label %._crit_edge716.us.us, label %.lr.ph715.split.us724.us, !llvm.loop !57

._crit_edge716.us.us:                             ; preds = %bb.bp, %.preheader.us.us
  %.val462.us.us.pre916921 = phi ptr [ %.val462.us.us.pre916, %.preheader.us.us ], [ %.val462.us.us.pre916922, %bb.bp ]
  %i.zc = phi ptr [ %i.yp, %.preheader.us.us ], [ %.pre914, %bb.bp ]
  %.us-phi718.us.us = phi i32 [ %.0721.us.us, %.preheader.us.us ], [ %.2.us.us, %bb.bp ] ; 2 uses
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 2 uses
  %exitcond901.not = icmp eq i64 %indvars.iv.next898, %wide.trip.count900
  br i1 %exitcond901.not, label %._crit_edge722.us, label %.preheader.us.us, !llvm.loop !58

._crit_edge722.us:                                ; preds = %._crit_edge716.us.us
  %i.zd = icmp eq i32 %.us-phi718.us.us, 0
  br i1 %i.zd, label %._crit_edge722.us.thread, label %bb.bq

._crit_edge722.us.thread:                         ; preds = %.preheader.lr.ph.us.us, %._crit_edge722.us
  %i.ze = icmp eq i64 %indvars.iv902.us, 0
  %i.zf = icmp eq i64 %indvars.iv902.us, %i.pr
  %i.zg = or i1 %i.zf, %i.ze
  %or.cond745 = or i1 %i.zg, %invariant.op734.us
  %.str.17..str.18.a = select i1 %or.cond745, ptr @.str.17, ptr @.str.18
  %i.zh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.17..str.18.a) ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge722.us.thread, %._crit_edge722.us
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902.us, 1 ; 2 uses
  %exitcond906.not = icmp eq i64 %indvars.iv.next903, %wide.trip.count905
  br i1 %exitcond906.not, label %.lr.ph732.split, label %.preheader.lr.ph.us.us, !llvm.loop !56

.lr.ph732.split:                                  ; preds = %.preheader.us.us.preheader, %bb.bq, %.lr.ph732.split.split, %.lr.ph732.split.split.peel
  %putchar447.us = call i32 @putchar(i32 10)      ; 0 uses
  %indvars.iv.next908.us = add nuw nsw i64 %indvars.iv907.a, 1 ; 2 uses
  %exitcond911.us.not = icmp eq i64 %indvars.iv.next908.us, %wide.trip.count910
  br i1 %exitcond911.us.not, label %.loopexit, label %bb.bm, !llvm.loop !59

bb.br:                                            ; preds = %.preheader.us.us
  %14 = trunc nuw nsw i64 %indvars.iv897 to i32
  br label %.lr.ph715.split.us724.us

.lr.ph732.split.split.us:                         ; preds = %.preheader.lr.ph.us.us
  %gep.us735.us = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us912, i64 %indvars.iv902.us
  %15 = load i32, ptr %gep.us735.us, align 4, !tbaa !28 ; 2 uses
  %i.zi = add nsw i32 %i.yl, %15
  %16 = sext i32 %i.zi to i64
  %17 = sext i32 %15 to i64
  %.pre917 = load ptr, ptr %i.pg, align 8, !tbaa !27 ; 2 uses
  br label %.preheader.us.us

.lr.ph732.split.split:                            ; preds = %.lr.ph732.split.us
  %i.zj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  switch i32 %1, label %.lr.ph732 [
    i32 1, label %.lr.ph732.split
    i32 2, label %.lr.ph732.split.split.peel
  ]

.lr.ph732.split.split.peel:                       ; preds = %.lr.ph732, %.lr.ph732.split.split
  %i.zk = phi i32 [ 1, %.lr.ph732.split.split ], [ %12, %.lr.ph732 ]
  %i.zl = icmp eq i32 %i.zk, %i.cu
  %.str.17..str.18978.peel = select i1 %i.zl, ptr @.str.17, ptr @.str.18
  %i.zm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.17..str.18978.peel) ; 0 uses
  br label %.lr.ph732.split

._crit_edge733:                                   ; preds = %.lr.ph744.thread, %._crit_edge733
  %indvars.iv907 = phi i64 [ 0, %.lr.ph744.thread ], [ %indvars.iv.next908, %._crit_edge733 ] ; 2 uses
  %18 = trunc nuw nsw i64 %indvars.iv907 to i32
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %18) ; 0 uses
  %putchar447 = call i32 @putchar(i32 10)         ; 0 uses
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1 ; 2 uses
  %exitcond911.not = icmp eq i64 %indvars.iv.next908, %wide.trip.count910965
  br i1 %exitcond911.not, label %.loopexit, label %._crit_edge733, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph732.split, %._crit_edge733, %Abc_Clock.exit568, %._crit_edge712, %._crit_edge712.a, %Abc_Clock.exit476
  call void @sat_solver_delete(ptr noundef %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  ret void
}

declare ptr @sat_solver_new() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #2

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #13 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #13
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #13 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !94
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #14
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #13 ; 0 uses
  call void @free(ptr noundef %i.d) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !94, !noalias !95
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #13, !inline_history !93 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 int", !12, i64 0}
!14 = !{!"Sat_Mem_t_", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !13, i64 48}
!15 = !{!"p1 _ZTS8clause_t", !11, i64 0}
!16 = !{!"p1 _ZTS6veci_t", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p1 long", !11, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"veci_t", !8, i64 0, !8, i64 4, !19, i64 8}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"double", !7, i64 0}
!23 = !{!"stats_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64}
!24 = !{!"p1 double", !11, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!26 = !{!"sat_solver_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16, !8, i64 72, !8, i64 76, !15, i64 80, !16, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !18, i64 144, !18, i64 152, !8, i64 160, !8, i64 164, !20, i64 168, !21, i64 184, !8, i64 192, !19, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !20, i64 264, !20, i64 280, !20, i64 296, !20, i64 312, !19, i64 328, !20, i64 336, !8, i64 352, !8, i64 356, !8, i64 360, !22, i64 368, !22, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !23, i64 400, !8, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !17, i64 496, !17, i64 504, !17, i64 512, !20, i64 520, !24, i64 536, !8, i64 544, !8, i64 548, !8, i64 552, !20, i64 560, !20, i64 576, !8, i64 592, !8, i64 596, !8, i64 600, !19, i64 608, !11, i64 616, !8, i64 624, !25, i64 632, !8, i64 640, !8, i64 644, !20, i64 648, !20, i64 664, !20, i64 680, !11, i64 696, !11, i64 704, !8, i64 712, !11, i64 720}
!27 = !{!26, !19, i64 328}
!28 = !{!8, !8, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !86}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29, !87, !88}
!42 = distinct !{!42, !29, !88, !87}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29, !89}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !29, !90}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = !{!"timespec", !17, i64 0, !17, i64 8}
!61 = !{!60, !17, i64 0}
!62 = !{!60, !17, i64 8}
!63 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!64 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!65 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !19, i64 8}
!66 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!67 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!68 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!69 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!70 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!71 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!72 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!73 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!74 = !{!"float", !7, i64 0}
!75 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!76 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!77 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!78 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!79 = !{!"Gia_Man_t_", !21, i64 0, !21, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !63, i64 32, !19, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !64, i64 64, !64, i64 72, !65, i64 80, !65, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !65, i64 128, !19, i64 144, !19, i64 152, !64, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !19, i64 184, !66, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !8, i64 224, !8, i64 228, !19, i64 232, !8, i64 240, !64, i64 248, !64, i64 256, !64, i64 264, !67, i64 272, !67, i64 280, !64, i64 288, !11, i64 296, !64, i64 304, !64, i64 312, !68, i64 320, !21, i64 328, !64, i64 336, !64, i64 344, !64, i64 352, !64, i64 360, !64, i64 368, !69, i64 376, !69, i64 384, !70, i64 392, !65, i64 400, !65, i64 416, !64, i64 432, !64, i64 440, !64, i64 448, !64, i64 456, !64, i64 464, !64, i64 472, !64, i64 480, !64, i64 488, !64, i64 496, !64, i64 504, !64, i64 512, !21, i64 520, !71, i64 528, !72, i64 536, !73, i64 544, !73, i64 552, !64, i64 560, !64, i64 568, !64, i64 576, !64, i64 584, !64, i64 592, !8, i64 600, !74, i64 604, !74, i64 608, !64, i64 616, !19, i64 624, !8, i64 632, !70, i64 640, !70, i64 648, !70, i64 656, !64, i64 664, !64, i64 672, !64, i64 680, !64, i64 688, !64, i64 696, !64, i64 704, !64, i64 712, !64, i64 720, !64, i64 728, !75, i64 736, !73, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !17, i64 776, !17, i64 784, !11, i64 792, !19, i64 800, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !76, i64 856, !76, i64 864, !76, i64 872, !76, i64 880, !64, i64 888, !64, i64 896, !64, i64 904, !77, i64 912, !8, i64 920, !8, i64 924, !8, i64 928, !64, i64 936, !8, i64 944, !8, i64 948, !64, i64 952, !64, i64 960, !70, i64 968, !76, i64 976, !64, i64 984, !64, i64 992, !8, i64 1000, !8, i64 1004, !76, i64 1008, !65, i64 1016, !65, i64 1032, !65, i64 1048, !78, i64 1064, !68, i64 1072, !68, i64 1080, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !68, i64 1104, !64, i64 1112, !64, i64 1120, !64, i64 1128, !70, i64 1136}
!80 = !{!79, !8, i64 16}
!81 = !{!79, !64, i64 64}
!82 = !{!65, !8, i64 4}
!83 = !{!79, !8, i64 24}
!84 = !{!79, !64, i64 72}
!85 = !{!79, !63, i64 32}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !{!"llvm.loop.peeled.count", i32 2}
!90 = !{!"llvm.loop.unswitch.partial.disable"}
!91 = distinct !{!91, i1 true, !"vprintf"}
!92 = distinct !{!92, !91, !"vprintf: argument 0"}
!93 = distinct !{null}
!94 = !{!25, !25, i64 0}
!95 = !{!92}
end_hunk_1
