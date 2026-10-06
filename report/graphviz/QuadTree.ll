Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/QuadTree?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@QuadTree_repulsive_force_interact:bb.a
.lr.ph231:                                        ; preds = %.preheader225
  %i.gz = shl nuw nsw i32 1, %i.d
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.trip.count271 = zext nneg i32 %i.gz to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph231, %bb.q
  %indvars.iv267 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next268, %bb.q ] ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv267
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !37
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef %i.hd, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7)
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count271
  br i1 %exitcond272.not, label %.loopexit, label %bb.q, !llvm.loop !85

bb.r:                                             ; preds = %bb.p
  br i1 %i.cp, label %bb.t, label %.preheader223

.preheader223:                                    ; preds = %bb.r
  br i1 %.not255, label %.loopexit, label %.lr.ph233

.lr.ph233:                                        ; preds = %.preheader223
  %i.he = shl nuw nsw i32 1, %i.d
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count277 = zext nneg i32 %i.he to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph233, %bb.s
  %indvars.iv273 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next274, %bb.s ] ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !31
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv273
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !37
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef %i.hi, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7)
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count277
  br i1 %exitcond278.not, label %.loopexit, label %bb.s, !llvm.loop !86

bb.t:                                             ; preds = %bb.r
  %or.cond335 = or i1 %i.cq, %.not255
  br i1 %or.cond335, label %.loopexit, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.t
  %i.hj = shl nuw nsw i32 1, %i.d
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.trip.count283 = zext nneg i32 %i.hj to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph235, %bb.u
  %indvars.iv279 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next280, %bb.u ] ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !31
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv279
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !37
  tail call fastcc void @QuadTree_repulsive_force_interact(ptr noundef %i.hn, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7)
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count283
  br i1 %exitcond284.not, label %.loopexit, label %bb.u, !llvm.loop !87

.loopexit:                                        ; preds = %bb.o, %bb.q, %bb.s, %bb.u, %bb.m, %._crit_edge245, %scalar.ph432, %.lr.ph251.split.us, %middle.block467, %middle.block529, %.preheader227, %.preheader225, %.preheader223, %.preheader219, %bb.c, %bb.t, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @QuadTree_repulsive_force_accumulate(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %i.g = tail call fastcc ptr @get_or_alloc_force_qt(ptr noundef %0, i32 noundef %i.d) ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !17
  %i.j = fadd double %i.i, 1.000000e+00
  store double %i.j, ptr %i.h, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %bb.a
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.preheader52.split.us.preheader, label %.preheader52.split

.preheader52.split.us.preheader:                  ; preds = %.preheader52
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %i.l = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep93 = getelementptr i8, ptr %i.g, i64 %i.l
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %.preheader52.split.us

.preheader52.split.us:                            ; preds = %.preheader52.split.us.preheader, %._crit_edge.us
  %.04755.us = phi ptr [ %i.au, %._crit_edge.us ], [ %i.b, %.preheader52.split.us.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04755.us, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %.not.i.us = icmp eq ptr %i.o, null
  br i1 %.not.i.us, label %bb.b, label %get_or_assign_node_force.exit.us

bb.b:                                             ; preds = %.preheader52.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.04755.us, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24
  %i.r = mul nsw i32 %i.q, %i.d
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !40
  br label %get_or_assign_node_force.exit.us

get_or_assign_node_force.exit.us:                 ; preds = %bb.b, %.preheader52.split.us
  %.0.i.us = phi ptr [ %i.o, %.preheader52.split.us ], [ %i.t, %bb.b ] ; 6 uses
  %i.u = load double, ptr %.04755.us, align 8, !tbaa !30
  %i.v = fdiv double %i.u, %i.f                   ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %get_or_assign_node_force.exit.us
  %scevgep = getelementptr i8, ptr %.0.i.us, i64 %i.l
  %bound0 = icmp ult ptr %.0.i.us, %scevgep93
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.v, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x double>, ptr %i.w, align 8, !tbaa !17, !alias.scope !124
  %wide.load94 = load <2 x double>, ptr %i.x, align 8, !tbaa !17, !alias.scope !124
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load95 = load <2 x double>, ptr %i.y, align 8, !tbaa !17, !alias.scope !125, !noalias !124
  %wide.load96 = load <2 x double>, ptr %i.z, align 8, !tbaa !17, !alias.scope !125, !noalias !124
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load95)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load94, <2 x double> %wide.load96)
  store <2 x double> %i.aa, ptr %i.y, align 8, !tbaa !17, !alias.scope !125, !noalias !124
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !17, !alias.scope !125, !noalias !124
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %get_or_assign_node_force.exit.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %get_or_assign_node_force.exit.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.ph
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %indvars.iv.ph ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !17
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ae, double %i.ag)
  store double %i.ah, ptr %i.af, align 8, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ai, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %indvars.iv ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ak, double %i.am)
  store double %i.an, ptr %i.al, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %indvars.iv.next ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !17
  %i.as = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ap, double %i.ar)
  store double %i.as, ptr %i.aq, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !116

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = getelementptr inbounds nuw i8, ptr %.04755.us, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41 ; 2 uses
  %.not51.us = icmp eq ptr %i.au, null
  br i1 %.not51.us, label %.loopexit, label %.preheader52.split.us, !llvm.loop !117

