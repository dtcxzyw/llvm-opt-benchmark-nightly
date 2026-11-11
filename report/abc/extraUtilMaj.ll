Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMaj?download=true
inline.NumInlined: 110
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Gem_GroupVarsInsert1:bb.a
  %.not = icmp eq i32 %i.a, 0
  %i.b = sub nsw i32 31, %1
  %i.c = lshr i32 -1, %i.b
  %i.d = select i1 %.not, i32 0, i32 %i.c         ; 2 uses
  %i.e = and i32 %i.d, %0
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %0, %i.f
  %i.h = shl i32 %i.g, 1
  %i.i = shl i32 %2, %i.a
  %i.j = or i32 %i.e, %i.i
  %i.k = or i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @Gem_GroupVarsInsert3(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = sub nsw i32 31, %1
  %i.c = lshr i32 -1, %i.b
  %i.d = select i1 %.not, i32 0, i32 %i.c         ; 2 uses
  %i.e = and i32 %i.d, %0
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %0, %i.f
  %i.h = shl i32 %i.g, 3
  %i.i = shl i32 4, %i.a
  %i.j = or i32 %i.e, %i.i
  %i.k = or i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define i32 @Gem_GroupUnpack(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %.not10 = icmp eq i32 %0, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %.0712 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.a ]  ; 2 uses
  %.0811 = phi i32 [ %i.f, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = and i32 %.0811, 1
  %.not9 = icmp eq i32 %i.a, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nsw i32 %.013, 1
  %i.c = sext i32 %.013 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  store i32 %.0712, ptr %i.d, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %.013, %.lr.ph ] ; 2 uses
  %i.e = add nuw nsw i32 %.0712, 1
  %i.f = ashr i32 %.0811, 1                       ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Gem_FuncFindPlace(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %.not10.i = icmp eq i32 %2, 0
  br i1 %.not10.i, label %Gem_GroupUnpack.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.013.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0712.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.0811.i = phi i32 [ %i.i, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.d = and i32 %.0811.i, 1
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nsw i32 %.013.i, 1
  %i.f = sext i32 %.013.i to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store i32 %.0712.i, ptr %i.g, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.e, %bb.b ], [ %.013.i, %.lr.ph.i ] ; 4 uses
  %i.h = add nuw nsw i32 %.0712.i, 1
  %i.i = ashr i32 %.0811.i, 1                     ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %Gem_GroupUnpack.exit, label %.lr.ph.i, !llvm.loop !5

Gem_GroupUnpack.exit:                             ; preds = %bb.c
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %Gem_GroupUnpack.exit.thread, label %bb.d

bb.d:                                             ; preds = %Gem_GroupUnpack.exit
  %i.j = sext i32 %.1.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %Gem_GroupUnpack.exit.thread

Gem_GroupUnpack.exit.thread:                      ; preds = %bb.a, %Gem_GroupUnpack.exit, %bb.d
  %.0.lcssa.i95 = phi i32 [ %.1.i, %bb.d ], [ 0, %Gem_GroupUnpack.exit ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.m, %bb.d ], [ -1, %Gem_GroupUnpack.exit ], [ -1, %bb.a ] ; 2 uses
  %i.o = icmp slt i32 %1, 1                       ; 10 uses
  br i1 %i.o, label %Abc_TtCopy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %Gem_GroupUnpack.exit.thread
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i39.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !tbaa !53
  %wide.load150 = load <2 x i64>, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %wide.load, ptr %i.s, align 8, !tbaa !53
  store <2 x i64> %wide.load150, ptr %i.t, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i39.prol.loopexit, label %.lr.ph.i39.prol

.lr.ph.i39.prol:                                  ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i39.prol ], [ %indvars.iv.i.ph, %.lr.ph.i39.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i39.prol ], [ 0, %.lr.ph.i39.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.prol
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.prol
  store i64 %i.w, ptr %i.x, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i39.prol.loopexit, label %.lr.ph.i39.prol, !llvm.loop !84

.lr.ph.i39.prol.loopexit:                         ; preds = %.lr.ph.i39.prol, %.lr.ph.i39.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i39.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i39.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %Abc_TtCopy.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i39 ], [ %indvars.iv.i.unr, %.lr.ph.i39.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i39, !llvm.loop !85

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39, %middle.block, %Gem_GroupUnpack.exit.thread
  %i.am = icmp sgt i32 %.0.lcssa.i95, 0
  br i1 %i.am, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %Abc_TtCopy.exit
  %i.an = sext i32 %1 to i64
  %.idx65.i.a = shl nsw i64 %i.an, 3              ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.a ; 6 uses
  %wide.trip.count73.i = zext i32 %1 to i64       ; 14 uses
  %.not38 = icmp eq i32 %4, 0
  %i.ap = zext nneg i32 %.0.lcssa.i95 to i64
  %i.aq = add i64 %.idx65.i.a, %i.a               ; 2 uses
  %min.iters.check242 = icmp ult i32 %1, 4
  %n.vec244 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n259 = icmp eq i64 %n.vec244, %wide.trip.count73.i
  %min.iters.check186 = icmp ult i32 %1, 4
  %n.vec188 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n203 = icmp eq i64 %n.vec188, %wide.trip.count73.i
  %min.iters.check168 = icmp ult i32 %1, 4
  %n.vec170 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec170, %wide.trip.count73.i
  %min.iters.check154 = icmp ult i32 %1, 4
  %i.ar = sub i64 %i.a, %i.b
  %diff.check156 = icmp ugt i64 %i.ar, -32
  %or.cond297 = or i1 %min.iters.check154, %diff.check156
  %n.vec158 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n165 = icmp eq i64 %n.vec158, %wide.trip.count73.i
  %xtraiter314 = and i64 %wide.trip.count73.i, 3  ; 2 uses
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph110, %Abc_TtCopy.exit92
  %indvars.iv118 = phi i64 [ %i.ap, %.lr.ph110 ], [ %indvars.iv.next119, %Abc_TtCopy.exit92 ] ; 3 uses
  %.0108 = phi i32 [ %i.n, %.lr.ph110 ], [ %.1, %Abc_TtCopy.exit92 ]
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1 ; 3 uses
  %.not37 = icmp eq i64 %indvars.iv.next119, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv118
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.av = phi i32 [ %i.au, %bb.f ], [ -1, %bb.e ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next119
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.az = sext i32 %i.ax to i64
  %i.ba = sext i32 %i.av to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit85
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit85 ] ; 15 uses
  %i.bb = icmp slt i64 %indvars.iv, 5
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.h
  %i.bc = trunc nsw i64 %indvars.iv to i32
  %i.bd = shl nuw nsw i32 1, %i.bc
  %i.be = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.bi = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !53 ; 2 uses
  br i1 %min.iters.check242, label %scalar.ph241.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph64.i
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert249 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat250 = shufflevector <2 x i64> %broadcast.splatinsert249, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert251 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat252 = shufflevector <2 x i64> %broadcast.splatinsert251, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph243
  %index254 = phi i64 [ 0, %vector.ph243 ], [ %index.next257, %vector.body253 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index254 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !53 ; 3 uses
  %wide.load256 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !53 ; 3 uses
  %i.bn = and <2 x i64> %wide.load255, %broadcast.splat246
  %i.bo = and <2 x i64> %wide.load256, %broadcast.splat246
  %i.bp = and <2 x i64> %wide.load255, %broadcast.splat248
  %i.bq = and <2 x i64> %wide.load256, %broadcast.splat248
  %i.br = shl <2 x i64> %i.bp, %broadcast.splat250
  %i.bs = shl <2 x i64> %i.bq, %broadcast.splat250
  %i.bt = or <2 x i64> %i.br, %i.bn
  %i.bu = or <2 x i64> %i.bs, %i.bo
  %i.bv = and <2 x i64> %wide.load255, %broadcast.splat252
  %i.bw = and <2 x i64> %wide.load256, %broadcast.splat252
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat250
  %i.by = lshr <2 x i64> %i.bw, %broadcast.splat250
  %i.bz = or <2 x i64> %i.bt, %i.bx
  %i.ca = or <2 x i64> %i.bu, %i.by
  store <2 x i64> %i.bz, ptr %i.bl, align 8, !tbaa !53
  store <2 x i64> %i.ca, ptr %i.bm, align 8, !tbaa !53
  %index.next257 = add nuw i64 %index254, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next257, %n.vec244
  br i1 %i.cb, label %middle.block258, label %vector.body253, !llvm.loop !86

middle.block258:                                  ; preds = %vector.body253
  br i1 %cmp.n259, label %Abc_TtSwapAdjacent.exit, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %.lr.ph64.i, %middle.block258
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec244, %middle.block258 ]
  br label %scalar.ph241

scalar.ph241:                                     ; preds = %scalar.ph241.preheader, %scalar.ph241
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph241 ], [ %indvars.iv70.i.ph, %scalar.ph241.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !53 ; 3 uses
  %i.ce = and i64 %i.cd, %i.bf
  %i.cf = and i64 %i.cd, %i.bh
  %i.cg = shl i64 %i.cf, %i.bi
  %i.ch = or i64 %i.cg, %i.ce
  %i.ci = and i64 %i.cd, %i.bk
  %i.cj = lshr i64 %i.ci, %i.bi
  %i.ck = or i64 %i.ch, %i.cj
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !53
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph241, !llvm.loop !87

bb.i:                                             ; preds = %.lr.ph
  %i.cl = icmp eq i64 %indvars.iv, 5
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j, %.lr.ph.i43
  %.05462.i = phi ptr [ %i.cp, %.lr.ph.i43 ], [ %0, %bb.j ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !24
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.ao
  br i1 %i.cq, label %.lr.ph.i43, label %Abc_TtSwapAdjacent.exit, !llvm.loop !6

bb.k:                                             ; preds = %bb.i
  %i.cr = icmp samesign ult i64 %indvars.iv, 7
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, -6
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = select i1 %i.cr, i32 1, i32 %i.cu       ; 7 uses
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = shl i32 %i.cv, 2                        ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  br i1 %i.cw, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cz = shl nuw nsw i32 %i.cv, 1
  %i.da = zext nneg i32 %i.cv to i64              ; 6 uses
  %i.db = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.dc = shl nsw i64 %i.cy, 3                    ; 4 uses
  %i.dd = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %i.de = shl nuw nsw i64 %i.da, 3                ; 2 uses
  %scevgep273 = getelementptr i8, ptr %0, i64 %i.dd
  %i.df = shl nuw nsw i64 %i.da, 4
  %umax274 = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dg = add i64 %i.dc, %i.a
  %umax275 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.dg)
  %i.dh = sub i64 %umax275, %i.a                  ; 2 uses
  %i.di = icmp ne i64 %i.dh, %i.dc
  %umin276 = zext i1 %i.di to i64                 ; 2 uses
  %i.dj = or disjoint i64 %i.dc, %umin276
  %i.dk = sub i64 %i.dh, %i.dj
  %scevgep277 = getelementptr i8, ptr %0, i64 %i.de
  %min.iters.check279 = icmp ult i32 %i.cv, 4
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.df
  %invariant.gep317 = getelementptr i8, ptr %0, i64 %i.de
  %invariant.gep319 = getelementptr i8, ptr %invariant.gep317, i64 %i.dd
  %stride.check284 = icmp slt i32 %i.cx, 0
  %n.vec286 = and i64 %i.da, 2147483644
  %xtraiter306 = and i64 %i.da, 1
  %i.dl = icmp eq i32 %i.cv, 1
  %unroll_iter = and i64 %i.da, 2147483646
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  %lcmp.mod308 = trunc i32 %i.cv to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ec, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.da ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.db ; 4 uses
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck280

scalar.ph278.preheader:                           ; preds = %vector.memcheck280, %.preheader.us.i
  br i1 %i.dl, label %scalar.ph278.epil.preheader, label %scalar.ph278

vector.memcheck280:                               ; preds = %.preheader.us.i
  %i.dm = udiv i64 %i.dk, %umax274
  %i.dn = add i64 %i.dm, %umin276
  %i.do = mul i64 %i.dn, %i.cy
  %i.dp = shl i64 %i.do, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dp
  %gep320 = getelementptr i8, ptr %invariant.gep319, i64 %i.dp
  %bound0281 = icmp ult ptr %scevgep277, %gep320
  %bound1282 = icmp ult ptr %scevgep273, %gep
  %found.conflict283 = and i1 %bound0281, %bound1282
  %i.dq = or i1 %found.conflict283, %stride.check284
  br i1 %i.dq, label %scalar.ph278.preheader, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck280, %vector.body287
  %index288 = phi i64 [ %index.next293, %vector.body287 ], [ 0, %vector.memcheck280 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index288 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load289 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !53, !alias.scope !109, !noalias !110
  %wide.load290 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !53, !alias.scope !109, !noalias !110
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index288 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load291 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !53, !alias.scope !110
  %wide.load292 = load <2 x i64>, ptr %i.du, align 8, !tbaa !53, !alias.scope !110
  store <2 x i64> %wide.load291, ptr %i.dr, align 8, !tbaa !53, !alias.scope !109, !noalias !110
  store <2 x i64> %wide.load292, ptr %i.ds, align 8, !tbaa !53, !alias.scope !109, !noalias !110
  store <2 x i64> %wide.load289, ptr %i.dt, align 8, !tbaa !53, !alias.scope !110
  store <2 x i64> %wide.load290, ptr %i.du, align 8, !tbaa !53, !alias.scope !110
  %index.next293 = add nuw i64 %index288, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.dv, label %._crit_edge.us.i, label %vector.body287, !llvm.loop !91

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41.1, %scalar.ph278 ], [ 0, %scalar.ph278.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph278 ], [ 0, %scalar.ph278.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i40 ; 2 uses
  %i.dw = load i64, ptr %gep.i, align 8, !tbaa !53
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i40 ; 2 uses
  %i.dx = load i64, ptr %gep81.i, align 8, !tbaa !53
  store i64 %i.dx, ptr %gep.i, align 8, !tbaa !53
  store i64 %i.dw, ptr %gep81.i, align 8, !tbaa !53
  %indvars.iv.next.i41 = or disjoint i64 %indvars.iv.i40, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i41 ; 2 uses
  %i.dy = load i64, ptr %gep.i.1, align 8, !tbaa !53
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i41 ; 2 uses
  %i.dz = load i64, ptr %gep81.i.1, align 8, !tbaa !53
  store i64 %i.dz, ptr %gep.i.1, align 8, !tbaa !53
  store i64 %i.dy, ptr %gep81.i.1, align 8, !tbaa !53
  %indvars.iv.next.i41.1 = add nuw nsw i64 %indvars.iv.i40, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph278, !llvm.loop !92

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph278
  br i1 %lcmp.mod307.not, label %._crit_edge.us.i, label %scalar.ph278.epil.preheader

scalar.ph278.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph278.preheader
  %indvars.iv.i40.epil.init = phi i64 [ 0, %scalar.ph278.preheader ], [ %indvars.iv.next.i41.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i40.epil.init ; 2 uses
  %i.ea = load i64, ptr %gep.i.epil, align 8, !tbaa !53
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i40.epil.init ; 2 uses
  %i.eb = load i64, ptr %gep81.i.epil, align 8, !tbaa !53
  store i64 %i.eb, ptr %gep.i.epil, align 8, !tbaa !53
  store i64 %i.ea, ptr %gep81.i.epil, align 8, !tbaa !53
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body287, %scalar.ph278.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.cy ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.ao
  br i1 %i.ed, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !7

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i43, %scalar.ph241, %middle.block258, %bb.h, %bb.j, %bb.k, %.preheader.lr.ph.i
  br i1 %.not38, label %bb.l, label %Abc_TtSwapAdjacent.exit85

bb.l:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.ee = add nsw i64 %indvars.iv, 1              ; 3 uses
  %i.ef = icmp slt i64 %indvars.iv, 4
  br i1 %i.ef, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.lr.ph64.i59

.lr.ph64.i59:                                     ; preds = %bb.m
  %i.eg = trunc nsw i64 %i.ee to i32
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.ee ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !53 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !53 ; 2 uses
  %i.em = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !53 ; 2 uses
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph64.i59
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph187
  %index198 = phi i64 [ 0, %vector.ph187 ], [ %index.next201, %vector.body197 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index198 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load199 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !53 ; 3 uses
  %wide.load200 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !53 ; 3 uses
  %i.er = and <2 x i64> %wide.load199, %broadcast.splat190
  %i.es = and <2 x i64> %wide.load200, %broadcast.splat190
  %i.et = and <2 x i64> %wide.load199, %broadcast.splat192
  %i.eu = and <2 x i64> %wide.load200, %broadcast.splat192
  %i.ev = shl <2 x i64> %i.et, %broadcast.splat194
  %i.ew = shl <2 x i64> %i.eu, %broadcast.splat194
  %i.ex = or <2 x i64> %i.ev, %i.er
  %i.ey = or <2 x i64> %i.ew, %i.es
  %i.ez = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.fa = and <2 x i64> %wide.load200, %broadcast.splat196
  %i.fb = lshr <2 x i64> %i.ez, %broadcast.splat194
  %i.fc = lshr <2 x i64> %i.fa, %broadcast.splat194
  %i.fd = or <2 x i64> %i.ex, %i.fb
  %i.fe = or <2 x i64> %i.ey, %i.fc
  store <2 x i64> %i.fd, ptr %i.ep, align 8, !tbaa !53
  store <2 x i64> %i.fe, ptr %i.eq, align 8, !tbaa !53
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next201, %n.vec188
  br i1 %i.ff, label %middle.block202, label %vector.body197, !llvm.loop !93

middle.block202:                                  ; preds = %vector.body197
  br i1 %cmp.n203, label %Abc_TtSwapAdjacent.exit64.thread131, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph64.i59, %middle.block202
  %indvars.iv70.i61.ph = phi i64 [ 0, %.lr.ph64.i59 ], [ %n.vec188, %middle.block202 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv70.i61 = phi i64 [ %indvars.iv.next71.i62, %scalar.ph185 ], [ %indvars.iv70.i61.ph, %scalar.ph185.preheader ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i61 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !53 ; 3 uses
  %i.fi = and i64 %i.fh, %i.ej
  %i.fj = and i64 %i.fh, %i.el
  %i.fk = shl i64 %i.fj, %i.em
  %i.fl = or i64 %i.fk, %i.fi
  %i.fm = and i64 %i.fh, %i.eo
  %i.fn = lshr i64 %i.fm, %i.em
  %i.fo = or i64 %i.fl, %i.fn
  store i64 %i.fo, ptr %i.fg, align 8, !tbaa !53
  %indvars.iv.next71.i62 = add nuw nsw i64 %indvars.iv70.i61, 1 ; 2 uses
  %exitcond74.not.i63 = icmp eq i64 %indvars.iv.next71.i62, %wide.trip.count73.i
  br i1 %exitcond74.not.i63, label %Abc_TtSwapAdjacent.exit64.thread131, label %scalar.ph185, !llvm.loop !94

bb.n:                                             ; preds = %bb.l
  %i.fp = icmp eq i64 %i.ee, 5
  br i1 %i.fp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.o, %.lr.ph.i57
  %.05462.i58 = phi ptr [ %i.ft, %.lr.ph.i57 ], [ %0, %bb.o ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.05462.i58, i64 4 ; 2 uses
  %i.fr = load <2 x i32>, ptr %i.fq, align 4, !tbaa !24
  %i.fs = shufflevector <2 x i32> %i.fr, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fs, ptr %i.fq, align 4, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %.05462.i58, i64 16 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %i.ao
  br i1 %i.fu, label %.lr.ph.i57, label %.preheader.us.preheader.i67, !llvm.loop !6

bb.p:                                             ; preds = %bb.n
  %i.fv = icmp samesign ult i64 %indvars.iv, 6
  %i.fw = trunc i64 %indvars.iv to i32
  %i.fx = add i32 %i.fw, -5
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = select i1 %i.fv, i32 1, i32 %i.fy       ; 7 uses
  br i1 %i.o, label %.thread136, label %.preheader.lr.ph.i45

.preheader.lr.ph.i45:                             ; preds = %bb.p
  %i.ga = icmp sgt i32 %i.fz, 0
  %i.gb = shl i32 %i.fz, 2                        ; 2 uses
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  br i1 %i.ga, label %.preheader.us.preheader.i46, label %.thread136

.preheader.us.preheader.i46:                      ; preds = %.preheader.lr.ph.i45
  %i.gd = shl nuw nsw i32 %i.fz, 1
  %i.ge = zext nneg i32 %i.fz to i64              ; 6 uses
  %i.gf = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gg = shl nsw i64 %i.gc, 3                    ; 4 uses
  %i.gh = shl nuw nsw i64 %i.gf, 3                ; 2 uses
  %i.gi = shl nuw nsw i64 %i.ge, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.gh
  %i.gj = shl nuw nsw i64 %i.ge, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gk = add i64 %i.gg, %i.a
  %umax224 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.gk)
  %i.gl = sub i64 %umax224, %i.a                  ; 2 uses
  %i.gm = icmp ne i64 %i.gl, %i.gg
  %umin = zext i1 %i.gm to i64                    ; 2 uses
  %i.gn = or disjoint i64 %i.gg, %umin
  %i.go = sub i64 %i.gl, %i.gn
  %scevgep225 = getelementptr i8, ptr %0, i64 %i.gi
  %min.iters.check227 = icmp ult i32 %i.fz, 4
  %invariant.gep321 = getelementptr i8, ptr %0, i64 %i.gj
  %invariant.gep323 = getelementptr i8, ptr %0, i64 %i.gi
  %invariant.gep325 = getelementptr i8, ptr %invariant.gep323, i64 %i.gh
  %stride.check = icmp slt i32 %i.gb, 0
  %n.vec230 = and i64 %i.ge, 2147483644
  %xtraiter309 = and i64 %i.ge, 1
  %i.gp = icmp eq i32 %i.fz, 1
  %unroll_iter312 = and i64 %i.ge, 2147483646
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  %lcmp.mod311 = trunc i32 %i.fz to i1
  br label %.preheader.us.i47

.preheader.us.i47:                                ; preds = %._crit_edge.us.i56, %.preheader.us.preheader.i46
  %.061.us.i48 = phi ptr [ %i.hg, %._crit_edge.us.i56 ], [ %0, %.preheader.us.preheader.i46 ] ; 3 uses
  %invariant.gep.i49 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.ge ; 4 uses
  %invariant.gep80.i50 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.gf ; 4 uses
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.memcheck228

scalar.ph226.preheader:                           ; preds = %vector.memcheck228, %.preheader.us.i47
  br i1 %i.gp, label %scalar.ph226.epil.preheader, label %scalar.ph226

vector.memcheck228:                               ; preds = %.preheader.us.i47
  %i.gq = udiv i64 %i.go, %umax
  %i.gr = add i64 %i.gq, %umin
  %i.gs = mul i64 %i.gr, %i.gc
  %i.gt = shl i64 %i.gs, 3                        ; 2 uses
  %gep322 = getelementptr i8, ptr %invariant.gep321, i64 %i.gt
  %gep326 = getelementptr i8, ptr %invariant.gep325, i64 %i.gt
  %bound0 = icmp ult ptr %scevgep225, %gep326
  %bound1 = icmp ult ptr %scevgep, %gep322
  %found.conflict = and i1 %bound0, %bound1
  %i.gu = or i1 %found.conflict, %stride.check
  br i1 %i.gu, label %scalar.ph226.preheader, label %vector.body231

vector.body231:                                   ; preds = %vector.memcheck228, %vector.body231
  %index232 = phi i64 [ %index.next237, %vector.body231 ], [ 0, %vector.memcheck228 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %index232 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load233 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !53, !alias.scope !111, !noalias !112
  %wide.load234 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !53, !alias.scope !111, !noalias !112
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %index232 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !53, !alias.scope !112
  %wide.load236 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !53, !alias.scope !112
  store <2 x i64> %wide.load235, ptr %i.gv, align 8, !tbaa !53, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load236, ptr %i.gw, align 8, !tbaa !53, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load233, ptr %i.gx, align 8, !tbaa !53, !alias.scope !112
  store <2 x i64> %wide.load234, ptr %i.gy, align 8, !tbaa !53, !alias.scope !112
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.gz, label %._crit_edge.us.i56, label %vector.body231, !llvm.loop !98

scalar.ph226:                                     ; preds = %scalar.ph226.preheader, %scalar.ph226
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i54.1, %scalar.ph226 ], [ 0, %scalar.ph226.preheader ] ; 4 uses
  %niter313 = phi i64 [ %niter313.next.1, %scalar.ph226 ], [ 0, %scalar.ph226.preheader ]
  %gep.i52 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.i51 ; 2 uses
  %i.ha = load i64, ptr %gep.i52, align 8, !tbaa !53
  %gep81.i53 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.i51 ; 2 uses
  %i.hb = load i64, ptr %gep81.i53, align 8, !tbaa !53
  store i64 %i.hb, ptr %gep.i52, align 8, !tbaa !53
  store i64 %i.ha, ptr %gep81.i53, align 8, !tbaa !53
  %indvars.iv.next.i54 = or disjoint i64 %indvars.iv.i51, 1 ; 2 uses
  %gep.i52.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.next.i54 ; 2 uses
  %i.hc = load i64, ptr %gep.i52.1, align 8, !tbaa !53
  %gep81.i53.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.next.i54 ; 2 uses
  %i.hd = load i64, ptr %gep81.i53.1, align 8, !tbaa !53
  store i64 %i.hd, ptr %gep.i52.1, align 8, !tbaa !53
  store i64 %i.hc, ptr %gep81.i53.1, align 8, !tbaa !53
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %niter313.next.1 = add i64 %niter313, 2         ; 2 uses
  %niter313.ncmp.1 = icmp eq i64 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1, label %._crit_edge.us.i56.loopexit.unr-lcssa, label %scalar.ph226, !llvm.loop !99

._crit_edge.us.i56.loopexit.unr-lcssa:            ; preds = %scalar.ph226
  br i1 %lcmp.mod310.not, label %._crit_edge.us.i56, label %scalar.ph226.epil.preheader

scalar.ph226.epil.preheader:                      ; preds = %._crit_edge.us.i56.loopexit.unr-lcssa, %scalar.ph226.preheader
  %indvars.iv.i51.epil.init = phi i64 [ 0, %scalar.ph226.preheader ], [ %indvars.iv.next.i54.1, %._crit_edge.us.i56.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod311)
  %gep.i52.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.i51.epil.init ; 2 uses
  %i.he = load i64, ptr %gep.i52.epil, align 8, !tbaa !53
  %gep81.i53.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.i51.epil.init ; 2 uses
  %i.hf = load i64, ptr %gep81.i53.epil, align 8, !tbaa !53
  store i64 %i.hf, ptr %gep.i52.epil, align 8, !tbaa !53
  store i64 %i.he, ptr %gep81.i53.epil, align 8, !tbaa !53
  br label %._crit_edge.us.i56

._crit_edge.us.i56:                               ; preds = %vector.body231, %scalar.ph226.epil.preheader, %._crit_edge.us.i56.loopexit.unr-lcssa
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.gc ; 2 uses
  %i.hh = icmp ult ptr %i.hg, %i.ao
  br i1 %i.hh, label %.preheader.us.i47, label %Abc_TtSwapAdjacent.exit64, !llvm.loop !7

.thread136:                                       ; preds = %.preheader.lr.ph.i45, %bb.p
  %i.hi = trunc i64 %indvars.iv to i32
  %i.hj = add i32 %i.hi, 2
  br label %.thread

Abc_TtSwapAdjacent.exit64.thread131:              ; preds = %scalar.ph185, %middle.block202
  %.not145.a = icmp eq i64 %indvars.iv, 3
  br i1 %.not145.a, label %.lr.ph.i78.preheader, label %.lr.ph64.i80

.lr.ph64.i80:                                     ; preds = %Abc_TtSwapAdjacent.exit64.thread131
  %i.hk = add nsw i64 %indvars.iv, 2              ; 2 uses
  %i.hl = trunc nsw i64 %i.hk to i32
  %i.hm = shl nuw nsw i32 1, %i.hl
  %i.hn = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.hk ; 3 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !53 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !53 ; 2 uses
  %i.hr = zext nneg i32 %i.hm to i64              ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !53 ; 2 uses
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph64.i80
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ho, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert171 = insertelement <2 x i64> poison, i64 %i.hq, i64 0
  %broadcast.splat172 = shufflevector <2 x i64> %broadcast.splatinsert171, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %i.ht, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph169
  %index178 = phi i64 [ 0, %vector.ph169 ], [ %index.next181, %vector.body177 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index178 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !53 ; 3 uses
  %wide.load180 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !53 ; 3 uses
  %i.hw = and <2 x i64> %wide.load179, %broadcast.splat
  %i.hx = and <2 x i64> %wide.load180, %broadcast.splat
  %i.hy = and <2 x i64> %wide.load179, %broadcast.splat172
  %i.hz = and <2 x i64> %wide.load180, %broadcast.splat172
  %i.ia = shl <2 x i64> %i.hy, %broadcast.splat174
  %i.ib = shl <2 x i64> %i.hz, %broadcast.splat174
  %i.ic = or <2 x i64> %i.ia, %i.hw
  %i.id = or <2 x i64> %i.ib, %i.hx
  %i.ie = and <2 x i64> %wide.load179, %broadcast.splat176
  %i.if = and <2 x i64> %wide.load180, %broadcast.splat176
  %i.ig = lshr <2 x i64> %i.ie, %broadcast.splat174
  %i.ih = lshr <2 x i64> %i.if, %broadcast.splat174
  %i.ii = or <2 x i64> %i.ic, %i.ig
  %i.ij = or <2 x i64> %i.id, %i.ih
  store <2 x i64> %i.ii, ptr %i.hu, align 8, !tbaa !53
  store <2 x i64> %i.ij, ptr %i.hv, align 8, !tbaa !53
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next181, %n.vec170
  br i1 %i.ik, label %middle.block182, label %vector.body177, !llvm.loop !100

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %Abc_TtSwapAdjacent.exit85, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph64.i80, %middle.block182
  %indvars.iv70.i82.ph = phi i64 [ 0, %.lr.ph64.i80 ], [ %n.vec170, %middle.block182 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv70.i82 = phi i64 [ %indvars.iv.next71.i83, %scalar.ph167 ], [ %indvars.iv70.i82.ph, %scalar.ph167.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i82 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !53 ; 3 uses
  %i.in = and i64 %i.im, %i.ho
  %i.io = and i64 %i.im, %i.hq
  %i.ip = shl i64 %i.io, %i.hr
  %i.iq = or i64 %i.ip, %i.in
  %i.ir = and i64 %i.im, %i.ht
  %i.is = lshr i64 %i.ir, %i.hr
  %i.it = or i64 %i.iq, %i.is
  store i64 %i.it, ptr %i.il, align 8, !tbaa !53
  %indvars.iv.next71.i83 = add nuw nsw i64 %indvars.iv70.i82, 1 ; 2 uses
  %exitcond74.not.i84 = icmp eq i64 %indvars.iv.next71.i83, %wide.trip.count73.i
  br i1 %exitcond74.not.i84, label %Abc_TtSwapAdjacent.exit85, label %scalar.ph167, !llvm.loop !101

Abc_TtSwapAdjacent.exit64:                        ; preds = %._crit_edge.us.i56
  %i.iu = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 5
  %i.iw = trunc nsw i64 %i.iu to i32
  br i1 %i.iv, label %.lr.ph.i78.preheader, label %.thread

.lr.ph.i78.preheader:                             ; preds = %Abc_TtSwapAdjacent.exit64, %Abc_TtSwapAdjacent.exit64.thread131
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78
  %.05462.i79 = phi ptr [ %i.ja, %.lr.ph.i78 ], [ %0, %.lr.ph.i78.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.05462.i79, i64 4 ; 2 uses
  %i.iy = load <2 x i32>, ptr %i.ix, align 4, !tbaa !24
  %i.iz = shufflevector <2 x i32> %i.iy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.iz, ptr %i.ix, align 4, !tbaa !24
  %i.ja = getelementptr inbounds nuw i8, ptr %.05462.i79, i64 16 ; 2 uses
  %i.jb = icmp ult ptr %i.ja, %i.ao
  br i1 %i.jb, label %.lr.ph.i78, label %Abc_TtSwapAdjacent.exit85, !llvm.loop !6

.thread:                                          ; preds = %.thread136, %Abc_TtSwapAdjacent.exit64
  %i.jc = phi i32 [ %i.iw, %Abc_TtSwapAdjacent.exit64 ], [ %i.hj, %.thread136 ]
  %.fr = freeze i32 %i.jc                         ; 2 uses
  %i.jd = icmp ult i32 %.fr, 7
  %i.je = add nsw i32 %.fr, -6                    ; 3 uses
  %i.jf = shl nuw i32 1, %i.je
  br i1 %i.jd, label %.thread138, label %bb.q

bb.q:                                             ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.lr.ph.i66

.thread138:                                       ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.lr.ph.i66:                             ; preds = %bb.q
  %.not144 = icmp eq i32 %i.je, 31
  %i.jg = shl i32 4, %i.je
  %i.jh = sext i32 %i.jg to i64
  br i1 %.not144, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.us.preheader.i67:                      ; preds = %.lr.ph.i57, %.thread138, %.preheader.lr.ph.i66
  %i.ji = phi i64 [ %i.jh, %.preheader.lr.ph.i66 ], [ 4, %.thread138 ], [ 4, %.lr.ph.i57 ]
  %i.jj = phi i32 [ %i.jf, %.preheader.lr.ph.i66 ], [ 1, %.thread138 ], [ 1, %.lr.ph.i57 ] ; 3 uses
  %i.jk = shl nuw nsw i32 %i.jj, 1
  %i.jl = zext nneg i32 %i.jj to i64              ; 3 uses
  %i.jm = zext nneg i32 %i.jk to i64
  %min.iters.check206 = icmp ult i32 %i.jj, 4
  %n.vec208 = and i64 %i.jl, 2147483644
  br label %.preheader.us.i68

.preheader.us.i68:                                ; preds = %._crit_edge.us.i77, %.preheader.us.preheader.i67
  %.061.us.i69 = phi ptr [ %i.ju, %._crit_edge.us.i77 ], [ %0, %.preheader.us.preheader.i67 ] ; 3 uses
  %invariant.gep.i70 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jl ; 2 uses
  %invariant.gep80.i71 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jm ; 2 uses
  br i1 %min.iters.check206, label %scalar.ph205, label %vector.body209

vector.body209:                                   ; preds = %.preheader.us.i68, %vector.body209
  %index210 = phi i64 [ %index.next215, %vector.body209 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %index210 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load211 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !53
  %wide.load212 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !53
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %index210 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %wide.load213 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !53
  %wide.load214 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !53
  store <2 x i64> %wide.load213, ptr %i.jn, align 8, !tbaa !53
  store <2 x i64> %wide.load214, ptr %i.jo, align 8, !tbaa !53
  store <2 x i64> %wide.load211, ptr %i.jp, align 8, !tbaa !53
  store <2 x i64> %wide.load212, ptr %i.jq, align 8, !tbaa !53
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.jr, label %._crit_edge.us.i77, label %vector.body209, !llvm.loop !102

scalar.ph205:                                     ; preds = %.preheader.us.i68, %scalar.ph205
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i75, %scalar.ph205 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %gep.i73 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %indvars.iv.i72 ; 2 uses
  %i.js = load i64, ptr %gep.i73, align 8, !tbaa !53
  %gep81.i74 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %indvars.iv.i72 ; 2 uses
  %i.jt = load i64, ptr %gep81.i74, align 8, !tbaa !53
  store i64 %i.jt, ptr %gep.i73, align 8, !tbaa !53
  store i64 %i.js, ptr %gep81.i74, align 8, !tbaa !53
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %i.jl
  br i1 %exitcond.not.i76, label %._crit_edge.us.i77, label %scalar.ph205, !llvm.loop !103

._crit_edge.us.i77:                               ; preds = %vector.body209, %scalar.ph205
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.ji ; 2 uses
  %i.jv = icmp ult ptr %i.ju, %i.ao
  br i1 %i.jv, label %.preheader.us.i68, label %Abc_TtSwapAdjacent.exit85, !llvm.loop !7

Abc_TtSwapAdjacent.exit85:                        ; preds = %._crit_edge.us.i77, %scalar.ph167, %.lr.ph.i78, %middle.block182, %bb.m, %.thread138, %bb.o, %.preheader.lr.ph.i66, %bb.q, %Abc_TtSwapAdjacent.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jw = icmp sgt i64 %indvars.iv.next, %i.ba
  br i1 %i.jw, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %Abc_TtSwapAdjacent.exit85, %bb.g
  %i.jx = tail call i32 @memcmp(ptr noundef %3, ptr noundef %0, i64 noundef %.idx65.i.a) #27
  %i.jy = icmp sgt i32 %i.jx, -1                  ; 2 uses
  %brmerge = or i1 %i.o, %i.jy
  %.0.mux = select i1 %i.jy, i32 %.0108, i32 %i.av
  br i1 %brmerge, label %Abc_TtCopy.exit92, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %._crit_edge
  br i1 %or.cond297, label %.lr.ph.i88.preheader305, label %vector.body159

vector.body159:                                   ; preds = %.lr.ph.i88.preheader, %vector.body159
  %index160 = phi i64 [ %index.next163, %vector.body159 ], [ 0, %.lr.ph.i88.preheader ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index160 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !53
  %wide.load162 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !53
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index160 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <2 x i64> %wide.load161, ptr %i.kb, align 8, !tbaa !53
  store <2 x i64> %wide.load162, ptr %i.kc, align 8, !tbaa !53
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.kd, label %middle.block164, label %vector.body159, !llvm.loop !105

middle.block164:                                  ; preds = %vector.body159
  br i1 %cmp.n165, label %Abc_TtCopy.exit92, label %.lr.ph.i88.preheader305

.lr.ph.i88.preheader305:                          ; preds = %.lr.ph.i88.preheader, %middle.block164
  %indvars.iv.i89.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %n.vec158, %middle.block164 ] ; 3 uses
  br i1 %lcmp.mod315.not, label %.lr.ph.i88.prol.loopexit, label %.lr.ph.i88.prol

.lr.ph.i88.prol:                                  ; preds = %.lr.ph.i88.preheader305, %.lr.ph.i88.prol
  %indvars.iv.i89.prol = phi i64 [ %indvars.iv.next.i90.prol, %.lr.ph.i88.prol ], [ %indvars.iv.i89.ph, %.lr.ph.i88.preheader305 ] ; 3 uses
  %prol.iter316 = phi i64 [ %prol.iter316.next, %.lr.ph.i88.prol ], [ 0, %.lr.ph.i88.preheader305 ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i89.prol
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !53
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i89.prol
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !53
  %indvars.iv.next.i90.prol = add nuw nsw i64 %indvars.iv.i89.prol, 1 ; 2 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %.lr.ph.i88.prol.loopexit, label %.lr.ph.i88.prol, !llvm.loop !106

.lr.ph.i88.prol.loopexit:                         ; preds = %.lr.ph.i88.prol, %.lr.ph.i88.preheader305
  %indvars.iv.i89.unr = phi i64 [ %indvars.iv.i89.ph, %.lr.ph.i88.preheader305 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i88.prol ]
  %i.kh = sub nsw i64 %indvars.iv.i89.ph, %wide.trip.count73.i
  %i.ki = icmp ugt i64 %i.kh, -4
  br i1 %i.ki, label %Abc_TtCopy.exit92, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.prol.loopexit, %.lr.ph.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90.3, %.lr.ph.i88 ], [ %indvars.iv.i89.unr, %.lr.ph.i88.prol.loopexit ] ; 6 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i89
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !53
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i89
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !53
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !53
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !53
  %indvars.iv.next.i90.1 = add nuw nsw i64 %indvars.iv.i89, 2 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90.1
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !53
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90.1
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !53
  %indvars.iv.next.i90.2 = add nuw nsw i64 %indvars.iv.i89, 3 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i90.2
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i90.2
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !53
  %indvars.iv.next.i90.3 = add nuw nsw i64 %indvars.iv.i89, 4 ; 2 uses
  %exitcond.not.i91.3 = icmp eq i64 %indvars.iv.next.i90.3, %wide.trip.count73.i
  br i1 %exitcond.not.i91.3, label %Abc_TtCopy.exit92, label %.lr.ph.i88, !llvm.loop !107

Abc_TtCopy.exit92:                                ; preds = %.lr.ph.i88.prol.loopexit, %.lr.ph.i88, %middle.block164, %._crit_edge
  %.1 = phi i32 [ %.0.mux, %._crit_edge ], [ %i.av, %middle.block164 ], [ %i.av, %.lr.ph.i88 ], [ %i.av, %.lr.ph.i88.prol.loopexit ] ; 2 uses
  %i.kv = icmp sgt i64 %indvars.iv118, 1
  br i1 %i.kv, label %bb.e, label %._crit_edge111, !llvm.loop !108

._crit_edge111:                                   ; preds = %Abc_TtCopy.exit92, %Abc_TtCopy.exit
  %.0.lcssa = phi i32 [ %i.n, %Abc_TtCopy.exit ], [ %.1, %Abc_TtCopy.exit92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @Gem_FuncExpand(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %i.q = ashr i32 %1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load i32, ptr %i.l, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = and i32 %i.x, %1
  %i.z = mul i32 %i.y, %i.v
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !30
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 47 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 9 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 14 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 3 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 14 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.as = shl nsw i64 %i.aa, 3
  %i.at = add i64 %i.as, %i.u
  %i.au = sub i64 %i.at, %i.ai
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !53
  %wide.load154 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !53
  store <2 x i64> %wide.load154, ptr %i.ay, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !114

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %Abc_TtCopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.1
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.2
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i, !llvm.loop !115

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.br = load i32, ptr %i.j, align 4             ; 2 uses
  %i.bs = and i32 %i.br, 15
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = icmp slt i32 %2, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit
  %i.bv = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit
  %i.bw = phi i32 [ %i.aq, %.lr.ph.preheader ], [ %i.ei, %Abc_TtSwapAdjacent.exit ] ; 11 uses
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit ] ; 7 uses
  %i.bx = icmp slt i64 %indvars.iv, 5
  br i1 %i.bx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.b
  %i.bz = trunc nsw i64 %indvars.iv to i32
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.cf = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.bw to i64 ; 3 uses
  %min.iters.check156 = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph64.i
  %n.vec158 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert163 = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat164 = shufflevector <2 x i64> %broadcast.splatinsert163, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph157
  %index166 = phi i64 [ 0, %vector.ph157 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index166 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load167 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !53 ; 3 uses
  %wide.load168 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !53 ; 3 uses
  %i.ck = and <2 x i64> %wide.load167, %broadcast.splat
  %i.cl = and <2 x i64> %wide.load168, %broadcast.splat
  %i.cm = and <2 x i64> %wide.load167, %broadcast.splat160
  %i.cn = and <2 x i64> %wide.load168, %broadcast.splat160
  %i.co = shl <2 x i64> %i.cm, %broadcast.splat162
  %i.cp = shl <2 x i64> %i.cn, %broadcast.splat162
  %i.cq = or <2 x i64> %i.co, %i.ck
  %i.cr = or <2 x i64> %i.cp, %i.cl
  %i.cs = and <2 x i64> %wide.load167, %broadcast.splat164
  %i.ct = and <2 x i64> %wide.load168, %broadcast.splat164
  %i.cu = lshr <2 x i64> %i.cs, %broadcast.splat162
  %i.cv = lshr <2 x i64> %i.ct, %broadcast.splat162
  %i.cw = or <2 x i64> %i.cq, %i.cu
  %i.cx = or <2 x i64> %i.cr, %i.cv
  store <2 x i64> %i.cw, ptr %i.ci, align 8, !tbaa !53
  store <2 x i64> %i.cx, ptr %i.cj, align 8, !tbaa !53
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next169, %n.vec158
  br i1 %i.cy, label %middle.block170, label %vector.body165, !llvm.loop !116

middle.block170:                                  ; preds = %vector.body165
  %cmp.n171 = icmp eq i64 %n.vec158, %wide.trip.count73.i
  br i1 %cmp.n171, label %Abc_TtSwapAdjacent.exit, label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.lr.ph64.i, %middle.block170
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec158, %middle.block170 ]
  br label %scalar.ph155

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph155 ], [ %indvars.iv70.i.ph, %scalar.ph155.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !53 ; 3 uses
  %i.db = and i64 %i.da, %i.cc
  %i.dc = and i64 %i.da, %i.ce
  %i.dd = shl i64 %i.dc, %i.cf
  %i.de = or i64 %i.dd, %i.db
  %i.df = and i64 %i.da, %i.ch
  %i.dg = lshr i64 %i.df, %i.cf
  %i.dh = or i64 %i.de, %i.dg
  store i64 %i.dh, ptr %i.cz, align 8, !tbaa !53
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph155, !llvm.loop !117

bb.c:                                             ; preds = %.lr.ph
  %i.di = icmp eq i64 %indvars.iv, 5
  %3 = sext i32 %i.bw to i64
  %.idx65.i = shl nsw i64 %3, 3
  %4 = getelementptr inbounds i8, ptr %i.ah, i64 %.idx65.i ; 2 uses
  %i.dj = icmp sgt i32 %i.bw, 0                   ; 2 uses
  br i1 %i.di, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.dj, label %.lr.ph.i71, label %Abc_TtSwapAdjacent.exit

.lr.ph.i71:                                       ; preds = %bb.d, %.lr.ph.i71
  %.05462.i = phi ptr [ %i.dn, %.lr.ph.i71 ], [ %i.ah, %bb.d ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.dl = load <2 x i32>, ptr %i.dk, align 4, !tbaa !24
  %i.dm = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %4
  br i1 %i.do, label %.lr.ph.i71, label %Abc_TtSwapAdjacent.exit.loopexit130, !llvm.loop !6

bb.e:                                             ; preds = %bb.c
  br i1 %i.dj, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %bb.e
  %i.dp = icmp samesign ult i64 %indvars.iv, 7
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  %i.dr = add nsw i32 %i.dq, -6
  %i.ds = shl nuw nsw i32 1, %i.dr
  %i.dt = select i1 %i.dp, i32 1, i32 %i.ds       ; 4 uses
  %i.du = shl nuw nsw i32 %i.dt, 2
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i32 %i.dt, 1
  %i.dx = zext nneg i32 %i.dt to i64              ; 3 uses
  %i.dy = zext nneg i32 %i.dw to i64
  %min.iters.check174 = icmp samesign ult i32 %i.dt, 4
  %n.vec176 = and i64 %i.dx, 2147483644
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.eg, %._crit_edge.us.i ], [ %i.ah, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dx ; 2 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check174, label %scalar.ph173, label %vector.body177

vector.body177:                                   ; preds = %.preheader.us.i, %vector.body177
  %index178 = phi i64 [ %index.next183, %vector.body177 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index178 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !53
  %wide.load180 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index178 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load181 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !53
  %wide.load182 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !53
  store <2 x i64> %wide.load181, ptr %i.dz, align 8, !tbaa !53
  store <2 x i64> %wide.load182, ptr %i.ea, align 8, !tbaa !53
  store <2 x i64> %wide.load179, ptr %i.eb, align 8, !tbaa !53
  store <2 x i64> %wide.load180, ptr %i.ec, align 8, !tbaa !53
  %index.next183 = add nuw i64 %index178, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.ed, label %._crit_edge.us.i, label %vector.body177, !llvm.loop !118

scalar.ph173:                                     ; preds = %.preheader.us.i, %scalar.ph173
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %scalar.ph173 ], [ 0, %.preheader.us.i ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i68 ; 2 uses
  %i.ee = load i64, ptr %gep.i, align 8, !tbaa !53
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i68 ; 2 uses
  %i.ef = load i64, ptr %gep81.i, align 8, !tbaa !53
  store i64 %i.ef, ptr %gep.i, align 8, !tbaa !53
  store i64 %i.ee, ptr %gep81.i, align 8, !tbaa !53
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %i.dx
  br i1 %exitcond.not.i70, label %._crit_edge.us.i, label %scalar.ph173, !llvm.loop !119

._crit_edge.us.i:                                 ; preds = %vector.body177, %scalar.ph173
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dv ; 2 uses
  %i.eh = icmp ult ptr %i.eg, %4
  br i1 %i.eh, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !7

Abc_TtSwapAdjacent.exit.loopexit130:              ; preds = %.lr.ph.i71
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !31
  br label %Abc_TtSwapAdjacent.exit

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %scalar.ph155, %middle.block170, %Abc_TtSwapAdjacent.exit.loopexit130, %bb.b, %bb.d, %bb.e
  %i.ei = phi i32 [ %i.bw, %middle.block170 ], [ %.pre, %Abc_TtSwapAdjacent.exit.loopexit130 ], [ %i.bw, %bb.e ], [ %i.bw, %bb.b ], [ %i.bw, %bb.d ], [ %i.bw, %scalar.ph155 ], [ %i.bw, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ej = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ek = and i32 %i.ej, 15
  %i.el = add nsw i32 %i.ek, -1
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !120

._crit_edge.loopexit:                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.eo = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Abc_TtCopy.exit
  %i.ep = phi i32 [ %i.br, %Abc_TtCopy.exit ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %i.eq = phi i32 [ %i.aq, %Abc_TtCopy.exit ], [ %i.ei, %._crit_edge.loopexit ] ; 9 uses
  %.0.lcssa = phi i32 [ %2, %Abc_TtCopy.exit ], [ %i.eo, %._crit_edge.loopexit ] ; 8 uses
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %Abc_TtCofactor0p.exit.thread115, label %bb.f

Abc_TtCofactor0p.exit.thread115:                  ; preds = %._crit_edge
  %i.es = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.et = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !53
  %i.ew = and i64 %i.ev, %i.es                    ; 2 uses
  %i.ex = shl nuw i32 1, %.0.lcssa
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = shl i64 %i.ew, %i.ey
  %i.fa = or i64 %i.ez, %i.ew
  store i64 %i.fa, ptr %i.ak, align 8, !tbaa !53
  %i.fb = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.fc = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.et
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !53
  %i.fe = and i64 %i.fd, %i.fb                    ; 2 uses
  %i.ff = lshr i64 %i.fe, %i.ey
  %i.fg = or i64 %i.ff, %i.fe
  store i64 %i.fg, ptr %i.an, align 8, !tbaa !53
  br label %Abc_TtCofactor1p.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.fh = icmp slt i32 %.0.lcssa, 6
  br i1 %i.fh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fi = icmp sgt i32 %i.eq, 0
  br i1 %i.fi, label %.lr.ph.i82, label %Abc_TtMux.exit

.lr.ph.i82:                                       ; preds = %bb.g
  %i.fj = shl nuw nsw i32 1, %.0.lcssa
  %i.fk = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !53 ; 4 uses
  %i.fn = zext nneg i32 %i.fj to i64              ; 8 uses
  %wide.trip.count59.i = zext nneg i32 %i.eq to i64 ; 10 uses
  %min.iters.check236 = icmp ult i32 %i.eq, 6
  %i.fo = sub i64 %i.ai, %i.al
  %diff.check238 = icmp ugt i64 %i.fo, -32
  %or.cond = select i1 %min.iters.check236, i1 true, i1 %diff.check238
  br i1 %or.cond, label %scalar.ph235.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph.i82
  %n.vec240 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert241 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat242 = shufflevector <2 x i64> %broadcast.splatinsert241, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat244 = shufflevector <2 x i64> %broadcast.splatinsert243, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph239
  %index246 = phi i64 [ 0, %vector.ph239 ], [ %index.next249, %vector.body245 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index246 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load247 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !53
  %wide.load248 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !53
  %i.fr = and <2 x i64> %wide.load247, %broadcast.splat242 ; 2 uses
  %i.fs = and <2 x i64> %wide.load248, %broadcast.splat242 ; 2 uses
  %i.ft = shl <2 x i64> %i.fr, %broadcast.splat244
  %i.fu = shl <2 x i64> %i.fs, %broadcast.splat244
  %i.fv = or <2 x i64> %i.ft, %i.fr
  %i.fw = or <2 x i64> %i.fu, %i.fs
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index246 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <2 x i64> %i.fv, ptr %i.fx, align 8, !tbaa !53
  store <2 x i64> %i.fw, ptr %i.fy, align 8, !tbaa !53
  %index.next249 = add nuw i64 %index246, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next249, %n.vec240
  br i1 %i.fz, label %middle.block250, label %vector.body245, !llvm.loop !121

middle.block250:                                  ; preds = %vector.body245
  %cmp.n251 = icmp eq i64 %n.vec240, %wide.trip.count59.i
  br i1 %cmp.n251, label %.lr.ph.i94, label %scalar.ph235.preheader

scalar.ph235.preheader:                           ; preds = %.lr.ph.i82, %middle.block250
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i82 ], [ %n.vec240, %middle.block250 ] ; 5 uses
  %xtraiter362 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %scalar.ph235.prol.loopexit, label %scalar.ph235.prol

scalar.ph235.prol:                                ; preds = %scalar.ph235.preheader
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i.ph
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !53
  %i.gc = and i64 %i.gb, %i.fm                    ; 2 uses
  %i.gd = shl i64 %i.gc, %i.fn
  %i.ge = or i64 %i.gd, %i.gc
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i.ph
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !53
  %indvars.iv.next57.i.prol = or disjoint i64 %indvars.iv56.i.ph, 1
  br label %scalar.ph235.prol.loopexit

scalar.ph235.prol.loopexit:                       ; preds = %scalar.ph235.prol, %scalar.ph235.preheader
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %scalar.ph235.preheader ], [ %indvars.iv.next57.i.prol, %scalar.ph235.prol ]
  %i.gg = add nsw i64 %wide.trip.count59.i, -1
  %i.gh = icmp eq i64 %indvars.iv56.i.ph, %i.gg
  br i1 %i.gh, label %.lr.ph.i94, label %scalar.ph235

scalar.ph235:                                     ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph235 ], [ %indvars.iv56.i.unr, %scalar.ph235.prol.loopexit ] ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !53
  %i.gk = and i64 %i.gj, %i.fm                    ; 2 uses
  %i.gl = shl i64 %i.gk, %i.fn
  %i.gm = or i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !53
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next57.i
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !53
  %i.gq = and i64 %i.gp, %i.fm                    ; 2 uses
  %i.gr = shl i64 %i.gq, %i.fn
  %i.gs = or i64 %i.gr, %i.gq
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next57.i
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !53
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next57.i.1, %wide.trip.count59.i
  br i1 %exitcond60.not.i.1, label %.lr.ph.i94, label %scalar.ph235, !llvm.loop !122

bb.h:                                             ; preds = %bb.f
  %i.gu = sext i32 %i.eq to i64
  %.idx.i.a = shl nsw i64 %i.gu, 3
  %i.gv = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i.a
  %i.gw = add nsw i32 %.0.lcssa, -6               ; 3 uses
  %i.gx = shl nuw i32 1, %i.gw                    ; 6 uses
  %i.gy = icmp sgt i32 %i.eq, 0
  br i1 %i.gy, label %.preheader.lr.ph.i72, label %Abc_TtMux.exit

.preheader.lr.ph.i72:                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.gw, 31
  %i.gz = shl i32 2, %i.gw
  %i.ha = sext i32 %i.gz to i64                   ; 4 uses
  br i1 %.not.i, label %Abc_TtCofactor1p.exit.thread, label %.preheader.us.preheader.i73

.preheader.us.preheader.i73:                      ; preds = %.preheader.lr.ph.i72
  %i.hb = sext i32 %i.gx to i64                   ; 7 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 1) ; 2 uses
  %wide.trip.count.i74 = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.hc = shl nsw i64 %i.hb, 3                    ; 2 uses
  %i.hd = add i64 %i.hc, %i.al
  %min.iters.check193 = icmp slt i32 %i.gx, 8
  %diff.check195 = icmp ult i64 %i.hc, 32
  %i.he = sub i64 %i.ai, %i.al
  %diff.check196 = icmp ugt i64 %i.he, -32
  %conflict.rdx = or i1 %diff.check195, %diff.check196
  %i.hf = sub i64 %i.ai, %i.hd
  %diff.check197 = icmp ugt i64 %i.hf, -32
  %conflict.rdx198 = or i1 %conflict.rdx, %diff.check197
  %n.vec200 = and i64 %wide.trip.count.i74, 2147483644
  %xtraiter353 = and i64 %wide.trip.count.i74, 3  ; 3 uses
  %i.hg = icmp slt i32 %i.gx, 4
  %unroll_iter = and i64 %wide.trip.count.i74, 2147483644
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  %lcmp.mod355 = icmp ne i64 %xtraiter353, 0
  br label %.preheader.us.i75

.preheader.us.i75:                                ; preds = %._crit_edge.us.i81, %.preheader.us.preheader.i73
  %.04251.us.i = phi ptr [ %i.ie, %._crit_edge.us.i81 ], [ %i.ak, %.preheader.us.preheader.i73 ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.id, %._crit_edge.us.i81 ], [ %i.ah, %.preheader.us.preheader.i73 ] ; 7 uses
  %invariant.gep.i76 = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.hb ; 6 uses
  %brmerge = select i1 %min.iters.check193, i1 true, i1 %conflict.rdx198
  br i1 %brmerge, label %scalar.ph192.preheader, label %vector.body201

scalar.ph192.preheader:                           ; preds = %.preheader.us.i75
  br i1 %i.hg, label %scalar.ph192.epil.preheader, label %scalar.ph192

vector.body201:                                   ; preds = %.preheader.us.i75, %vector.body201
  %index202 = phi i64 [ %index.next205, %vector.body201 ], [ 0, %.preheader.us.i75 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index202 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load203 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !53 ; 2 uses
  %wide.load204 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !53 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index202 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x i64> %wide.load203, ptr %i.hj, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@Gem_FuncCheckMajority:bb.a
  %i.l = ashr i32 %1, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = load i32, ptr %i.g, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = and i32 %i.r, %1
  %i.t = mul nsw i32 %i.s, %i.p
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.u ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.w = load i32, ptr %i.e, align 4              ; 3 uses
  %i.x = and i32 %i.w, 15                         ; 5 uses
  %.not40.i = icmp eq i32 %i.x, 0
  br i1 %.not40.i, label %Abc_TtIsFullySymmetric.exit.thread19, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %bb.a
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 4
  %unroll_iter = and i32 %i.w, 12
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.d
  %.02439.us.i = phi i32 [ %.2.us.i, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %.02538.us.i = phi i32 [ %.227.us.i, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %.02937.us.i = phi i32 [ %i.ax, %bb.d ], [ 0, %.lr.ph.us.i.preheader ] ; 8 uses
  %i.z = lshr i32 %.02937.us.i, 6
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.02336.us.i = phi i32 [ %i.ar, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %.02835.us.i = phi i32 [ %i.as, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ad = lshr i32 %.02937.us.i, %.02835.us.i
  %i.ae = and i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.ae, %.02336.us.i
  %i.ag = or disjoint i32 %.02835.us.i, 1
  %i.ah = lshr i32 %.02937.us.i, %i.ag
  %i.ai = and i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ai, %i.af
  %i.ak = or disjoint i32 %.02835.us.i, 2
  %i.al = lshr i32 %.02937.us.i, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = or disjoint i32 %.02835.us.i, 3
  %i.ap = lshr i32 %.02937.us.i, %i.ao
  %i.aq = and i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.an            ; 3 uses
  %i.as = add nuw nsw i32 %.02835.us.i, 4         ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !153

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.at = lshr i32 %.02538.us.i, %.lcssa
  %i.au = and i32 %i.at, 1
  %.not34.us.i = icmp eq i32 %i.bh, %i.au
  br i1 %.not34.us.i, label %bb.d, label %Abc_TtIsFullySymmetric.exit.thread

bb.c:                                             ; preds = %._crit_edge.us.i
  %i.av = or i32 %i.bi, %.02439.us.i
  %.not33.us.i = icmp eq i32 %i.bh, 0
  %i.aw = select i1 %.not33.us.i, i32 0, i32 %i.bi
  %spec.select.us.i = or i32 %i.aw, %.02538.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.227.us.i = phi i32 [ %spec.select.us.i, %bb.c ], [ %.02538.us.i, %bb.b ] ; 3 uses
  %.2.us.i = phi i32 [ %i.av, %bb.c ], [ %.02439.us.i, %bb.b ]
  %i.ax = add nuw nsw i32 %.02937.us.i, 1         ; 2 uses
  %.029.highbits.us.i = lshr i32 %i.ax, %i.x
  %i.ay = icmp eq i32 %.029.highbits.us.i, 0
  br i1 %i.ay, label %.lr.ph.us.i, label %Abc_TtIsFullySymmetric.exit, !llvm.loop !154

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02336.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %i.ar, %._crit_edge.us.i.unr-lcssa ]
  %.02835.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %i.as, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.02336.us.i.epil = phi i32 [ %.02336.us.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.e ]
  %.02835.us.i.epil = phi i32 [ %.02835.us.i.epil.init, %.epil.preheader ], [ %i.bc, %bb.e ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.az = lshr i32 %.02937.us.i, %.02835.us.i.epil
  %i.ba = and i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ba, %.02336.us.i.epil ; 2 uses
  %i.bc = add nuw nsw i32 %.02835.us.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.e, !llvm.loop !155

._crit_edge.us.i:                                 ; preds = %bb.e, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ar, %._crit_edge.us.i.unr-lcssa ], [ %i.bb, %bb.e ] ; 2 uses
  %i.bd = and i32 %.02937.us.i, 63
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %i.ac, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 1                        ; 2 uses
  %i.bi = shl nuw i32 1, %.lcssa                  ; 3 uses
  %i.bj = and i32 %i.bi, %.02439.us.i
  %.not.us.i = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i, label %bb.c, label %bb.b

Abc_TtIsFullySymmetric.exit.thread19:             ; preds = %bb.a
  %i.bk = load i64, ptr %i.v, align 8, !tbaa !53
  %.not33.i = trunc i64 %i.bk to i32
  %i.bl = and i32 %.not33.i, 1
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !24
  br label %bb.f

Abc_TtIsFullySymmetric.exit:                      ; preds = %bb.d
  store i32 %.227.us.i, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %.227.us.i, -1
  br i1 %.not, label %Abc_TtIsFullySymmetric.exit.thread, label %bb.f

bb.f:                                             ; preds = %Abc_TtIsFullySymmetric.exit.thread19, %Abc_TtIsFullySymmetric.exit
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.x) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.bo = load i32, ptr %i.e, align 4
  %i.bp = and i32 %i.bo, 15
  %i.bq = add nuw nsw i32 %i.bp, 1
  call void @Extra_PrintBinary2(ptr noundef %i.bn, ptr noundef nonnull %i.a, i32 noundef %i.bq) #22
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  %i.bs = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bt = and i32 %i.bs, 15
  %i.bu = and i32 %i.bs, 1
  %.not16 = icmp eq i32 %i.bu, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = add nuw nsw i32 %i.x, 1
  %i.bw = lshr i32 %i.bv, 1                       ; 2 uses
  %i.bx = sub nuw nsw i32 64, %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 -1, %i.by
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !24
  %i.cc = shl nuw nsw i32 %i.ca, %i.bw
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bt) ; 0 uses
  br label %Abc_TtIsFullySymmetric.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %Abc_TtIsFullySymmetric.exit.thread

Abc_TtIsFullySymmetric.exit.thread:               ; preds = %bb.b, %Abc_TtIsFullySymmetric.exit, %bb.h, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @Gem_FuncReduce(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %i.q = ashr i32 %1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load i32, ptr %i.l, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = and i32 %i.x, %1
  %i.z = mul i32 %i.y, %i.v
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !30
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 45 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 9 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 18 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 4 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 18 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.aq to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.as = shl nsw i64 %i.aa, 3
  %i.at = add i64 %i.as, %i.u
  %i.au = sub i64 %i.at, %i.ai
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !53
  %wide.load249 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !53
  store <2 x i64> %wide.load249, ptr %i.ay, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !53
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !157

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %Abc_TtCopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.1
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.2
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i, !llvm.loop !158

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %i.br = load i32, ptr %i.j, align 4
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = icmp slt i32 %3, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit
  %i.bv = sext i32 %3 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %Abc_TtSwapAdjacent.exit, %Abc_TtCopy.exit
  %.pre-phi = phi i32 [ %i.bs, %Abc_TtCopy.exit ], [ %i.en, %Abc_TtSwapAdjacent.exit ]
  %.pre212 = phi i32 [ %i.aq, %Abc_TtCopy.exit ], [ %i.el, %Abc_TtSwapAdjacent.exit ] ; 2 uses
  %i.bw = add nsw i32 %.pre-phi, -2
  %i.bx = icmp slt i32 %2, %i.bw
  br i1 %i.bx, label %.lr.ph200.preheader, label %._crit_edge

.lr.ph200.preheader:                              ; preds = %.preheader
  %i.by = sext i32 %2 to i64
  br label %.lr.ph200

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit
  %i.bz = phi i32 [ %i.aq, %.lr.ph.preheader ], [ %i.el, %Abc_TtSwapAdjacent.exit ] ; 11 uses
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit ] ; 7 uses
  %i.ca = icmp slt i64 %indvars.iv, 5
  br i1 %i.ca, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.b
  %i.cc = trunc nsw i64 %indvars.iv to i32
  %i.cd = shl nuw nsw i32 1, %i.cc
  %i.ce = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53 ; 2 uses
  %i.ci = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.bz to i64 ; 3 uses
  %min.iters.check251 = icmp ult i32 %i.bz, 4
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph64.i
  %n.vec253 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert254 = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat255 = shufflevector <2 x i64> %broadcast.splatinsert254, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert258 = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat259 = shufflevector <2 x i64> %broadcast.splatinsert258, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph252
  %index261 = phi i64 [ 0, %vector.ph252 ], [ %index.next264, %vector.body260 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index261 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load262 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !53 ; 3 uses
  %wide.load263 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !53 ; 3 uses
  %i.cn = and <2 x i64> %wide.load262, %broadcast.splat
  %i.co = and <2 x i64> %wide.load263, %broadcast.splat
  %i.cp = and <2 x i64> %wide.load262, %broadcast.splat255
  %i.cq = and <2 x i64> %wide.load263, %broadcast.splat255
  %i.cr = shl <2 x i64> %i.cp, %broadcast.splat257
  %i.cs = shl <2 x i64> %i.cq, %broadcast.splat257
  %i.ct = or <2 x i64> %i.cr, %i.cn
  %i.cu = or <2 x i64> %i.cs, %i.co
  %i.cv = and <2 x i64> %wide.load262, %broadcast.splat259
  %i.cw = and <2 x i64> %wide.load263, %broadcast.splat259
  %i.cx = lshr <2 x i64> %i.cv, %broadcast.splat257
  %i.cy = lshr <2 x i64> %i.cw, %broadcast.splat257
  %i.cz = or <2 x i64> %i.ct, %i.cx
  %i.da = or <2 x i64> %i.cu, %i.cy
  store <2 x i64> %i.cz, ptr %i.cl, align 8, !tbaa !53
  store <2 x i64> %i.da, ptr %i.cm, align 8, !tbaa !53
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next264, %n.vec253
  br i1 %i.db, label %middle.block265, label %vector.body260, !llvm.loop !159

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %n.vec253, %wide.trip.count73.i
  br i1 %cmp.n266, label %Abc_TtSwapAdjacent.exit, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %.lr.ph64.i, %middle.block265
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec253, %middle.block265 ]
  br label %scalar.ph250

scalar.ph250:                                     ; preds = %scalar.ph250.preheader, %scalar.ph250
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph250 ], [ %indvars.iv70.i.ph, %scalar.ph250.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !53 ; 3 uses
  %i.de = and i64 %i.dd, %i.cf
  %i.df = and i64 %i.dd, %i.ch
  %i.dg = shl i64 %i.df, %i.ci
  %i.dh = or i64 %i.dg, %i.de
  %i.di = and i64 %i.dd, %i.ck
  %i.dj = lshr i64 %i.di, %i.ci
  %i.dk = or i64 %i.dh, %i.dj
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !53
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph250, !llvm.loop !160

bb.c:                                             ; preds = %.lr.ph
  %i.dl = icmp eq i64 %indvars.iv, 5
  %4 = sext i32 %i.bz to i64
  %.idx65.i = shl nsw i64 %4, 3
  %5 = getelementptr inbounds i8, ptr %i.ah, i64 %.idx65.i ; 2 uses
  %i.dm = icmp sgt i32 %i.bz, 0                   ; 2 uses
  br i1 %i.dl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.dm, label %.lr.ph.i82, label %Abc_TtSwapAdjacent.exit

.lr.ph.i82:                                       ; preds = %bb.d, %.lr.ph.i82
  %.05462.i = phi ptr [ %i.dq, %.lr.ph.i82 ], [ %i.ah, %bb.d ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !24
  %i.dp = shufflevector <2 x i32> %i.do, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dp, ptr %i.dn, align 4, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %5
  br i1 %i.dr, label %.lr.ph.i82, label %Abc_TtSwapAdjacent.exit.loopexit204, !llvm.loop !6

bb.e:                                             ; preds = %bb.c
  br i1 %i.dm, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %bb.e
  %i.ds = icmp samesign ult i64 %indvars.iv, 7
  %i.dt = trunc nuw nsw i64 %indvars.iv to i32
  %i.du = add nsw i32 %i.dt, -6
  %i.dv = shl nuw nsw i32 1, %i.du
  %i.dw = select i1 %i.ds, i32 1, i32 %i.dv       ; 4 uses
  %i.dx = shl nuw nsw i32 %i.dw, 2
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw nsw i32 %i.dw, 1
  %i.ea = zext nneg i32 %i.dw to i64              ; 3 uses
  %i.eb = zext nneg i32 %i.dz to i64
  %min.iters.check269 = icmp samesign ult i32 %i.dw, 4
  %n.vec271 = and i64 %i.ea, 2147483644
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ej, %._crit_edge.us.i ], [ %i.ah, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ea ; 2 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.eb ; 2 uses
  br i1 %min.iters.check269, label %scalar.ph268, label %vector.body272

vector.body272:                                   ; preds = %.preheader.us.i, %vector.body272
  %index273 = phi i64 [ %index.next278, %vector.body272 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index273 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load274 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !53
  %wide.load275 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !53
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index273 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %wide.load276 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !53
  %wide.load277 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !53
  store <2 x i64> %wide.load276, ptr %i.ec, align 8, !tbaa !53
  store <2 x i64> %wide.load277, ptr %i.ed, align 8, !tbaa !53
  store <2 x i64> %wide.load274, ptr %i.ee, align 8, !tbaa !53
  store <2 x i64> %wide.load275, ptr %i.ef, align 8, !tbaa !53
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.eg, label %._crit_edge.us.i, label %vector.body272, !llvm.loop !161

scalar.ph268:                                     ; preds = %.preheader.us.i, %scalar.ph268
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80, %scalar.ph268 ], [ 0, %.preheader.us.i ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i79 ; 2 uses
  %i.eh = load i64, ptr %gep.i, align 8, !tbaa !53
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i79 ; 2 uses
  %i.ei = load i64, ptr %gep81.i, align 8, !tbaa !53
  store i64 %i.ei, ptr %gep.i, align 8, !tbaa !53
  store i64 %i.eh, ptr %gep81.i, align 8, !tbaa !53
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %i.ea
  br i1 %exitcond.not.i81, label %._crit_edge.us.i, label %scalar.ph268, !llvm.loop !162

._crit_edge.us.i:                                 ; preds = %vector.body272, %scalar.ph268
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dy ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %5
  br i1 %i.ek, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !7

Abc_TtSwapAdjacent.exit.loopexit204:              ; preds = %.lr.ph.i82
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !31
  br label %Abc_TtSwapAdjacent.exit

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %scalar.ph250, %middle.block265, %Abc_TtSwapAdjacent.exit.loopexit204, %bb.b, %bb.d, %bb.e
  %i.el = phi i32 [ %i.bz, %middle.block265 ], [ %.pre, %Abc_TtSwapAdjacent.exit.loopexit204 ], [ %i.bz, %bb.e ], [ %i.bz, %bb.b ], [ %i.bz, %bb.d ], [ %i.bz, %scalar.ph250 ], [ %i.bz, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.em = load i32, ptr %i.j, align 4
  %i.en = and i32 %i.em, 15                       ; 2 uses
  %i.eo = add nsw i32 %i.en, -1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %.lr.ph, label %.preheader, !llvm.loop !163

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %Abc_TtSwapAdjacent.exit103
  %i.er = phi i32 [ %.pre212, %.lr.ph200.preheader ], [ %i.hd, %Abc_TtSwapAdjacent.exit103 ] ; 11 uses
  %indvars.iv207 = phi i64 [ %i.by, %.lr.ph200.preheader ], [ %indvars.iv.next208, %Abc_TtSwapAdjacent.exit103 ] ; 7 uses
  %i.es = icmp slt i64 %indvars.iv207, 5
  br i1 %i.es, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph200
  %i.et = icmp sgt i32 %i.er, 0
  br i1 %i.et, label %.lr.ph64.i98, label %Abc_TtSwapAdjacent.exit103

.lr.ph64.i98:                                     ; preds = %bb.f
  %i.eu = trunc nsw i64 %indvars.iv207 to i32
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv207 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !53 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !53 ; 2 uses
  %i.fa = zext nneg i32 %i.ev to i64              ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count73.i99 = zext nneg i32 %i.er to i64 ; 3 uses
  %min.iters.check283 = icmp ult i32 %i.er, 4
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph64.i98
  %n.vec285 = and i64 %wide.trip.count73.i99, 2147483644 ; 3 uses
  %broadcast.splatinsert286 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat287 = shufflevector <2 x i64> %broadcast.splatinsert286, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert288 = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %broadcast.splat289 = shufflevector <2 x i64> %broadcast.splatinsert288, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert290 = insertelement <2 x i64> poison, i64 %i.fa, i64 0
  %broadcast.splat291 = shufflevector <2 x i64> %broadcast.splatinsert290, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert292 = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %broadcast.splat293 = shufflevector <2 x i64> %broadcast.splatinsert292, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph284
  %index295 = phi i64 [ 0, %vector.ph284 ], [ %index.next298, %vector.body294 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index295 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load296 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !53 ; 3 uses
  %wide.load297 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !53 ; 3 uses
  %i.ff = and <2 x i64> %wide.load296, %broadcast.splat287
  %i.fg = and <2 x i64> %wide.load297, %broadcast.splat287
  %i.fh = and <2 x i64> %wide.load296, %broadcast.splat289
  %i.fi = and <2 x i64> %wide.load297, %broadcast.splat289
  %i.fj = shl <2 x i64> %i.fh, %broadcast.splat291
  %i.fk = shl <2 x i64> %i.fi, %broadcast.splat291
  %i.fl = or <2 x i64> %i.fj, %i.ff
  %i.fm = or <2 x i64> %i.fk, %i.fg
  %i.fn = and <2 x i64> %wide.load296, %broadcast.splat293
  %i.fo = and <2 x i64> %wide.load297, %broadcast.splat293
  %i.fp = lshr <2 x i64> %i.fn, %broadcast.splat291
  %i.fq = lshr <2 x i64> %i.fo, %broadcast.splat291
  %i.fr = or <2 x i64> %i.fl, %i.fp
  %i.fs = or <2 x i64> %i.fm, %i.fq
  store <2 x i64> %i.fr, ptr %i.fd, align 8, !tbaa !53
  store <2 x i64> %i.fs, ptr %i.fe, align 8, !tbaa !53
  %index.next298 = add nuw i64 %index295, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next298, %n.vec285
  br i1 %i.ft, label %middle.block299, label %vector.body294, !llvm.loop !164

middle.block299:                                  ; preds = %vector.body294
  %cmp.n300 = icmp eq i64 %n.vec285, %wide.trip.count73.i99
  br i1 %cmp.n300, label %Abc_TtSwapAdjacent.exit103, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph64.i98, %middle.block299
  %indvars.iv70.i100.ph = phi i64 [ 0, %.lr.ph64.i98 ], [ %n.vec285, %middle.block299 ]
  br label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv70.i100 = phi i64 [ %indvars.iv.next71.i101, %scalar.ph282 ], [ %indvars.iv70.i100.ph, %scalar.ph282.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv70.i100 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !53 ; 3 uses
  %i.fw = and i64 %i.fv, %i.ex
  %i.fx = and i64 %i.fv, %i.ez
  %i.fy = shl i64 %i.fx, %i.fa
  %i.fz = or i64 %i.fy, %i.fw
  %i.ga = and i64 %i.fv, %i.fc
  %i.gb = lshr i64 %i.ga, %i.fa
  %i.gc = or i64 %i.fz, %i.gb
  store i64 %i.gc, ptr %i.fu, align 8, !tbaa !53
  %indvars.iv.next71.i101 = add nuw nsw i64 %indvars.iv70.i100, 1 ; 2 uses
  %exitcond74.not.i102 = icmp eq i64 %indvars.iv.next71.i101, %wide.trip.count73.i99
  br i1 %exitcond74.not.i102, label %Abc_TtSwapAdjacent.exit103, label %scalar.ph282, !llvm.loop !165

bb.g:                                             ; preds = %.lr.ph200
  %i.gd = icmp eq i64 %indvars.iv207, 5
  %6 = sext i32 %i.er to i64
  %.idx65.i83 = shl nsw i64 %6, 3
  %7 = getelementptr inbounds i8, ptr %i.ah, i64 %.idx65.i83 ; 2 uses
  %i.ge = icmp sgt i32 %i.er, 0                   ; 2 uses
  br i1 %i.gd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ge, label %.lr.ph.i96, label %Abc_TtSwapAdjacent.exit103

.lr.ph.i96:                                       ; preds = %bb.h, %.lr.ph.i96
  %.05462.i97 = phi ptr [ %i.gi, %.lr.ph.i96 ], [ %i.ah, %bb.h ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05462.i97, i64 4 ; 2 uses
  %i.gg = load <2 x i32>, ptr %i.gf, align 4, !tbaa !24
  %i.gh = shufflevector <2 x i32> %i.gg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !24
  %i.gi = getelementptr inbounds nuw i8, ptr %.05462.i97, i64 16 ; 2 uses
  %i.gj = icmp ult ptr %i.gi, %7
  br i1 %i.gj, label %.lr.ph.i96, label %Abc_TtSwapAdjacent.exit103.loopexit202, !llvm.loop !6

bb.i:                                             ; preds = %bb.g
  br i1 %i.ge, label %.preheader.us.preheader.i85, label %Abc_TtSwapAdjacent.exit103

.preheader.us.preheader.i85:                      ; preds = %bb.i
  %i.gk = icmp samesign ult i64 %indvars.iv207, 7
  %i.gl = trunc nuw nsw i64 %indvars.iv207 to i32
  %i.gm = add nsw i32 %i.gl, -6
  %i.gn = shl nuw nsw i32 1, %i.gm
  %i.go = select i1 %i.gk, i32 1, i32 %i.gn       ; 4 uses
  %i.gp = shl nuw nsw i32 %i.go, 2
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw nsw i32 %i.go, 1
  %i.gs = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gt = zext nneg i32 %i.gr to i64
  %min.iters.check303 = icmp samesign ult i32 %i.go, 4
  %n.vec305 = and i64 %i.gs, 2147483644
  br label %.preheader.us.i86

.preheader.us.i86:                                ; preds = %._crit_edge.us.i95, %.preheader.us.preheader.i85
  %.061.us.i87 = phi ptr [ %i.hb, %._crit_edge.us.i95 ], [ %i.ah, %.preheader.us.preheader.i85 ] ; 3 uses
  %invariant.gep.i88 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gs ; 2 uses
  %invariant.gep80.i89 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gt ; 2 uses
  br i1 %min.iters.check303, label %scalar.ph302, label %vector.body306

vector.body306:                                   ; preds = %.preheader.us.i86, %vector.body306
  %index307 = phi i64 [ %index.next312, %vector.body306 ], [ 0, %.preheader.us.i86 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i88, i64 %index307 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load308 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !53
  %wide.load309 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i89, i64 %index307 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load310 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !53
  %wide.load311 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !53
  store <2 x i64> %wide.load310, ptr %i.gu, align 8, !tbaa !53
  store <2 x i64> %wide.load311, ptr %i.gv, align 8, !tbaa !53
  store <2 x i64> %wide.load308, ptr %i.gw, align 8, !tbaa !53
  store <2 x i64> %wide.load309, ptr %i.gx, align 8, !tbaa !53
  %index.next312 = add nuw i64 %index307, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gy, label %._crit_edge.us.i95, label %vector.body306, !llvm.loop !166

scalar.ph302:                                     ; preds = %.preheader.us.i86, %scalar.ph302
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %scalar.ph302 ], [ 0, %.preheader.us.i86 ] ; 3 uses
  %gep.i91 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i88, i64 %indvars.iv.i90 ; 2 uses
  %i.gz = load i64, ptr %gep.i91, align 8, !tbaa !53
  %gep81.i92 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i89, i64 %indvars.iv.i90 ; 2 uses
  %i.ha = load i64, ptr %gep81.i92, align 8, !tbaa !53
  store i64 %i.ha, ptr %gep.i91, align 8, !tbaa !53
  store i64 %i.gz, ptr %gep81.i92, align 8, !tbaa !53
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %i.gs
  br i1 %exitcond.not.i94, label %._crit_edge.us.i95, label %scalar.ph302, !llvm.loop !167

._crit_edge.us.i95:                               ; preds = %vector.body306, %scalar.ph302
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i87, i64 %i.gq ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %7
  br i1 %i.hc, label %.preheader.us.i86, label %Abc_TtSwapAdjacent.exit103, !llvm.loop !7

Abc_TtSwapAdjacent.exit103.loopexit202:           ; preds = %.lr.ph.i96
  %.pre211 = load i32, ptr %i.ap, align 4, !tbaa !31
  br label %Abc_TtSwapAdjacent.exit103

Abc_TtSwapAdjacent.exit103:                       ; preds = %._crit_edge.us.i95, %scalar.ph282, %middle.block299, %Abc_TtSwapAdjacent.exit103.loopexit202, %bb.f, %bb.h, %bb.i
  %i.hd = phi i32 [ %i.er, %middle.block299 ], [ %.pre211, %Abc_TtSwapAdjacent.exit103.loopexit202 ], [ %i.er, %bb.i ], [ %i.er, %bb.f ], [ %i.er, %bb.h ], [ %i.er, %scalar.ph282 ], [ %i.er, %._crit_edge.us.i95 ] ; 2 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 3 uses
  %i.he = load i32, ptr %i.j, align 4
  %i.hf = and i32 %i.he, 15
  %i.hg = add nsw i32 %i.hf, -2
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next208, %i.hh
  br i1 %i.hi, label %.lr.ph200, label %._crit_edge.loopexit, !llvm.loop !168

._crit_edge.loopexit:                             ; preds = %Abc_TtSwapAdjacent.exit103
  %i.hj = trunc nsw i64 %indvars.iv.next208 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.hk = phi i32 [ %.pre212, %.preheader ], [ %i.hd, %._crit_edge.loopexit ] ; 15 uses
  %.1.lcssa = phi i32 [ %2, %.preheader ], [ %i.hj, %._crit_edge.loopexit ] ; 11 uses
  %i.hl = add nsw i32 %.1.lcssa, 1                ; 4 uses
  %i.hm = icmp eq i32 %i.hk, 1
  br i1 %i.hm, label %Abc_TtCofactor0p.exit.thread174, label %bb.j

Abc_TtCofactor0p.exit.thread174:                  ; preds = %._crit_edge
  %i.hn = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.ho = sext i32 %i.hl to i64                   ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !53
  %i.hr = and i64 %i.hq, %i.hn                    ; 2 uses
  %i.hs = shl nuw i32 1, %i.hl
  %i.ht = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hu = shl i64 %i.hr, %i.ht
  %i.hv = or i64 %i.hu, %i.hr
  store i64 %i.hv, ptr %i.ak, align 8, !tbaa !53
  %i.hw = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.hx = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ho
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !53
  %i.hz = and i64 %i.hy, %i.hw                    ; 2 uses
  %i.ia = lshr i64 %i.hz, %i.ht
  %i.ib = or i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.an, align 8, !tbaa !53
  %i.ic = load i64, ptr %i.ak, align 8, !tbaa !53
  %i.id = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !53
  %i.ig = and i64 %i.if, %i.ic                    ; 2 uses
  %i.ih = shl nuw i32 1, %.1.lcssa
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = shl i64 %i.ig, %i.ii
  %i.ik = or i64 %i.ij, %i.ig
  store i64 %i.ik, ptr %i.ak, align 8, !tbaa !53
  %i.il = load i64, ptr %i.an, align 8, !tbaa !53
  %i.im = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.id
  %i.in = load i64, ptr %i.im, align 8, !tbaa !53
  %i.io = and i64 %i.in, %i.il                    ; 2 uses
  %i.ip = lshr i64 %i.io, %i.ii
  %i.iq = or i64 %i.ip, %i.io
  store i64 %i.iq, ptr %i.an, align 8, !tbaa !53
  br label %Abc_TtCofactor1.exit.thread

bb.j:                                             ; preds = %._crit_edge
  %i.ir = icmp slt i32 %.1.lcssa, 5
  br i1 %i.ir, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.is = icmp sgt i32 %i.hk, 0
  br i1 %i.is, label %.lr.ph.i114, label %Abc_TtMux.exit

.lr.ph.i114:                                      ; preds = %bb.k
  %i.it = shl nuw nsw i32 1, %i.hl
  %i.iu = sext i32 %i.hl to i64                   ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !53 ; 4 uses
  %i.ix = zext nneg i32 %i.it to i64              ; 8 uses
  %wide.trip.count59.i = zext nneg i32 %i.hk to i64 ; 10 uses
  %min.iters.check397 = icmp ult i32 %i.hk, 6
  %i.iy = sub i64 %i.ai, %i.al
  %diff.check399 = icmp ugt i64 %i.iy, -32
  %or.cond = select i1 %min.iters.check397, i1 true, i1 %diff.check399
  br i1 %or.cond, label %scalar.ph396.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph.i114
  %n.vec401 = and i64 %wide.trip.count59.i, 2147483644 ; 3 uses
  %broadcast.splatinsert402 = insertelement <2 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat403 = shufflevector <2 x i64> %broadcast.splatinsert402, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert404 = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat405 = shufflevector <2 x i64> %broadcast.splatinsert404, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph400
  %index407 = phi i64 [ 0, %vector.ph400 ], [ %index.next410, %vector.body406 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index407 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load408 = load <2 x i64>, ptr %i.iz, align 8, !tbaa !53
  %wide.load409 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !53
  %i.jb = and <2 x i64> %wide.load408, %broadcast.splat403 ; 2 uses
  %i.jc = and <2 x i64> %wide.load409, %broadcast.splat403 ; 2 uses
  %i.jd = shl <2 x i64> %i.jb, %broadcast.splat405
  %i.je = shl <2 x i64> %i.jc, %broadcast.splat405
  %i.jf = or <2 x i64> %i.jd, %i.jb
  %i.jg = or <2 x i64> %i.je, %i.jc
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index407 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <2 x i64> %i.jf, ptr %i.jh, align 8, !tbaa !53
  store <2 x i64> %i.jg, ptr %i.ji, align 8, !tbaa !53
  %index.next410 = add nuw i64 %index407, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next410, %n.vec401
  br i1 %i.jj, label %middle.block411, label %vector.body406, !llvm.loop !169

middle.block411:                                  ; preds = %vector.body406
  %cmp.n412 = icmp eq i64 %n.vec401, %wide.trip.count59.i
  br i1 %cmp.n412, label %.lr.ph.i126, label %scalar.ph396.preheader

scalar.ph396.preheader:                           ; preds = %.lr.ph.i114, %middle.block411
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i114 ], [ %n.vec401, %middle.block411 ] ; 5 uses
  %xtraiter531 = and i64 %wide.trip.count59.i, 1
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %scalar.ph396.prol.loopexit, label %scalar.ph396.prol

scalar.ph396.prol:                                ; preds = %scalar.ph396.preheader
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i.ph
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !53
  %i.jm = and i64 %i.jl, %i.iw                    ; 2 uses
  %i.jn = shl i64 %i.jm, %i.ix
  %i.jo = or i64 %i.jn, %i.jm
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i.ph
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !53
  %indvars.iv.next57.i.prol = or disjoint i64 %indvars.iv56.i.ph, 1
  br label %scalar.ph396.prol.loopexit

scalar.ph396.prol.loopexit:                       ; preds = %scalar.ph396.prol, %scalar.ph396.preheader
  %indvars.iv56.i.unr = phi i64 [ %indvars.iv56.i.ph, %scalar.ph396.preheader ], [ %indvars.iv.next57.i.prol, %scalar.ph396.prol ]
  %i.jq = add nsw i64 %wide.trip.count59.i, -1
  %i.jr = icmp eq i64 %indvars.iv56.i.ph, %i.jq
  br i1 %i.jr, label %.lr.ph.i126, label %scalar.ph396

scalar.ph396:                                     ; preds = %scalar.ph396.prol.loopexit, %scalar.ph396
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph396 ], [ %indvars.iv56.i.unr, %scalar.ph396.prol.loopexit ] ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv56.i
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !53
  %i.ju = and i64 %i.jt, %i.iw                    ; 2 uses
  %i.jv = shl i64 %i.ju, %i.ix
  %i.jw = or i64 %i.jv, %i.ju
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv56.i
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !53
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next57.i
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !53
  %i.ka = and i64 %i.jz, %i.iw                    ; 2 uses
  %i.kb = shl i64 %i.ka, %i.ix
  %i.kc = or i64 %i.kb, %i.ka
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next57.i
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !53
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next57.i.1, %wide.trip.count59.i
  br i1 %exitcond60.not.i.1, label %.lr.ph.i126, label %scalar.ph396, !llvm.loop !170

bb.l:                                             ; preds = %bb.j
  %i.ke = sext i32 %i.hk to i64
  %.idx.i.a = shl nsw i64 %i.ke, 3
  %i.kf = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i.a
  %i.kg = add nsw i32 %.1.lcssa, -5               ; 3 uses
  %i.kh = shl nuw i32 1, %i.kg                    ; 6 uses
  %i.ki = icmp sgt i32 %i.hk, 0
  br i1 %i.ki, label %.preheader.lr.ph.i104, label %Abc_TtCofactor1p.exit.thread

.preheader.lr.ph.i104:                            ; preds = %bb.l
  %.not.i = icmp eq i32 %i.kg, 31
  %i.kj = shl i32 2, %i.kg
  %i.kk = sext i32 %i.kj to i64                   ; 4 uses
  br i1 %.not.i, label %.preheader.us.preheader.i130, label %.preheader.us.preheader.i105

.preheader.us.preheader.i105:                     ; preds = %.preheader.lr.ph.i104
  %i.kl = sext i32 %i.kh to i64                   ; 7 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.kh, i32 1) ; 2 uses
  %wide.trip.count.i106 = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.km = shl nsw i64 %i.kl, 3                    ; 2 uses
  %i.kn = add i64 %i.km, %i.al
  %min.iters.check322 = icmp slt i32 %i.kh, 8
  %diff.check324 = icmp ult i64 %i.km, 32
  %i.ko = sub i64 %i.ai, %i.al
  %diff.check325 = icmp ugt i64 %i.ko, -32
  %conflict.rdx = or i1 %diff.check324, %diff.check325
  %i.kp = sub i64 %i.ai, %i.kn
  %diff.check326 = icmp ugt i64 %i.kp, -32
  %conflict.rdx327 = or i1 %conflict.rdx, %diff.check326
  %n.vec329 = and i64 %wide.trip.count.i106, 2147483644
  %xtraiter522 = and i64 %wide.trip.count.i106, 3 ; 3 uses
  %i.kq = icmp slt i32 %i.kh, 4
  %unroll_iter = and i64 %wide.trip.count.i106, 2147483644
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  %lcmp.mod524 = icmp ne i64 %xtraiter522, 0
  br label %.preheader.us.i107

.preheader.us.i107:                               ; preds = %._crit_edge.us.i113, %.preheader.us.preheader.i105
  %.04251.us.i = phi ptr [ %i.lo, %._crit_edge.us.i113 ], [ %i.ak, %.preheader.us.preheader.i105 ] ; 8 uses
end_hunk_1
