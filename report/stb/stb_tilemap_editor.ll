Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__drag_update:bb.a
  br label %bb.u

bb.u:                                             ; preds = %stbte__undo_record.exit.us.1, %.lr.ph130.split.us.1
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %exitcond139.not.1 = icmp eq i64 %indvars.iv.next136.1, %wide.trip.count138
  br i1 %exitcond139.not.1, label %.loopexit, label %.lr.ph130.split.us, !llvm.loop !200

.lr.ph130.split:                                  ; preds = %.lr.ph130, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.lr.ph130 ] ; 4 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %indvars.iv ; 2 uses
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !35 ; 2 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.2157, i64 %indvars.iv ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !35
  %.not111 = icmp eq i16 %i.ks, %i.ku
  br i1 %.not111, label %bb.v, label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %.lr.ph130.split
  %i.kv = load i32, ptr %i.gf, align 4, !tbaa !77 ; 5 uses
  %i.kw = load ptr, ptr %i.gg, align 8, !tbaa !40 ; 4 uses
  %i.kx = sext i32 %i.kv to i64
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.kx
  store i16 %i.ks, ptr %i.ky, align 2, !tbaa !35
  %i.kz = add nsw i32 %i.kv, 1
  %i.la = and i32 %i.kz, 8388607
  %i.lb = load i32, ptr %i.gh, align 8, !tbaa !78 ; 2 uses
  %i.lc = icmp slt i32 %i.lb, 8388606
  %i.ld = zext i1 %i.lc to i32
  %i.le = add nsw i32 %i.lb, %i.ld                ; 2 uses
  %i.lf = load i32, ptr %i.gi, align 4, !tbaa !79 ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  %.neg.i.i = sext i1 %i.lg to i32
  %i.lh = add i32 %i.lf, %.neg.i.i                ; 2 uses
  %i.li = zext nneg i32 %i.la to i64
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.li
  store i16 %i.gk, ptr %i.lj, align 2, !tbaa !35
  %i.lk = add i32 %i.kv, 2
  %i.ll = and i32 %i.lk, 8388607
  %i.lm = icmp slt i32 %i.le, 8388606
  %i.ln = zext i1 %i.lm to i32
  %i.lo = add nsw i32 %i.le, %i.ln                ; 2 uses
  %i.lp = icmp sgt i32 %i.lh, 0
  %.neg.i7.i = sext i1 %i.lp to i32
  %i.lq = add i32 %i.lh, %.neg.i7.i               ; 2 uses
  %i.lr = zext nneg i32 %i.ll to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.lr
  store i16 %i.gl, ptr %i.ls, align 2, !tbaa !35
  %i.lt = add i32 %i.kv, 3
  %i.lu = and i32 %i.lt, 8388607
  %i.lv = icmp slt i32 %i.lo, 8388606
  %i.lw = zext i1 %i.lv to i32
  %i.lx = add nsw i32 %i.lo, %i.lw                ; 2 uses
  %i.ly = icmp sgt i32 %i.lq, 0
  %.neg.i8.i = sext i1 %i.ly to i32
  %i.lz = add i32 %i.lq, %.neg.i8.i               ; 2 uses
  %i.ma = trunc i64 %indvars.iv to i16
  %i.mb = zext nneg i32 %i.lu to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.mb
  store i16 %i.ma, ptr %i.mc, align 2, !tbaa !35
  %i.md = add i32 %i.kv, 4
  %i.me = and i32 %i.md, 8388607
  store i32 %i.me, ptr %i.gf, align 4, !tbaa !77
  %i.mf = icmp slt i32 %i.lx, 8388606
  %i.mg = zext i1 %i.mf to i32
  %i.mh = add nsw i32 %i.lx, %i.mg
  store i32 %i.mh, ptr %i.gh, align 8, !tbaa !78
  %i.mi = icmp sgt i32 %i.lz, 0
  %.neg.i9.i = sext i1 %i.mi to i32
  %i.mj = add i32 %i.lz, %.neg.i9.i
  store i32 %i.mj, ptr %i.gi, align 4, !tbaa !79
  store i8 0, ptr %i.gj, align 4, !tbaa !51
  %i.mk = load i16, ptr %i.kt, align 2, !tbaa !35
  store i16 %i.mk, ptr %i.kr, align 2, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph130.split, %stbte__undo_record.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count138
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph130.split, !llvm.loop !201

