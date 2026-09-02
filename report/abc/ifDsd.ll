Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDsd?download=true
inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@If_DsdManOperation:bb.a

bb.y:                                             ; preds = %bb.x
  %i.iw = call i32 @If_DsdManPushInv_rec(ptr noundef nonnull %0, i32 noundef %i.il, ptr noundef %i.it) ; 0 uses
  %i.ix = and i32 %i.ih, -2
  br label %If_DsdManPushInv.exit273

If_DsdManPushInv.exit273:                         ; preds = %bb.w, %bb.x, %bb.y
  %.0.i272 = phi i32 [ %i.ix, %bb.y ], [ %i.il, %bb.x ], [ %i.il, %bb.w ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.0.i272, ptr %i.iy, align 4, !tbaa !55
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = lshr i32 %i.ja, 3                       ; 2 uses
  %i.jc = and i32 %i.jb, 31                       ; 2 uses
  %.not353 = icmp eq i32 %i.jc, 0
  br i1 %.not353, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %If_DsdManPushInv.exit273
  %i.jd = sext i32 %.7291 to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.jd
  %i.je = and i32 %i.jb, 31
  %i.jf = zext nneg i32 %i.je to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %i.it, i64 %i.jf, i1 false), !tbaa !113
  %i.jg = add i32 %.7291, %i.jc
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %If_DsdManPushInv.exit273
  %.8.lcssa = phi i32 [ %.7291, %If_DsdManPushInv.exit273 ], [ %i.jg, %.lr.ph.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count374
  br i1 %exitcond.not, label %.preheader287, label %bb.w, !llvm.loop !277

._crit_edge297:                                   ; preds = %bb.u, %.lr.ph296.preheader, %.preheader287
  %.4226.lcssa496 = phi i32 [ %3, %.preheader287 ], [ %3, %.lr.ph296.preheader ], [ 0, %bb.u ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !34 ; 3 uses
  %i.jj = icmp eq i32 %3, %i.ji
  br i1 %i.jj, label %Abc_TtStretch6.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge297
  %i.jk = icmp slt i32 %3, 7                      ; 2 uses
  %i.jl = add nsw i32 %3, -6                      ; 2 uses
  %i.jm = shl nuw i32 1, %i.jl
  %i.jn = select i1 %i.jk, i32 1, i32 %i.jm       ; 5 uses
  %i.jo = icmp slt i32 %i.ji, 7
  %i.jp = add nsw i32 %i.ji, -6
  %i.jq = shl nuw i32 1, %i.jp
  %i.jr = select i1 %i.jo, i32 1, i32 %i.jq       ; 3 uses
  %i.js = icmp ne i32 %i.jn, %i.jr
  %i.jt = icmp sgt i32 %i.jr, 0
  %or.cond.i = and i1 %i.js, %i.jt
  %i.ju = icmp sgt i32 %i.jn, 0
  %or.cond25.i = and i1 %i.ju, %or.cond.i
  br i1 %or.cond25.i, label %.preheader.preheader.i, label %Abc_TtStretch6.exit

.preheader.preheader.i:                           ; preds = %bb.z
  %i.jv = zext nneg i32 %i.jn to i64              ; 4 uses
  %min.iters.check = icmp ult i32 %i.jn, 4
  %i.jw = select i1 %i.jk, i32 0, i32 %i.jl
  %i.jx = zext i32 %i.jw to i64
  %i.jy = add nuw nsw i64 %i.jx, 3
  %n.vec = and i64 %i.jv, 2147483644
  %xtraiter528 = and i64 %i.jv, 3                 ; 3 uses
  %i.jz = icmp ult i32 %i.jn, 4
  %unroll_iter531 = and i64 %i.jv, 2147483644
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  %lcmp.mod530 = icmp ne i64 %xtraiter528, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i277, %.preheader.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i277 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i277 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv27.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i
  br i1 %i.jz, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.i
  %i.ka = shl i64 %indvar, %i.jy
  %i.kb = add i64 %i.ka, -1
  %diff.check = icmp ult i64 %i.kb, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load = load <2 x i64>, ptr %i.kc, align 8, !tbaa !63
  %wide.load506 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !63
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store <2 x i64> %wide.load, ptr %i.ke, align 8, !tbaa !63
  store <2 x i64> %wide.load506, ptr %i.kf, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %._crit_edge.i277, label %vector.body, !llvm.loop !278

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i274 = phi i64 [ %indvars.iv.next.i275.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter532 = phi i64 [ %niter532.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i274
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !63
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i274
  store i64 %i.ki, ptr %gep.i, align 8, !tbaa !63
  %indvars.iv.next.i275 = or disjoint i64 %indvars.iv.i274, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i275
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !63
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i275
  store i64 %i.kk, ptr %gep.i.1, align 8, !tbaa !63
  %indvars.iv.next.i275.1 = or disjoint i64 %indvars.iv.i274, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i275.1
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !63
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i275.1
  store i64 %i.km, ptr %gep.i.2, align 8, !tbaa !63
  %indvars.iv.next.i275.2 = or disjoint i64 %indvars.iv.i274, 3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i275.2
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !63
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i275.2
  store i64 %i.ko, ptr %gep.i.3, align 8, !tbaa !63
  %indvars.iv.next.i275.3 = add nuw nsw i64 %indvars.iv.i274, 4 ; 2 uses
  %niter532.next.3 = add i64 %niter532, 4         ; 2 uses
  %niter532.ncmp.3 = icmp eq i64 %niter532.next.3, %unroll_iter531
  br i1 %niter532.ncmp.3, label %._crit_edge.i277.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !279

._crit_edge.i277.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod529.not, label %._crit_edge.i277, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i277.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i274.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i275.3, %._crit_edge.i277.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod530)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i274.epil = phi i64 [ %indvars.iv.next.i275.epil, %scalar.ph.epil ], [ %indvars.iv.i274.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i274.epil
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !63
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i274.epil
  store i64 %i.kq, ptr %gep.i.epil, align 8, !tbaa !63
  %indvars.iv.next.i275.epil = add nuw nsw i64 %indvars.iv.i274.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter528
  br i1 %epil.iter.cmp.not, label %._crit_edge.i277, label %scalar.ph.epil, !llvm.loop !280

._crit_edge.i277:                                 ; preds = %vector.body, %._crit_edge.i277.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %i.jv ; 2 uses
  %i.kr = trunc nuw i64 %indvars.iv.next28.i to i32
  %i.ks = icmp sgt i32 %i.jr, %i.kr
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ks, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !9

Abc_TtStretch6.exit:                              ; preds = %._crit_edge.i277, %._crit_edge297, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  br label %.loopexit

.loopexit:                                        ; preds = %If_DsdManPushInv.exit264, %.preheader280, %.lr.ph352.preheader, %bb.q, %.preheader, %bb.j, %Abc_TtStretch6.exit
  %.5227 = phi i32 [ %.2224, %.preheader ], [ 0, %bb.j ], [ %.4226.lcssa496, %Abc_TtStretch6.exit ], [ %.2224, %.lr.ph352.preheader ], [ 0, %bb.q ], [ 0, %.preheader280 ], [ %3, %If_DsdManPushInv.exit264 ]
  %.3 = phi i32 [ %.1206, %.preheader ], [ 0, %bb.j ], [ %i.gn, %Abc_TtStretch6.exit ], [ %.1206, %.lr.ph352.preheader ], [ %.2207, %bb.q ], [ 0, %.preheader280 ], [ %.2207, %If_DsdManPushInv.exit264 ]
  %i.kt = call i32 @If_DsdObjFindOrAdd(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, i32 noundef %.5227, ptr noundef %5)
  %i.ku = shl nsw i32 %i.kt, 1
  %i.kv = add nuw nsw i32 %i.ku, %.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %i.kv
}

declare i32 @Abc_TtCanonicize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @If_DsdManAddDsd_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 4 uses
  %i.b = alloca [64 x i64], align 16              ; 7 uses
  %i.c = alloca [12 x i32], align 16              ; 4 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !55     ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !116    ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !113   ; 2 uses
  %i.i = icmp eq i8 %i.h, 33
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !116
  %.pre = load i8, ptr %i.j, align 1, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 8 uses
  %.pn8088 = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 6 uses
  %.073 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %i.l = add i8 %i.k, -97
  %or.cond = icmp ult i8 %i.l, 26
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %narrow = add nuw i8 %i.k, 31
  %7 = zext i8 %narrow to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = or disjoint i32 %8, %.073
  %10 = trunc i32 %9 to i8
  %i.m = add nsw i32 %i.d, 1
  store i32 %i.m, ptr %6, align 4, !tbaa !55
  store i8 %10, ptr %i.f, align 1, !tbaa !113
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  switch i8 %i.k, label %bb.k [
    i8 40, label %bb.f
    i8 91, label %bb.f
    i8 60, label %bb.f
    i8 123, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.n = ptrtoint ptr %.pn8088 to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s ; 2 uses
  switch i8 %i.k, label %.fold.split [
    i8 40, label %bb.j
    i8 91, label %bb.g
    i8 60, label %bb.h
    i8 123, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  br label %bb.j

.fold.split:                                      ; preds = %bb.f
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.fold.split, %bb.g, %bb.i, %bb.h
  %.072 = phi i32 [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 0, %.fold.split ]
  %storemerge7989 = getelementptr inbounds nuw i8, ptr %.pn8088, i64 1 ; 2 uses
  store ptr %storemerge7989, ptr %1, align 8, !tbaa !116
  %i.u = icmp ult ptr %storemerge7989, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.v = tail call i32 @If_DsdManAddDsd_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !55
  %.pn80 = load ptr, ptr %1, align 8, !tbaa !116
  %storemerge79 = getelementptr inbounds nuw i8, ptr %.pn80, i64 1 ; 2 uses
  store ptr %storemerge79, ptr %1, align 8, !tbaa !116
  %i.x = icmp ult ptr %storemerge79, %i.t
  br i1 %i.x, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !281

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.071.lcssa = phi i32 [ 0, %bb.j ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = call i32 @If_DsdManOperation(ptr noundef %3, i32 noundef %.072, ptr noundef nonnull %i.a, i32 noundef %.071.lcssa, ptr noundef %i.f, ptr noundef %4)
  %i.aa = xor i32 %i.z, %.073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.u

bb.k:                                             ; preds = %bb.e
  %i.ab = add i8 %i.k, -65
  %or.cond81 = icmp ult i8 %i.ab, 6
  %i.ac = add i8 %i.k, -48
  %or.cond82 = icmp ult i8 %i.ac, 10
  %or.cond87 = or i1 %or.cond81, %or.cond82
  br i1 %or.cond87, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.ad = icmp eq i8 %i.k, 48
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn8088, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !113
  %i.ag = icmp eq i8 %i.af, 120
  %spec.select.idx.i = select i1 %i.ag, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.pn8088, i64 %spec.select.idx.i ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !113
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = phi i8 [ %i.k, %bb.l ], [ %.pre.i, %bb.m ] ; 3 uses
  %.038.i = phi ptr [ %.pn8088, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %i.ai = add i8 %i.ah, -58
  %or.cond.i46.i = icmp ult i8 %i.ai, -10
  %i.aj = and i8 %i.ah, -33
  %i.ak = add i8 %i.aj, -71
  %i.al = icmp ult i8 %i.ak, -6
  %narrow.i.not47.i = and i1 %or.cond.i46.i, %i.al
  br i1 %narrow.i.not47.i, label %.sink.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.n ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.038.i, i64 %indvars.iv.next.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !113 ; 2 uses
  %i.ao = add i8 %i.an, -58
  %or.cond.i.i = icmp ult i8 %i.ao, -10
  %i.ap = and i8 %i.an, -33
  %i.aq = add i8 %i.ap, -71
  %i.ar = icmp ult i8 %i.aq, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.ar
  br i1 %narrow.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !282

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 3 uses
  switch i32 %indvars.i, label %.thread71.i [
    i32 1, label %bb.o
    i32 0, label %.sink.split.i
  ]

bb.o:                                             ; preds = %._crit_edge.i
  %switch.tableidx = add i8 %i.ah, -48            ; 4 uses
  %i.as = icmp ult i8 %switch.tableidx, 23
  br i1 %i.as, label %switch.hole_check, label %.lr.ph53.preheader.i

.thread71.i:                                      ; preds = %._crit_edge.i
  %i.at = add i32 %indvars.i, -1
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 false) ; 2 uses
  %i.av = sub nuw nsw i32 34, %i.au               ; 2 uses
  %i.aw = icmp ult i32 %indvars.i, 17
  br i1 %i.aw, label %.lr.ph53.preheader.i, label %.thread.i

.thread.i:                                        ; preds = %.thread71.i
  %i.ax = sub nsw i32 28, %i.au
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  br label %.lr.ph53.preheader.i

.lr.ph53.preheader.i:                             ; preds = %switch.hole_check, %bb.o, %.thread.i, %.thread71.i
  %.ph = phi i64 [ 8, %.thread71.i ], [ 8, %bb.o ], [ %i.ba, %.thread.i ], [ 8, %switch.hole_check ]
  %.ph83 = phi i32 [ %i.av, %.thread71.i ], [ 2, %bb.o ], [ %i.av, %.thread.i ], [ 2, %switch.hole_check ]
  %.ph83.fr = freeze i32 %.ph83                   ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %.ph, i1 false), !tbaa !63
  %sext = shl i64 %indvars.iv.next.i, 32
  %i.bb = ashr exact i64 %sext, 32
  %wide.trip.count.i = and i64 %indvars.iv.next.i, 4294967295
  %i.bc = getelementptr i8, ptr %.038.i, i64 %i.bb
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph53.preheader.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph53.preheader.i ], [ %indvars.iv.next63.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.bd = xor i64 %indvars.iv62.i, -1
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !113 ; 4 uses
  %i.bg = sext i8 %i.bf to i64                    ; 3 uses
  %i.bh = add i8 %i.bf, -48
  %or.cond.i42.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond.i42.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph53.i
  %i.bi = add nsw i64 %i.bg, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.q:                                             ; preds = %.lr.ph53.i
  %i.bj = add i8 %i.bf, -65
  %or.cond5.i.i = icmp ult i8 %i.bj, 6
  br i1 %or.cond5.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = add nsw i64 %i.bg, -55
  br label %Abc_TtReadHexDigit.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bl = add i8 %i.bf, -97
  %or.cond8.i.i = icmp ult i8 %i.bl, 6
  %i.bm = add nsw i64 %i.bg, -87
  %spec.select.i.i = select i1 %or.cond8.i.i, i64 %i.bm, i64 -1
  br label %Abc_TtReadHexDigit.exit.i

Abc_TtReadHexDigit.exit.i:                        ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i = phi i64 [ %i.bi, %bb.p ], [ %i.bk, %bb.r ], [ %spec.select.i.i, %bb.s ]
  %i.bn = shl i64 %indvars.iv62.i, 2
  %i.bo = and i64 %i.bn, 60
  %i.bp = shl i64 %.0.i.i, %i.bo
  %i.bq = lshr i64 %indvars.iv62.i, 4
  %i.br = and i64 %i.bq, 268435455
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !63
  %i.bu = or i64 %i.bt, %i.bp
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !63
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge54.i, label %.lr.ph53.i, !llvm.loop !283

._crit_edge54.i:                                  ; preds = %Abc_TtReadHexDigit.exit.i
  %i.bv = icmp samesign ult i32 %.ph83.fr, 6
  br i1 %i.bv, label %bb.t, label %Abc_TtReadHex.exit
end_hunk_0
