Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/bitstring?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@bit_fmt_full:bb.a
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %.02330, 64                      ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.f
  br i1 %i.o, label %bb.b, label %.outer._crit_edge, !llvm.loop !31

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %.02330, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.outer, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.u = add nsw i64 %.02330, 1                   ; 2 uses
  %i.v = icmp slt i64 %i.u, %i.f
  br i1 %i.v, label %.lr.ph47, label %.critedge

.preheader:                                       ; preds = %.lr.ph47
  %i.w = add nsw i64 %i.y, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.f
  br i1 %i.x, label %.lr.ph47, label %.critedge, !llvm.loop !32

.lr.ph47:                                         ; preds = %.preheader.preheader, %.preheader
  %i.y = phi i64 [ %i.w, %.preheader ], [ %i.u, %.preheader.preheader ] ; 5 uses
  %.12446 = phi i64 [ %i.y, %.preheader ], [ %.02330, %.preheader.preheader ]
  %i.z = ashr i64 %i.y, 6
  %i.aa = getelementptr [8 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.y, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.not26 = icmp eq i64 %i.af, 0
  br i1 %.not26, label %..critedge_crit_edge, label %.preheader, !llvm.loop !32

..critedge_crit_edge:                             ; preds = %.lr.ph47
  br label %.critedge, !llvm.loop !32

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.124.lcssa = phi i64 [ %.02330, %.preheader.preheader ], [ %.12446, %..critedge_crit_edge ], [ %i.y, %.preheader ] ; 3 uses
  %i.ag = icmp eq i64 %.124.lcssa, %.02330
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5, ptr noundef %.0.ph32, i64 noundef %.02330) #16
  br label %.outer

