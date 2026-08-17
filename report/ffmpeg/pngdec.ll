inline.NumInlined: 45
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@handle_p_frame_png:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !121
  %i.i = tail call i32 @av_image_get_linesize(i32 noundef %i.f, i32 noundef %i.h, i32 noundef 0) #12
  %i.j = load i32, ptr %i.g, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.l = load i32, ptr %i.k, align 8, !tbaa !137
  %i.m = mul i32 %i.l, %i.j
  %. = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.m) ; 4 uses
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.b, i32 noundef 2147483647) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !123
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge33.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.q = icmp sgt i32 %., 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.q, label %.preheader.preheader, label %._crit_edge33.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %. to i64      ; 10 uses
  %min.iters.check = icmp ult i32 %., 4
  %min.iters.check36 = icmp ult i32 %., 32
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  %n.vec40 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n45 = icmp eq i64 %n.vec40, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.032 = phi ptr [ %i.bm, %._crit_edge ], [ %i.d, %.preheader.preheader ] ; 10 uses
  %.02431 = phi ptr [ %i.bh, %._crit_edge ], [ %i.a, %.preheader.preheader ] ; 10 uses
  %.02530 = phi i32 [ %i.bn, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.02431, i64 %wide.trip.count
  %scevgep35 = getelementptr i8, ptr %.032, i64 %wide.trip.count
  %bound0 = icmp ult ptr %.02431, %scevgep35
  %bound1 = icmp ult ptr %.032, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.032, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !9, !alias.scope !246
  %wide.load37 = load <16 x i8>, ptr %i.u, align 1, !tbaa !9, !alias.scope !246
  %i.v = getelementptr inbounds nuw i8, ptr %.02431, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load38 = load <16 x i8>, ptr %i.v, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %wide.load39 = load <16 x i8>, ptr %i.w, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %i.x = add <16 x i8> %wide.load38, %wide.load
  %i.y = add <16 x i8> %wide.load39, %wide.load37
  store <16 x i8> %i.x, ptr %i.v, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  store <16 x i8> %i.y, ptr %i.w, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.032, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !9, !alias.scope !246
  %i.ab = getelementptr inbounds nuw i8, ptr %.02431, i64 %index41 ; 2 uses
  %wide.load43 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %i.ac = add <4 x i8> %wide.load43, %wide.load42
  store <4 x i8> %i.ac, ptr %i.ab, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %index.next44 = add nuw i64 %index41, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n45, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.032, i64 %indvars.iv.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.02431, i64 %indvars.iv.prol ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = add i8 %i.ah, %i.af
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !253

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.02431, i64 %indvars.iv ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = add i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 %indvars.iv.next
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.02431, i64 %indvars.iv.next ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = add i8 %i.at, %i.ar
  store i8 %i.au, ptr %i.as, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.032, i64 %indvars.iv.next.1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %.02431, i64 %indvars.iv.next.1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = add i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.032, i64 %indvars.iv.next.2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.02431, i64 %indvars.iv.next.2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = add i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bf = load i32, ptr %i.r, align 8, !tbaa !24
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %.02431, i64 %i.bg
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !24
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.032, i64 %i.bl
  %i.bn = add nuw nsw i32 %.02530, 1              ; 2 uses
  %i.bo = load i32, ptr %i.n, align 4, !tbaa !123
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %iter.check, label %._crit_edge33.split, !llvm.loop !255

._crit_edge33.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @handle_p_frame_apng(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 17 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !113    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %i.k = sext i32 %i.j to i64                     ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.p = load i32, ptr %i.o, align 8, !tbaa !137
  %i.q = freeze i32 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fr206 = phi i32 [ %i.q, %bb.b ], [ 4, %bb.a ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 329 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !134
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131  ; 2 uses
  switch i32 %i.v, label %bb.e [
    i32 26, label %bb.f
    i32 56, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.v) #12
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, ptr noundef %i.w) #12
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.c
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.f, i32 noundef 2147483647) #12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 7 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !133
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.preheader149, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.g

.preheader149:                                    ; preds = %bb.g, %bb.f
  %i.aa = phi i32 [ 0, %bb.f ], [ %i.ar, %bb.g ]
  %.lcssa153 = phi i64 [ 0, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp ult i64 %.lcssa153, %i.ae
  br i1 %i.af, label %.lr.ph157, label %.preheader148

.lr.ph157:                                        ; preds = %.preheader149
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0137155 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.g ] ; 3 uses
  %i.aj = mul i64 %.0137155, %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %i.al = mul i64 %.0137155, %i.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %i.an = load i32, ptr %i.z, align 8, !tbaa !229
  %i.ao = mul nsw i32 %i.an, %.fr206
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.am, i64 %i.ap, i1 false)
  %i.aq = add nuw i64 %.0137155, 1                ; 2 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !133 ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %.preheader149, !llvm.loop !256

