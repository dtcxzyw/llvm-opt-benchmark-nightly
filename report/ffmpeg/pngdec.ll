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
  %.fr194 = phi i32 [ %i.q, %bb.b ], [ 4, %bb.a ] ; 12 uses
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
  %.lcssa151 = phi i64 [ 0, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp ult i64 %.lcssa151, %i.ae
  br i1 %i.af, label %.lr.ph155, label %.preheader148

.lr.ph155:                                        ; preds = %.preheader149
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0134153 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.g ] ; 3 uses
  %i.aj = mul i64 %.0134153, %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %i.al = mul i64 %.0134153, %i.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %i.an = load i32, ptr %i.z, align 8, !tbaa !229
  %i.ao = mul nsw i32 %i.an, %.fr194
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.am, i64 %i.ap, i1 false)
  %i.aq = add nuw i64 %.0134153, 1                ; 2 uses
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
  br i1 %i.ax, label %.lr.ph158, label %._crit_edge

.lr.ph158:                                        ; preds = %.preheader148
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph155, %bb.h
  %.1154 = phi i64 [ %.lcssa151, %.lr.ph155 ], [ %i.br, %bb.h ] ; 3 uses
  %i.az = mul i64 %.1154, %i.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = mul i64 %.1154, %i.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.ag, align 8, !tbaa !132
  %i.be = mul nsw i32 %i.bd, %.fr194
  %i.bf = sext i32 %i.be to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  %i.bg = load i32, ptr %i.ag, align 8, !tbaa !132
  %i.bh = load i32, ptr %i.ah, align 8, !tbaa !120
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = mul nsw i32 %i.bi, %.fr194
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  %i.bn = load i32, ptr %i.ai, align 8, !tbaa !229
  %i.bo = sub i32 %i.bn, %i.bi
  %i.bp = mul nsw i32 %i.bo, %.fr194
  %i.bq = sext i32 %i.bp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  %i.br = add nuw i64 %.1154, 1                   ; 2 uses
  %i.bs = load i32, ptr %i.x, align 4, !tbaa !133
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.bu = add nsw i32 %i.bt, %i.bs
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ult i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.h, label %.preheader148, !llvm.loop !257

bb.i:                                             ; preds = %.lr.ph158, %bb.i
  %.2157 = phi i64 [ %.lcssa, %.lr.ph158 ], [ %i.ce, %bb.i ] ; 3 uses
  %i.bx = mul i64 %.2157, %i.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  %i.bz = mul i64 %.2157, %i.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bz
  %i.cb = load i32, ptr %i.ay, align 8, !tbaa !229
  %i.cc = mul nsw i32 %i.cb, %.fr194
  %i.cd = sext i32 %i.cc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cd, i1 false)
  %i.ce = add nuw i64 %.2157, 1                   ; 2 uses
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
  br i1 %i.co, label %.lr.ph192, label %.loopexit

.lr.ph192:                                        ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cs = sext i32 %.fr194 to i64                 ; 9 uses
  %i.ct = icmp slt i32 %.fr194, 11
  %i.cu = add i32 %.fr194, -1                     ; 8 uses
  %i.cv = sext i32 %i.cu to i64                   ; 8 uses
  %3 = zext nneg i32 %.fr194 to i64               ; 2 uses
  br i1 %i.ct, label %.lr.ph192.split.us, label %.lr.ph192.split.preheader

.lr.ph192.split.preheader:                        ; preds = %.lr.ph192
  %.pre = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %.pre206 = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  br label %.lr.ph192.split

.lr.ph192.split.us:                               ; preds = %.lr.ph192
  %.not195 = icmp eq i32 %i.cu, 0
  %.pre215 = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %.pre216 = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  br i1 %.not195, label %.lr.ph192.split.us.split, label %.lr.ph192.split.us.split.us.preheader