.loopexit:                                        ; preds = %bb.v, %.lr.ph130.split.us.prol.loopexit, %bb.u, %middle.block, %vec.epilog.middle.block, %.preheader, %.loopexit121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__drag_place(ptr nofree noundef captures(none) %0, i32 %1, i32 %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 801036
  %i.b = load i32, ptr %i.a, align 4, !tbaa !122  ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 1, label %stbte__should_copy_properties.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %stbte__should_copy_properties.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %stbte__should_copy_properties.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.g = load i32, ptr %i.f, align 4, !tbaa !117
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %stbte__should_copy_properties.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i, label %stbte__should_copy_properties.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbte__should_copy_properties.exit, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.f, label %stbte__should_copy_properties.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %bb.e, label %stbte__should_copy_properties.exit

stbte__should_copy_properties.exit:               ; preds = %bb.e, %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader.i
  %.011.i = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ %i.b, %bb.a ], [ 0, %bb.c ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5284), align 4, !tbaa !131 ; 2 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129 ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5288), align 8, !tbaa !132 ; 2 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130 ; 2 uses
  %i.v = icmp eq i32 %i.r, %i.s
  %i.w = icmp eq i32 %i.t, %i.u                   ; 2 uses
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 801052
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !77   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 805160 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ac
  store i16 -2, ptr %i.ad, align 2, !tbaa !35
  %i.ae = add nsw i32 %i.z, 1
  %i.af = and i32 %i.ae, 8388607
  store i32 %i.af, ptr %i.y, align 4, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 8388606
  %i.aj = zext i1 %i.ai to i32
  %i.ak = add nsw i32 %i.ah, %i.aj
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !78
  store i32 0, ptr %i.x, align 4, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800876
  store i8 0, ptr %i.al, align 4, !tbaa !51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  %i.am = icmp sgt i32 %i.t, %i.u
  %i.an = icmp sgt i32 %i.r, %i.s
  %or.cond3 = and i1 %i.an, %i.w
  %or.cond32 = or i1 %i.am, %or.cond3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 800004 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %or.cond32, label %bb.h, label %.preheader35

.preheader35:                                     ; preds = %bb.g
  br i1 %i.aq, label %.preheader.lr.ph, label %.loopexit34

.preheader.lr.ph:                                 ; preds = %.preheader35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 800000 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader, label %.loopexit34

bb.h:                                             ; preds = %bb.g
  br i1 %i.aq, label %.lr.ph45, label %.loopexit34

.lr.ph45:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 800000 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph45.split, label %.loopexit34

.loopexit.a:                                      ; preds = %.lr.ph41
  %.pre49 = load i32, ptr %i.au, align 8, !tbaa !42
  br label %.lr.ph45.splitthread-pre-split

.lr.ph45.splitthread-pre-split:                   ; preds = %.loopexit.a, %.lr.ph45.split
  %3 = phi i32 [ %.pre49, %.loopexit.a ], [ %i.ax, %.lr.ph45.split ]
  %4 = icmp samesign ugt i32 %.043.in, 1
  br i1 %4, label %.lr.ph45.split, label %.loopexit34, !llvm.loop !205

.lr.ph45.split:                                   ; preds = %.lr.ph45, %.lr.ph45.splitthread-pre-split
  %i.ax = phi i32 [ %3, %.lr.ph45.splitthread-pre-split ], [ %i.av, %.lr.ph45 ] ; 3 uses
  %.043.in = phi i32 [ %.043, %.lr.ph45.splitthread-pre-split ], [ %i.ap, %.lr.ph45 ] ; 2 uses
  %.043 = add nsw i32 %.043.in, -1                ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph41, label %.lr.ph45.splitthread-pre-split