bb.f:                                             ; preds = %.critedge
  call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.6, ptr noundef %.0.ph32, i64 noundef %.02330, i64 noundef %.124.lcssa) #16
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.f, %bb.d
  %.2 = phi i64 [ %.02330, %bb.d ], [ %.124.lcssa, %bb.f ], [ %.02330, %bb.e ]
  %.1 = phi ptr [ %.0.ph32, %bb.d ], [ @.str.7, %bb.f ], [ @.str.7, %bb.e ]
  %i.ah = add nsw i64 %.2, 1                      ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8             ; 2 uses
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !31

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.a
  %i.ak = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.ak
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @bit_unfmt(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @bitfmt2int(ptr noundef nonnull %1) ; 3 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @inx2bitstr(ptr noundef %0, ptr noundef nonnull %i.d)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bitfmt2int(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xstrchr(ptr noundef nonnull %0, i32 noundef 58) #16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.j, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1408, ptr noundef nonnull @__func__.bitfmt2int) #16 ; 4 uses
  %i.l = icmp ult i32 %i.e, 2147483647
  br i1 %i.l, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.h
  %indvars.iv85 = phi i64 [ 0, %.lr.ph79.preheader ], [ %indvars.iv.next86, %bb.h ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph79.preheader ], [ %.2, %bb.h ] ; 4 uses
  %.05377 = phi i32 [ 0, %.lr.ph79.preheader ], [ %.154, %bb.h ] ; 5 uses
  %.05576 = phi i32 [ 0, %.lr.ph79.preheader ], [ %.156, %bb.h ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %or.cond71 = icmp ult i8 %i.o, 10
  br i1 %or.cond71, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph79
  %i.p = mul nsw i32 %.05377, 10
  %i.q = zext nneg i8 %i.o to i32
  %i.r = add nsw i32 %i.p, %i.q
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph79
  switch i8 %i.n, label %.fold.split [
    i8 45, label %bb.h
    i8 44, label %bb.f
    i8 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = icmp eq i64 %indvars.iv85, 0
  br i1 %i.s, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %.078, -1
  %spec.select = select i1 %i.t, i32 %.05377, i32 %.078
  %i.u = sext i32 %.05576 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.u ; 2 uses
  store i32 %spec.select, ptr %i.v, align 4
  %i.w = add nsw i32 %.05576, 2
  %i.x = getelementptr i8, ptr %i.v, i64 4
  store i32 %.05377, ptr %i.x, align 4
  br label %bb.h

.fold.split:                                      ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %.fold.split, %bb.d, %bb.g
  %.156 = phi i32 [ %.05576, %bb.d ], [ %.05576, %bb.e ], [ %i.w, %bb.g ], [ %.05576, %.fold.split ] ; 2 uses
  %.154 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ %.05377, %.fold.split ]
  %.2 = phi i32 [ %.078, %bb.d ], [ %.05377, %bb.e ], [ -1, %bb.g ], [ %.078, %.fold.split ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph79, !llvm.loop !33

bb.i:                                             ; preds = %bb.b
  %i.y = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.z = trunc i64 %i.y to i32                    ; 7 uses
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %.not68 = icmp eq i8 %i.ab, 45
  br i1 %.not68, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = call i64 @strtol(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.ae = trunc i64 %i.ad to i32                  ; 6 uses
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not69 = icmp eq i8 %i.ag, 58
  br i1 %.not69, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ai = call i64 @strtol(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %.fr = freeze i64 %i.ai
  %i.aj = trunc i64 %.fr to i32                   ; 8 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ak, align 1
  %.not70 = icmp eq i8 %i.al, 0
  br i1 %.not70, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = icmp slt i32 %i.ae, %i.z
  %i.an = icmp slt i32 %i.aj, 1
  %or.cond = or i1 %i.am, %i.an
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nsw i32 %i.ae, %i.z
  %i.ap = udiv i32 %i.ao, %i.aj
  %i.aq = shl nuw i32 %i.ap, 1
  %i.ar = add i32 %i.aq, 3
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.at, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1445, ptr noundef nonnull @__func__.bitfmt2int) #16 ; 4 uses
  %i.av = icmp slt i32 %i.z, %i.ae
  br i1 %i.av, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.aw = add i32 %i.aj, %i.z                     ; 3 uses
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.ae)
  %i.ay = icmp slt i32 %i.aw, %i.ae
  %i.az = zext i1 %i.ay to i32                    ; 2 uses
  %i.ba = add i32 %i.aw, %i.az
  %i.bb = sub i32 %i.ax, %i.ba
  %i.bc = udiv i32 %i.bb, %i.aj
  %i.bd = add i32 %i.bc, %i.az                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.bd, 0
  br i1 %min.iters.check, label %.lr.ph.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bf, 8589934590              ; 4 uses
  %i.bg = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.bh = trunc i64 %n.vec to i32
  %i.bi = mul i32 %i.bh, %i.aj
  %i.bj = add i32 %i.bi, %i.z
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat93 = shufflevector <2 x i32> %broadcast.splatinsert92, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = mul nuw nsw <2 x i32> %broadcast.splat93, <i32 0, i32 1>
  %induction = add nsw <2 x i32> %broadcast.splat, %i.bk
  %i.bl = shl nuw nsw i32 %i.aj, 1
  %broadcast.splatinsert94 = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat95 = shufflevector <2 x i32> %broadcast.splatinsert94, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.bm, align 4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, %broadcast.splat95
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit83, label %.lr.ph.preheader97

.lr.ph.preheader97:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.15973.ph = phi i32 [ %i.z, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader97, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader97 ] ; 2 uses
  %.15973 = phi i32 [ %i.bq, %.lr.ph ], [ %.15973.ph, %.lr.ph.preheader97 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  store i32 %.15973, ptr %i.bo, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %.15973, ptr %i.bp, align 4
  %i.bq = add nsw i32 %.15973, %i.aj              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.ae
  br i1 %i.br, label %.lr.ph, label %.loopexit.loopexit83, !llvm.loop !35

.loopexit.loopexit83:                             ; preds = %.lr.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bg, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.bs = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %.loopexit.loopexit83, %bb.m, %bb.c
  %.060 = phi ptr [ %i.k, %bb.c ], [ %i.au, %.loopexit.loopexit83 ], [ %i.au, %bb.m ], [ %i.k, %bb.h ], [ %i.k, %bb.f ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.c ], [ %i.bs, %.loopexit.loopexit83 ], [ 0, %bb.m ], [ %.05576, %bb.f ], [ %.156, %bb.h ]
  %i.bt = sext i32 %.3 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.060, i64 %i.bt
  store i32 -1, ptr %i.bu, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.a, %.loopexit
  %.061 = phi ptr [ %.060, %.loopexit ], [ null, %bb.a ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.061
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_fmt_hexmask(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_bit_fmt_hexmask(ptr noundef %0, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bit_fmt_hexmask_trim(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_bit_fmt_hexmask(ptr noundef %0, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @bit_unfmt_hexmask(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %i.f = shl i64 %i.c, 32
  %i.g = ashr exact i64 %i.f, 32                  ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.not1823.i = icmp slt i64 %i.e, 1
  br i1 %.not1823.i, label %bit_nclear.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.b, %.critedge.i
  %.024.i.in = phi i64 [ %.024.i, %.critedge.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.j = and i64 %.024.i.in, 7
  %.not82 = icmp eq i64 %i.j, 0
  br i1 %.not82, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %.024.i = add nsw i64 %.024.i.in, -1            ; 3 uses
  %i.k = and i64 %.024.i, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = xor i64 %i.l, -1
  %i.n = ashr i64 %.024.i, 6
  %i.o = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, %i.m
  store i64 %i.r, ptr %i.p, align 8
  %.not18.not.i = icmp sgt i64 %.024.i.in, 1
  br i1 %.not18.not.i, label %.lr.ph25.i, label %bit_nclear.exit, !llvm.loop !1

.critedge2.i:                                     ; preds = %.lr.ph25.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = lshr exact i64 %.024.i.in, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, i8 0, i64 %i.t, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge.i, %bb.b, %.critedge2.i
  %i.u = tail call i32 @xstrncmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i64 noundef 2) #16
  %i.v = icmp eq i32 %i.u, 0
  %spec.select.idx = select i1 %i.v, i64 2, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  %.not84.not = icmp sgt i64 %i.g, %spec.select.idx
  br i1 %.not84.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bit_nclear.exit
  %i.w = tail call ptr @__ctype_b_loc() #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 11 uses
  %.06386 = phi ptr [ %i.i, %.lr.ph ], [ %.063.be, %.backedge ] ; 2 uses
  %i.x = load i8, ptr %.06386, align 1
  %i.y = sext i8 %i.x to i64                      ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 4096
  %.not73 = icmp eq i32 %i.ad, 0
  br i1 %.not73, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = and i32 %i.ac, 2048
  %.not74 = icmp eq i32 %i.ae, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i64 %i.y, -48
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call ptr @__ctype_toupper_loc() #17
  %.pn = load ptr, ptr %i.ag, align 8
  %.061.in = getelementptr inbounds [4 x i8], ptr %.pn, i64 %i.y
  %.061 = load i32, ptr %.061.in, align 4
  %i.ah = zext i32 %.061 to i64
  %i.ai = add nsw i64 %i.ah, -55
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.062 = phi i64 [ %i.af, %bb.e ], [ %i.ai, %bb.f ] ; 5 uses
end_hunk_0