.preheader148:                                    ; preds = %bb.h, %.preheader149
  %.lcssa = phi i64 [ %i.ae, %.preheader149 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !230
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp ult i64 %.lcssa, %i.aw
  br i1 %i.ax, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %.preheader148
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph157, %bb.h
  %.1138156 = phi i64 [ %.lcssa153, %.lr.ph157 ], [ %i.br, %bb.h ] ; 3 uses
  %i.az = mul i64 %.1138156, %i.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = mul i64 %.1138156, %i.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.ag, align 8, !tbaa !132
  %i.be = mul nsw i32 %i.bd, %.fr206
  %i.bf = sext i32 %i.be to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  %i.bg = load i32, ptr %i.ag, align 8, !tbaa !132
  %i.bh = load i32, ptr %i.ah, align 8, !tbaa !120
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = mul nsw i32 %i.bi, %.fr206
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  %i.bn = load i32, ptr %i.ai, align 8, !tbaa !229
  %i.bo = sub i32 %i.bn, %i.bi
  %i.bp = mul nsw i32 %i.bo, %.fr206
  %i.bq = sext i32 %i.bp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  %i.br = add nuw i64 %.1138156, 1                ; 2 uses
  %i.bs = load i32, ptr %i.x, align 4, !tbaa !133
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.bu = add nsw i32 %i.bt, %i.bs
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ult i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.h, label %.preheader148, !llvm.loop !257

bb.i:                                             ; preds = %.lr.ph160, %bb.i
  %.2139159 = phi i64 [ %.lcssa, %.lr.ph160 ], [ %i.ce, %bb.i ] ; 3 uses
  %i.bx = mul i64 %.2139159, %i.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  %i.bz = mul i64 %.2139159, %i.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bz
  %i.cb = load i32, ptr %i.ay, align 8, !tbaa !229
  %i.cc = mul nsw i32 %i.cb, %.fr206
  %i.cd = sext i32 %i.cc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cd, i1 false)
  %i.ce = add nuw i64 %.2139159, 1                ; 2 uses
  %i.cf = load i32, ptr %i.au, align 4, !tbaa !230
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp ult i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.i, label %._crit_edge, !llvm.loop !258

._crit_edge:                                      ; preds = %bb.i, %.preheader148
  %i.ci = load i8, ptr %i.r, align 1, !tbaa !134
  %i.cj = icmp eq i8 %i.ci, 1
  br i1 %i.cj, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  %i.ck = load i32, ptr %i.x, align 4, !tbaa !133 ; 6 uses
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = load i32, ptr %i.ab, align 4, !tbaa !122 ; 4 uses
  %i.cn = add nsw i32 %i.cm, %i.ck
  %i.co = icmp ult i32 %i.ck, %i.cn
  br i1 %i.co, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cs = sext i32 %.fr206 to i64                 ; 11 uses
  %i.ct = icmp slt i32 %.fr206, 11
  %i.cu = add i32 %.fr206, -1                     ; 8 uses
  %i.cv = sext i32 %i.cu to i64                   ; 8 uses
  br i1 %i.ct, label %.lr.ph203.split.us, label %.lr.ph203.split.preheader

.lr.ph203.split.preheader:                        ; preds = %.lr.ph203
  %.pre = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %.pre219 = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  br label %.lr.ph203.split

.lr.ph203.split.us:                               ; preds = %.lr.ph203
  %.not207 = icmp eq i32 %i.cu, 0
  %.pre228 = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %.pre229 = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  br i1 %.not207, label %.lr.ph203.split.us.split, label %.lr.ph203.split.us.split.us.preheader

.lr.ph203.split.us.split.us.preheader:            ; preds = %.lr.ph203.split.us
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = icmp eq i32 %i.cu, 1
  %unroll_iter = and i64 %i.cv, -2
  %i.cy = and i32 %i.cu, 1
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  %lcmp.mod305 = trunc i32 %i.cu to i1
  %min.iters.check = icmp ult i32 %i.cu, 4
  %min.iters.check278 = icmp ult i32 %i.cu, 16
  %n.vec = and i64 %i.cv, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %i.cz = and i32 %i.cu, 12
  %min.epilog.iters.check = icmp eq i32 %i.cz, 0
  %n.vec282 = and i64 %i.cv, -4                   ; 3 uses
  %cmp.n291 = icmp eq i64 %n.vec282, %i.cv
  br label %.lr.ph203.split.us.split.us