.preheader:                                       ; preds = %bb.a
  %.not60 = icmp eq i32 %i.d, 31
  br i1 %.not60, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader
  %i.av = shl nuw i32 1, %i.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = icmp sgt i32 %i.d, 0
  %smax78 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %wide.trip.count79 = zext nneg i32 %smax78 to i64 ; 2 uses
  br i1 %i.ax, label %.lr.ph58.split.us.preheader, label %.lr.ph58.split

.lr.ph58.split.us.preheader:                      ; preds = %.lr.ph58
  %wide.trip.count73 = zext nneg i32 %i.d to i64  ; 6 uses
  %i.ay = shl nuw nsw i64 %wide.trip.count73, 3   ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.g, i64 %i.ay
  %min.iters.check104 = icmp ult i32 %i.d, 4
  %n.vec106 = and i64 %wide.trip.count73, 2147483644 ; 3 uses
  %cmp.n117 = icmp eq i64 %n.vec106, %wide.trip.count73
  %xtraiter122 = and i64 %wide.trip.count73, 1
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %i.az = add nsw i64 %wide.trip.count73, -1
  br label %.lr.ph58.split.us

.lr.ph58.split.us:                                ; preds = %.lr.ph58.split.us.preheader, %bb.c
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58.split.us.preheader ], [ %indvars.iv.next76, %bb.c ] ; 2 uses
  %3 = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv75
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 4 uses
  %.not50.us = icmp eq ptr %i.bb, null
  br i1 %.not50.us, label %bb.c, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph58.split.us
  %i.bc = tail call fastcc ptr @get_or_alloc_force_qt(ptr noundef nonnull %i.bb, i32 noundef %i.d) ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !35
  %i.bf = fdiv double %i.be, %i.f                 ; 4 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph.us
  %scevgep98 = getelementptr i8, ptr %i.bc, i64 %i.ay
  %bound0100 = icmp ult ptr %i.bc, %scevgep99
  %bound1101 = icmp ult ptr %i.g, %scevgep98
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck97
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next115, %vector.body109 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index110 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load111 = load <2 x double>, ptr %i.bg, align 8, !tbaa !17, !alias.scope !126
  %wide.load112 = load <2 x double>, ptr %i.bh, align 8, !tbaa !17, !alias.scope !126
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index110 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load113 = load <2 x double>, ptr %i.bi, align 8, !tbaa !17, !alias.scope !127, !noalias !126
  %wide.load114 = load <2 x double>, ptr %i.bj, align 8, !tbaa !17, !alias.scope !127, !noalias !126
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat108, <2 x double> %wide.load111, <2 x double> %wide.load113)
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat108, <2 x double> %wide.load112, <2 x double> %wide.load114)
  store <2 x double> %i.bk, ptr %i.bi, align 8, !tbaa !17, !alias.scope !127, !noalias !126
  store <2 x double> %i.bl, ptr %i.bj, align 8, !tbaa !17, !alias.scope !127, !noalias !126
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next115, %n.vec106
  br i1 %i.bm, label %middle.block116, label %vector.body109, !llvm.loop !121

