Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswRarity?download=true
inline.NumInlined: 245
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ssw_RarManInitialize:bb.a
scalar.ph112.prol:                                ; preds = %scalar.ph112.preheader, %scalar.ph112.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %scalar.ph112.prol ], [ %indvars.iv93.ph, %scalar.ph112.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph112.prol ], [ 0, %scalar.ph112.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv93.prol
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv93.prol
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !50
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter125
  br i1 %prol.iter.cmp.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol, !llvm.loop !136

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %scalar.ph112.preheader ], [ %indvars.iv.next94.prol, %scalar.ph112.prol ]
  %i.cf = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge83, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %scalar.ph112 ], [ %indvars.iv93.unr, %scalar.ph112.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv93
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv93
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !50
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next94
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next94
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !50
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next94.1
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next94.1
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !50
  %indvars.iv.next94.2 = add nuw nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next94.2
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next94.2
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !50
  %indvars.iv.next94.3 = add nuw nsw i64 %indvars.iv93, 4 ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %indvars.iv.next94.3, %wide.trip.count96
  br i1 %exitcond97.not.3, label %._crit_edge83, label %scalar.ph112, !llvm.loop !137

._crit_edge83:                                    ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112, %middle.block121
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.critedge, label %.critedge2, !llvm.loop !138

.critedge:                                        ; preds = %._crit_edge78, %._crit_edge83, %.preheader72, %.lr.ph80, %.preheader, %.critedge2.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Ssw_RarManPoIsConst0(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4, !tbaa !49
  %.val9 = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.d = mul nsw i32 %.val9.val, %.val
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val10, i64 %i.e
  %i.g = icmp sgt i32 %.val9.val, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val9.val to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Ssw_RarManObjIsConst(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4, !tbaa !49
  %.val11 = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %.val11, i64 4
  %.val11.val = load i32, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.d = mul nsw i32 %.val11.val, %.val
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val12, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = shl i64 %i.h, 60
  %sext = ashr i64 %i.i, 63
  %i.j = icmp sgt i32 %.val11.val, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val11.val to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50
  %.not = icmp eq i64 %i.l, %sext
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.010 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Ssw_RarManObjsAreEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %.val17 = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr i8, ptr %.val17, i64 4
  %.val17.val = load i32, ptr %i.d, align 4, !tbaa !20 ; 4 uses
  %i.e = mul nsw i32 %.val17.val, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val18, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = mul nsw i32 %i.i, %.val17.val
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val18, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = xor i64 %i.p, %i.n
  %i.r = shl i64 %i.q, 60
  %sext = ashr i64 %i.r, 63
  %i.s = icmp sgt i32 %.val17.val, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val17.val to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = xor i64 %i.w, %i.u
  %.not = icmp eq i64 %i.x, %sext
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.015 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ssw_RarManObjHashWord(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %.val = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !20 ; 3 uses
  %i.e = mul nsw i32 %.val.val, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val11, i64 %i.f ; 6 uses
  %i.h = icmp sgt i32 %.val.val, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = shl nuw i32 %.val.val, 1                 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %min.iters.check = icmp slt i32 %i.i, 8
  %i.j = add nsw i32 %smax, -129
  %i.k = icmp ult i32 %i.j, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %or.cond, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !53
  %wide.load16 = load <4 x i32>, ptr %i.m, align 4, !tbaa !53
  %i.n = and i64 %index, 120
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load17 = load <4 x i32>, ptr %i.o, align 16, !tbaa !53
  %wide.load18 = load <4 x i32>, ptr %i.p, align 16, !tbaa !53
  %i.q = mul <4 x i32> %wide.load17, %wide.load
  %i.r = mul <4 x i32> %wide.load18, %wide.load16
  %i.s = xor <4 x i32> %i.q, %vec.phi             ; 2 uses
  %i.t = xor <4 x i32> %i.r, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.01012.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 3 uses
  %.01012.prol = phi i32 [ %i.ac, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader20 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !53
  %i.y = and i64 %indvars.iv.prol, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !53
  %i.ab = mul i32 %i.aa, %i.x
  %i.ac = xor i32 %i.ab, %.01012.prol             ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !141

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader20 ], [ %i.ac, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader20 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.01012.unr = phi i32 [ %.01012.ph, %.lr.ph.preheader20 ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.01012 = phi i32 [ %i.bg, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %i.ah = and i64 %indvars.iv, 127
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.ak = mul i32 %i.aj, %i.ag
  %i.al = xor i32 %i.ak, %.01012
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53
  %i.ao = and i64 %indvars.iv.next, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.ar = mul i32 %i.aq, %i.an
  %i.as = xor i32 %i.ar, %i.al
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !53
  %i.av = and i64 %indvars.iv.next.1, 127
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = xor i32 %i.ay, %i.as
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.bc = and i64 %indvars.iv.next.2, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !53
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = xor i32 %i.bf, %i.az                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ssw_RarManObjWhichOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4, !tbaa !49
  %.val19 = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %.val19, i64 4
  %.val19.val = load i32, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.d = mul nsw i32 %.val19.val, %.val
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val20, i64 %i.e
  %i.g = icmp sgt i32 %.val19.val, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val19.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 5 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader
  %indvars.iv27 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next28.3, %bb.f ] ; 9 uses
  %i.k = shl nuw i64 1, %indvars.iv27
  %i.l = and i64 %i.k, %i.i
  %.not18 = icmp eq i64 %i.l, 0
  br i1 %.not18, label %bb.c, label %.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw i64 2, %indvars.iv27
  %i.n = and i64 %i.m, %i.i
  %.not18.1 = icmp eq i64 %i.n, 0
  br i1 %.not18.1, label %bb.d, label %.split.loop.exit.split.loop.exit45

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 4, %indvars.iv27
  %i.p = and i64 %i.o, %i.i
  %.not18.2 = icmp eq i64 %i.p, 0
  br i1 %.not18.2, label %bb.e, label %.split.loop.exit.split.loop.exit43

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 8, %indvars.iv27
  %i.r = and i64 %i.q, %i.i
  %.not18.3 = icmp eq i64 %i.r, 0
  br i1 %.not18.3, label %bb.f, label %.split.loop.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27, 4 ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %indvars.iv.next28.3, 64
  br i1 %exitcond30.not.3, label %.split.loop.exit33, label %bb.b, !llvm.loop !6

.split.loop.exit.split.loop.exit:                 ; preds = %bb.e
  %indvars.iv.next28.2.le = or disjoint i64 %indvars.iv27, 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit43:               ; preds = %bb.d
  %indvars.iv.next28.1.le = or disjoint i64 %indvars.iv27, 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit45:               ; preds = %bb.c
  %indvars.iv.next28.le = or disjoint i64 %indvars.iv27, 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.split.loop.exit45, %.split.loop.exit.split.loop.exit43, %.split.loop.exit.split.loop.exit
  %indvars.iv27.lcssa = phi i64 [ %indvars.iv.next28.le, %.split.loop.exit.split.loop.exit45 ], [ %indvars.iv.next28.1.le, %.split.loop.exit.split.loop.exit43 ], [ %indvars.iv.next28.2.le, %.split.loop.exit.split.loop.exit ], [ %indvars.iv27, %bb.b ]
  %i.s = trunc nuw nsw i64 %indvars.iv27.lcssa to i32
  br label %.split.loop.exit33

.split.loop.exit33:                               ; preds = %bb.f, %.split.loop.exit
  %.0.lcssa = phi i32 [ %i.s, %.split.loop.exit ], [ 64, %bb.f ]
  %i.t = shl nuw nsw i32 %i.j, 6
  %i.u = add nuw nsw i32 %.0.lcssa, %i.t
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !7

.loopexit:                                        ; preds = %bb.g, %bb.a, %.split.loop.exit33
  %.017 = phi i32 [ %i.u, %.split.loop.exit33 ], [ -1, %bb.a ], [ -1, %bb.g ]
  ret i32 %.017
}

end_hunk_0