.lr.ph203.split.us.split.us:                      ; preds = %.lr.ph203.split.us.split.us.preheader, %._crit_edge183.split.us.us.split.us.us
  %i.da = phi i32 [ %i.dp, %._crit_edge183.split.us.us.split.us.us ], [ %i.cm, %.lr.ph203.split.us.split.us.preheader ]
  %i.db = phi i32 [ %i.dq, %._crit_edge183.split.us.us.split.us.us ], [ %i.ck, %.lr.ph203.split.us.split.us.preheader ]
  %i.dc = phi i32 [ %i.dr, %._crit_edge183.split.us.us.split.us.us ], [ %.pre229, %.lr.ph203.split.us.split.us.preheader ] ; 2 uses
  %i.dd = phi i32 [ %i.ds, %._crit_edge183.split.us.us.split.us.us ], [ %.pre228, %.lr.ph203.split.us.split.us.preheader ] ; 5 uses
  %.0130201.us.us = phi i8 [ %.1.lcssa.us.us, %._crit_edge183.split.us.us.split.us.us ], [ undef, %.lr.ph203.split.us.split.us.preheader ] ; 2 uses
  %.0131200.us.us = phi i8 [ %.1132.lcssa.us.us, %._crit_edge183.split.us.us.split.us.us ], [ undef, %.lr.ph203.split.us.split.us.preheader ] ; 2 uses
  %.3199.us.us = phi i64 [ %i.dt, %._crit_edge183.split.us.us.split.us.us ], [ %i.cl, %.lr.ph203.split.us.split.us.preheader ] ; 3 uses
  %i.de = add nsw i32 %i.dc, %i.dd
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph182.us.us.preheader, label %._crit_edge183.split.us.us.split.us.us

.lr.ph182.us.us.preheader:                        ; preds = %.lr.ph203.split.us.split.us
  %i.dg = sext i32 %i.dd to i64
  %i.dh = mul i64 %.3199.us.us, %i.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dh
  %i.dj = mul nsw i32 %i.dd, %.fr206
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = mul i64 %.3199.us.us, %i.e
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.dk
  br label %.lr.ph182.us.us

._crit_edge183.split.us.us.split.us.us.loopexit:  ; preds = %bb.n
  %.pre226 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre227 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge183.split.us.us.split.us.us

._crit_edge183.split.us.us.split.us.us:           ; preds = %._crit_edge183.split.us.us.split.us.us.loopexit, %.lr.ph203.split.us.split.us
  %i.dp = phi i32 [ %i.da, %.lr.ph203.split.us.split.us ], [ %.pre227, %._crit_edge183.split.us.us.split.us.us.loopexit ] ; 2 uses
  %i.dq = phi i32 [ %i.db, %.lr.ph203.split.us.split.us ], [ %.pre226, %._crit_edge183.split.us.us.split.us.us.loopexit ] ; 2 uses
  %i.dr = phi i32 [ %i.dc, %.lr.ph203.split.us.split.us ], [ %i.ft, %._crit_edge183.split.us.us.split.us.us.loopexit ]
  %i.ds = phi i32 [ %i.dd, %.lr.ph203.split.us.split.us ], [ %i.fs, %._crit_edge183.split.us.us.split.us.us.loopexit ]
  %.1132.lcssa.us.us = phi i8 [ %.0131200.us.us, %.lr.ph203.split.us.split.us ], [ %.2133.us.us.us.us, %._crit_edge183.split.us.us.split.us.us.loopexit ]
  %.1.lcssa.us.us = phi i8 [ %.0130201.us.us, %.lr.ph203.split.us.split.us ], [ %.2.us.us.us.us, %._crit_edge183.split.us.us.split.us.us.loopexit ]
  %i.dt = add i64 %.3199.us.us, 1                 ; 2 uses
  %i.du = add nsw i32 %i.dp, %i.dq
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp ult i64 %i.dt, %i.dv
  br i1 %i.dw, label %.lr.ph203.split.us.split.us, label %.loopexit, !llvm.loop !259