.lr.ph192.split.us.split.us.preheader:            ; preds = %.lr.ph192.split.us
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = icmp eq i32 %i.cu, 1
  %unroll_iter = and i64 %i.cv, -2
  %i.cy = and i32 %i.cu, 1
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  %lcmp.mod285 = trunc i32 %i.cu to i1
  %min.iters.check = icmp ult i32 %i.cu, 4
  %min.iters.check259 = icmp ult i32 %i.cu, 16
  %n.vec = and i64 %i.cv, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %i.cz = and i32 %i.cu, 12
  %min.epilog.iters.check = icmp eq i32 %i.cz, 0
  %n.vec263 = and i64 %i.cv, -4                   ; 3 uses
  %cmp.n272 = icmp eq i64 %n.vec263, %i.cv
  br label %.lr.ph192.split.us.split.us

.lr.ph192.split.us.split.us:                      ; preds = %.lr.ph192.split.us.split.us.preheader, %._crit_edge179.split.us.us.split.us.us
  %i.da = phi i32 [ %i.dp, %._crit_edge179.split.us.us.split.us.us ], [ %i.cm, %.lr.ph192.split.us.split.us.preheader ]
  %i.db = phi i32 [ %i.dq, %._crit_edge179.split.us.us.split.us.us ], [ %i.ck, %.lr.ph192.split.us.split.us.preheader ]
  %i.dc = phi i32 [ %i.dr, %._crit_edge179.split.us.us.split.us.us ], [ %.pre216, %.lr.ph192.split.us.split.us.preheader ] ; 2 uses
  %i.dd = phi i32 [ %i.ds, %._crit_edge179.split.us.us.split.us.us ], [ %.pre215, %.lr.ph192.split.us.split.us.preheader ] ; 5 uses
  %.3190.us.us = phi i64 [ %i.dt, %._crit_edge179.split.us.us.split.us.us ], [ %i.cl, %.lr.ph192.split.us.split.us.preheader ] ; 3 uses
  %i.de = add nsw i32 %i.dc, %i.dd
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph178.us.us.preheader, label %._crit_edge179.split.us.us.split.us.us

.lr.ph178.us.us.preheader:                        ; preds = %.lr.ph192.split.us.split.us
  %i.dg = sext i32 %i.dd to i64
  %i.dh = mul i64 %.3190.us.us, %i.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dh
  %i.dj = mul nsw i32 %i.dd, %.fr194
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = mul i64 %.3190.us.us, %i.e
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.dk
  br label %.lr.ph178.us.us

._crit_edge179.split.us.us.split.us.us.loopexit:  ; preds = %bb.n
  %.pre213 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre214 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge179.split.us.us.split.us.us

._crit_edge179.split.us.us.split.us.us:           ; preds = %._crit_edge179.split.us.us.split.us.us.loopexit, %.lr.ph192.split.us.split.us
  %i.dp = phi i32 [ %.pre214, %._crit_edge179.split.us.us.split.us.us.loopexit ], [ %i.da, %.lr.ph192.split.us.split.us ] ; 2 uses
  %i.dq = phi i32 [ %.pre213, %._crit_edge179.split.us.us.split.us.us.loopexit ], [ %i.db, %.lr.ph192.split.us.split.us ] ; 2 uses
  %i.dr = phi i32 [ %i.fs, %._crit_edge179.split.us.us.split.us.us.loopexit ], [ %i.dc, %.lr.ph192.split.us.split.us ]
  %i.ds = phi i32 [ %i.fr, %._crit_edge179.split.us.us.split.us.us.loopexit ], [ %i.dd, %.lr.ph192.split.us.split.us ]
  %i.dt = add i64 %.3190.us.us, 1                 ; 2 uses
  %i.du = add nsw i32 %i.dp, %i.dq
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp ult i64 %i.dt, %i.dv
  br i1 %i.dw, label %.lr.ph192.split.us.split.us, label %.loopexit, !llvm.loop !259