middle.block116:                                  ; preds = %vector.body109
  br i1 %cmp.n117, label %._crit_edge.us59, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %vector.memcheck97, %.lr.ph.us, %middle.block116
  %indvars.iv70.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %.lr.ph.us ], [ %n.vec106, %middle.block116 ] ; 5 uses
  br i1 %lcmp.mod123.not, label %scalar.ph103.prol.loopexit, label %scalar.ph103.prol

scalar.ph103.prol:                                ; preds = %scalar.ph103.preheader
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv70.ph ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !17
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bo, double %i.bq)
  store double %i.br, ptr %i.bp, align 8, !tbaa !17
  %indvars.iv.next71.prol = or disjoint i64 %indvars.iv70.ph, 1
  br label %scalar.ph103.prol.loopexit

scalar.ph103.prol.loopexit:                       ; preds = %scalar.ph103.prol, %scalar.ph103.preheader
  %indvars.iv70.unr = phi i64 [ %indvars.iv70.ph, %scalar.ph103.preheader ], [ %indvars.iv.next71.prol, %scalar.ph103.prol ]
  %i.bs = icmp eq i64 %indvars.iv70.ph, %i.az
  br i1 %i.bs, label %._crit_edge.us59, label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.prol.loopexit, %scalar.ph103
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.1, %scalar.ph103 ], [ %indvars.iv70.unr, %scalar.ph103.prol.loopexit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv70 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !17
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bu, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !17
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next71
  %i.bz = load double, ptr %i.by, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next71 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !17
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bz, double %i.cb)
  store double %i.cc, ptr %i.ca, align 8, !tbaa !17
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %indvars.iv.next71.1, %wide.trip.count73
  br i1 %exitcond74.not.1, label %._crit_edge.us59, label %scalar.ph103, !llvm.loop !122

bb.c:                                             ; preds = %._crit_edge.us59, %.lr.ph58.split.us
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count79
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph58.split.us, !llvm.loop !123

._crit_edge.us59:                                 ; preds = %scalar.ph103.prol.loopexit, %scalar.ph103, %middle.block116
  tail call fastcc void @QuadTree_repulsive_force_accumulate(ptr noundef nonnull %i.bb, ptr noundef %1, ptr noundef %2)
  br label %bb.c