.lr.ph182.us.us:                                  ; preds = %.lr.ph182.us.us.preheader, %bb.n
  %.1180.us.us.us.us = phi i8 [ %.2.us.us.us.us, %bb.n ], [ %.0130201.us.us, %.lr.ph182.us.us.preheader ]
  %.1132179.us.us.us.us = phi i8 [ %.2133.us.us.us.us, %bb.n ], [ %.0131200.us.us, %.lr.ph182.us.us.preheader ]
  %.0135175.us.us.us.us = phi ptr [ %i.fr, %bb.n ], [ %i.dl, %.lr.ph182.us.us.preheader ] ; 9 uses
  %.0136171.us.us.us.us = phi ptr [ %i.fq, %bb.n ], [ %i.do, %.lr.ph182.us.us.preheader ] ; 10 uses
  %.0140170.us.us.us.us = phi i64 [ %i.fp, %bb.n ], [ %i.dg, %.lr.ph182.us.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dx = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.dx, label %bb.l [
    i32 26, label %bb.k
    i32 56, label %.sink.split
  ]

bb.k:                                             ; preds = %.lr.ph182.us.us
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph182.us.us, %bb.k
  %.sink259 = phi i64 [ 3, %bb.k ], [ 1, %.lr.ph182.us.us ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %.sink259
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %.sink259
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %.lr.ph182.us.us
  %.2133.us.us.us.us = phi i8 [ %.1132179.us.us.us.us, %.lr.ph182.us.us ], [ %i.dz, %.sink.split ] ; 5 uses
  %.2.us.us.us.us = phi i8 [ %.1180.us.us.us.us, %.lr.ph182.us.us ], [ %i.eb, %.sink.split ] ; 4 uses
  switch i8 %.2133.us.us.us.us, label %.preheader.us.us.us.us [
    i8 -1, label %bb.n
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0136171.us.us.us.us, ptr align 1 %.0135175.us.us.us.us, i64 %i.cs, i1 false)
  br label %bb.n

.preheader.us.us.us.us:                           ; preds = %bb.l
  %i.ec = zext i8 %.2133.us.us.us.us to i32       ; 3 uses
  %i.ed = xor i32 %i.ec, 255                      ; 2 uses
  %i.ee = zext i8 %.2.us.us.us.us to i32
  %i.ef = mul nuw nsw i32 %i.ed, %i.ee            ; 4 uses
  %i.eg = mul nuw nsw i32 %i.ef, 257
  %i.eh = add nuw nsw i32 %i.eg, 32896
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc nuw i32 %i.ei to i8
  %i.ek = add i8 %.2133.us.us.us.us, %i.ej        ; 3 uses
  %factor.op.mul.us.us.us.us = mul nuw nsw i32 %i.ec, 257 ; 3 uses
  %factor.op.mul161.us.us.us.us = mul nuw nsw i32 %i.ed, 257 ; 3 uses
  %i.el = zext i8 %i.ek to i32
  %i.em = icmp eq i8 %i.ek, 0
  %i.en = mul nuw nsw i32 %i.ec, 255              ; 3 uses
  %i.eo = mul nuw nsw i32 %i.el, 255              ; 3 uses
  br i1 %i.em, label %.lr.ph164.split.us.us.us.us.us.preheader, label %.lr.ph164.split.us189.us.us.us

.lr.ph164.split.us.us.us.us.us.preheader:         ; preds = %.preheader.us.us.us.us
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %i.cv, i1 false), !tbaa !9
  br label %._crit_edge165.us.us.us.us

.lr.ph164.split.split.us190.us.us.us:             ; preds = %.lr.ph164.split.split.us190.us.us.us.preheader, %.lr.ph164.split.split.us190.us.us.us
  %.0134163.us186.us.us.us = phi i64 [ %i.fo, %.lr.ph164.split.split.us190.us.us.us ], [ 0, %.lr.ph164.split.split.us190.us.us.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph164.split.split.us190.us.us.us ], [ 0, %.lr.ph164.split.split.us190.us.us.us.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %.0134163.us186.us.us.us
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.en, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %.0134163.us186.us.us.us
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ef, %i.ev
  %i.ex = add nuw nsw i32 %i.ew, %i.es
  %i.ey = udiv i32 %i.ex, %i.eo
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0134163.us186.us.us.us
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !9
  %i.fb = or disjoint i64 %.0134163.us186.us.us.us, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul nuw nsw i32 %i.en, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %i.fb
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nuw nsw i32 %i.ef, %i.fi
  %i.fk = add nuw nsw i32 %i.fj, %i.ff
  %i.fl = udiv i32 %i.fk, %i.eo
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !9
  %i.fo = add nuw i64 %.0134163.us186.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge165.us.us.us.us.loopexit294.unr-lcssa, label %.lr.ph164.split.split.us190.us.us.us, !llvm.loop !260

bb.n:                                             ; preds = %._crit_edge165.us.us.us.us, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fp = add i64 %.0140170.us.us.us.us, 1        ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.0136171.us.us.us.us, i64 %i.cs
  %i.fr = getelementptr inbounds i8, ptr %.0135175.us.us.us.us, i64 %i.cs
  %i.fs = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.ft = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.fu = add nsw i32 %i.ft, %i.fs
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp ult i64 %i.fp, %i.fv
  br i1 %i.fw, label %.lr.ph182.us.us, label %._crit_edge183.split.us.us.split.us.us.loopexit, !llvm.loop !261

.lr.ph164.split.us189.us.us.us:                   ; preds = %.preheader.us.us.us.us
  %i.fx = icmp eq i8 %.2.us.us.us.us, -1
  br i1 %i.fx, label %iter.check, label %.lr.ph164.split.split.us190.us.us.us.preheader

.lr.ph164.split.split.us190.us.us.us.preheader:   ; preds = %.lr.ph164.split.us189.us.us.us
  br i1 %i.cx, label %.lr.ph164.split.split.us190.us.us.us.epil.preheader, label %.lr.ph164.split.split.us190.us.us.us

iter.check:                                       ; preds = %.lr.ph164.split.us189.us.us.us
  br i1 %min.iters.check, label %.lr.ph164.split.split.us.us.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %factor.op.mul.us.us.us.us, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert279 = insertelement <16 x i32> poison, i32 %factor.op.mul161.us.us.us.us, i64 0
  %broadcast.splat280 = shufflevector <16 x i32> %broadcast.splatinsert279, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fy, align 1, !tbaa !9
  %i.fz = zext <16 x i8> %wide.load to <16 x i32>
  %i.ga = mul nuw nsw <16 x i32> %broadcast.splat, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %index
  %wide.load281 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !9
  %i.gc = zext <16 x i8> %wide.load281 to <16 x i32>
  %i.gd = mul nuw nsw <16 x i32> %broadcast.splat280, %i.gc
  %i.ge = add nuw nsw <16 x i32> %i.gd, %i.ga
  %i.gf = add nuw nsw <16 x i32> %i.ge, splat (i32 32896)
  %i.gg = lshr <16 x i32> %i.gf, splat (i32 16)
  %i.gh = trunc <16 x i32> %i.gg to <16 x i8>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.gh, ptr %i.gi, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge165.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph164.split.split.us.us.us.us.us.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %factor.op.mul.us.us.us.us, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %factor.op.mul161.us.us.us.us, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index287 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next290, %vec.epilog.vector.body ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %index287
  %wide.load288 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !9
  %i.gl = zext <4 x i8> %wide.load288 to <4 x i32>
  %i.gm = mul nuw nsw <4 x i32> %broadcast.splat284, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %index287
  %wide.load289 = load <4 x i8>, ptr %i.gn, align 1, !tbaa !9
  %i.go = zext <4 x i8> %wide.load289 to <4 x i32>
  %i.gp = mul nuw nsw <4 x i32> %broadcast.splat286, %i.go
  %i.gq = add nuw nsw <4 x i32> %i.gp, %i.gm
  %i.gr = add nuw nsw <4 x i32> %i.gq, splat (i32 32896)
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 16)
  %i.gt = trunc <4 x i32> %i.gs to <4 x i8>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index287
  store <4 x i8> %i.gt, ptr %i.gu, align 1, !tbaa !9
  %index.next290 = add nuw i64 %index287, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.gv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !263

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n291, label %._crit_edge165.us.us.us.us, label %.lr.ph164.split.split.us.us.us.us.us.preheader

.lr.ph164.split.split.us.us.us.us.us.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0134163.us167.us.us.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec282, %vec.epilog.middle.block ]
  br label %.lr.ph164.split.split.us.us.us.us.us