.lr.ph178.us.us:                                  ; preds = %.lr.ph178.us.us.preheader, %bb.n
  %.0132173.us.us.us.us = phi ptr [ %i.fq, %bb.n ], [ %i.dl, %.lr.ph178.us.us.preheader ] ; 9 uses
  %.0133169.us.us.us.us = phi ptr [ %i.fp, %bb.n ], [ %i.do, %.lr.ph178.us.us.preheader ] ; 10 uses
  %.0135168.us.us.us.us = phi i64 [ %i.fo, %bb.n ], [ %i.dg, %.lr.ph178.us.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dx = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.dx, label %.thread.us.us.us.us [
    i32 26, label %bb.k
    i32 56, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph178.us.us
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph178.us.us, %bb.k
  %.sink243 = phi i64 [ 3, %bb.k ], [ 1, %.lr.ph178.us.us ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %.sink243
  %i.dz = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %.sink243
  %.0.us.us.us.us = load i8, ptr %i.dz, align 1, !tbaa !9
  %.0130.us.us.us.us = load i8, ptr %i.dy, align 1, !tbaa !9 ; 3 uses
  %i.ea = zext i8 %.0130.us.us.us.us to i32
  switch i8 %.0130.us.us.us.us, label %.thread.us.us.us.us [
    i8 -1, label %bb.n
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0133169.us.us.us.us, ptr nonnull align 1 %.0132173.us.us.us.us, i64 %i.cs, i1 false)
  br label %bb.n

.thread.us.us.us.us:                              ; preds = %bb.l, %.lr.ph178.us.us
  %i.eb = phi i32 [ %i.ea, %bb.l ], [ 0, %.lr.ph178.us.us ] ; 3 uses
  %.0147.us.us.us.us = phi i8 [ %.0.us.us.us.us, %bb.l ], [ undef, %.lr.ph178.us.us ] ; 2 uses
  %.0130146.us.us.us.us = phi i8 [ %.0130.us.us.us.us, %bb.l ], [ undef, %.lr.ph178.us.us ]
  %i.ec = xor i32 %i.eb, 255                      ; 2 uses
  %i.ed = zext i8 %.0147.us.us.us.us to i32
  %i.ee = mul nuw nsw i32 %i.ec, %i.ed            ; 4 uses
  %i.ef = mul nuw nsw i32 %i.ee, 257
  %i.eg = add nuw nsw i32 %i.ef, 32896
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i8
  %i.ej = add i8 %.0130146.us.us.us.us, %i.ei     ; 3 uses
  %factor.op.mul.us.us.us.us = mul nuw nsw i32 %i.eb, 257 ; 3 uses
  %factor.op.mul159.us.us.us.us = mul nuw nsw i32 %i.ec, 257 ; 3 uses
  %i.ek = zext i8 %i.ej to i32
  %i.el = icmp eq i8 %i.ej, 0
  %i.em = mul nuw nsw i32 %i.eb, 255              ; 3 uses
  %i.en = mul nuw nsw i32 %i.ek, 255              ; 3 uses
  br i1 %i.el, label %.lr.ph162.split.us.us.us.us.us.preheader, label %.lr.ph162.split.us183.us.us.us

.lr.ph162.split.us.us.us.us.us.preheader:         ; preds = %.thread.us.us.us.us
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %i.cv, i1 false), !tbaa !9
  br label %._crit_edge163.us.us.us.us

.lr.ph162.split.split.us184.us.us.us:             ; preds = %.lr.ph162.split.split.us184.us.us.us.preheader, %.lr.ph162.split.split.us184.us.us.us
  %.0131161.us180.us.us.us = phi i64 [ %i.fn, %.lr.ph162.split.split.us184.us.us.us ], [ 0, %.lr.ph162.split.split.us184.us.us.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph162.split.split.us184.us.us.us ], [ 0, %.lr.ph162.split.split.us184.us.us.us.preheader ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %.0131161.us180.us.us.us
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.eq = zext i8 %i.ep to i32
  %i.er = mul nuw nsw i32 %i.em, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %.0131161.us180.us.us.us
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nuw nsw i32 %i.ee, %i.eu
  %i.ew = add nuw nsw i32 %i.ev, %i.er
  %i.ex = udiv i32 %i.ew, %i.en
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0131161.us180.us.us.us
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !9
  %i.fa = or disjoint i64 %.0131161.us180.us.us.us, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.em, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %i.fa
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9
  %i.fh = zext i8 %i.fg to i32
  %i.fi = mul nuw nsw i32 %i.ee, %i.fh
  %i.fj = add nuw nsw i32 %i.fi, %i.fe
  %i.fk = udiv i32 %i.fj, %i.en
  %i.fl = trunc i32 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !9
  %i.fn = add nuw i64 %.0131161.us180.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge163.us.us.us.us.loopexit275.unr-lcssa, label %.lr.ph162.split.split.us184.us.us.us, !llvm.loop !260

bb.n:                                             ; preds = %._crit_edge163.us.us.us.us, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fo = add i64 %.0135168.us.us.us.us, 1        ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.0133169.us.us.us.us, i64 %i.cs
  %i.fq = getelementptr inbounds i8, ptr %.0132173.us.us.us.us, i64 %i.cs
  %i.fr = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.fs = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.ft = add nsw i32 %i.fs, %i.fr
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp ult i64 %i.fo, %i.fu
  br i1 %i.fv, label %.lr.ph178.us.us, label %._crit_edge179.split.us.us.split.us.us.loopexit, !llvm.loop !261

.lr.ph162.split.us183.us.us.us:                   ; preds = %.thread.us.us.us.us
  %i.fw = icmp eq i8 %.0147.us.us.us.us, -1
  br i1 %i.fw, label %iter.check, label %.lr.ph162.split.split.us184.us.us.us.preheader

.lr.ph162.split.split.us184.us.us.us.preheader:   ; preds = %.lr.ph162.split.us183.us.us.us
  br i1 %i.cx, label %.lr.ph162.split.split.us184.us.us.us.epil.preheader, label %.lr.ph162.split.split.us184.us.us.us

iter.check:                                       ; preds = %.lr.ph162.split.us183.us.us.us
  br i1 %min.iters.check, label %.lr.ph162.split.split.us.us.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check259, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %factor.op.mul.us.us.us.us, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <16 x i32> poison, i32 %factor.op.mul159.us.us.us.us, i64 0
  %broadcast.splat261 = shufflevector <16 x i32> %broadcast.splatinsert260, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fx, align 1, !tbaa !9
  %i.fy = zext <16 x i8> %wide.load to <16 x i32>
  %i.fz = mul nuw nsw <16 x i32> %broadcast.splat, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %index
  %wide.load262 = load <16 x i8>, ptr %i.ga, align 1, !tbaa !9
  %i.gb = zext <16 x i8> %wide.load262 to <16 x i32>
  %i.gc = mul nuw nsw <16 x i32> %broadcast.splat261, %i.gb
  %i.gd = add nuw nsw <16 x i32> %i.gc, %i.fz
  %i.ge = add nuw nsw <16 x i32> %i.gd, splat (i32 32896)
  %i.gf = lshr <16 x i32> %i.ge, splat (i32 16)
  %i.gg = trunc <16 x i32> %i.gf to <16 x i8>
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.gg, ptr %i.gh, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge163.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph162.split.split.us.us.us.us.us.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert264 = insertelement <4 x i32> poison, i32 %factor.op.mul.us.us.us.us, i64 0
  %broadcast.splat265 = shufflevector <4 x i32> %broadcast.splatinsert264, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %factor.op.mul159.us.us.us.us, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next271, %vec.epilog.vector.body ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %index268
  %wide.load269 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !9
  %i.gk = zext <4 x i8> %wide.load269 to <4 x i32>
  %i.gl = mul nuw nsw <4 x i32> %broadcast.splat265, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %index268
  %wide.load270 = load <4 x i8>, ptr %i.gm, align 1, !tbaa !9
  %i.gn = zext <4 x i8> %wide.load270 to <4 x i32>
  %i.go = mul nuw nsw <4 x i32> %broadcast.splat267, %i.gn
  %i.gp = add nuw nsw <4 x i32> %i.go, %i.gl
  %i.gq = add nuw nsw <4 x i32> %i.gp, splat (i32 32896)
  %i.gr = lshr <4 x i32> %i.gq, splat (i32 16)
  %i.gs = trunc <4 x i32> %i.gr to <4 x i8>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 %index268
  store <4 x i8> %i.gs, ptr %i.gt, align 1, !tbaa !9
  %index.next271 = add nuw i64 %index268, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next271, %n.vec263
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !263

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n272, label %._crit_edge163.us.us.us.us, label %.lr.ph162.split.split.us.us.us.us.us.preheader

.lr.ph162.split.split.us.us.us.us.us.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0131161.us165.us.us.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec263, %vec.epilog.middle.block ]
  br label %.lr.ph162.split.split.us.us.us.us.us

._crit_edge163.us.us.us.us.loopexit275.unr-lcssa: ; preds = %.lr.ph162.split.split.us184.us.us.us
  br i1 %lcmp.mod.not, label %._crit_edge163.us.us.us.us, label %.lr.ph162.split.split.us184.us.us.us.epil.preheader

.lr.ph162.split.split.us184.us.us.us.epil.preheader: ; preds = %._crit_edge163.us.us.us.us.loopexit275.unr-lcssa, %.lr.ph162.split.split.us184.us.us.us.preheader
  %.0131161.us180.us.us.us.epil.init = phi i64 [ 0, %.lr.ph162.split.split.us184.us.us.us.preheader ], [ %i.fn, %._crit_edge163.us.us.us.us.loopexit275.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.gv = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %.0131161.us180.us.us.us.epil.init
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.em, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %.0131161.us180.us.us.us.epil.init
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hb = zext i8 %i.ha to i32
  %i.hc = mul nuw nsw i32 %i.ee, %i.hb
  %i.hd = add nuw nsw i32 %i.hc, %i.gy
  %i.he = udiv i32 %i.hd, %i.en
  %i.hf = trunc i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0131161.us180.us.us.us.epil.init
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !9
  br label %._crit_edge163.us.us.us.us

._crit_edge163.us.us.us.us:                       ; preds = %.lr.ph162.split.split.us184.us.us.us.epil.preheader, %._crit_edge163.us.us.us.us.loopexit275.unr-lcssa, %.lr.ph162.split.split.us.us.us.us.us, %middle.block, %vec.epilog.middle.block, %.lr.ph162.split.us.us.us.us.us.preheader
  store i8 %i.ej, ptr %i.cw, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0133169.us.us.us.us, ptr nonnull align 1 %i.a, i64 %3, i1 false)
  br label %bb.n

.lr.ph162.split.split.us.us.us.us.us:             ; preds = %.lr.ph162.split.split.us.us.us.us.us.preheader, %.lr.ph162.split.split.us.us.us.us.us
  %.0131161.us165.us.us.us.us = phi i64 [ %i.hs, %.lr.ph162.split.split.us.us.us.us.us ], [ %.0131161.us165.us.us.us.us.ph, %.lr.ph162.split.split.us.us.us.us.us.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0133169.us.us.us.us, i64 %.0131161.us165.us.us.us.us
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !9
  %i.hj = zext i8 %i.hi to i32
  %.reass.us.us.us.us.us = mul nuw nsw i32 %factor.op.mul.us.us.us.us, %i.hj
  %i.hk = getelementptr inbounds nuw i8, ptr %.0132173.us.us.us.us, i64 %.0131161.us165.us.us.us.us
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hm = zext i8 %i.hl to i32
  %.reass160.us.us.us.us.us = mul nuw nsw i32 %factor.op.mul159.us.us.us.us, %i.hm
  %i.hn = add nuw nsw i32 %.reass160.us.us.us.us.us, %.reass.us.us.us.us.us
  %i.ho = add nuw nsw i32 %i.hn, 32896
  %i.hp = lshr i32 %i.ho, 16
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0131161.us165.us.us.us.us
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !9
  %i.hs = add nuw i64 %.0131161.us165.us.us.us.us, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %i.hs, %i.cv
  br i1 %exitcond205.not, label %._crit_edge163.us.us.us.us, label %.lr.ph162.split.split.us.us.us.us.us, !llvm.loop !264

.lr.ph192.split.us.split:                         ; preds = %.lr.ph192.split.us, %._crit_edge179.split.us.us.split
  %i.ht = phi i32 [ %i.ii, %._crit_edge179.split.us.us.split ], [ %i.cm, %.lr.ph192.split.us ]
  %i.hu = phi i32 [ %i.ij, %._crit_edge179.split.us.us.split ], [ %i.ck, %.lr.ph192.split.us ]
  %i.hv = phi i32 [ %i.ik, %._crit_edge179.split.us.us.split ], [ %.pre216, %.lr.ph192.split.us ] ; 2 uses
  %i.hw = phi i32 [ %i.il, %._crit_edge179.split.us.us.split ], [ %.pre215, %.lr.ph192.split.us ] ; 5 uses
  %.3190.us = phi i64 [ %i.im, %._crit_edge179.split.us.us.split ], [ %i.cl, %.lr.ph192.split.us ] ; 3 uses
  %i.hx = add nsw i32 %i.hv, %i.hw
  %i.hy = icmp ult i32 %i.hw, %i.hx
  br i1 %i.hy, label %.lr.ph178.us.preheader, label %._crit_edge179.split.us.us.split

.lr.ph178.us.preheader:                           ; preds = %.lr.ph192.split.us.split
  %i.hz = sext i32 %i.hw to i64
  %i.ia = mul i64 %.3190.us, %i.k
  %i.ib = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ia
  %i.ic = mul nsw i32 %i.hw, %.fr194
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %i.id
  %i.if = mul i64 %.3190.us, %i.e
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %i.id
  br label %.lr.ph178.us

._crit_edge179.split.us.us.split.loopexit:        ; preds = %bb.r
  %.pre217 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre218 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge179.split.us.us.split

._crit_edge179.split.us.us.split:                 ; preds = %._crit_edge179.split.us.us.split.loopexit, %.lr.ph192.split.us.split
  %i.ii = phi i32 [ %.pre218, %._crit_edge179.split.us.us.split.loopexit ], [ %i.ht, %.lr.ph192.split.us.split ] ; 2 uses
  %i.ij = phi i32 [ %.pre217, %._crit_edge179.split.us.us.split.loopexit ], [ %i.hu, %.lr.ph192.split.us.split ] ; 2 uses
  %i.ik = phi i32 [ %i.jh, %._crit_edge179.split.us.us.split.loopexit ], [ %i.hv, %.lr.ph192.split.us.split ]
  %i.il = phi i32 [ %i.jg, %._crit_edge179.split.us.us.split.loopexit ], [ %i.hw, %.lr.ph192.split.us.split ]
  %i.im = add i64 %.3190.us, 1                    ; 2 uses
  %i.in = add nsw i32 %i.ii, %i.ij
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp ult i64 %i.im, %i.io
  br i1 %i.ip, label %.lr.ph192.split.us.split, label %.loopexit, !llvm.loop !259

.lr.ph178.us:                                     ; preds = %.lr.ph178.us.preheader, %bb.r
  %.0132173.us.us = phi ptr [ %i.jf, %bb.r ], [ %i.ie, %.lr.ph178.us.preheader ] ; 3 uses
  %.0133169.us.us = phi ptr [ %i.je, %bb.r ], [ %i.ih, %.lr.ph178.us.preheader ] ; 4 uses
  %.0135168.us.us = phi i64 [ %i.jd, %bb.r ], [ %i.hz, %.lr.ph178.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.iq = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.iq, label %.thread.us.us [
    i32 26, label %bb.o
    i32 56, label %bb.p
  ]

bb.o:                                             ; preds = %.lr.ph178.us
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph178.us, %bb.o
  %.sink245 = phi i64 [ 3, %bb.o ], [ 1, %.lr.ph178.us ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0133169.us.us, i64 %.sink245
  %i.is = getelementptr inbounds nuw i8, ptr %.0132173.us.us, i64 %.sink245
  %.0.us.us = load i8, ptr %i.is, align 1, !tbaa !9
  %.0130.us.us = load i8, ptr %i.ir, align 1, !tbaa !9 ; 3 uses
  %i.it = zext i8 %.0130.us.us to i32
  switch i8 %.0130.us.us, label %.thread.us.us [
    i8 -1, label %bb.r
    i8 0, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0133169.us.us, ptr nonnull align 1 %.0132173.us.us, i64 %i.cs, i1 false)
  br label %bb.r

.thread.us.us:                                    ; preds = %bb.p, %.lr.ph178.us
  %i.iu = phi i32 [ %i.it, %bb.p ], [ 0, %.lr.ph178.us ]
  %.0147.us.us = phi i8 [ %.0.us.us, %bb.p ], [ undef, %.lr.ph178.us ]
  %.0130146.us.us = phi i8 [ %.0130.us.us, %bb.p ], [ undef, %.lr.ph178.us ]
  %i.iv = xor i32 %i.iu, 255
  %i.iw = zext i8 %.0147.us.us to i32
  %i.ix = mul nuw nsw i32 %i.iv, %i.iw
  %i.iy = mul nuw nsw i32 %i.ix, 257
  %i.iz = add nuw nsw i32 %i.iy, 32896
  %i.ja = lshr i32 %i.iz, 16
  %i.jb = trunc nuw i32 %i.ja to i8
  %i.jc = add i8 %.0130146.us.us, %i.jb
  store i8 %i.jc, ptr %i.a, align 1, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0133169.us.us, ptr nonnull align 1 %i.a, i64 %3, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %.thread.us.us, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.jd = add i64 %.0135168.us.us, 1              ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.0133169.us.us, i64 %i.cs
  %i.jf = getelementptr inbounds i8, ptr %.0132173.us.us, i64 %i.cs
  %i.jg = load i32, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.jh = load i32, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp ult i64 %i.jd, %i.jj
  br i1 %i.jk, label %.lr.ph178.us, label %._crit_edge179.split.us.us.split.loopexit, !llvm.loop !261

.lr.ph192.split:                                  ; preds = %.lr.ph192.split.preheader, %._crit_edge179.split
  %i.jl = phi i32 [ %i.ko, %._crit_edge179.split ], [ %i.cm, %.lr.ph192.split.preheader ]
  %i.jm = phi i32 [ %i.kp, %._crit_edge179.split ], [ %i.ck, %.lr.ph192.split.preheader ]
  %i.jn = phi i32 [ %i.kq, %._crit_edge179.split ], [ %.pre206, %.lr.ph192.split.preheader ] ; 2 uses
  %i.jo = phi i32 [ %i.kr, %._crit_edge179.split ], [ %.pre, %.lr.ph192.split.preheader ] ; 2 uses
  %i.jp = phi i32 [ %i.ks, %._crit_edge179.split ], [ %.pre206, %.lr.ph192.split.preheader ] ; 2 uses
  %i.jq = phi i32 [ %i.kt, %._crit_edge179.split ], [ %.pre, %.lr.ph192.split.preheader ] ; 5 uses
  %.3190 = phi i64 [ %i.ku, %._crit_edge179.split ], [ %i.cl, %.lr.ph192.split.preheader ] ; 3 uses
  %i.jr = add nsw i32 %i.jp, %i.jq
  %i.js = icmp ult i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph178.preheader, label %._crit_edge179.split

.lr.ph178.preheader:                              ; preds = %.lr.ph192.split
  %i.jt = sext i32 %i.jq to i64
  %i.ju = mul i64 %.3190, %i.k
  %i.jv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ju
  %i.jw = mul nsw i32 %i.jq, %.fr194
  %i.jx = sext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jv, i64 %i.jx
  %i.jz = mul i64 %.3190, %i.e
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jz
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.jx
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.v
  %i.kc = phi i32 [ %i.kg, %bb.v ], [ %i.jn, %.lr.ph178.preheader ]
  %i.kd = phi i32 [ %i.kh, %bb.v ], [ %i.jo, %.lr.ph178.preheader ]
  %.0132173 = phi ptr [ %i.kk, %bb.v ], [ %i.jy, %.lr.ph178.preheader ] ; 2 uses
  %.0133169 = phi ptr [ %i.kj, %bb.v ], [ %i.kb, %.lr.ph178.preheader ] ; 3 uses
  %.0135168 = phi i64 [ %i.ki, %bb.v ], [ %i.jt, %.lr.ph178.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ke = load i32, ptr %i.cr, align 8, !tbaa !131
  switch i32 %i.ke, label %.thread [
    i32 26, label %bb.t
    i32 56, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph178
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph178, %bb.s
  %.sink246 = phi i64 [ 1, %bb.s ], [ 3, %.lr.ph178 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0133169, i64 %.sink246
  %.0130 = load i8, ptr %i.kf, align 1, !tbaa !9
  switch i8 %.0130, label %.thread [
    i8 -1, label %bb.v
    i8 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0133169, ptr nonnull align 1 %.0132173, i64 %i.cs, i1 false)
  %.pre207 = load i32, ptr %i.cp, align 8, !tbaa !132
  %.pre208 = load i32, ptr %i.cq, align 8, !tbaa !120
  br label %bb.v

.thread:                                          ; preds = %.lr.ph178, %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.26, i32 noundef 1457) #12
  tail call void @abort() #13
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.kg = phi i32 [ %i.kc, %bb.t ], [ %.pre208, %bb.u ] ; 4 uses
  %i.kh = phi i32 [ %i.kd, %bb.t ], [ %.pre207, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ki = add i64 %.0135168, 1                    ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0133169, i64 %i.cs
  %i.kk = getelementptr inbounds nuw i8, ptr %.0132173, i64 %i.cs
  %i.kl = add nsw i32 %i.kg, %i.kh
  %i.km = sext i32 %i.kl to i64
  %i.kn = icmp ult i64 %i.ki, %i.km
  br i1 %i.kn, label %.lr.ph178, label %._crit_edge179.split.loopexit, !llvm.loop !261

._crit_edge179.split.loopexit:                    ; preds = %bb.v
  %.pre209 = load i32, ptr %i.x, align 4, !tbaa !133
  %.pre210 = load i32, ptr %i.ab, align 4, !tbaa !122
  br label %._crit_edge179.split

._crit_edge179.split:                             ; preds = %._crit_edge179.split.loopexit, %.lr.ph192.split
  %i.ko = phi i32 [ %.pre210, %._crit_edge179.split.loopexit ], [ %i.jl, %.lr.ph192.split ] ; 2 uses
  %i.kp = phi i32 [ %.pre209, %._crit_edge179.split.loopexit ], [ %i.jm, %.lr.ph192.split ] ; 2 uses
  %i.kq = phi i32 [ %i.kg, %._crit_edge179.split.loopexit ], [ %i.jn, %.lr.ph192.split ]
  %i.kr = phi i32 [ %i.kh, %._crit_edge179.split.loopexit ], [ %i.jo, %.lr.ph192.split ]
  %i.ks = phi i32 [ %i.kg, %._crit_edge179.split.loopexit ], [ %i.jp, %.lr.ph192.split ]
  %i.kt = phi i32 [ %i.kh, %._crit_edge179.split.loopexit ], [ %i.jq, %.lr.ph192.split ]
  %i.ku = add i64 %.3190, 1                       ; 2 uses
  %i.kv = add nsw i32 %i.ko, %i.kp
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp ult i64 %i.ku, %i.kw
  br i1 %i.kx, label %.lr.ph192.split, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %._crit_edge179.split, %._crit_edge179.split.us.us.split.us.us, %._crit_edge179.split.us.us.split, %bb.j, %._crit_edge, %bb.e
  %.0136 = phi i32 [ -1163346256, %bb.e ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %._crit_edge179.split.us.us.split.us.us ], [ 0, %._crit_edge179.split.us.us.split ], [ 0, %._crit_edge179.split ]
  ret i32 %.0136
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
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !113
  store ptr %i.q, ptr %i.k, align 8, !tbaa !192
  %i.r = add i32 %i.o, -1
end_hunk_0
