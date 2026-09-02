Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj3?download=true
inline.NumInlined: 296
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 44
begin_hunk_0_@Zyx_TestCreateTruthTables:bb.a
  %i.d = select i1 %i.a, i32 1, i32 %.fr          ; 4 uses
  %i.e = add i32 %0, 1
  %i.f = add i32 %i.e, %1
  %i.g = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.h = shl i32 %i.f, %i.g                       ; 4 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.j = add i32 %i.h, -1
  %or.cond.i.i = icmp ult i32 %i.j, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.h ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.i, align 8, !tbaa !20
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #25
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !21
  store i32 %i.h, ptr %i.o, align 4, !tbaa !22
  %i.q = sext i32 %i.h to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.r, i1 false)
  %i.s = icmp sgt i32 %0, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count.i = zext i32 %i.d to i64       ; 6 uses
  br i1 %i.t, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check22 = icmp ult i32 %i.d, 4
  %n.vec24 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n31 = icmp eq i64 %n.vec24, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Abc_TtIthVar.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %Abc_TtIthVar.exit.us ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl i32 %i.u, %i.g
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w ; 4 uses
  %i.y = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.y, label %.preheader.i.us, label %.preheader18.i.us

.preheader18.i.us:                                ; preds = %.lr.ph.split.us
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.z, -6
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  br i1 %min.iters.check22, label %scalar.ph21.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %.preheader18.i.us
  %broadcast.splatinsert25 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat26 = shufflevector <2 x i32> %broadcast.splatinsert25, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph23
  %index28 = phi i64 [ 0, %vector.ph23 ], [ %index.next29, %vector.body27 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph23 ], [ %vec.ind.next, %vector.body27 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ac = and <2 x i32> %broadcast.splat26, %vec.ind
  %i.ad = and <2 x i32> %broadcast.splat26, %step.add
  %i.ae = icmp ne <2 x i32> %i.ac, zeroinitializer
  %i.af = icmp ne <2 x i32> %i.ad, zeroinitializer
  %i.ag = sext <2 x i1> %i.ae to <2 x i64>
  %i.ah = sext <2 x i1> %i.af to <2 x i64>
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %i.ag, ptr %i.ai, align 8, !tbaa !26
  store <2 x i64> %i.ah, ptr %i.aj, align 8, !tbaa !26
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.ak = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.ak, label %middle.block30, label %vector.body27, !llvm.loop !267

middle.block30:                                   ; preds = %vector.body27
  br i1 %cmp.n31, label %Abc_TtIthVar.exit.us, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %.preheader18.i.us, %middle.block30
  %indvars.iv.i.us.ph = phi i64 [ 0, %.preheader18.i.us ], [ %n.vec24, %middle.block30 ]
  br label %scalar.ph21

scalar.ph21:                                      ; preds = %scalar.ph21.preheader, %scalar.ph21
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %scalar.ph21 ], [ %indvars.iv.i.us.ph, %scalar.ph21.preheader ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.am = and i32 %i.ab, %i.al
  %.not.i.us = icmp ne i32 %i.am, 0
  %spec.select.i.us = sext i1 %.not.i.us to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.us
  store i64 %spec.select.i.us, ptr %i.an, align 8, !tbaa !26
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtIthVar.exit.us, label %scalar.ph21, !llvm.loop !268

.preheader.i.us:                                  ; preds = %.lr.ph.split.us
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtIthVar.exit.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.us, %middle.block
  %indvars.iv25.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv25.i.us = phi i64 [ %indvars.iv.next26.i.us, %scalar.ph ], [ %indvars.iv25.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv25.i.us
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !26
  %indvars.iv.next26.i.us = add nuw nsw i64 %indvars.iv25.i.us, 1 ; 2 uses
  %exitcond29.not.i.us = icmp eq i64 %indvars.iv.next26.i.us, %wide.trip.count.i
  br i1 %exitcond29.not.i.us, label %Abc_TtIthVar.exit.us, label %scalar.ph, !llvm.loop !270

Abc_TtIthVar.exit.us:                             ; preds = %scalar.ph21, %scalar.ph, %middle.block30, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !271

._crit_edge:                                      ; preds = %Abc_TtIthVar.exit.us, %.lr.ph, %Vec_WrdStart.exit
  ret ptr %i.i
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Zyx_TestReadNode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 6 uses
  %i.b = icmp slt i32 %2, 7                       ; 2 uses
  %i.c = add nsw i32 %2, -6                       ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.f = getelementptr i8, ptr %1, i64 4
  %.val76 = load i32, ptr %i.f, align 4, !tbaa !22
  %i.g = sdiv i32 %.val76, %i.e
  %i.h = add nsw i32 %i.g, -1
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val75 = load ptr, ptr %i.i, align 8, !tbaa !21 ; 3 uses
  %i.j = select i1 %i.b, i32 0, i32 %i.c          ; 5 uses
  %i.k = shl i32 %i.h, %i.j
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr [8 x i8], ptr %.val75, i64 %i.l ; 28 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -1       ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !74
  %i.r = icmp eq i8 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.p, align 1, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !74
  %i.w = icmp eq i8 %i.v, 13
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.u, align 1, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = load i8, ptr %0, align 1, !tbaa !74      ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i8 %i.x, 0
  br i1 %i.z, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = add nsw i32 %3, 1
  %i.ad = shl nuw i32 1, %3                       ; 4 uses
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ab
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.ab, i32 noundef %i.ae) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ag = add nsw i32 %4, 65
  %.not72 = icmp eq i32 %i.ag, %i.y
  br i1 %.not72, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %0) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.aj = sext i32 %i.ad to i64                   ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = icmp sgt i32 %3, 0                      ; 2 uses
  %.val.pre = load ptr, ptr %i.i, align 8, !tbaa !21 ; 6 uses
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.am = zext nneg i32 %3 to i64                 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.am, -1   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.prol
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !74  ; 2 uses
  %i.ap = sext i8 %i.ao to i32
  %i.aq = icmp sgt i8 %i.ao, 96
  %.v.prol = select i1 %i.aq, i32 -97, i32 -65
  %i.ar = add nsw i32 %.v.prol, %i.ap
  %i.as = shl i32 %i.ar, %i.j
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %.val.pre, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.prol
  store ptr %i.au, ptr %i.av, align 8, !tbaa !73
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.aw = icmp eq i32 %3, 1
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !74  ; 2 uses
  %i.az = sext i8 %i.ay to i32
  %i.ba = icmp sgt i8 %i.ay, 96
  %.v = select i1 %i.ba, i32 -97, i32 -65
  %i.bb = add nsw i32 %.v, %i.az
  %i.bc = shl i32 %i.bb, %i.j
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.pre, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !73
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !74  ; 2 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = icmp sgt i8 %i.bh, 96
  %.v.1 = select i1 %i.bj, i32 -97, i32 -65
  %i.bk = add nsw i32 %.v.1, %i.bi
  %i.bl = shl i32 %i.bk, %i.j
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %.val.pre, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !73
  %i.bp = icmp sgt i64 %indvars.iv, 2
  br i1 %i.bp, label %.lr.ph.new, label %._crit_edge, !llvm.loop !272

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.j
  %i.bq = shl i32 %4, %i.j
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %.val.pre, i64 %i.br ; 15 uses
  %i.bt = icmp sgt i32 %i.e, 0                    ; 3 uses
  br i1 %i.bt, label %.lr.ph.preheader.i, label %Abc_TtConst0.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bu = zext nneg i32 %i.e to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i8 0, i64 %i.bv, i1 false), !tbaa !26
  br label %Abc_TtConst0.exit