._crit_edge165.us.us.us.us.loopexit294.unr-lcssa: ; preds = %.lr.ph164.split.split.us190.us.us.us
  br i1 %lcmp.mod.not, label %._crit_edge165.us.us.us.us, label %.lr.ph164.split.split.us190.us.us.us.epil.preheader

.lr.ph164.split.split.us190.us.us.us.epil.preheader: ; preds = %._crit_edge165.us.us.us.us.loopexit294.unr-lcssa, %.lr.ph164.split.split.us190.us.us.us.preheader
  %.0134163.us186.us.us.us.epil.init = phi i64 [ 0, %.lr.ph164.split.split.us190.us.us.us.preheader ], [ %i.fo, %._crit_edge165.us.us.us.us.loopexit294.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod305)
  %i.gw = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %.0134163.us186.us.us.us.epil.init
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !9
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nuw nsw i32 %i.en, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %.0134163.us186.us.us.us.epil.init
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9
  %i.hc = zext i8 %i.hb to i32
  %i.hd = mul nuw nsw i32 %i.ef, %i.hc
  %i.he = add nuw nsw i32 %i.hd, %i.gz
  %i.hf = udiv i32 %i.he, %i.eo
  %i.hg = trunc i32 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0134163.us186.us.us.us.epil.init
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !9
  br label %._crit_edge165.us.us.us.us

._crit_edge165.us.us.us.us:                       ; preds = %.lr.ph164.split.split.us190.us.us.us.epil.preheader, %._crit_edge165.us.us.us.us.loopexit294.unr-lcssa, %.lr.ph164.split.split.us.us.us.us.us, %middle.block, %vec.epilog.middle.block, %.lr.ph164.split.us.us.us.us.us.preheader
  store i8 %i.ek, ptr %i.cw, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0136171.us.us.us.us, ptr nonnull align 1 %i.a, i64 %i.cs, i1 false)
  br label %bb.n