.lr.ph41:                                         ; preds = %.lr.ph45.split, %.lr.ph41
  %.030.in39 = phi i32 [ %.030, %.lr.ph41 ], [ %i.ax, %.lr.ph45.split ] ; 2 uses
  %.030 = add nsw i32 %.030.in39, -1              ; 2 uses
  tail call void @stbte__drag_update(ptr noundef %0, i32 noundef %.030, i32 noundef %.043, i32 noundef %.011.i)
  %i.az = icmp samesign ugt i32 %.030.in39, 1
  br i1 %i.az, label %.lr.ph41, label %.loopexit.a, !llvm.loop !206

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ba = phi i32 [ %i.bg, %._crit_edge ], [ %i.ap, %.preheader.lr.ph ]
  %i.bb = phi i32 [ %i.bh, %._crit_edge ], [ %i.as, %.preheader.lr.ph ] ; 2 uses
  %.138 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.13137 = phi i32 [ %i.bd, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  tail call void @stbte__drag_update(ptr noundef nonnull %0, i32 noundef %.13137, i32 noundef %.138, i32 noundef %.011.i)
  %i.bd = add nuw nsw i32 %.13137, 1              ; 2 uses
  %i.be = load i32, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !207

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.ao, align 4, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bg = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ba, %.preheader ] ; 2 uses
  %i.bh = phi i32 [ %i.be, %._crit_edge.loopexit ], [ %i.bb, %.preheader ]
  %i.bi = add nuw nsw i32 %.138, 1                ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.bg
  br i1 %i.bj, label %.preheader, label %.loopexit34, !llvm.loop !208

.loopexit34:                                      ; preds = %._crit_edge, %.lr.ph45.splitthread-pre-split, %.lr.ph45, %.preheader.lr.ph, %.preheader35, %bb.h
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i33 = icmp eq i32 %i.bk, 0
  br i1 %.not.i33, label %stbte__end_undo.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit34
  %i.bl = load i32, ptr %i.y, align 4, !tbaa !77  ; 2 uses
  %i.bm = add i32 %i.bl, 8388607
  %i.bn = and i32 %i.bm, 8388607                  ; 3 uses
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !35
  %i.bs = icmp eq i16 %i.br, -2
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bn, ptr %i.y, align 4, !tbaa !77
  %i.bt = load i32, ptr %i.ag, align 8, !tbaa !78
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.ag, align 8, !tbaa !78
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bv = phi i32 [ %i.bn, %bb.j ], [ %i.bl, %bb.i ]
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bw
  store i16 -4, ptr %i.bx, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %.loopexit34, %bb.k
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !97
  %i.by = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5284), align 4, !tbaa !49 ; 2 uses
  store <2 x i32> %i.by, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !49
  %i.bz = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5268), align 4, !tbaa !49
  %i.ca = add <2 x i32> %i.by, splat (i32 -1)
  %i.cb = add <2 x i32> %i.ca, %i.bz
  store <2 x i32> %i.cb, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbte__tile_paint(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 23 uses
  %i.b = shl i32 %3, 19
  %i.c = shl i32 %4, 7
  %i.d = add i32 %i.c, %i.b
  %i.e = or disjoint i32 %i.d, 1                  ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 24), align 8, !tbaa !90 ; 2 uses
  %.not.i = icmp slt i32 %i.f, %1
  br i1 %.not.i, label %stbte__hittest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800016
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45
  %i.i = add nsw i32 %i.h, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 800012
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %i.l = add nsw i32 %i.k, %1
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 28), align 4, !tbaa !91 ; 2 uses
  %.not9.i = icmp sge i32 %i.m, %2
  %i.n = icmp slt i32 %i.f, %i.l
  %or.cond10.i = and i1 %i.n, %.not9.i
  %i.o = icmp slt i32 %i.m, %i.i
  %spec.select.i = and i1 %i.o, %or.cond10.i
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4
  %i.q = icmp sgt i32 %i.p, 0
  %or.cond.i = select i1 %spec.select.i, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.c, label %stbte__hittest.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 16), align 8, !tbaa !92
  br label %stbte__hittest.exit

