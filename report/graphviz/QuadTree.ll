Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/QuadTree?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@QuadTree_get_supernodes_internal:bb.a
  %i.cf = sub i64 %i.by, %i.ce
  %diff.check122 = icmp ugt i64 %i.cf, -32
  br i1 %diff.check122, label %scalar.ph119.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %vector.memcheck121
  %n.vec124 = and i64 %wide.trip.count108, 2147483644 ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body125 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index126 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load127 = load <2 x double>, ptr %i.cg, align 8, !tbaa !17
  %wide.load128 = load <2 x double>, ptr %i.ch, align 8, !tbaa !17
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index126 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store <2 x double> %wide.load127, ptr %i.ci, align 8, !tbaa !17
  store <2 x double> %wide.load128, ptr %i.cj, align 8, !tbaa !17
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.ck, label %middle.block130, label %vector.body125, !llvm.loop !48

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %n.vec124, %wide.trip.count108
  br i1 %cmp.n131, label %._crit_edge, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %vector.memcheck121, %.lr.ph95, %middle.block130
  %indvars.iv105.ph = phi i64 [ 0, %vector.memcheck121 ], [ 0, %.lr.ph95 ], [ %n.vec124, %middle.block130 ] ; 3 uses
  %xtraiter134 = and i64 %wide.trip.count108, 3   ; 2 uses
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol

scalar.ph119.prol:                                ; preds = %scalar.ph119.preheader, %scalar.ph119.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph119.prol ], [ %indvars.iv105.ph, %scalar.ph119.preheader ] ; 3 uses
  %prol.iter136 = phi i64 [ %prol.iter136.next, %scalar.ph119.prol ], [ 0, %scalar.ph119.preheader ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv105.prol
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !17
  %gep114.prol = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv105.prol
  store double %i.cm, ptr %gep114.prol, align 8, !tbaa !17
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter136.next = add i64 %prol.iter136, 1   ; 2 uses
  %prol.iter136.cmp.not = icmp eq i64 %prol.iter136.next, %xtraiter134
  br i1 %prol.iter136.cmp.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol, !llvm.loop !49

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph119.preheader ], [ %indvars.iv.next106.prol, %scalar.ph119.prol ]
  %i.cn = sub nsw i64 %indvars.iv105.ph, %wide.trip.count108
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge, label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph119 ], [ %indvars.iv105.unr, %scalar.ph119.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv105
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !17
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv105
  store double %i.cq, ptr %gep114, align 8, !tbaa !17
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.next106
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !17
  %gep114.1 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv.next106
  store double %i.cs, ptr %gep114.1, align 8, !tbaa !17
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.next106.1
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !17
  %gep114.2 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv.next106.1
  store double %i.cu, ptr %gep114.2, align 8, !tbaa !17
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.next106.2
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !17
  %gep114.3 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv.next106.2
  store double %i.cw, ptr %gep114.3, align 8, !tbaa !17
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count108
  br i1 %exitcond109.not.3, label %._crit_edge, label %scalar.ph119, !llvm.loop !50

._crit_edge:                                      ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119, %middle.block130, %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !35
  %i.cz = load ptr, ptr %7, align 8, !tbaa !19
  %i.da = sext i32 %.pre to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  store double %i.cy, ptr %i.db, align 8, !tbaa !17
  %i.dc = tail call double @point_distance(ptr noundef %i.bx, ptr noundef %2, i32 noundef %.fr96) #16
  %i.dd = load ptr, ptr %8, align 8, !tbaa !19
  %i.de = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.df
  store double %i.dc, ptr %i.dg, align 8, !tbaa !17
  %i.dh = add nsw i32 %i.de, 1
  store i32 %i.dh, ptr %4, align 4, !tbaa !18
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv100 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next101, %.lr.ph ] ; 2 uses
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv100
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37
  tail call fastcc void @QuadTree_get_supernodes_internal(ptr noundef %i.dk, double noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9)
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.loopexit, label %.lr.ph, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %._crit_edge92, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @QuadTree_get_repulsive_force(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef initializes((0, 32)) %6) local_unnamed_addr #0 {
.preheader:
  %i.a = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !tbaa !17
  %i.d = mul nsw i32 %i.c, %i.a                   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = zext nneg i32 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.g, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, double noundef %3, double noundef %4, double noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @QuadTree_repulsive_force_accumulate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6)
  %i.h = sitofp i32 %i.a to double
  %i.i = load <2 x double>, ptr %6, align 8, !tbaa !17
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fdiv <2 x double> %i.i, %i.k
  store <2 x double> %i.l, ptr %6, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !17
  %i.o = fdiv <2 x double> %i.n, %i.k
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @QuadTree_repulsive_force_interact(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = tail call double @point_distance(ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.d) #16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !33 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !33 ; 3 uses
  %i.r = fadd double %i.o, %i.q
  %i.s = fmul double %4, %i.m
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load double, ptr %7, align 8, !tbaa !17
  %i.v = fadd double %i.u, 1.000000e+00
  store double %i.v, ptr %7, align 8, !tbaa !17
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !34   ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !35
  %i.z = tail call fastcc ptr @get_or_alloc_force_qt(ptr noundef nonnull %0, i32 noundef %i.d) ; 12 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !34  ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !35
  %i.ad = tail call fastcc ptr @get_or_alloc_force_qt(ptr noundef nonnull %1, i32 noundef %i.d) ; 12 uses
  %i.ae = icmp sgt i32 %i.d, 0
  br i1 %i.ae, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %bb.c
  %i.af = fcmp oeq double %5, -1.000000e+00
  %i.ag = fmul double %i.y, %i.ac
  %i.ah = fmul double %6, %i.ag                   ; 4 uses
  %i.ai = fmul double %i.m, %i.m                  ; 2 uses
  br i1 %i.af, label %.lr.ph251.split.us.preheader, label %.lr.ph251.split

.lr.ph251.split.us.preheader:                     ; preds = %.lr.ph251
  %wide.trip.count312 = zext nneg i32 %i.d to i64 ; 4 uses
  %min.iters.check531 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check531, label %.lr.ph251.split.us.preheader568, label %vector.memcheck532

vector.memcheck532:                               ; preds = %.lr.ph251.split.us.preheader
  %i.aj = shl nuw nsw i64 %wide.trip.count312, 3  ; 4 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj   ; 3 uses
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 3 uses
  %bound0533 = icmp ult ptr %i.z, %i.al
  %bound0533.a = icmp ult ptr %i.ad, %i.ak
  %found.conflict535 = and i1 %bound0533, %bound0533.a
  %8 = getelementptr i8, ptr %i.w, i64 %i.aj      ; 2 uses
  %bound0536 = icmp ult ptr %i.z, %8
  %bound1537 = icmp ult ptr %i.w, %i.ak
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx539 = or i1 %found.conflict535, %found.conflict538
  %9 = getelementptr i8, ptr %i.aa, i64 %i.aj     ; 2 uses
  %bound0540 = icmp ult ptr %i.z, %9
  %bound1541 = icmp ult ptr %i.aa, %i.ak
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx543 = or i1 %conflict.rdx539, %found.conflict542
  %bound0544 = icmp ult ptr %i.ad, %8
  %bound1545 = icmp ult ptr %i.w, %i.al
  %found.conflict546 = and i1 %bound0544, %bound1545
  %conflict.rdx547 = or i1 %conflict.rdx543, %found.conflict546
  %bound0548 = icmp ult ptr %i.ad, %9
  %bound1549 = icmp ult ptr %i.aa, %i.al
  %found.conflict550 = and i1 %bound0548, %bound1549
  %conflict.rdx551 = or i1 %conflict.rdx547, %found.conflict550
  br i1 %conflict.rdx551, label %.lr.ph251.split.us.preheader568, label %vector.ph552

vector.ph552:                                     ; preds = %vector.memcheck532
  %n.vec553 = and i64 %wide.trip.count312, 2147483646 ; 3 uses
  %broadcast.splatinsert554 = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat555 = shufflevector <2 x double> %broadcast.splatinsert554, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert556 = insertelement <2 x double> poison, double %i.ai, i64 0
  %broadcast.splat557 = shufflevector <2 x double> %broadcast.splatinsert556, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph552
  %index559 = phi i64 [ 0, %vector.ph552 ], [ %index.next564, %vector.body558 ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index559
  %wide.load560 = load <2 x double>, ptr %i.am, align 8, !tbaa !17, !alias.scope !88
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index559
  %wide.load561 = load <2 x double>, ptr %i.an, align 8, !tbaa !17, !alias.scope !89
  %i.ao = fsub <2 x double> %wide.load560, %wide.load561
  %i.ap = fmul <2 x double> %broadcast.splat555, %i.ao
  %i.aq = fdiv <2 x double> %i.ap, %broadcast.splat557 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index559 ; 2 uses
  %wide.load562 = load <2 x double>, ptr %i.ar, align 8, !tbaa !17, !alias.scope !90, !noalias !91
  %i.as = fadd <2 x double> %i.aq, %wide.load562
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !17, !alias.scope !90, !noalias !91
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index559 ; 2 uses
  %wide.load563 = load <2 x double>, ptr %i.at, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  %i.au = fsub <2 x double> %wide.load563, %i.aq
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  %index.next564 = add nuw i64 %index559, 2       ; 2 uses
  %i.av = icmp eq i64 %index.next564, %n.vec553
  br i1 %i.av, label %middle.block565, label %vector.body558, !llvm.loop !57

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %n.vec553, %wide.trip.count312
  br i1 %cmp.n566, label %.loopexit, label %.lr.ph251.split.us.preheader568

.lr.ph251.split.us.preheader568:                  ; preds = %vector.memcheck532, %.lr.ph251.split.us.preheader, %middle.block565
  %indvars.iv309.ph = phi i64 [ 0, %vector.memcheck532 ], [ 0, %.lr.ph251.split.us.preheader ], [ %n.vec553, %middle.block565 ]
  br label %.lr.ph251.split.us

.lr.ph251.split.us:                               ; preds = %.lr.ph251.split.us.preheader568, %.lr.ph251.split.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph251.split.us ], [ %indvars.iv309.ph, %.lr.ph251.split.us.preheader568 ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv309
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv309
  %i.az = load double, ptr %i.ay, align 8, !tbaa !17
  %i.ba = fsub double %i.ax, %i.az
  %i.bb = fmul double %i.ah, %i.ba
  %i.bc = fdiv double %i.bb, %i.ai                ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv309 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !17
  %i.bf = fadd double %i.bc, %i.be
  store double %i.bf, ptr %i.bd, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv309 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bi = fsub double %i.bh, %i.bc
  store double %i.bi, ptr %i.bg, align 8, !tbaa !17
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count312
  br i1 %exitcond313.not, label %.loopexit, label %.lr.ph251.split.us, !llvm.loop !58

.lr.ph251.split:                                  ; preds = %.lr.ph251
  %i.bj = fsub double 1.000000e+00, %5
  %i.bk = tail call double @pow(double noundef %i.m, double noundef %i.bj) #16 ; 2 uses
  %wide.trip.count307 = zext nneg i32 %i.d to i64 ; 4 uses
  %min.iters.check469 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check469, label %scalar.ph468.preheader, label %vector.memcheck470

vector.memcheck470:                               ; preds = %.lr.ph251.split
  %i.bl = shl nuw nsw i64 %wide.trip.count307, 3  ; 4 uses
  %i.bm = getelementptr i8, ptr %i.z, i64 %i.bl   ; 3 uses
  %i.bn = getelementptr i8, ptr %i.ad, i64 %i.bl  ; 3 uses
  %bound0471 = icmp ult ptr %i.z, %i.bn
  %bound0471.a = icmp ult ptr %i.ad, %i.bm
  %found.conflict473 = and i1 %bound0471, %bound0471.a
  %10 = getelementptr i8, ptr %i.w, i64 %i.bl     ; 2 uses
  %bound0474 = icmp ult ptr %i.z, %10
  %bound1475 = icmp ult ptr %i.w, %i.bm
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %found.conflict473, %found.conflict476
  %11 = getelementptr i8, ptr %i.aa, i64 %i.bl    ; 2 uses
  %bound0478 = icmp ult ptr %i.z, %11
  %bound1479 = icmp ult ptr %i.aa, %i.bm
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %i.ad, %10
  %bound1483 = icmp ult ptr %i.w, %i.bn
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  %bound0486 = icmp ult ptr %i.ad, %11
  %bound1487 = icmp ult ptr %i.aa, %i.bn
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  br i1 %conflict.rdx489, label %scalar.ph468.preheader, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck470
  %n.vec491 = and i64 %wide.trip.count307, 2147483646 ; 3 uses
  %broadcast.splatinsert492 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat493 = shufflevector <2 x double> %broadcast.splatinsert492, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert494 = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat495 = shufflevector <2 x double> %broadcast.splatinsert494, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph490
  %index497 = phi i64 [ 0, %vector.ph490 ], [ %index.next502, %vector.body496 ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index497
  %wide.load498 = load <2 x double>, ptr %i.bo, align 8, !tbaa !17, !alias.scope !94
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index497
  %wide.load499 = load <2 x double>, ptr %i.bp, align 8, !tbaa !17, !alias.scope !95
  %i.bq = fsub <2 x double> %wide.load498, %wide.load499
  %i.br = fmul <2 x double> %broadcast.splat495, %i.bq
  %i.bs = fdiv <2 x double> %i.br, %broadcast.splat493 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index497 ; 2 uses
  %wide.load500 = load <2 x double>, ptr %i.bt, align 8, !tbaa !17, !alias.scope !96, !noalias !97
  %i.bu = fadd <2 x double> %i.bs, %wide.load500
  store <2 x double> %i.bu, ptr %i.bt, align 8, !tbaa !17, !alias.scope !96, !noalias !97
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index497 ; 2 uses
  %wide.load501 = load <2 x double>, ptr %i.bv, align 8, !tbaa !17, !alias.scope !98, !noalias !99
  %i.bw = fsub <2 x double> %wide.load501, %i.bs
  store <2 x double> %i.bw, ptr %i.bv, align 8, !tbaa !17, !alias.scope !98, !noalias !99
  %index.next502 = add nuw i64 %index497, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next502, %n.vec491
  br i1 %i.bx, label %middle.block503, label %vector.body496, !llvm.loop !64

middle.block503:                                  ; preds = %vector.body496
  %cmp.n504 = icmp eq i64 %n.vec491, %wide.trip.count307
  br i1 %cmp.n504, label %.loopexit, label %scalar.ph468.preheader

scalar.ph468.preheader:                           ; preds = %vector.memcheck470, %.lr.ph251.split, %middle.block503
  %indvars.iv304.ph = phi i64 [ 0, %vector.memcheck470 ], [ 0, %.lr.ph251.split ], [ %n.vec491, %middle.block503 ]
  br label %scalar.ph468

scalar.ph468:                                     ; preds = %scalar.ph468.preheader, %scalar.ph468
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %scalar.ph468 ], [ %indvars.iv304.ph, %scalar.ph468.preheader ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv304
  %i.bz = load double, ptr %i.by, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv304
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !17
  %i.cc = fsub double %i.bz, %i.cb
  %i.cd = fmul double %i.ah, %i.cc
  %i.ce = fdiv double %i.cd, %i.bk                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv304 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !17
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv304 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !17
  %i.ck = fsub double %i.cj, %i.ce
  store double %i.ck, ptr %i.ci, align 8, !tbaa !17
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %.loopexit, label %scalar.ph468, !llvm.loop !65

bb.d:                                             ; preds = %bb.b
  %i.cl = icmp ne ptr %i.f, null                  ; 3 uses
  %i.cm = icmp ne ptr %i.h, null                  ; 3 uses
  %or.cond3 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = icmp eq ptr %0, %1                      ; 3 uses
  br i1 %or.cond3, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cp = icmp sgt i32 %i.d, 0
  %i.cq = fcmp oeq double %5, -1.000000e+00
  %i.cr = fsub double 1.000000e+00, %5
  %wide.trip.count297 = zext i32 %i.d to i64      ; 6 uses
  %wide.trip.count302 = zext nneg i32 %i.d to i64
  %i.cs = shl nuw nsw i64 %wide.trip.count297, 3  ; 6 uses
  %min.iters.check407 = icmp eq i32 %i.d, 1
  %n.vec429 = and i64 %wide.trip.count297, 2147483646 ; 3 uses
  %cmp.n442 = icmp eq i64 %n.vec429, %wide.trip.count297
  %min.iters.check = icmp eq i32 %i.d, 1
  %n.vec = and i64 %wide.trip.count297, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count297
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %._crit_edge245
  %.0197249 = phi ptr [ %i.f, %.preheader ], [ %i.gf, %._crit_edge245 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0197249, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !25 ; 9 uses
  %i.cv = load double, ptr %.0197249, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %.0197249, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !24 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0197249, i64 24 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %bb.f, label %get_or_assign_node_force.exit

bb.f:                                             ; preds = %bb.e
  %i.da = mul nsw i32 %i.cx, %i.d
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.db ; 2 uses
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !40
  br label %get_or_assign_node_force.exit

get_or_assign_node_force.exit:                    ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.cz, %bb.e ], [ %i.dc, %bb.f ] ; 11 uses
  %.0241 = load ptr, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %.not212242 = icmp eq ptr %.0241, null
  br i1 %.not212242, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %get_or_assign_node_force.exit
  br i1 %i.cp, label %.lr.ph244.split.us.preheader, label %.lr.ph244.split

.lr.ph244.split.us.preheader:                     ; preds = %.lr.ph244
  %scevgep = getelementptr i8, ptr %i.cu, i64 %i.cs ; 4 uses
  %scevgep363 = getelementptr i8, ptr %.0.i, i64 %i.cs ; 6 uses
  %bound0412 = icmp ult ptr %.0.i, %scevgep
  %bound1413 = icmp ult ptr %i.cu, %scevgep363
  %found.conflict414 = and i1 %bound0412, %bound1413
  %bound0364 = icmp ult ptr %.0.i, %scevgep
  %bound1365 = icmp ult ptr %i.cu, %scevgep363
  %found.conflict366 = and i1 %bound0364, %bound1365
  br label %.lr.ph244.split.us

.lr.ph244.split.us:                               ; preds = %.lr.ph244.split.us.preheader, %.backedge.us
  %.0243.us = phi ptr [ %.0.us, %.backedge.us ], [ %.0241, %.lr.ph244.split.us.preheader ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0243.us, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !25 ; 10 uses
  %i.df = load double, ptr %.0243.us, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.0243.us, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !24 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0243.us, i64 24 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40 ; 2 uses
  %.not.i215.us = icmp eq ptr %i.dj, null
  br i1 %.not.i215.us, label %bb.g, label %get_or_assign_node_force.exit217.us

bb.g:                                             ; preds = %.lr.ph244.split.us
  %i.dk = mul nsw i32 %i.dh, %i.d
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dl ; 2 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !40
  br label %get_or_assign_node_force.exit217.us

get_or_assign_node_force.exit217.us:              ; preds = %bb.g, %.lr.ph244.split.us
  %.0.i216.us = phi ptr [ %i.dj, %.lr.ph244.split.us ], [ %i.dm, %bb.g ] ; 12 uses
  %i.dn = icmp slt i32 %i.dh, %i.cx
  %or.cond213.us = and i1 %i.cn, %i.dn
  %i.do = icmp eq i32 %i.cx, %i.dh
  %or.cond214.us = or i1 %i.do, %or.cond213.us
  br i1 %or.cond214.us, label %.backedge.us, label %.lr.ph240.us

.lr.ph240.us:                                     ; preds = %get_or_assign_node_force.exit217.us
  %i.dp = load double, ptr %i.co, align 8, !tbaa !17
  %i.dq = fadd double %i.dp, 1.000000e+00
  store double %i.dq, ptr %i.co, align 8, !tbaa !17
  %i.dr = tail call double @distance_cropped(ptr noundef %2, i32 noundef %i.d, i32 noundef %i.cx, i32 noundef %i.dh) #16 ; 3 uses
  %i.ds = fmul double %i.cv, %i.df
  %i.dt = fmul double %6, %i.ds                   ; 4 uses
  %i.du = fmul double %i.dr, %i.dr                ; 2 uses
  br i1 %i.cq, label %.lr.ph240.split.us.us.preheader, label %.lr.ph240.split.us246

.lr.ph240.split.us.us.preheader:                  ; preds = %.lr.ph240.us
  br i1 %min.iters.check, label %.lr.ph240.split.us.us.preheader570, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph240.split.us.us.preheader
  %i.dv = getelementptr i8, ptr %.0.i216.us, i64 %i.cs ; 3 uses
  %bound0 = icmp ult ptr %.0.i, %i.dv
  %bound1 = icmp ult ptr %.0.i216.us, %scevgep363
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict366
  %12 = getelementptr i8, ptr %i.de, i64 %i.cs    ; 2 uses
  %bound0367 = icmp ult ptr %.0.i, %12
  %bound1368 = icmp ult ptr %i.de, %scevgep363
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx, %found.conflict369
  %bound0371 = icmp ult ptr %.0.i216.us, %scevgep
  %bound1372 = icmp ult ptr %i.cu, %i.dv
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %.0.i216.us, %12
  %bound1376 = icmp ult ptr %i.de, %i.dv
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  br i1 %conflict.rdx378, label %.lr.ph240.split.us.us.preheader570, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert379 = insertelement <2 x double> poison, double %i.du, i64 0
  %broadcast.splat380 = shufflevector <2 x double> %broadcast.splatinsert379, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !17, !alias.scope !100
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index
  %wide.load381 = load <2 x double>, ptr %i.dx, align 8, !tbaa !17, !alias.scope !101
  %i.dy = fsub <2 x double> %wide.load, %wide.load381
  %i.dz = fmul <2 x double> %broadcast.splat, %i.dy
  %i.ea = fdiv <2 x double> %i.dz, %broadcast.splat380 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %wide.load382 = load <2 x double>, ptr %i.eb, align 8, !tbaa !17, !alias.scope !102, !noalias !103
  %i.ec = fadd <2 x double> %i.ea, %wide.load382
  store <2 x double> %i.ec, ptr %i.eb, align 8, !tbaa !17, !alias.scope !102, !noalias !103
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i216.us, i64 %index ; 2 uses
  %wide.load383 = load <2 x double>, ptr %i.ed, align 8, !tbaa !17, !alias.scope !104, !noalias !105
  %i.ee = fsub <2 x double> %wide.load383, %i.ea
  store <2 x double> %i.ee, ptr %i.ed, align 8, !tbaa !17, !alias.scope !104, !noalias !105
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.backedge.us, label %.lr.ph240.split.us.us.preheader570

.lr.ph240.split.us.us.preheader570:               ; preds = %vector.memcheck, %.lr.ph240.split.us.us.preheader, %middle.block
  %indvars.iv299.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph240.split.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph240.split.us.us

.lr.ph240.split.us246:                            ; preds = %.lr.ph240.us
  %i.eg = tail call double @pow(double noundef %i.dr, double noundef %i.cr) #16 ; 2 uses
  br i1 %min.iters.check407, label %scalar.ph406.preheader, label %vector.memcheck408

vector.memcheck408:                               ; preds = %.lr.ph240.split.us246
  %i.eh = getelementptr i8, ptr %.0.i216.us, i64 %i.cs ; 3 uses
  %bound0409 = icmp ult ptr %.0.i, %i.eh
  %bound1410 = icmp ult ptr %.0.i216.us, %scevgep363
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx415 = or i1 %found.conflict411, %found.conflict414
  %13 = getelementptr i8, ptr %i.de, i64 %i.cs    ; 2 uses
  %bound0416 = icmp ult ptr %.0.i, %13
  %bound1417 = icmp ult ptr %i.de, %scevgep363
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %.0.i216.us, %scevgep
  %bound1421 = icmp ult ptr %i.cu, %i.eh
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  %bound0424 = icmp ult ptr %.0.i216.us, %13
  %bound1425 = icmp ult ptr %i.de, %i.eh
  %found.conflict426 = and i1 %bound0424, %bound1425
  %conflict.rdx427 = or i1 %conflict.rdx423, %found.conflict426
  br i1 %conflict.rdx427, label %scalar.ph406.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck408
  %broadcast.splatinsert430 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat431 = shufflevector <2 x double> %broadcast.splatinsert430, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <2 x double> poison, double %i.dt, i64 0
  %broadcast.splat433 = shufflevector <2 x double> %broadcast.splatinsert432, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph428
  %index435 = phi i64 [ 0, %vector.ph428 ], [ %index.next440, %vector.body434 ] ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index435
  %wide.load436 = load <2 x double>, ptr %i.ei, align 8, !tbaa !17, !alias.scope !106
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index435
  %wide.load437 = load <2 x double>, ptr %i.ej, align 8, !tbaa !17, !alias.scope !107
  %i.ek = fsub <2 x double> %wide.load436, %wide.load437
  %i.el = fmul <2 x double> %broadcast.splat433, %i.ek
  %i.em = fdiv <2 x double> %i.el, %broadcast.splat431 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index435 ; 2 uses
  %wide.load438 = load <2 x double>, ptr %i.en, align 8, !tbaa !17, !alias.scope !108, !noalias !109
  %i.eo = fadd <2 x double> %i.em, %wide.load438
  store <2 x double> %i.eo, ptr %i.en, align 8, !tbaa !17, !alias.scope !108, !noalias !109
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.i216.us, i64 %index435 ; 2 uses
  %wide.load439 = load <2 x double>, ptr %i.ep, align 8, !tbaa !17, !alias.scope !110, !noalias !111
  %i.eq = fsub <2 x double> %wide.load439, %i.em
  store <2 x double> %i.eq, ptr %i.ep, align 8, !tbaa !17, !alias.scope !110, !noalias !111
  %index.next440 = add nuw i64 %index435, 2       ; 2 uses
  %i.er = icmp eq i64 %index.next440, %n.vec429
  br i1 %i.er, label %middle.block441, label %vector.body434, !llvm.loop !77

middle.block441:                                  ; preds = %vector.body434
  br i1 %cmp.n442, label %.backedge.us, label %scalar.ph406.preheader

scalar.ph406.preheader:                           ; preds = %vector.memcheck408, %.lr.ph240.split.us246, %middle.block441
  %indvars.iv294.ph = phi i64 [ 0, %vector.memcheck408 ], [ 0, %.lr.ph240.split.us246 ], [ %n.vec429, %middle.block441 ]
  br label %scalar.ph406

scalar.ph406:                                     ; preds = %scalar.ph406.preheader, %scalar.ph406
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %scalar.ph406 ], [ %indvars.iv294.ph, %scalar.ph406.preheader ] ; 5 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv294
  %i.et = load double, ptr %i.es, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv294
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !17
  %i.ew = fsub double %i.et, %i.ev
  %i.ex = fmul double %i.dt, %i.ew
  %i.ey = fdiv double %i.ex, %i.eg                ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv294 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !17
  %i.fb = fadd double %i.ey, %i.fa
  store double %i.fb, ptr %i.ez, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.0.i216.us, i64 %indvars.iv294 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !17
  %i.fe = fsub double %i.fd, %i.ey
  store double %i.fe, ptr %i.fc, align 8, !tbaa !17
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.backedge.us, label %scalar.ph406, !llvm.loop !78

.lr.ph240.split.us.us:                            ; preds = %.lr.ph240.split.us.us.preheader570, %.lr.ph240.split.us.us
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.lr.ph240.split.us.us ], [ %indvars.iv299.ph, %.lr.ph240.split.us.us.preheader570 ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv299
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv299
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !17
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = fmul double %i.dt, %i.fj
  %i.fl = fdiv double %i.fk, %i.du                ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv299 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !17
  %i.fo = fadd double %i.fl, %i.fn
  store double %i.fo, ptr %i.fm, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0.i216.us, i64 %indvars.iv299 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !17
  %i.fr = fsub double %i.fq, %i.fl
  store double %i.fr, ptr %i.fp, align 8, !tbaa !17
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.backedge.us, label %.lr.ph240.split.us.us, !llvm.loop !79

.backedge.us:                                     ; preds = %scalar.ph406, %.lr.ph240.split.us.us, %middle.block441, %middle.block, %get_or_assign_node_force.exit217.us
  %.0.in.be.us = getelementptr inbounds nuw i8, ptr %.0243.us, i64 32
  %.0.us = load ptr, ptr %.0.in.be.us, align 8, !tbaa !22 ; 2 uses
  %.not212.us = icmp eq ptr %.0.us, null
  br i1 %.not212.us, label %._crit_edge245, label %.lr.ph244.split.us, !llvm.loop !80

.lr.ph244.split:                                  ; preds = %.lr.ph244, %.backedge
  %.0243 = phi ptr [ %.0, %.backedge ], [ %.0241, %.lr.ph244 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0243, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !24 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0243, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !40
  %.not.i215 = icmp eq ptr %i.fv, null
  br i1 %.not.i215, label %bb.h, label %get_or_assign_node_force.exit217

bb.h:                                             ; preds = %.lr.ph244.split
  %i.fw = mul nsw i32 %i.ft, %i.d
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fx
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !40
  br label %get_or_assign_node_force.exit217

get_or_assign_node_force.exit217:                 ; preds = %.lr.ph244.split, %bb.h
  %i.fz = icmp slt i32 %i.ft, %i.cx
  %or.cond213 = and i1 %i.cn, %i.fz
  %i.ga = icmp eq i32 %i.cx, %i.ft
  %or.cond214 = or i1 %i.ga, %or.cond213
  br i1 %or.cond214, label %.backedge, label %bb.i

.backedge:                                        ; preds = %get_or_assign_node_force.exit217, %bb.i
  %.0.in.be = getelementptr inbounds nuw i8, ptr %.0243, i64 32
  %.0 = load ptr, ptr %.0.in.be, align 8, !tbaa !22 ; 2 uses
  %.not212 = icmp eq ptr %.0, null
  br i1 %.not212, label %._crit_edge245, label %.lr.ph244.split, !llvm.loop !80

bb.i:                                             ; preds = %get_or_assign_node_force.exit217
  %i.gb = load double, ptr %i.co, align 8, !tbaa !17
  %i.gc = fadd double %i.gb, 1.000000e+00
  store double %i.gc, ptr %i.co, align 8, !tbaa !17
  %i.gd = tail call double @distance_cropped(ptr noundef %2, i32 noundef %i.d, i32 noundef %i.cx, i32 noundef %i.ft) #16 ; 0 uses
  br label %.backedge

._crit_edge245:                                   ; preds = %.backedge, %.backedge.us, %get_or_assign_node_force.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %.0197249, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %i.gf, null
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !81

bb.j:                                             ; preds = %bb.d
  br i1 %i.cn, label %.preheader219, label %bb.n

.preheader219:                                    ; preds = %bb.j
  %.not256 = icmp eq i32 %i.d, 31
  br i1 %.not256, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %.preheader219
  %i.gg = shl nuw nsw i32 1, %i.d                 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gi = zext nneg i32 %i.gg to i64
  %wide.trip.count292 = zext nneg i32 %i.gg to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph238, %bb.m
  %indvars.iv285 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next286, %bb.m ] ; 3 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !31
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv285
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %indvars.iv287 = phi i64 [ %indvars.iv285, %bb.k ], [ %indvars.iv.next288, %bb.l ] ; 2 uses
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv287
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !37
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef %i.gl, ptr noundef %i.go, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7)
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next288, %i.gi
  br i1 %i.gp, label %bb.l, label %bb.m, !llvm.loop !82

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit, label %bb.k, !llvm.loop !83

bb.n:                                             ; preds = %bb.j
  %i.gq = fcmp ule double %i.o, %i.q
  %or.cond5 = or i1 %i.cl, %i.gq
  br i1 %or.cond5, label %bb.p, label %.preheader227

.preheader227:                                    ; preds = %bb.n
  %.not252 = icmp eq i32 %i.d, 31
  br i1 %.not252, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader227
  %i.gr = shl nuw nsw i32 1, %i.d
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %i.gr to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !31
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !37
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef %i.gv, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !84

end_hunk_0