Abc_TtConst0.exit:                                ; preds = %._crit_edge, %.lr.ph.preheader.i
  %.not111 = icmp eq i32 %3, 31
  br i1 %.not111, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %Abc_TtConst0.exit
  %i.bw = zext i32 %i.e to i64                    ; 18 uses
  %i.bx = shl nuw nsw i64 %i.bw, 3                ; 2 uses
  br i1 %i.al, label %.lr.ph93.split.us, label %.lr.ph93.split

.lr.ph93.split.us:                                ; preds = %.lr.ph93
  br i1 %i.bt, label %.lr.ph93.split.us.split.us.preheader, label %.loopexit

.lr.ph93.split.us.split.us.preheader:             ; preds = %.lr.ph93.split.us
  %smax131 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count132 = zext nneg i32 %smax131 to i64
  %5 = getelementptr i8, ptr %i.ai, i64 %i.aj
  %wide.trip.count126 = zext nneg i32 %3 to i64
  %i.by = shl nuw nsw i64 %i.bw, 3                ; 2 uses
  %i.bz = add nsw i64 %i.br, %i.bw
  %i.ca = shl nsw i64 %i.bz, 3
  %scevgep146 = getelementptr i8, ptr %.val.pre, i64 %i.ca
  %i.cb = add nsw i64 %i.l, %i.bw
  %i.cc = shl nsw i64 %i.cb, 3
  %scevgep147 = getelementptr i8, ptr %.val75, i64 %i.cc ; 3 uses
  %min.iters.check171 = icmp ult i32 %i.e, 4      ; 2 uses
  %n.vec192 = and i64 %i.bw, 2147483644
  %xtraiter215 = and i64 %i.bw, 3                 ; 3 uses
  %i.cd = icmp ult i32 %i.e, 4
  %unroll_iter219 = and i64 %i.bw, 2147483644
  %lcmp.mod217.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod218 = icmp ne i64 %xtraiter215, 0
  %n.vec173 = and i64 %i.bw, 2147483644
  %xtraiter221 = and i64 %i.bw, 1
  %i.ce = icmp eq i32 %i.e, 1
  %unroll_iter225 = and i64 %i.bw, 2147483646
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  %lcmp.mod224 = trunc i32 %i.e to i1
  %min.iters.check152 = icmp ult i32 %i.e, 4
  %bound0148 = icmp ult ptr %i.bs, %scevgep147
  %bound1149 = icmp ult ptr %i.m, %scevgep146
  %found.conflict150 = and i1 %bound0148, %bound1149
  %n.vec154 = and i64 %i.bw, 2147483644
  %xtraiter227 = and i64 %i.bw, 3                 ; 3 uses
  %i.cf = icmp ult i32 %i.e, 4
  %unroll_iter231 = and i64 %i.bw, 2147483644
  %lcmp.mod229.not = icmp eq i64 %xtraiter227, 0
  %lcmp.mod230 = icmp ne i64 %xtraiter227, 0
  br label %.lr.ph93.split.us.split.us