.lr.ph164.split.split.us.us.us.us.us:             ; preds = %.lr.ph164.split.split.us.us.us.us.us.preheader, %.lr.ph164.split.split.us.us.us.us.us
  %.0134163.us167.us.us.us.us = phi i64 [ %i.ht, %.lr.ph164.split.split.us.us.us.us.us ], [ %.0134163.us167.us.us.us.us.ph, %.lr.ph164.split.split.us.us.us.us.us.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0136171.us.us.us.us, i64 %.0134163.us167.us.us.us.us
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hk = zext i8 %i.hj to i32
  %.reass.us.us.us.us.us = mul nuw nsw i32 %factor.op.mul.us.us.us.us, %i.hk
  %i.hl = getelementptr inbounds nuw i8, ptr %.0135175.us.us.us.us, i64 %.0134163.us167.us.us.us.us
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9
  %i.hn = zext i8 %i.hm to i32
  %.reass162.us.us.us.us.us = mul nuw nsw i32 %factor.op.mul161.us.us.us.us, %i.hn
  %i.ho = add nuw nsw i32 %.reass162.us.us.us.us.us, %.reass.us.us.us.us.us
  %i.hp = add nuw nsw i32 %i.ho, 32896
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0134163.us167.us.us.us.us
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !9
  %i.ht = add nuw i64 %.0134163.us167.us.us.us.us, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %i.ht, %i.cv
  br i1 %exitcond218.not, label %._crit_edge165.us.us.us.us, label %.lr.ph164.split.split.us.us.us.us.us, !llvm.loop !264

.lr.ph203.split.us.split:                         ; preds = %.lr.ph203.split.us, %._crit_edge183.split.us.us.split
  %i.hu = phi i32 [ %i.ij, %._crit_edge183.split.us.us.split ], [ %i.cm, %.lr.ph203.split.us ]
  %i.hv = phi i32 [ %i.ik, %._crit_edge183.split.us.us.split ], [ %i.ck, %.lr.ph203.split.us ]
  %i.hw = phi i32 [ %i.il, %._crit_edge183.split.us.us.split ], [ %.pre229, %.lr.ph203.split.us ] ; 2 uses
  %i.hx = phi i32 [ %i.im, %._crit_edge183.split.us.us.split ], [ %.pre228, %.lr.ph203.split.us ] ; 5 uses
  %.0130201.us = phi i8 [ %.1.lcssa.us, %._crit_edge183.split.us.us.split ], [ undef, %.lr.ph203.split.us ] ; 2 uses
  %.0131200.us = phi i8 [ %.1132.lcssa.us, %._crit_edge183.split.us.us.split ], [ undef, %.lr.ph203.split.us ] ; 2 uses
  %.3199.us = phi i64 [ %i.in, %._crit_edge183.split.us.us.split ], [ %i.cl, %.lr.ph203.split.us ] ; 3 uses
  %i.hy = add nsw i32 %i.hw, %i.hx
  %i.hz = icmp ult i32 %i.hx, %i.hy
  br i1 %i.hz, label %.lr.ph182.us.preheader, label %._crit_edge183.split.us.us.split

.lr.ph182.us.preheader:                           ; preds = %.lr.ph203.split.us.split
  %i.ia = sext i32 %i.hx to i64
  %i.ib = mul i64 %.3199.us, %i.k
  %i.ic = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ib
  %i.id = mul nsw i32 %i.hx, %.fr206
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ic, i64 %i.ie
  %i.ig = mul i64 %.3199.us, %i.e
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ig
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.ie
  br label %.lr.ph182.us

._crit_edge183.split.us.us.split.loopexit:        ; preds = %bb.r
  %.pre230 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre231 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge183.split.us.us.split

._crit_edge183.split.us.us.split:                 ; preds = %._crit_edge183.split.us.us.split.loopexit, %.lr.ph203.split.us.split
  %i.ij = phi i32 [ %i.hu, %.lr.ph203.split.us.split ], [ %.pre231, %._crit_edge183.split.us.us.split.loopexit ] ; 2 uses
  %i.ik = phi i32 [ %i.hv, %.lr.ph203.split.us.split ], [ %.pre230, %._crit_edge183.split.us.us.split.loopexit ] ; 2 uses
  %i.il = phi i32 [ %i.hw, %.lr.ph203.split.us.split ], [ %i.jj, %._crit_edge183.split.us.us.split.loopexit ]
  %i.im = phi i32 [ %i.hx, %.lr.ph203.split.us.split ], [ %i.ji, %._crit_edge183.split.us.us.split.loopexit ]
  %.1132.lcssa.us = phi i8 [ %.0131200.us, %.lr.ph203.split.us.split ], [ %.2133.us.us, %._crit_edge183.split.us.us.split.loopexit ]
  %.1.lcssa.us = phi i8 [ %.0130201.us, %.lr.ph203.split.us.split ], [ %.2.us.us, %._crit_edge183.split.us.us.split.loopexit ]
  %i.in = add i64 %.3199.us, 1                    ; 2 uses
  %i.io = add nsw i32 %i.ij, %i.ik
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp ult i64 %i.in, %i.ip
  br i1 %i.iq, label %.lr.ph203.split.us.split, label %.loopexit, !llvm.loop !259

.lr.ph182.us:                                     ; preds = %.lr.ph182.us.preheader, %bb.r
  %.1180.us.us = phi i8 [ %.2.us.us, %bb.r ], [ %.0130201.us, %.lr.ph182.us.preheader ]
  %.1132179.us.us = phi i8 [ %.2133.us.us, %bb.r ], [ %.0131200.us, %.lr.ph182.us.preheader ]
  %.0135175.us.us = phi ptr [ %i.jh, %bb.r ], [ %i.if, %.lr.ph182.us.preheader ] ; 3 uses
  %.0136171.us.us = phi ptr [ %i.jg, %bb.r ], [ %i.ii, %.lr.ph182.us.preheader ] ; 4 uses
  %.0140170.us.us = phi i64 [ %i.jf, %bb.r ], [ %i.ia, %.lr.ph182.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ir = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.ir, label %bb.p [
    i32 26, label %bb.o
    i32 56, label %.sink.split260
  ]

bb.o:                                             ; preds = %.lr.ph182.us
  br label %.sink.split260

.sink.split260:                                   ; preds = %.lr.ph182.us, %bb.o
  %.sink262 = phi i64 [ 3, %bb.o ], [ 1, %.lr.ph182.us ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0136171.us.us, i64 %.sink262
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9
  %i.iu = getelementptr inbounds nuw i8, ptr %.0135175.us.us, i64 %.sink262
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %.sink.split260, %.lr.ph182.us
  %.2133.us.us = phi i8 [ %.1132179.us.us, %.lr.ph182.us ], [ %i.it, %.sink.split260 ] ; 5 uses
  %.2.us.us = phi i8 [ %.1180.us.us, %.lr.ph182.us ], [ %i.iv, %.sink.split260 ] ; 3 uses
  switch i8 %.2133.us.us, label %.preheader.us.us [
    i8 -1, label %bb.r
    i8 0, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0136171.us.us, ptr align 1 %.0135175.us.us, i64 %i.cs, i1 false)
  br label %bb.r

.preheader.us.us:                                 ; preds = %bb.p
  %i.iw = xor i8 %.2133.us.us, -1
  %i.ix = zext i8 %i.iw to i32
  %i.iy = zext i8 %.2.us.us to i32
  %i.iz = mul nuw nsw i32 %i.ix, %i.iy
  %i.ja = mul nuw nsw i32 %i.iz, 257
  %i.jb = add nuw nsw i32 %i.ja, 32896
  %i.jc = lshr i32 %i.jb, 16
  %i.jd = trunc nuw i32 %i.jc to i8
  %i.je = add i8 %.2133.us.us, %i.jd
  store i8 %i.je, ptr %i.a, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0136171.us.us, ptr nonnull align 1 %i.a, i64 %i.cs, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %.preheader.us.us, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.jf = add i64 %.0140170.us.us, 1              ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %.0136171.us.us, i64 %i.cs
  %i.jh = getelementptr inbounds i8, ptr %.0135175.us.us, i64 %i.cs
  %i.ji = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.jj = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.jk = add nsw i32 %i.jj, %i.ji
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp ult i64 %i.jf, %i.jl
  br i1 %i.jm, label %.lr.ph182.us, label %._crit_edge183.split.us.us.split.loopexit, !llvm.loop !261

.lr.ph203.split:                                  ; preds = %.lr.ph203.split.preheader, %._crit_edge183.split
  %i.jn = phi i32 [ %i.kr, %._crit_edge183.split ], [ %i.cm, %.lr.ph203.split.preheader ]
  %i.jo = phi i32 [ %i.ks, %._crit_edge183.split ], [ %i.ck, %.lr.ph203.split.preheader ]
  %i.jp = phi i32 [ %i.kt, %._crit_edge183.split ], [ %.pre219, %.lr.ph203.split.preheader ] ; 2 uses
  %i.jq = phi i32 [ %i.ku, %._crit_edge183.split ], [ %.pre, %.lr.ph203.split.preheader ] ; 2 uses
  %i.jr = phi i32 [ %i.kv, %._crit_edge183.split ], [ %.pre219, %.lr.ph203.split.preheader ] ; 2 uses
  %i.js = phi i32 [ %i.kw, %._crit_edge183.split ], [ %.pre, %.lr.ph203.split.preheader ] ; 5 uses
  %.0131200 = phi i8 [ %.1132.lcssa, %._crit_edge183.split ], [ undef, %.lr.ph203.split.preheader ] ; 2 uses
  %.3199 = phi i64 [ %i.kx, %._crit_edge183.split ], [ %i.cl, %.lr.ph203.split.preheader ] ; 3 uses
  %i.jt = add nsw i32 %i.jr, %i.js
  %i.ju = icmp ult i32 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph182.preheader, label %._crit_edge183.split

.lr.ph182.preheader:                              ; preds = %.lr.ph203.split
  %i.jv = sext i32 %i.js to i64
  %i.jw = mul i64 %.3199, %i.k
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.jw
  %i.jy = mul nsw i32 %i.js, %.fr206
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %i.jz
  %i.kb = mul i64 %.3199, %i.e
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kb
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.jz
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %bb.w
  %i.ke = phi i32 [ %i.kj, %bb.w ], [ %i.jp, %.lr.ph182.preheader ]
  %i.kf = phi i32 [ %i.kk, %bb.w ], [ %i.jq, %.lr.ph182.preheader ]
  %.1132179 = phi i8 [ %.2133, %bb.w ], [ %.0131200, %.lr.ph182.preheader ]
  %.0135175 = phi ptr [ %i.kn, %bb.w ], [ %i.ka, %.lr.ph182.preheader ] ; 2 uses
  %.0136171 = phi ptr [ %i.km, %bb.w ], [ %i.kd, %.lr.ph182.preheader ] ; 3 uses
  %.0140170 = phi i64 [ %i.kl, %bb.w ], [ %i.jv, %.lr.ph182.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.kg = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.kg, label %bb.t [
    i32 26, label %.sink.split263
    i32 56, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph182
  br label %.sink.split263

.sink.split263:                                   ; preds = %.lr.ph182, %bb.s
  %.sink264 = phi i64 [ 1, %bb.s ], [ 3, %.lr.ph182 ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0136171, i64 %.sink264
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %.sink.split263, %.lr.ph182
  %.2133 = phi i8 [ %.1132179, %.lr.ph182 ], [ %i.ki, %.sink.split263 ] ; 3 uses
  switch i8 %.2133, label %bb.v [
    i8 -1, label %bb.w
    i8 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0136171, ptr align 1 %.0135175, i64 %i.cs, i1 false)
  %.pre220 = load i32, ptr %i.cp, align 8, !tbaa !132
  %.pre221 = load i32, ptr %i.cq, align 8, !tbaa !120
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.26, i32 noundef 1457) #12
  tail call void @abort() #13
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  %i.kj = phi i32 [ %i.ke, %bb.t ], [ %.pre221, %bb.u ] ; 4 uses
  %i.kk = phi i32 [ %i.kf, %bb.t ], [ %.pre220, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kl = add i64 %.0140170, 1                    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0136171, i64 %i.cs
  %i.kn = getelementptr inbounds nuw i8, ptr %.0135175, i64 %i.cs
  %i.ko = add nsw i32 %i.kj, %i.kk
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp ult i64 %i.kl, %i.kp
  br i1 %i.kq, label %.lr.ph182, label %._crit_edge183.split.loopexit, !llvm.loop !261

._crit_edge183.split.loopexit:                    ; preds = %bb.w
  %.pre222 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre223 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge183.split

._crit_edge183.split:                             ; preds = %._crit_edge183.split.loopexit, %.lr.ph203.split
  %i.kr = phi i32 [ %i.jn, %.lr.ph203.split ], [ %.pre223, %._crit_edge183.split.loopexit ] ; 2 uses
  %i.ks = phi i32 [ %i.jo, %.lr.ph203.split ], [ %.pre222, %._crit_edge183.split.loopexit ] ; 2 uses
  %i.kt = phi i32 [ %i.jp, %.lr.ph203.split ], [ %i.kj, %._crit_edge183.split.loopexit ]
  %i.ku = phi i32 [ %i.jq, %.lr.ph203.split ], [ %i.kk, %._crit_edge183.split.loopexit ]
  %i.kv = phi i32 [ %i.jr, %.lr.ph203.split ], [ %i.kj, %._crit_edge183.split.loopexit ]
  %i.kw = phi i32 [ %i.js, %.lr.ph203.split ], [ %i.kk, %._crit_edge183.split.loopexit ]
  %.1132.lcssa = phi i8 [ %.0131200, %.lr.ph203.split ], [ %.2133, %._crit_edge183.split.loopexit ]
  %i.kx = add i64 %.3199, 1                       ; 2 uses
  %i.ky = add nsw i32 %i.kr, %i.ks
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp ult i64 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph203.split, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %._crit_edge183.split, %._crit_edge183.split.us.us.split.us.us, %._crit_edge183.split.us.us.split, %bb.j, %._crit_edge, %bb.e
  %.0 = phi i32 [ -1163346256, %bb.e ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %._crit_edge183.split.us.us.split.us.us ], [ 0, %._crit_edge183.split.us.us.split ], [ 0, %._crit_edge183.split ]
  ret i32 %.0
}

declare void @ff_progress_frame_report(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_png_get_nb_channels(i32 noundef) local_unnamed_addr #2

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_progress_frame_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #2

declare i32 @ff_png_pass_row_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_fast_padded_mallocz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_frame_new_side_data(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_csp_primaries_id_from_desc(ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_content_light_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_mastering_display_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_zbuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.FFZStream, align 8          ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call i32 @ff_inflate_init(ptr noundef nonnull %4, ptr noundef %3) #12 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !184
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !183
  call void @av_bprint_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1) #12
  %.old = load i32, ptr %i.i, align 8, !tbaa !183
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %.loopexit29, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i32, ptr %i.j, align 8, !tbaa !200
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.m = phi i32 [ %.pre, %.preheader ], [ %i.aa, %bb.g ]
  %i.n = icmp ugt i32 %i.m, 16777216
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef 16777216) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @av_bprint_get_buffer(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.o = load i32, ptr %i.b, align 4, !tbaa !24   ; 2 uses
end_hunk_0
