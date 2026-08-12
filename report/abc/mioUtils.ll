inline.NumInlined: 166
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Nf_ManPrepareGate:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.h, 16
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 128) #33
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.h, 1073741823
  %i.p = shl nuw nsw i32 %i.h, 1
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.h, %spec.select.i
  %.pre47 = load ptr, ptr %i.d, align 8, !tbaa !56 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre47, null
  %i.q = zext nneg i32 %spec.select.i to i64
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @realloc(ptr noundef nonnull %.pre47, i64 noundef %i.r) #33
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.u = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ %i.s, %bb.i ], [ %i.t, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 4 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !56
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !155
  %.pre48 = load i32, ptr %i.b, align 4, !tbaa !156
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.Vec_WrdPush.exit_crit_edge, %bb.g, %Vec_WrdGrow.exit11.sink.split.i
  %.pre50 = phi i32 [ %.pre51, %.Vec_WrdPush.exit_crit_edge ], [ %.pre51, %bb.g ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = phi i32 [ %i.g, %.Vec_WrdPush.exit_crit_edge ], [ %i.g, %bb.g ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.w = phi i32 [ %i.i, %.Vec_WrdPush.exit_crit_edge ], [ %i.h, %bb.g ], [ %.pre48, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.x = phi ptr [ %.pre46, %.Vec_WrdPush.exit_crit_edge ], [ %.pre47, %bb.g ], [ %i.u, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.y = phi i32 [ %i.h, %.Vec_WrdPush.exit_crit_edge ], [ %i.h, %bb.g ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.z = add nsw i32 %i.w, 1                      ; 4 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !156
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aa
  store i64 %.126, ptr %i.ab, align 8, !tbaa !158
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75 ; 2 uses
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = shl i64 %.126, %i.af
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !158 ; 2 uses
  %i.ak = and i64 %i.ag, %i.aj
  %i.al = and i64 %i.aj, %.126
  %i.am = lshr i64 %i.al, %i.af
  %i.an = or i64 %i.ak, %i.am                     ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !182

._crit_edge:                                      ; preds = %Vec_WrdPush.exit
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv37
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.aq ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !158
  %i.at = and i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !158
  %i.aw = and i64 %i.av, %i.an
  %i.ax = shl nuw i32 1, %i.ap
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = or i64 %i.az, %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !158
  %i.bd = and i64 %i.bc, %i.an
  %i.be = lshr i64 %i.bd, %i.ay
  %i.bf = or i64 %i.ba, %i.be
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge30, label %.preheader, !llvm.loop !183

._crit_edge30:                                    ; preds = %._crit_edge
  %i.bg = xor i64 %1, -1
  br label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge.1, %._crit_edge30
  %i.bh = phi ptr [ %i.x, %._crit_edge30 ], [ %i.bv, %._crit_edge.1 ]
  %i.bi = phi i32 [ %i.v, %._crit_edge30 ], [ %i.bw, %._crit_edge.1 ]
  %i.bj = phi i32 [ %i.z, %._crit_edge30 ], [ %i.bx, %._crit_edge.1 ]
  %indvars.iv37.1 = phi i64 [ 0, %._crit_edge30 ], [ %indvars.iv.next38.1, %._crit_edge.1 ] ; 2 uses
  %.02528.1 = phi i64 [ %i.bg, %._crit_edge30 ], [ %i.dd, %._crit_edge.1 ]
  br label %bb.k

bb.k:                                             ; preds = %Vec_WrdPush.exit.1, %.preheader.1
  %i.bk = phi ptr [ %i.bh, %.preheader.1 ], [ %i.bv, %Vec_WrdPush.exit.1 ] ; 3 uses
  %i.bl = phi i32 [ %i.bi, %.preheader.1 ], [ %i.bw, %Vec_WrdPush.exit.1 ] ; 8 uses
  %i.bm = phi i32 [ %i.bj, %.preheader.1 ], [ %i.bx, %Vec_WrdPush.exit.1 ] ; 2 uses
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1, %Vec_WrdPush.exit.1 ] ; 2 uses
  %.126.1 = phi i64 [ %.02528.1, %.preheader.1 ], [ %i.cl, %Vec_WrdPush.exit.1 ] ; 3 uses
  %i.bn = icmp eq i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.l, label %Vec_WrdPush.exit.1

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp slt i32 %i.bl, 16
  br i1 %i.bo, label %Vec_WrdGrow.exit11.sink.split.i.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp samesign ult i32 %i.bl, 1073741823
  %i.bq = shl nuw nsw i32 %i.bl, 1
  %spec.select.i.1 = select i1 %i.bp, i32 %i.bq, i32 2147483647 ; 3 uses
  %.not.i9.i.1 = icmp samesign ult i32 %i.bl, %spec.select.i.1
  br i1 %.not.i9.i.1, label %bb.n, label %Vec_WrdPush.exit.1

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %spec.select.i.1 to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  br label %Vec_WrdGrow.exit11.sink.split.i.1

Vec_WrdGrow.exit11.sink.split.i.1:                ; preds = %bb.l, %bb.n
  %.sink = phi i64 [ %i.bs, %bb.n ], [ 128, %bb.l ]
  %spec.select.sink.i.1 = phi i32 [ %spec.select.i.1, %bb.n ], [ 16, %bb.l ] ; 2 uses
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %.sink) #33 ; 2 uses
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !56
  store i32 %spec.select.sink.i.1, ptr %4, align 8, !tbaa !155
  %.pre49 = load i32, ptr %i.b, align 4, !tbaa !156
  br label %Vec_WrdPush.exit.1

Vec_WrdPush.exit.1:                               ; preds = %Vec_WrdGrow.exit11.sink.split.i.1, %bb.m, %bb.k
  %i.bu = phi i32 [ %.pre49, %Vec_WrdGrow.exit11.sink.split.i.1 ], [ %i.bl, %bb.m ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bv = phi ptr [ %i.bt, %Vec_WrdGrow.exit11.sink.split.i.1 ], [ %i.bk, %bb.m ], [ %i.bk, %bb.k ] ; 3 uses
  %i.bw = phi i32 [ %spec.select.sink.i.1, %Vec_WrdGrow.exit11.sink.split.i.1 ], [ %i.bl, %bb.m ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bx = add nsw i32 %i.bu, 1                    ; 3 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !156
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.by
  store i64 %.126.1, ptr %i.bz, align 8, !tbaa !158
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.1
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75 ; 2 uses
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = shl i64 %.126.1, %i.cd
  %i.cf = sext i32 %i.cb to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !158 ; 2 uses
  %i.ci = and i64 %i.ce, %i.ch
  %i.cj = and i64 %i.ch, %.126.1
  %i.ck = lshr i64 %i.cj, %i.cd
  %i.cl = or i64 %i.ci, %i.ck                     ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.1, label %bb.k, !llvm.loop !182

._crit_edge.1:                                    ; preds = %Vec_WrdPush.exit.1
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv37.1
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !75 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.co ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !158
  %i.cr = and i64 %i.cq, %i.cl
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !158
  %i.cu = and i64 %i.ct, %i.cl
  %i.cv = shl nuw i32 1, %i.cn
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = shl i64 %i.cu, %i.cw
  %i.cy = or i64 %i.cx, %i.cr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !158
  %i.db = and i64 %i.da, %i.cl
  %i.dc = lshr i64 %i.db, %i.cw
  %i.dd = or i64 %i.cy, %i.dc
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37.1, 1 ; 2 uses
  %exitcond41.1.not = icmp eq i64 %indvars.iv.next38.1, %wide.trip.count40
  br i1 %exitcond41.1.not, label %.split32, label %.preheader.1, !llvm.loop !183

.split32:                                         ; preds = %._crit_edge.1, %bb.a
  ret void
}

declare i32 @Extra_Factorial(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Nf_ManPreparePrint(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Extra_Factorial(i32 noundef %0) #30 ; 7 uses
  %i.b = shl nuw i32 1, %0                        ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.d = add nuw nsw i32 %0, 64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp ult i32 %0, 16
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.f = sub <16 x i32> %broadcast.splat, %vec.ind
  %i.g = trunc <16 x i32> %i.f to <16 x i8>
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec153 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat157, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind159 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next161, %vec.epilog.vector.body ] ; 2 uses
  %i.k = sub <4 x i32> %broadcast.splat155, %vec.ind159
  %i.l = trunc <4 x i32> %i.k to <4 x i8>
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %index158
  store <4 x i8> %i.l, ptr %i.m, align 1, !tbaa !66
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next161 = add <4 x i32> %vec.ind159, splat (i32 4)
  %i.n = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %n.vec153, %wide.trip.count
  br i1 %cmp.n162, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec153, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i32
  %i.p = sub i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.s = sext i32 %0 to i64
  %i.t = getelementptr i8, ptr %3, i64 %i.s       ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 1
  store i8 0, ptr %i.u, align 1, !tbaa !66
  %i.v = icmp sgt i32 %i.a, 0
  br i1 %i.v, label %.split.us, label %.preheader77.thread143

.preheader77.thread143:                           ; preds = %._crit_edge
  store i8 45, ptr %i.t, align 1, !tbaa !66
  br label %.split106

.split.us:                                        ; preds = %._crit_edge
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %.preheader78.lr.ph.us.preheader, label %.preheader78.lr.ph.us.us.preheader.a

.preheader78.lr.ph.us.us.preheader.a:             ; preds = %.split.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  store i8 43, ptr %i.t, align 1, !tbaa !66
  %wide.trip.count126 = zext nneg i32 %i.a to i64 ; 2 uses
  %wide.trip.count121 = zext nneg i32 %smax to i64 ; 2 uses
  br label %.preheader78.us.us.us

.preheader78.lr.ph.us.preheader:                  ; preds = %.split.us
  store i8 43, ptr %i.t, align 1, !tbaa !66
  %wide.trip.count131 = zext nneg i32 %i.a to i64 ; 5 uses
  %i.w = add nsw i64 %wide.trip.count131, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count131, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader78.us90.epil.preheader, label %.preheader78.lr.ph.us.preheader.new

.preheader78.lr.ph.us.preheader.new:              ; preds = %.preheader78.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count131, 2147483646
  br label %.preheader78.us90

.preheader78.us.us.us:                            ; preds = %._crit_edge83.us.us.us, %.preheader78.lr.ph.us.us.preheader.a
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %._crit_edge83.us.us.us ], [ 0, %.preheader78.lr.ph.us.us.preheader.a ] ; 2 uses
  %.185.us.us.us = phi i64 [ %indvars.iv.next115, %._crit_edge83.us.us.us ], [ 0, %.preheader78.lr.ph.us.us.preheader.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader78.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.f ], [ 0, %.preheader78.us.us.us ] ; 2 uses
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.f ], [ %.185.us.us.us, %.preheader78.us.us.us ] ; 2 uses
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 5 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next115 ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv114
  %i.aa = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.z) #30 ; 0 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66  ; 4 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.us.us.us = icmp ult i8 %i.ag, 26
  br i1 %or.cond.us.us.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add i8 %i.af, -97
  %or.cond75.us.us.us = icmp ult i8 %i.ah, 26
  br i1 %or.cond75.us.us.us, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %narrow.us.us.us = add nsw i8 %i.af, -32
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ai = or disjoint i8 %i.af, 32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i8 [ %i.ai, %bb.e ], [ %narrow.us.us.us, %bb.d ]
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge83.us.us.us, label %bb.b, !llvm.loop !188

._crit_edge83.us.us.us:                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv123
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.y, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !66
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !66
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !66
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge86.split.us.us.us, label %.preheader78.us.us.us, !llvm.loop !189

._crit_edge86.split.us.us.us:                     ; preds = %._crit_edge83.us.us.us
  %gep.us.us.1 = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.next115
  store i8 45, ptr %gep.us.us.1, align 1, !tbaa !66
  br label %.preheader78.us.us.us.1

.preheader78.us.us.us.1:                          ; preds = %._crit_edge83.us.us.us.1, %._crit_edge86.split.us.us.us
  %indvars.iv123.1 = phi i64 [ %indvars.iv.next124.1, %._crit_edge83.us.us.us.1 ], [ 0, %._crit_edge86.split.us.us.us ] ; 2 uses
  %.185.us.us.us.1.in = phi i64 [ %indvars.iv.next115.1, %._crit_edge83.us.us.us.1 ], [ %indvars.iv.next115, %._crit_edge86.split.us.us.us ]
  %sext = shl i64 %.185.us.us.us.1.in, 32
  %i.aq = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader78.us.us.us.1
  %indvars.iv116.1 = phi i64 [ %indvars.iv.next117.1, %bb.k ], [ 0, %.preheader78.us.us.us.1 ] ; 2 uses
  %indvars.iv114.1 = phi i64 [ %indvars.iv.next115.1, %bb.k ], [ %i.aq, %.preheader78.us.us.us.1 ] ; 2 uses
  %indvars.iv.next115.1 = add nsw i64 %indvars.iv114.1, 1 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next115.1 ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv114.1
  %i.at = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %i.as) #30 ; 0 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv116.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66  ; 4 uses
  %i.az = add i8 %i.ay, -65
  %or.cond.us.us.us.1 = icmp ult i8 %i.az, 26
  br i1 %or.cond.us.us.us.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i8 %i.ay, -97
  %or.cond75.us.us.us.1 = icmp ult i8 %i.ba, 26
  br i1 %or.cond75.us.us.us.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %narrow.us.us.us.1 = add nsw i8 %i.ay, -32
  br label %.sink.split147

bb.j:                                             ; preds = %bb.g
  %i.bb = or disjoint i8 %i.ay, 32
  br label %.sink.split147

.sink.split147:                                   ; preds = %bb.i, %bb.j
  %.sink148 = phi i8 [ %i.bb, %bb.j ], [ %narrow.us.us.us.1, %bb.i ]
  store i8 %.sink148, ptr %i.ax, align 1, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %.sink.split147, %bb.h
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116.1, 1 ; 2 uses
  %exitcond122.1.not = icmp eq i64 %indvars.iv.next117.1, %wide.trip.count121
  br i1 %exitcond122.1.not, label %._crit_edge83.us.us.us.1, label %bb.g, !llvm.loop !188

._crit_edge83.us.us.us.1:                         ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv123.1
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !66
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !66
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !66
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !66
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123.1, 1 ; 2 uses
  %exitcond127.1.not = icmp eq i64 %indvars.iv.next124.1, %wide.trip.count126
  br i1 %exitcond127.1.not, label %.preheader76.us.preheader, label %.preheader78.us.us.us.1, !llvm.loop !189

.preheader78.us90:                                ; preds = %.preheader78.us90, %.preheader78.lr.ph.us.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.preheader78.lr.ph.us.preheader.new ], [ %indvars.iv.next129.1167, %.preheader78.us90 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader78.lr.ph.us.preheader.new ], [ %niter.next.1, %.preheader78.us90 ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !75
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !66
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !66
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !66
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !66
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !75
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !66
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !66
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !66
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !66
  %indvars.iv.next129.1167 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.split.us92.unr-lcssa, label %.preheader78.us90, !llvm.loop !189

._crit_edge86.split.us92.unr-lcssa:               ; preds = %.preheader78.us90
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge86.split.us92, label %.preheader78.us90.epil.preheader

.preheader78.us90.epil.preheader:                 ; preds = %._crit_edge86.split.us92.unr-lcssa, %.preheader78.lr.ph.us.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.preheader78.lr.ph.us.preheader ], [ %indvars.iv.next129.1167, %._crit_edge86.split.us92.unr-lcssa ]
  %lcmp.mod165 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128.epil.init
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !75
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !66
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !66
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !66
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !66
  br label %._crit_edge86.split.us92

._crit_edge86.split.us92:                         ; preds = %._crit_edge86.split.us92.unr-lcssa, %.preheader78.us90.epil.preheader
  store i8 45, ptr %i.t, align 1, !tbaa !66
  %xtraiter169 = and i64 %wide.trip.count131, 1
  %i.cf = icmp eq i64 %i.w, 0
  br i1 %i.cf, label %.preheader78.us90.1.epil.preheader, label %._crit_edge86.split.us92.new

._crit_edge86.split.us92.new:                     ; preds = %._crit_edge86.split.us92
  %unroll_iter172 = and i64 %wide.trip.count131, 2147483646
  br label %.preheader78.us90.1

.preheader78.us90.1:                              ; preds = %.preheader78.us90.1, %._crit_edge86.split.us92.new
  %indvars.iv128.1 = phi i64 [ 0, %._crit_edge86.split.us92.new ], [ %indvars.iv.next129.1.1, %.preheader78.us90.1 ] ; 3 uses
  %niter173 = phi i64 [ 0, %._crit_edge86.split.us92.new ], [ %niter173.next.1, %.preheader78.us90.1 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128.1
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !75
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !66
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !66
  store i8 %i.cm, ptr %i.cj, align 1, !tbaa !66
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !66
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !75
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !66
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !66
  store i8 %i.cu, ptr %i.cr, align 1, !tbaa !66
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !66
  %indvars.iv.next129.1.1 = add nuw nsw i64 %indvars.iv128.1, 2 ; 2 uses
  %niter173.next.1 = add i64 %niter173, 2         ; 2 uses
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %.split106.loopexit.unr-lcssa, label %.preheader78.us90.1, !llvm.loop !189

.preheader76.us.preheader:                        ; preds = %._crit_edge83.us.us.us.1
  %smax136 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge97.us.us, %.preheader76.us.preheader
  %.499.us.us = phi i64 [ 0, %.preheader76.us.preheader ], [ %indvars.iv.next134, %._crit_edge97.us.us ]
  %.16798.us.us = phi i32 [ 0, %.preheader76.us.preheader ], [ %i.cz, %._crit_edge97.us.us ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.us.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.l ], [ %.499.us.us, %.preheader.us.us ] ; 3 uses
  %.16594.us.us = phi i32 [ %i.cy, %bb.l ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv133
  %i.cw = trunc nsw i64 %indvars.iv133 to i32
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.cw, i32 noundef 0, i32 noundef %.16798.us.us, i32 noundef %.16594.us.us, ptr noundef %i.cv) ; 0 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 3 uses
  %i.cy = add nuw nsw i32 %.16594.us.us, 1        ; 2 uses
  %exitcond137.not = icmp eq i32 %i.cy, %smax136
  br i1 %exitcond137.not, label %._crit_edge97.us.us, label %bb.l, !llvm.loop !190

._crit_edge97.us.us:                              ; preds = %bb.l
  %i.cz = add nuw nsw i32 %.16798.us.us, 1        ; 2 uses
  %exitcond138.not = icmp eq i32 %i.cz, %i.a
  br i1 %exitcond138.not, label %.preheader.us.us.1, label %.preheader.us.us, !llvm.loop !191

.preheader.us.us.1:                               ; preds = %._crit_edge97.us.us, %._crit_edge97.us.us.1
  %.499.us.us.1.in = phi i64 [ %indvars.iv.next134.1, %._crit_edge97.us.us.1 ], [ %indvars.iv.next134, %._crit_edge97.us.us ]
  %.16798.us.us.1 = phi i32 [ %i.df, %._crit_edge97.us.us.1 ], [ 0, %._crit_edge97.us.us ] ; 2 uses
  %sext142 = shl i64 %.499.us.us.1.in, 32
  %i.da = ashr exact i64 %sext142, 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.us.us.1
  %indvars.iv133.1 = phi i64 [ %indvars.iv.next134.1, %bb.m ], [ %i.da, %.preheader.us.us.1 ] ; 3 uses
  %.16594.us.us.1 = phi i32 [ %i.de, %bb.m ], [ 0, %.preheader.us.us.1 ] ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv133.1
  %i.dc = trunc nsw i64 %indvars.iv133.1 to i32
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.dc, i32 noundef 1, i32 noundef %.16798.us.us.1, i32 noundef %.16594.us.us.1, ptr noundef %i.db) ; 0 uses
  %indvars.iv.next134.1 = add nsw i64 %indvars.iv133.1, 1 ; 2 uses
  %i.de = add nuw nsw i32 %.16594.us.us.1, 1      ; 2 uses
  %exitcond137.1.not = icmp eq i32 %i.de, %smax136
  br i1 %exitcond137.1.not, label %._crit_edge97.us.us.1, label %bb.m, !llvm.loop !190

._crit_edge97.us.us.1:                            ; preds = %bb.m
  %i.df = add nuw nsw i32 %.16798.us.us.1, 1      ; 2 uses
  %exitcond138.1.not = icmp eq i32 %i.df, %i.a
  br i1 %exitcond138.1.not, label %.split106, label %.preheader.us.us.1, !llvm.loop !191

.split106.loopexit.unr-lcssa:                     ; preds = %.preheader78.us90.1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.split106, label %.preheader78.us90.1.epil.preheader

.preheader78.us90.1.epil.preheader:               ; preds = %.split106.loopexit.unr-lcssa, %._crit_edge86.split.us92
  %indvars.iv128.1.epil.init = phi i64 [ 0, %._crit_edge86.split.us92 ], [ %indvars.iv.next129.1.1, %.split106.loopexit.unr-lcssa ]
  %lcmp.mod171 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128.1.epil.init
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !75
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %3, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !66
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !66
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !66
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !66
  br label %.split106

.split106:                                        ; preds = %._crit_edge97.us.us.1, %.preheader78.us90.1.epil.preheader, %.split106.loopexit.unr-lcssa, %.preheader77.thread143
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define void @Nf_ManPrepareLibrary(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [7 x ptr], align 16               ; 8 uses
  %i.b = alloca [7 x ptr], align 16               ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #30
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !192
  %.neg86 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !194
  %.neg = sdiv i64 %i.h, -1000
  %.neg87 = add i64 %.neg, %.neg86
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg87, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.i = call ptr @Extra_GreyCodeSchedule(i32 noundef 2) #30 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 16, !tbaa !195
  %i.k = call ptr @Extra_GreyCodeSchedule(i32 noundef 3) #30 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !195
  %i.m = call ptr @Extra_GreyCodeSchedule(i32 noundef 4) #30 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.m, ptr %i.n, align 16, !tbaa !195
  %i.o = call ptr @Extra_GreyCodeSchedule(i32 noundef 5) #30 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !195
  %i.q = call ptr @Extra_GreyCodeSchedule(i32 noundef 6) #30 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.q, ptr %i.r, align 16, !tbaa !195
  %i.s = call ptr @Extra_PermSchedule(i32 noundef 2) #30 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %i.t, align 16, !tbaa !195
  %i.u = call ptr @Extra_PermSchedule(i32 noundef 3) #30 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !195
  %i.w = call ptr @Extra_PermSchedule(i32 noundef 4) #30 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.w, ptr %i.x, align 16, !tbaa !195
  %i.y = call ptr @Extra_PermSchedule(i32 noundef 5) #30 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.y, ptr %i.z, align 8, !tbaa !195
  %i.aa = call ptr @Extra_PermSchedule(i32 noundef 6) #30 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !195
  %i.ac = call ptr @Mio_CollectRoots(ptr noundef %0, i32 noundef 6, float noundef 1.000000e+20, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 0) ; 3 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !75  ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 8) #35 ; 3 uses
  %i.ag = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 3 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !156
  store i32 92160, ptr %i.ag, align 8, !tbaa !155
  %i.ai = call noalias dereferenceable_or_null(737280) ptr @malloc(i64 noundef 737280) #31 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !56
  %i.ak = icmp sgt i32 %i.ad, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_Clock.exit
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_WrdUniqify.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_WrdUniqify.exit ] ; 4 uses
  %.092 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bw, %Vec_WrdUniqify.exit ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !99
  %i.an = call i32 @Mio_GateReadPinNum(ptr noundef %i.am) #30 ; 6 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !99
  %i.ap = call i64 @Mio_GateReadTruth(ptr noundef %i.ao) #30 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !158
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !195
  %i.au = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !195
  call void @Nf_ManPrepareGate(i32 noundef %i.an, i64 noundef %i.ap, ptr noundef %i.at, ptr noundef %i.av, ptr noundef nonnull %i.ag)
  %i.aw = load i32, ptr %i.ah, align 4, !tbaa !156 ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %Vec_WrdUniqify.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.val16.i = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 7 uses
  %i.ay = zext nneg i32 %i.aw to i64              ; 2 uses
  call void @qsort(ptr noundef %.val16.i, i64 noundef %i.ay, i64 noundef 8, ptr noundef nonnull @Vec_WrdSortCompare1) #30
  %i.az = add nsw i64 %i.ay, -1                   ; 3 uses
  %xtraiter = and i64 %i.az, 1
  %i.ba = icmp eq i32 %i.aw, 2
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.az, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %.018.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.1.i.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val16.i, i64 %indvars.iv.i ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !158 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !158
  %.not.i = icmp eq i64 %i.bc, %i.be
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = add nsw i32 %.018.i, 1
  %i.bg = sext i32 %.018.i to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val16.i, i64 %i.bg
  store i64 %i.bc, ptr %i.bh, align 8, !tbaa !158
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %i.bf, %bb.d ], [ %.018.i, %bb.c ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val16.i, i64 %indvars.iv.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !158 ; 2 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !158
  %.not.i.1 = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = add nsw i32 %.1.i, 1
  %i.bn = sext i32 %.1.i to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val16.i, i64 %i.bn
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i32 [ %i.bm, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !196

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.018.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod123 = trunc i64 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod123)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val16.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !158 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !158
  %.not.i.epil = icmp eq i64 %i.bq, %i.bs
  br i1 %.not.i.epil, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
end_hunk_0