stbte__hittest.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %i.r = sext i32 %4 to i64                       ; 2 uses
  %i.s = getelementptr [3200 x i8], ptr %0, i64 %i.r
  %i.t = sext i32 %3 to i64                       ; 2 uses
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 12), align 4, !tbaa !93 ; 4 uses
  %i.w = and i32 %i.v, 127
  %i.x = icmp eq i32 %i.w, 1
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5212), align 4 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %stbte__hittest.exit
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5216), align 8, !tbaa !210
  %i.z = sub nsw i32 %3, %i.y                     ; 3 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5220), align 4, !tbaa !211
  %i.ab = sub nsw i32 %4, %i.aa                   ; 3 uses
  %i.ac = icmp sgt i32 %i.z, -1
  br i1 %i.ac, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !124 ; 2 uses
  %i.ae = icmp slt i32 %i.z, %i.ad
  %i.af = icmp sgt i32 %i.ab, -1
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4
  %i.ah = icmp slt i32 %i.ab, %i.ag
  %or.cond154 = select i1 %or.cond, i1 %i.ah, i1 false
  br i1 %or.cond154, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.ai = mul nuw nsw i32 %i.ad, %i.ab
  %i.aj = add nuw nsw i32 %i.ai, %i.z
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %i.ak
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.u, ptr noundef nonnull %i.al, i32 noundef 0)
  br label %bb.ai

bb.h:                                             ; preds = %bb.d
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5256), align 8, !tbaa !133
  %.not134 = icmp eq i32 %i.am, 0
  br i1 %.not134, label %bb.z, label %.preheader166

.preheader166:                                    ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !41 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0                   ; 2 uses
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader166
  %i.aq = shl nuw i32 %i.ao, 1
  %i.ar = zext i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.u, i64 %i.ar, i1 false), !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader166
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129 ; 2 uses
  %i.at = sub nsw i32 %3, %i.as                   ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130 ; 2 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 44), align 4, !tbaa !95
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ax = icmp sgt i32 %i.at, -1
  %or.cond3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.i, label %stbte__clear_stack.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ay = sub nsw i32 %4, %i.au                   ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5268), align 4, !tbaa !127
  %i.ba = icmp slt i32 %i.at, %i.az
  %i.bb = icmp sgt i32 %i.ay, -1
  %or.cond5 = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5272), align 8
  %i.bd = icmp slt i32 %i.ay, %i.bc
  %or.cond156 = select i1 %or.cond5, i1 %i.bd, i1 false
  br i1 %or.cond156, label %bb.j, label %stbte__clear_stack.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !117
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !116 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %spec.select.i164 = select i1 %i.bi, i32 %i.bf, i32 %i.bh ; 3 uses
  %i.bj = icmp sgt i32 %spec.select.i164, -1
  br i1 %i.bj, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  br i1 %i.ap, label %.lr.ph.i, label %stbte__clear_stack.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %wide.trip.count.i = zext nneg i32 %i.ao to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !118
  %.not.peel.i = icmp eq i32 %i.bn, 0
  br i1 %.not.peel.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !119
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load i16, ptr %i.bl, align 8, !tbaa !52
  store i16 %i.br, ptr %i.a, align 16, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ao, 1
  br i1 %exitcond.peel.not.i, label %stbte__clear_stack.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.m
  %i.bs = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %i.bt = icmp eq i32 %i.ao, 2
  br i1 %i.bt, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new
end_hunk_0