.preheader52.split:                               ; preds = %.preheader52, %get_or_assign_node_force.exit
  %.04755 = phi ptr [ %i.cl, %get_or_assign_node_force.exit ], [ %i.b, %.preheader52 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.04755, i64 24 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.d, label %get_or_assign_node_force.exit

bb.d:                                             ; preds = %.preheader52.split
  %i.cf = getelementptr inbounds nuw i8, ptr %.04755, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !24
  %i.ch = mul nsw i32 %i.cg, %i.d
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ci
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !40
  br label %get_or_assign_node_force.exit

get_or_assign_node_force.exit:                    ; preds = %.preheader52.split, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %.04755, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41 ; 2 uses
  %.not51 = icmp eq ptr %i.cl, null
  br i1 %.not51, label %.loopexit, label %.preheader52.split, !llvm.loop !117

.lr.ph58.split:                                   ; preds = %.lr.ph58, %bb.f
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.f ], [ 0, %.lr.ph58 ] ; 2 uses
  %4 = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37 ; 3 uses
  %.not50 = icmp eq ptr %i.cn, null
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph58.split
  %i.co = tail call fastcc ptr @get_or_alloc_force_qt(ptr noundef nonnull %i.cn, i32 noundef %i.d) ; 0 uses
  tail call fastcc void @QuadTree_repulsive_force_accumulate(ptr noundef nonnull %i.cn, ptr noundef %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph58.split, %bb.e
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count79
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph58.split, !llvm.loop !123

.loopexit:                                        ; preds = %get_or_assign_node_force.exit, %._crit_edge.us, %bb.f, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define noalias ptr @QuadTree_new_from_point_list(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 8 uses
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %gv_calloc.exit100.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %0, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, i64 noundef %i.a, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #17 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.g = shl nuw nsw i64 %i.a, 3
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.5, i64 noundef %i.g) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit:                                   ; preds = %bb.d
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #17 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %gv_calloc.exit95

bb.f:                                             ; preds = %gv_calloc.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.l = shl nuw nsw i64 %i.a, 3
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.5, i64 noundef %i.l) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit95:                                 ; preds = %gv_calloc.exit
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #17 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.preheader104

bb.g:                                             ; preds = %gv_calloc.exit95
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.q = shl nuw nsw i64 %i.a, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.5, i64 noundef %i.q) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

gv_calloc.exit100.thread:                         ; preds = %bb.a
  %i.s = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #17 ; 4 uses
  %i.t = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #17 ; 4 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #17 ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.t, null
  %or.cond148 = and i1 %i.w, %i.v
  %i.x = icmp ne ptr %i.u, null
  %or.cond3149 = and i1 %or.cond148, %i.x
  br i1 %or.cond3149, label %._crit_edge113.split.thread155, label %._crit_edge120

._crit_edge113.split.thread155:                   ; preds = %gv_calloc.exit100.thread
  %i.y = load double, ptr %i.t, align 8, !tbaa !17
  %i.z = load double, ptr %i.s, align 8, !tbaa !17
  %i.aa = fsub double %i.y, %i.z
  br label %._crit_edge118

.preheader104:                                    ; preds = %gv_calloc.exit95
  %i.ab = zext nneg i32 %0 to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 8 %3, i64 %i.ac, i1 false), !tbaa !17
  %i.ad = zext nneg i32 %0 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %3, i64 %i.ae, i1 false), !tbaa !17
  %i.af = icmp sgt i32 %1, 1
  br i1 %i.af, label %.preheader.preheader, label %.lr.ph117.preheader

.preheader.preheader:                             ; preds = %.preheader104
  %i.ag = zext nneg i32 %0 to i64                 ; 4 uses
  %wide.trip.count128 = zext nneg i32 %1 to i64
  %min.iters.check = icmp eq i32 %0, 1
  %n.vec = and i64 %i.ag, 2147483646              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 2 uses
  %i.ah = mul nuw nsw i64 %indvars.iv125, %i.ag
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load158 = load <2 x double>, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.ak = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %wide.load, <2 x double> %wide.load158)
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %wide.load159 = load <2 x double>, ptr %i.al, align 8, !tbaa !17
  %i.am = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load159, <2 x double> %wide.load158)
  store <2 x double> %i.am, ptr %i.al, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aq = load double, ptr %gep, align 8, !tbaa !17 ; 2 uses
  %i.ar = tail call nsz double @llvm.minnum.f64(double %i.ap, double %i.aq)
  store double %i.ar, ptr %i.ao, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !17
  %i.au = tail call nsz double @llvm.maxnum.f64(double %i.at, double %i.aq)
  store double %i.au, ptr %i.as, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.lr.ph117.preheader, label %.preheader, !llvm.loop !130