.lr.ph93.split.us.split.us:                       ; preds = %.lr.ph93.split.us.split.us.preheader, %Abc_TtOr.exit.us.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.split.us.split.us.preheader ], [ %indvars.iv.next129, %Abc_TtOr.exit.us.us ] ; 3 uses
  %6 = xor i64 %indvars.iv128, -1
  %i.cg = getelementptr i8, ptr %5, i64 %6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !74
  %i.ci = icmp eq i8 %i.ch, 48
  br i1 %i.ci, label %Abc_TtOr.exit.us.us, label %.lr.ph.preheader.i77.us.us

.lr.ph.preheader.i77.us.us:                       ; preds = %.lr.ph93.split.us.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, i8 -1, i64 %i.bx, i1 false), !tbaa !26
  %i.cj = trunc nuw nsw i64 %indvars.iv128 to i32
  br label %bb.k

.lr.ph.i81.us.us:                                 ; preds = %.lr.ph.i81.us.us.preheader208, %.lr.ph.i81.us.us
  %indvars.iv.i82.us.us = phi i64 [ %indvars.iv.next.i83.us.us.3, %.lr.ph.i81.us.us ], [ 0, %.lr.ph.i81.us.us.preheader208 ] ; 6 uses
  %niter232 = phi i64 [ %niter232.next.3, %.lr.ph.i81.us.us ], [ 0, %.lr.ph.i81.us.us.preheader208 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i82.us.us ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i82.us.us
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.co = or i64 %i.cn, %i.cl
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !26
  %indvars.iv.next.i83.us.us = or disjoint i64 %indvars.iv.i82.us.us, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us.us ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ct = or i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cp, align 8, !tbaa !26
  %indvars.iv.next.i83.us.us.1 = or disjoint i64 %indvars.iv.i82.us.us, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us.us.1 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us.us.1
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = or i64 %i.cx, %i.cv
  store i64 %i.cy, ptr %i.cu, align 8, !tbaa !26
  %indvars.iv.next.i83.us.us.2 = or disjoint i64 %indvars.iv.i82.us.us, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us.us.2 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us.us.2
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !26
  %i.dd = or i64 %i.dc, %i.da
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !26
  %indvars.iv.next.i83.us.us.3 = add nuw nsw i64 %indvars.iv.i82.us.us, 4 ; 2 uses
  %niter232.next.3 = add i64 %niter232, 4         ; 2 uses
  %niter232.ncmp.3 = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3, label %Abc_TtOr.exit.us.us.loopexit.unr-lcssa, label %.lr.ph.i81.us.us, !llvm.loop !273

Abc_TtOr.exit.us.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i81.us.us
  br i1 %lcmp.mod229.not, label %Abc_TtOr.exit.us.us, label %.lr.ph.i81.us.us.epil.preheader

.lr.ph.i81.us.us.epil.preheader:                  ; preds = %Abc_TtOr.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i81.us.us.preheader208
  %indvars.iv.i82.us.us.epil.init = phi i64 [ 0, %.lr.ph.i81.us.us.preheader208 ], [ %indvars.iv.next.i83.us.us.3, %Abc_TtOr.exit.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.i81.us.us.epil

.lr.ph.i81.us.us.epil:                            ; preds = %.lr.ph.i81.us.us.epil, %.lr.ph.i81.us.us.epil.preheader
  %indvars.iv.i82.us.us.epil = phi i64 [ %indvars.iv.next.i83.us.us.epil, %.lr.ph.i81.us.us.epil ], [ %indvars.iv.i82.us.us.epil.init, %.lr.ph.i81.us.us.epil.preheader ] ; 3 uses
  %epil.iter228 = phi i64 [ %epil.iter228.next, %.lr.ph.i81.us.us.epil ], [ 0, %.lr.ph.i81.us.us.epil.preheader ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i82.us.us.epil ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i82.us.us.epil
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !26
  %i.di = or i64 %i.dh, %i.df
  store i64 %i.di, ptr %i.de, align 8, !tbaa !26
  %indvars.iv.next.i83.us.us.epil = add nuw nsw i64 %indvars.iv.i82.us.us.epil, 1
  %epil.iter228.next = add i64 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i64 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %Abc_TtOr.exit.us.us, label %.lr.ph.i81.us.us.epil, !llvm.loop !274

Abc_TtOr.exit.us.us:                              ; preds = %vector.body155, %Abc_TtOr.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i81.us.us.epil, %.lr.ph93.split.us.split.us
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count132
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph93.split.us.split.us, !llvm.loop !275

bb.k:                                             ; preds = %Abc_TtAndCompl.exit.us.us.us, %.lr.ph.preheader.i77.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %Abc_TtAndCompl.exit.us.us.us ], [ 0, %.lr.ph.preheader.i77.us.us ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv123
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !73 ; 14 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv123 to i32
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = and i32 %i.dm, %i.cj
  %.not.i.not.us.us.us = icmp eq i32 %i.dn, 0
  br i1 %.not.i.not.us.us.us, label %.lr.ph.i.us.us.us.preheader, label %.lr.ph42.i.us.us.us.preheader

.lr.ph42.i.us.us.us.preheader:                    ; preds = %bb.k
  br i1 %min.iters.check171, label %.lr.ph42.i.us.us.us.preheader205, label %vector.memcheck184

.lr.ph42.i.us.us.us.preheader205:                 ; preds = %vector.memcheck184, %.lr.ph42.i.us.us.us.preheader
  br i1 %i.cd, label %.lr.ph42.i.us.us.us.epil.preheader, label %.lr.ph42.i.us.us.us

vector.memcheck184:                               ; preds = %.lr.ph42.i.us.us.us.preheader
  %scevgep185 = getelementptr i8, ptr %i.dk, i64 %i.by
  %bound0186 = icmp ult ptr %i.m, %scevgep185
  %bound1187 = icmp ult ptr %i.dk, %scevgep147
  %found.conflict188 = and i1 %bound0186, %bound1187
  br i1 %found.conflict188, label %.lr.ph42.i.us.us.us.preheader205, label %vector.body193

vector.body193:                                   ; preds = %vector.memcheck184, %vector.body193
  %index194 = phi i64 [ %index.next199, %vector.body193 ], [ 0, %vector.memcheck184 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index194 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load195 = load <2 x i64>, ptr %i.do, align 8, !tbaa !26, !alias.scope !298, !noalias !299
  %wide.load196 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !26, !alias.scope !298, !noalias !299
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index194 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load197 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !26, !alias.scope !299
  %wide.load198 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !26, !alias.scope !299
  %i.ds = and <2 x i64> %wide.load197, %wide.load195
  %i.dt = and <2 x i64> %wide.load198, %wide.load196
  store <2 x i64> %i.ds, ptr %i.do, align 8, !tbaa !26, !alias.scope !298, !noalias !299
  store <2 x i64> %i.dt, ptr %i.dp, align 8, !tbaa !26, !alias.scope !298, !noalias !299
  %index.next199 = add nuw i64 %index194, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.du, label %Abc_TtAndCompl.exit.us.us.us, label %vector.body193, !llvm.loop !279

.lr.ph.i.us.us.us.preheader:                      ; preds = %bb.k
  br i1 %min.iters.check171, label %.lr.ph.i.us.us.us.preheader203, label %vector.memcheck165

.lr.ph.i.us.us.us.preheader203:                   ; preds = %vector.memcheck165, %.lr.ph.i.us.us.us.preheader
  br i1 %i.ce, label %.lr.ph.i.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us

vector.memcheck165:                               ; preds = %.lr.ph.i.us.us.us.preheader
  %scevgep166 = getelementptr i8, ptr %i.dk, i64 %i.by
  %bound0167 = icmp ult ptr %i.m, %scevgep166
  %bound1168 = icmp ult ptr %i.dk, %scevgep147
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.us.us.us.preheader203, label %vector.body174

vector.body174:                                   ; preds = %vector.memcheck165, %vector.body174
  %index175 = phi i64 [ %index.next180, %vector.body174 ], [ 0, %vector.memcheck165 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index175 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !26, !alias.scope !300, !noalias !301
  %wide.load177 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !26, !alias.scope !300, !noalias !301
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index175 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load178 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !26, !alias.scope !301
  %wide.load179 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !26, !alias.scope !301
  %i.dz = xor <2 x i64> %wide.load178, splat (i64 -1)
  %i.ea = xor <2 x i64> %wide.load179, splat (i64 -1)
  %i.eb = and <2 x i64> %wide.load176, %i.dz
  %i.ec = and <2 x i64> %wide.load177, %i.ea
  store <2 x i64> %i.eb, ptr %i.dv, align 8, !tbaa !26, !alias.scope !300, !noalias !301
  store <2 x i64> %i.ec, ptr %i.dw, align 8, !tbaa !26, !alias.scope !300, !noalias !301
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ed, label %Abc_TtAndCompl.exit.us.us.us, label %vector.body174, !llvm.loop !283

.lr.ph42.i.us.us.us:                              ; preds = %.lr.ph42.i.us.us.us.preheader205, %.lr.ph42.i.us.us.us
  %indvars.iv45.i.us.us.us = phi i64 [ %indvars.iv.next46.i.us.us.us.3, %.lr.ph42.i.us.us.us ], [ 0, %.lr.ph42.i.us.us.us.preheader205 ] ; 6 uses
  %niter220 = phi i64 [ %niter220.next.3, %.lr.ph42.i.us.us.us ], [ 0, %.lr.ph42.i.us.us.us.preheader205 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv45.i.us.us.us ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !26
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv45.i.us.us.us
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26
  %i.ei = and i64 %i.eh, %i.ef
  store i64 %i.ei, ptr %i.ee, align 8, !tbaa !26
  %indvars.iv.next46.i.us.us.us = or disjoint i64 %indvars.iv45.i.us.us.us, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next46.i.us.us.us ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next46.i.us.us.us
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26
  %i.en = and i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.ej, align 8, !tbaa !26
  %indvars.iv.next46.i.us.us.us.1 = or disjoint i64 %indvars.iv45.i.us.us.us, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next46.i.us.us.us.1 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next46.i.us.us.us.1
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !26
  %i.es = and i64 %i.er, %i.ep
  store i64 %i.es, ptr %i.eo, align 8, !tbaa !26
  %indvars.iv.next46.i.us.us.us.2 = or disjoint i64 %indvars.iv45.i.us.us.us, 3 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next46.i.us.us.us.2 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next46.i.us.us.us.2
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !26
  %i.ex = and i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.et, align 8, !tbaa !26
  %indvars.iv.next46.i.us.us.us.3 = add nuw nsw i64 %indvars.iv45.i.us.us.us, 4 ; 2 uses
  %niter220.next.3 = add i64 %niter220, 4         ; 2 uses
  %niter220.ncmp.3 = icmp eq i64 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %Abc_TtAndCompl.exit.us.us.us.loopexit206.unr-lcssa, label %.lr.ph42.i.us.us.us, !llvm.loop !284

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.preheader203, %.lr.ph.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.1, %.lr.ph.i.us.us.us ], [ 0, %.lr.ph.i.us.us.us.preheader203 ] ; 4 uses
  %niter226 = phi i64 [ %niter226.next.1, %.lr.ph.i.us.us.us ], [ 0, %.lr.ph.i.us.us.us.preheader203 ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.us.us.us ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.us.us.us
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26
  %i.fc = xor i64 %i.fb, -1
  %i.fd = and i64 %i.ez, %i.fc
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !26
  %indvars.iv.next.i.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.us.us.us ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !26
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.us.us.us
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.fi = xor i64 %i.fh, -1
  %i.fj = and i64 %i.ff, %i.fi
  store i64 %i.fj, ptr %i.fe, align 8, !tbaa !26
  %indvars.iv.next.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us, 2 ; 2 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %Abc_TtAndCompl.exit.us.us.us.loopexit.unr-lcssa, label %.lr.ph.i.us.us.us, !llvm.loop !285

Abc_TtAndCompl.exit.us.us.us.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.us.us.us
  br i1 %lcmp.mod223.not, label %Abc_TtAndCompl.exit.us.us.us, label %.lr.ph.i.us.us.us.epil.preheader

.lr.ph.i.us.us.us.epil.preheader:                 ; preds = %Abc_TtAndCompl.exit.us.us.us.loopexit.unr-lcssa, %.lr.ph.i.us.us.us.preheader203
  %indvars.iv.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.preheader203 ], [ %indvars.iv.next.i.us.us.us.1, %Abc_TtAndCompl.exit.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.us.us.us.epil.init ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.us.us.us.epil.init
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !26
  %i.fo = xor i64 %i.fn, -1
  %i.fp = and i64 %i.fl, %i.fo
  store i64 %i.fp, ptr %i.fk, align 8, !tbaa !26
  br label %Abc_TtAndCompl.exit.us.us.us

Abc_TtAndCompl.exit.us.us.us.loopexit206.unr-lcssa: ; preds = %.lr.ph42.i.us.us.us
  br i1 %lcmp.mod217.not, label %Abc_TtAndCompl.exit.us.us.us, label %.lr.ph42.i.us.us.us.epil.preheader

.lr.ph42.i.us.us.us.epil.preheader:               ; preds = %Abc_TtAndCompl.exit.us.us.us.loopexit206.unr-lcssa, %.lr.ph42.i.us.us.us.preheader205
  %indvars.iv45.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph42.i.us.us.us.preheader205 ], [ %indvars.iv.next46.i.us.us.us.3, %Abc_TtAndCompl.exit.us.us.us.loopexit206.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph42.i.us.us.us.epil

.lr.ph42.i.us.us.us.epil:                         ; preds = %.lr.ph42.i.us.us.us.epil, %.lr.ph42.i.us.us.us.epil.preheader
  %indvars.iv45.i.us.us.us.epil = phi i64 [ %indvars.iv.next46.i.us.us.us.epil, %.lr.ph42.i.us.us.us.epil ], [ %indvars.iv45.i.us.us.us.epil.init, %.lr.ph42.i.us.us.us.epil.preheader ] ; 3 uses
  %epil.iter216 = phi i64 [ %epil.iter216.next, %.lr.ph42.i.us.us.us.epil ], [ 0, %.lr.ph42.i.us.us.us.epil.preheader ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv45.i.us.us.us.epil ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !26
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv45.i.us.us.us.epil
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !26
  %i.fu = and i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.fq, align 8, !tbaa !26
  %indvars.iv.next46.i.us.us.us.epil = add nuw nsw i64 %indvars.iv45.i.us.us.us.epil, 1
  %epil.iter216.next = add i64 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i64 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %Abc_TtAndCompl.exit.us.us.us, label %.lr.ph42.i.us.us.us.epil, !llvm.loop !286

Abc_TtAndCompl.exit.us.us.us:                     ; preds = %vector.body193, %Abc_TtAndCompl.exit.us.us.us.loopexit206.unr-lcssa, %.lr.ph42.i.us.us.us.epil, %vector.body174, %.lr.ph.i.us.us.us.epil.preheader, %Abc_TtAndCompl.exit.us.us.us.loopexit.unr-lcssa
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.lr.ph.i81.us.us.preheader, label %bb.k, !llvm.loop !287

.lr.ph.i81.us.us.preheader:                       ; preds = %Abc_TtAndCompl.exit.us.us.us
  %brmerge = select i1 %min.iters.check152, i1 true, i1 %found.conflict150
  br i1 %brmerge, label %.lr.ph.i81.us.us.preheader208, label %vector.body155

.lr.ph.i81.us.us.preheader208:                    ; preds = %.lr.ph.i81.us.us.preheader
  br i1 %i.cf, label %.lr.ph.i81.us.us.epil.preheader, label %.lr.ph.i81.us.us

vector.body155:                                   ; preds = %.lr.ph.i81.us.us.preheader, %vector.body155
  %index156 = phi i64 [ %index.next161, %vector.body155 ], [ 0, %.lr.ph.i81.us.us.preheader ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index156 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load157 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !26, !alias.scope !302, !noalias !303
  %wide.load158 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !26, !alias.scope !302, !noalias !303
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index156 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load159 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !26, !alias.scope !303
  %wide.load160 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !26, !alias.scope !303
  %i.fz = or <2 x i64> %wide.load159, %wide.load157
  %i.ga = or <2 x i64> %wide.load160, %wide.load158
  store <2 x i64> %i.fz, ptr %i.fv, align 8, !tbaa !26, !alias.scope !302, !noalias !303
  store <2 x i64> %i.ga, ptr %i.fw, align 8, !tbaa !26, !alias.scope !302, !noalias !303
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.gb, label %Abc_TtOr.exit.us.us, label %vector.body155, !llvm.loop !291

.lr.ph93.split:                                   ; preds = %.lr.ph93
  br i1 %i.bt, label %.lr.ph93.split.split.us.preheader, label %.loopexit

.lr.ph93.split.split.us.preheader:                ; preds = %.lr.ph93.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %7 = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.gc = add nsw i64 %i.br, %i.bw
  %i.gd = shl nsw i64 %i.gc, 3
  %scevgep = getelementptr i8, ptr %.val.pre, i64 %i.gd
  %i.ge = add nsw i64 %i.l, %i.bw
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep141 = getelementptr i8, ptr %.val75, i64 %i.gf
  %min.iters.check = icmp ult i32 %i.e, 4
  %bound0 = icmp ult ptr %i.bs, %scevgep141
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.bw, 2147483644
  %xtraiter212 = and i64 %i.bw, 3                 ; 3 uses
  %i.gg = icmp ult i32 %i.e, 4
  %unroll_iter = and i64 %i.bw, 2147483644
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  %lcmp.mod214 = icmp ne i64 %xtraiter212, 0
  br label %.lr.ph93.split.split.us

.lr.ph93.split.split.us:                          ; preds = %.lr.ph93.split.split.us.preheader, %Abc_TtOr.exit.us109
  %indvars.iv117 = phi i64 [ 0, %.lr.ph93.split.split.us.preheader ], [ %indvars.iv.next118, %Abc_TtOr.exit.us109 ] ; 2 uses
  %8 = xor i64 %indvars.iv117, -1
  %i.gh = getelementptr i8, ptr %7, i64 %8
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !74
  %i.gj = icmp eq i8 %i.gi, 48
  br i1 %i.gj, label %Abc_TtOr.exit.us109, label %.lr.ph.preheader.i77.us102

.lr.ph.preheader.i77.us102:                       ; preds = %.lr.ph93.split.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, i8 -1, i64 %i.bx, i1 false), !tbaa !26
  %brmerge233 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge233, label %.lr.ph.i81.us105.preheader, label %vector.body

.lr.ph.i81.us105.preheader:                       ; preds = %.lr.ph.preheader.i77.us102
  br i1 %i.gg, label %.lr.ph.i81.us105.epil.preheader, label %.lr.ph.i81.us105

vector.body:                                      ; preds = %.lr.ph.preheader.i77.us102, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i77.us102 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gk, align 8, !tbaa !26, !alias.scope !304, !noalias !305
  %wide.load142 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !26, !alias.scope !304, !noalias !305
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load143 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !26, !alias.scope !305
  %wide.load144 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !26, !alias.scope !305
  %i.go = or <2 x i64> %wide.load143, %wide.load
  %i.gp = or <2 x i64> %wide.load144, %wide.load142
  store <2 x i64> %i.go, ptr %i.gk, align 8, !tbaa !26, !alias.scope !304, !noalias !305
  store <2 x i64> %i.gp, ptr %i.gl, align 8, !tbaa !26, !alias.scope !304, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %Abc_TtOr.exit.us109, label %vector.body, !llvm.loop !295

.lr.ph.i81.us105:                                 ; preds = %.lr.ph.i81.us105.preheader, %.lr.ph.i81.us105
  %indvars.iv.i82.us106 = phi i64 [ %indvars.iv.next.i83.us107.3, %.lr.ph.i81.us105 ], [ 0, %.lr.ph.i81.us105.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i81.us105 ], [ 0, %.lr.ph.i81.us105.preheader ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i82.us106 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i82.us106
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !26
  %i.gv = or i64 %i.gu, %i.gs
  store i64 %i.gv, ptr %i.gr, align 8, !tbaa !26
  %indvars.iv.next.i83.us107 = or disjoint i64 %indvars.iv.i82.us106, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us107 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us107
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !26
  %i.ha = or i64 %i.gz, %i.gx
  store i64 %i.ha, ptr %i.gw, align 8, !tbaa !26
  %indvars.iv.next.i83.us107.1 = or disjoint i64 %indvars.iv.i82.us106, 2 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us107.1 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !26
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us107.1
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.hf = or i64 %i.he, %i.hc
  store i64 %i.hf, ptr %i.hb, align 8, !tbaa !26
  %indvars.iv.next.i83.us107.2 = or disjoint i64 %indvars.iv.i82.us106, 3 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i83.us107.2 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !26
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i83.us107.2
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !26
  %i.hk = or i64 %i.hj, %i.hh
  store i64 %i.hk, ptr %i.hg, align 8, !tbaa !26
  %indvars.iv.next.i83.us107.3 = add nuw nsw i64 %indvars.iv.i82.us106, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtOr.exit.us109.loopexit.unr-lcssa, label %.lr.ph.i81.us105, !llvm.loop !296

Abc_TtOr.exit.us109.loopexit.unr-lcssa:           ; preds = %.lr.ph.i81.us105
  br i1 %lcmp.mod213.not, label %Abc_TtOr.exit.us109, label %.lr.ph.i81.us105.epil.preheader

.lr.ph.i81.us105.epil.preheader:                  ; preds = %Abc_TtOr.exit.us109.loopexit.unr-lcssa, %.lr.ph.i81.us105.preheader
  %indvars.iv.i82.us106.epil.init = phi i64 [ 0, %.lr.ph.i81.us105.preheader ], [ %indvars.iv.next.i83.us107.3, %Abc_TtOr.exit.us109.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph.i81.us105.epil

.lr.ph.i81.us105.epil:                            ; preds = %.lr.ph.i81.us105.epil, %.lr.ph.i81.us105.epil.preheader
  %indvars.iv.i82.us106.epil = phi i64 [ %indvars.iv.next.i83.us107.epil, %.lr.ph.i81.us105.epil ], [ %indvars.iv.i82.us106.epil.init, %.lr.ph.i81.us105.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i81.us105.epil ], [ 0, %.lr.ph.i81.us105.epil.preheader ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i82.us106.epil ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i82.us106.epil
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !26
  %i.hp = or i64 %i.ho, %i.hm
  store i64 %i.hp, ptr %i.hl, align 8, !tbaa !26
  %indvars.iv.next.i83.us107.epil = add nuw nsw i64 %indvars.iv.i82.us106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter212
  br i1 %epil.iter.cmp.not, label %Abc_TtOr.exit.us109, label %.lr.ph.i81.us105.epil, !llvm.loop !297

Abc_TtOr.exit.us109:                              ; preds = %vector.body, %Abc_TtOr.exit.us109.loopexit.unr-lcssa, %.lr.ph.i81.us105.epil, %.lr.ph93.split.split.us
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph93.split.split.us, !llvm.loop !275

.loopexit:                                        ; preds = %Abc_TtOr.exit.us109, %Abc_TtOr.exit.us.us, %.lr.ph93.split, %.lr.ph93.split.us, %Abc_TtConst0.exit, %bb.e, %bb.i, %bb.g
  %.065 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %.lr.ph93.split ], [ 1, %Abc_TtConst0.exit ], [ 1, %Abc_TtOr.exit.us.us ], [ 1, %.lr.ph93.split.us ], [ 1, %Abc_TtOr.exit.us109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.065
}

; Function Attrs: nounwind uwtable
define void @Zyx_TestExact(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [4 x i64], align 16               ; 5 uses
  %i.e = alloca [1000 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 -1, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 -1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.f = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.34) ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %0) ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.i = call i32 @Zyx_TestGetTruthTablePars(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !30   ; 12 uses
  %i.k = icmp sgt i32 %i.j, 8
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 6
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.c, align 4, !tbaa !30   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 16
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = tail call ptr @Zyx_TestCreateTruthTables(i32 noundef %i.j, i32 noundef %i.n) ; 5 uses
  %i.q = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 1000, ptr noundef nonnull %i.f)
  %.not2233 = icmp eq ptr %i.q, null
  br i1 %.not2233, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.r = add nsw i32 %i.n, %i.j                   ; 3 uses
  %i.s = icmp slt i32 %i.j, 7                     ; 2 uses
  %i.t = add nsw i32 %i.j, -6                     ; 2 uses
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = select i1 %i.s, i32 1, i32 %i.u
  %.fr36 = freeze i32 %i.v                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 8
  %i.x = icmp sgt i32 %.fr36, 0
  %wide.trip.count.i = zext nneg i32 %.fr36 to i64
  %i.y = add nsw i32 %i.j, -1                     ; 3 uses
  br i1 %i.x, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = select i1 %i.s, i32 0, i32 %i.t
  %i.aa = add nsw i32 %i.r, -1
  %i.ab = shl i32 %i.aa, %i.z
  %i.ac = sext i32 %i.ab to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %.035.us = phi i32 [ %.1.us, %bb.m ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.01734.us = phi i32 [ %i.an, %bb.m ], [ %i.j, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.ad = call i32 @Zyx_TestReadNode(ptr noundef nonnull %i.e, ptr noundef %i.p, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %.01734.us)
  %.not23.us = icmp eq i32 %i.ad, 0
  br i1 %.not23.us, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.split.us
  %.not24.us = icmp eq i32 %.01734.us, %i.r
  br i1 %.not24.us, label %.lr.ph.preheader.i.us, label %.split.us

.lr.ph.preheader.i.us:                            ; preds = %bb.k
  %i.ae = add nsw i32 %.035.us, 1                 ; 4 uses
  %.val.us = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.af = getelementptr inbounds [8 x i8], ptr %.val.us, i64 %i.ac ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.l, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.l ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.us
end_hunk_0