.lr.ph117.preheader:                              ; preds = %._crit_edge, %.preheader104
  %i.av = load double, ptr %i.i, align 8, !tbaa !17
  %i.aw = load double, ptr %i.d, align 8, !tbaa !17
  %i.ax = fsub double %i.av, %i.aw
  %wide.trip.count133 = zext nneg i32 %0 to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv130 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next131, %.lr.ph117 ] ; 4 uses
  %.084114 = phi double [ %i.ax, %.lr.ph117.preheader ], [ %i.bg, %.lr.ph117 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv130
  %i.az = load double, ptr %i.ay, align 8, !tbaa !17 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv130
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bc = fadd double %i.az, %i.bb
  %i.bd = fmul double %i.bc, 5.000000e-01
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv130
  store double %i.bd, ptr %i.be, align 8, !tbaa !17
  %i.bf = fsub nsz double %i.bb, %i.az
  %i.bg = tail call nsz double @llvm.maxnum.f64(double %.084114, double %i.bf) ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !131

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge113.split.thread155
  %i.bh = phi ptr [ %i.u, %._crit_edge113.split.thread155 ], [ %i.n, %.lr.ph117 ] ; 3 uses
  %i.bi = phi ptr [ %i.s, %._crit_edge113.split.thread155 ], [ %i.d, %.lr.ph117 ] ; 2 uses
  %i.bj = phi ptr [ %i.t, %._crit_edge113.split.thread155 ], [ %i.i, %.lr.ph117 ] ; 2 uses
  %.084.lcssa = phi double [ %i.aa, %._crit_edge113.split.thread155 ], [ %i.bg, %.lr.ph117 ]
  %i.bk = tail call nsz double @llvm.maxnum.f64(double %.084.lcssa, double 1.000000e-05)
  %i.bl = fmul nnan double %i.bk, 5.200000e-01
  %i.bm = tail call ptr @QuadTree_new(i32 noundef %0, ptr noundef nonnull %i.bh, double noundef %i.bl, i32 noundef %2) ; 3 uses
  %i.bn = icmp sgt i32 %1, 0
  br i1 %i.bn, label %QuadTree_add.exit.preheader, label %._crit_edge120

QuadTree_add.exit.preheader:                      ; preds = %._crit_edge118
  %wide.trip.count138 = zext nneg i32 %1 to i64
  br label %QuadTree_add.exit

QuadTree_add.exit:                                ; preds = %QuadTree_add.exit.preheader, %QuadTree_add.exit
  %indvars.iv135 = phi i64 [ 0, %QuadTree_add.exit.preheader ], [ %indvars.iv.next136, %QuadTree_add.exit ] ; 3 uses
  %i.bo = mul nsw i64 %indvars.iv135, %i.a
  %i.bp = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.br = tail call fastcc ptr @QuadTree_add_internal(ptr noundef nonnull %i.bm, ptr noundef readonly %i.bp, double noundef 1.000000e+00, i32 noundef %i.bq, i32 noundef 0) ; 0 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge120, label %QuadTree_add.exit, !llvm.loop !132

._crit_edge120:                                   ; preds = %QuadTree_add.exit, %._crit_edge118, %gv_calloc.exit100.thread
  %.sink157 = phi ptr [ %i.s, %gv_calloc.exit100.thread ], [ %i.bi, %._crit_edge118 ], [ %i.bi, %QuadTree_add.exit ]
  %.sink156 = phi ptr [ %i.t, %gv_calloc.exit100.thread ], [ %i.bj, %._crit_edge118 ], [ %i.bj, %QuadTree_add.exit ]
  %.sink = phi ptr [ %i.u, %gv_calloc.exit100.thread ], [ %i.bh, %._crit_edge118 ], [ %i.bh, %QuadTree_add.exit ]
  %.085 = phi ptr [ null, %gv_calloc.exit100.thread ], [ %i.bm, %._crit_edge118 ], [ %i.bm, %QuadTree_add.exit ]
end_hunk_0
