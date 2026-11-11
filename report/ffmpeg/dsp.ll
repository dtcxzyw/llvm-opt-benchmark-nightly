Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 173
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 304
begin_hunk_0_@intra_pred_12:bb.a
  %i.ze = mul nsw i32 %i.zd, %i.ws
  %i.zf = add nsw i32 %i.ze, 32
  %i.zg = add nsw i32 %i.zf, %i.zc
  %i.zh = ashr i32 %i.zg, 6
  %i.zi = add nsw i32 %i.zh, %i.za
  %i.zj = call i32 @llvm.smax.i32(i32 %i.zi, i32 0)
  %i.zk = call i32 @llvm.umin.i32(i32 %i.zj, i32 4095)
  %i.zl = trunc nuw nsw i32 %i.zk to i16
  store i16 %i.zl, ptr %i.yy, align 2, !tbaa !34
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !701

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block680, %middle.block613
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !702

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader689, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader689 ] ; 4 uses
  %i.zm = load i16, ptr %i.wm, align 2, !tbaa !34
  %i.zn = zext i16 %i.zm to i32
  %i.zo = load i16, ptr %i.vo, align 2, !tbaa !34
  %i.zp = zext i16 %i.zo to i32
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.wo, i64 %indvars.iv314 ; 2 uses
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !34
  %i.zs = zext i16 %i.zr to i32
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.vl, i64 %indvars.iv314
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !34
  %i.zv = zext i16 %i.zu to i32
  %i.zw = load i16, ptr %i.vp, align 2, !tbaa !34
  %i.zx = zext i16 %i.zw to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc nuw i64 %indvars.iv314 to i32
  %i.zy = shl nuw i32 %indvars.iv314.tr, 1
  %i.zz = ashr i32 %i.zy, %i.vj
  %i.aaa = call i32 @llvm.smin.i32(i32 %i.zz, i32 31)
  %i.aab = lshr i32 32, %i.aaa
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.aab, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.ws, %bb.ar ]
  %i.aac = sub nsw i32 %i.zn, %i.zp
  %i.aad = mul nsw i32 %i.aac, %.0190
  %i.aae = sub nsw i32 %i.zv, %i.zx
  %i.aaf = mul nsw i32 %i.aae, %.0
  %i.aag = add nsw i32 %i.aaf, 32
  %i.aah = add nsw i32 %i.aag, %i.aad
  %i.aai = ashr i32 %i.aah, 6
  %i.aaj = add nsw i32 %i.aai, %i.zs
  %i.aak = call i32 @llvm.smax.i32(i32 %i.aaj, i32 0)
  %i.aal = call i32 @llvm.umin.i32(i32 %i.aak, i32 4095)
  %i.aam = trunc nuw nsw i32 %i.aal to i16
  store i16 %i.aam, ptr %i.zq, align 2, !tbaa !34
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !703

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !40
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = shl nuw nsw i64 %i.v, 1
  %i.aa = getelementptr i8, ptr %2, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep72 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.x, 1
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %scevgep73 = getelementptr i8, ptr %i.ad, i64 2
  %i.ae = add nuw i64 %i.v, 9223372036854775807
  %i.af = mul i64 %5, %i.ae
  %i.ag = add i64 %i.af, %wide.trip.count
  %i.ah = shl i64 %i.ag, 1
  %scevgep74 = getelementptr i8, ptr %0, i64 %i.ah ; 4 uses
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep73
  %bound1 = icmp ult ptr %i.y, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %5, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict, %stride.check
  %bound075 = icmp ult ptr %0, %scevgep72
  %bound176 = icmp ult ptr %1, %scevgep74
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %i.ai, %found.conflict77
  %bound078 = icmp ult ptr %0, %i.w
  %bound179 = icmp ult ptr %2, %scevgep74
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  %bound082 = icmp ult ptr %0, %scevgep
  %bound183 = icmp ult ptr %i.w, %scevgep74
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert94 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat95 = shufflevector <8 x i32> %broadcast.splatinsert94, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert96 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat97 = shufflevector <8 x i32> %broadcast.splatinsert96, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat99 = shufflevector <8 x i32> %broadcast.splatinsert98, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert100 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat101 = shufflevector <8 x i32> %broadcast.splatinsert100, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !34, !alias.scope !723
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat87 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !34, !alias.scope !724
  %broadcast.splatinsert88 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat89 = shufflevector <8 x i16> %broadcast.splatinsert88, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat89 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !34, !alias.scope !725
  %broadcast.splatinsert90 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat91 = shufflevector <8 x i16> %broadcast.splatinsert90, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat91 to <8 x i32>
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind104 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next105, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !34, !alias.scope !726
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat93, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat95
  %i.bc = xor <8 x i32> %vec.ind104, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat97, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %6 = trunc <8 x i64> %vec.ind to <8 x i32>
  %7 = add <8 x i32> %6, splat (i32 1)
  %i.bf = mul nuw nsw <8 x i32> %7, %i.aw
  %i.bg = add nsw <8 x i32> %i.bf, %i.be
  %i.bh = shl <8 x i32> %i.bg, %broadcast.splat99
  %i.bi = add <8 x i32> %i.bb, %broadcast.splat101
  %i.bj = add <8 x i32> %i.bi, %i.bh
  %i.bk = ashr <8 x i32> %i.bj, %broadcast.splat103
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !34, !alias.scope !727, !noalias !728
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next105 = add <8 x i32> %vec.ind104, splat (i32 8)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.al, %i.bq
  %i.bs = load i16, ptr %i.w, align 2, !tbaa !34
  %i.bt = zext i16 %i.bs to i32
  %i.bu = mul nuw nsw i32 %i.ap, %i.bt
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = shl i32 %i.bv, %i.h
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = add nsw i32 %3, %i.by
  %i.ca = load i16, ptr %i.am, align 2, !tbaa !34
  %i.cb = zext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.bz, %i.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.y, align 2, !tbaa !34
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = add nsw i32 %i.cg, %i.cc
  %i.ci = shl i32 %i.ch, %i.p
  %i.cj = add i32 %i.bw, %i.q
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = ashr i32 %i.ck, %i.s
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr [2 x i8], ptr %i.ao, i64 %indvars.iv
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !34
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !721

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %i.v
  br i1 %exitcond56.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !722

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @pred_mip_12(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 15 uses
  %i.b = tail call i32 @ff_vvc_get_mip_size_id(i32 noundef %3, i32 noundef %4) #14 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pred_mip_8.boundary_sizes, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 10 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pred_mip_8.pred_sizes, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 5 uses
  %i.h = shl i32 %i.e, 1
  %i.i = icmp eq i32 %i.b, 2                      ; 3 uses
  %.neg = sext i1 %i.i to i32
  %i.j = add i32 %i.h, %.neg                      ; 9 uses
  %i.k = tail call ptr @ff_vvc_get_mip_matrix(i32 noundef %i.b, i32 noundef %6) #14
  %i.l = sdiv i32 %3, %i.g                        ; 11 uses
  %i.m = sdiv i32 %4, %i.g                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.o ; 4 uses
  %spec.select81 = select i1 %.not, ptr %i.o, ptr %i.a ; 4 uses
  %i.p = sdiv i32 %3, %i.e                        ; 8 uses
  %.not.i.i82 = icmp ult i32 %i.p, 65536          ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %spec.select.i.i83 = select i1 %.not.i.i82, i32 %i.p, i32 %i.q ; 3 uses
  %spec.select12.i.i84 = select i1 %.not.i.i82, i32 0, i32 16 ; 2 uses
  %.not11.i.i85 = icmp samesign ult i32 %spec.select.i.i83, 256 ; 2 uses
  %i.r = lshr i32 %spec.select.i.i83, 8
  %i.s = or disjoint i32 %spec.select12.i.i84, 8
  %.110.i.i86 = select i1 %.not11.i.i85, i32 %spec.select.i.i83, i32 %i.r
  %.1.i.i87 = select i1 %.not11.i.i85, i32 %spec.select12.i.i84, i32 %i.s
  %i.t = zext nneg i32 %.110.i.i86 to i64
  %i.u = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.1.i.i87, %i.w          ; 3 uses
  %i.y = icmp eq i32 %i.e, %3
  br i1 %i.y, label %.preheader117, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.z = icmp sgt i32 %i.p, 1
  %i.aa = add nsw i32 %i.x, -1
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  br i1 %i.z, label %.lr.ph.us.preheader, label %.lr.ph127.split.preheader

.lr.ph127.split.preheader:                        ; preds = %.lr.ph127
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph127.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph127
  %i.ac = add nsw i32 %i.p, -2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %smax232 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count233 = zext nneg i32 %smax232 to i64
  %i.af = add nsw i32 %i.p, -1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.p, 9
  %n.vec361 = and i64 %i.ag, 4294967288           ; 4 uses
  %i.ah = shl nuw nsw i64 %n.vec361, 1
  %i.ai = trunc nuw i64 %n.vec361 to i32
  %i.aj = or disjoint i32 %i.ai, 1
  %cmp.n370 = icmp eq i64 %n.vec361, %i.ag
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next230, %._crit_edge.us ] ; 2 uses
  %.028.i88125.us = phi ptr [ %1, %.lr.ph.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %i.ak = load i16, ptr %.028.i88125.us, align 2, !tbaa !34
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.us
  %i.am = getelementptr i8, ptr %.028.i88125.us, i64 %i.ah
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph360 ], [ %i.at, %vector.body362 ]
  %vec.phi364 = phi <4 x i32> [ zeroinitializer, %vector.ph360 ], [ %i.au, %vector.body362 ]
  %i.ao = shl i64 %index363, 1
  %next.gep365 = getelementptr i8, ptr %.028.i88125.us, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep365, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep365, i64 10
  %wide.load366 = load <4 x i16>, ptr %i.ap, align 2, !tbaa !34
  %wide.load367 = load <4 x i16>, ptr %i.aq, align 2, !tbaa !34
  %i.ar = zext <4 x i16> %wide.load366 to <4 x i32>
  %i.as = zext <4 x i16> %wide.load367 to <4 x i32>
  %i.at = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <4 x i32> %vec.phi364, %i.as        ; 2 uses
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.av, label %middle.block369, label %vector.body362, !llvm.loop !729

middle.block369:                                  ; preds = %vector.body362
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n370, label %._crit_edge.us, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.lr.ph.us, %middle.block369
  %.028.i88125.us.pn.ph = phi ptr [ %.028.i88125.us, %.lr.ph.us ], [ %i.am, %middle.block369 ]
  %.0.i92122.us.ph = phi i32 [ 1, %.lr.ph.us ], [ %i.aj, %middle.block369 ]
  %.025.i91121.us.ph = phi i32 [ %i.al, %.lr.ph.us ], [ %i.aw, %middle.block369 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %.028.i88125.us.pn = phi ptr [ %.1.i93123.us, %scalar.ph358 ], [ %.028.i88125.us.pn.ph, %scalar.ph358.preheader ]
  %.0.i92122.us = phi i32 [ %i.ba, %scalar.ph358 ], [ %.0.i92122.us.ph, %scalar.ph358.preheader ]
  %.025.i91121.us = phi i32 [ %i.az, %scalar.ph358 ], [ %.025.i91121.us.ph, %scalar.ph358.preheader ]
  %.1.i93123.us = getelementptr inbounds nuw i8, ptr %.028.i88125.us.pn, i64 2 ; 2 uses
  %i.ax = load i16, ptr %.1.i93123.us, align 2, !tbaa !34
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %.025.i91121.us, %i.ay  ; 2 uses
  %i.ba = add nuw nsw i32 %.0.i92122.us, 1        ; 2 uses
  %exitcond228.not = icmp eq i32 %i.ba, %i.p
  br i1 %exitcond228.not, label %._crit_edge.us, label %scalar.ph358, !llvm.loop !730

._crit_edge.us:                                   ; preds = %scalar.ph358, %middle.block369
  %.lcssa353 = phi i32 [ %i.aw, %middle.block369 ], [ %i.az, %scalar.ph358 ]
  %i.bb = getelementptr i8, ptr %.028.i88125.us, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.bb, i64 4
  %i.bc = add nuw nsw i32 %.lcssa353, %i.ab
  %i.bd = ashr i32 %i.bc, %i.x
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv229
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !107
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %mip_downsampling_12.exit95, label %.lr.ph.us, !llvm.loop !731

.preheader117:                                    ; preds = %bb.a
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %.lr.ph.preheader, label %mip_downsampling_12.exit95

.lr.ph.preheader:                                 ; preds = %.preheader117
  %wide.trip.count238 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check374 = icmp ult i32 %3, 8
  br i1 %min.iters.check374, label %.lr.ph.preheader509, label %vector.ph375

vector.ph375:                                     ; preds = %.lr.ph.preheader
  %n.vec376 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next381, %vector.body377 ] ; 3 uses
end_hunk_0
begin_hunk_1_@intra_pred_10:bb.a
  %i.ze = mul nsw i32 %i.zd, %i.ws
  %i.zf = add nsw i32 %i.ze, 32
  %i.zg = add nsw i32 %i.zf, %i.zc
  %i.zh = ashr i32 %i.zg, 6
  %i.zi = add nsw i32 %i.zh, %i.za
  %i.zj = call i32 @llvm.smax.i32(i32 %i.zi, i32 0)
  %i.zk = call i32 @llvm.umin.i32(i32 %i.zj, i32 1023)
  %i.zl = trunc nuw nsw i32 %i.zk to i16
  store i16 %i.zl, ptr %i.yy, align 2, !tbaa !34
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge253, label %.lr.ph252.split.us, !llvm.loop !1403

._crit_edge253:                                   ; preds = %bb.as, %.lr.ph252.split.us, %middle.block680, %middle.block613
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.preheader, !llvm.loop !1404

.lr.ph252.split:                                  ; preds = %.lr.ph252.split.preheader689, %bb.as
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.as ], [ %indvars.iv314.ph, %.lr.ph252.split.preheader689 ] ; 4 uses
  %i.zm = load i16, ptr %i.wm, align 2, !tbaa !34
  %i.zn = zext i16 %i.zm to i32
  %i.zo = load i16, ptr %i.vo, align 2, !tbaa !34
  %i.zp = zext i16 %i.zo to i32
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.wo, i64 %indvars.iv314 ; 2 uses
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !34
  %i.zs = zext i16 %i.zr to i32
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.vl, i64 %indvars.iv314
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !34
  %i.zv = zext i16 %i.zu to i32
  %i.zw = load i16, ptr %i.vp, align 2, !tbaa !34
  %i.zx = zext i16 %i.zw to i32
  switch i32 %i.al, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph252.split
  %indvars.iv314.tr = trunc nuw i64 %indvars.iv314 to i32
  %i.zy = shl nuw i32 %indvars.iv314.tr, 1
  %i.zz = ashr i32 %i.zy, %i.vj
  %i.aaa = call i32 @llvm.smin.i32(i32 %i.zz, i32 31)
  %i.aab = lshr i32 32, %i.aaa
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph252.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph252.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.aab, %.thread213 ], [ 0, %.lr.ph252.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph252.split ], [ %i.ws, %bb.ar ]
  %i.aac = sub nsw i32 %i.zn, %i.zp
  %i.aad = mul nsw i32 %i.aac, %.0190
  %i.aae = sub nsw i32 %i.zv, %i.zx
  %i.aaf = mul nsw i32 %i.aae, %.0
  %i.aag = add nsw i32 %i.aaf, 32
  %i.aah = add nsw i32 %i.aag, %i.aad
  %i.aai = ashr i32 %i.aah, 6
  %i.aaj = add nsw i32 %i.aai, %i.zs
  %i.aak = call i32 @llvm.smax.i32(i32 %i.aaj, i32 0)
  %i.aal = call i32 @llvm.umin.i32(i32 %i.aak, i32 1023)
  %i.aam = trunc nuw nsw i32 %i.aal to i16
  store i16 %i.aam, ptr %i.zq, align 2, !tbaa !34
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge253, label %.lr.ph252.split, !llvm.loop !1405

.loopexit:                                        ; preds = %._crit_edge253, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !40
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 3 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 3 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 2 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr [2 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.z = shl nuw nsw i64 %i.v, 1
  %i.aa = getelementptr i8, ptr %2, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2
  %i.ab = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep72 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.x, 1
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %scevgep73 = getelementptr i8, ptr %i.ad, i64 2
  %i.ae = add nuw i64 %i.v, 9223372036854775807
  %i.af = mul i64 %5, %i.ae
  %i.ag = add i64 %i.af, %wide.trip.count
  %i.ah = shl i64 %i.ag, 1
  %scevgep74 = getelementptr i8, ptr %0, i64 %i.ah ; 4 uses
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep73
  %bound1 = icmp ult ptr %i.y, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %5, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.ai = or i1 %found.conflict, %stride.check
  %bound075 = icmp ult ptr %0, %scevgep72
  %bound176 = icmp ult ptr %1, %scevgep74
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %i.ai, %found.conflict77
  %bound078 = icmp ult ptr %0, %i.w
  %bound179 = icmp ult ptr %2, %scevgep74
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  %bound082 = icmp ult ptr %0, %scevgep
  %bound183 = icmp ult ptr %i.w, %scevgep74
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert94 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat95 = shufflevector <8 x i32> %broadcast.splatinsert94, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert96 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat97 = shufflevector <8 x i32> %broadcast.splatinsert96, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat99 = shufflevector <8 x i32> %broadcast.splatinsert98, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert100 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat101 = shufflevector <8 x i32> %broadcast.splatinsert100, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = add nsw i32 %4, %i.ak                   ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.an = mul nsw i64 %5, %indvars.iv52
  %i.ao = getelementptr [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !34, !alias.scope !1425
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ar = zext <8 x i16> %broadcast.splat87 to <8 x i32>
  %i.as = mul nuw nsw <8 x i32> %broadcast.splat, %i.ar
  %i.at = load i16, ptr %i.am, align 2, !tbaa !34, !alias.scope !1426
  %broadcast.splatinsert88 = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %broadcast.splat89 = shufflevector <8 x i16> %broadcast.splatinsert88, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.au = zext <8 x i16> %broadcast.splat89 to <8 x i32>
  %i.av = load i16, ptr %i.y, align 2, !tbaa !34, !alias.scope !1427
  %broadcast.splatinsert90 = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat91 = shufflevector <8 x i16> %broadcast.splatinsert90, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = zext <8 x i16> %broadcast.splat91 to <8 x i32>
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind104 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next105, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 2, !tbaa !34, !alias.scope !1428
  %i.ay = zext <8 x i16> %wide.load to <8 x i32>
  %i.az = mul nsw <8 x i32> %broadcast.splat93, %i.ay
  %i.ba = add nsw <8 x i32> %i.as, %i.az
  %i.bb = shl <8 x i32> %i.ba, %broadcast.splat95
  %i.bc = xor <8 x i32> %vec.ind104, splat (i32 -1)
  %i.bd = add nsw <8 x i32> %broadcast.splat97, %i.bc
  %i.be = mul nsw <8 x i32> %i.bd, %i.au
  %6 = trunc <8 x i64> %vec.ind to <8 x i32>
  %7 = add <8 x i32> %6, splat (i32 1)
  %i.bf = mul nuw nsw <8 x i32> %7, %i.aw
  %i.bg = add nsw <8 x i32> %i.bf, %i.be
  %i.bh = shl <8 x i32> %i.bg, %broadcast.splat99
  %i.bi = add <8 x i32> %i.bb, %broadcast.splat101
  %i.bj = add <8 x i32> %i.bi, %i.bh
  %i.bk = ashr <8 x i32> %i.bj, %broadcast.splat103
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr [2 x i8], ptr %i.ao, i64 %index
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !34, !alias.scope !1429, !noalias !1430
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next105 = add <8 x i32> %vec.ind104, splat (i32 8)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1422

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.al, %i.bq
  %i.bs = load i16, ptr %i.w, align 2, !tbaa !34
  %i.bt = zext i16 %i.bs to i32
  %i.bu = mul nuw nsw i32 %i.ap, %i.bt
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = shl i32 %i.bv, %i.h
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = add nsw i32 %3, %i.by
  %i.ca = load i16, ptr %i.am, align 2, !tbaa !34
  %i.cb = zext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.bz, %i.cb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.y, align 2, !tbaa !34
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = add nsw i32 %i.cg, %i.cc
  %i.ci = shl i32 %i.ch, %i.p
  %i.cj = add i32 %i.bw, %i.q
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = ashr i32 %i.ck, %i.s
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr [2 x i8], ptr %i.ao, i64 %indvars.iv
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !34
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1423

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %i.v
  br i1 %exitcond56.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !1424

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @pred_mip_10(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 15 uses
  %i.b = tail call i32 @ff_vvc_get_mip_size_id(i32 noundef %3, i32 noundef %4) #14 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pred_mip_8.boundary_sizes, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 10 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pred_mip_8.pred_sizes, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 5 uses
  %i.h = shl i32 %i.e, 1
  %i.i = icmp eq i32 %i.b, 2                      ; 3 uses
  %.neg = sext i1 %i.i to i32
  %i.j = add i32 %i.h, %.neg                      ; 9 uses
  %i.k = tail call ptr @ff_vvc_get_mip_matrix(i32 noundef %i.b, i32 noundef %6) #14
  %i.l = sdiv i32 %3, %i.g                        ; 11 uses
  %i.m = sdiv i32 %4, %i.g                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.o ; 4 uses
  %spec.select81 = select i1 %.not, ptr %i.o, ptr %i.a ; 4 uses
  %i.p = sdiv i32 %3, %i.e                        ; 8 uses
  %.not.i.i82 = icmp ult i32 %i.p, 65536          ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %spec.select.i.i83 = select i1 %.not.i.i82, i32 %i.p, i32 %i.q ; 3 uses
  %spec.select12.i.i84 = select i1 %.not.i.i82, i32 0, i32 16 ; 2 uses
  %.not11.i.i85 = icmp samesign ult i32 %spec.select.i.i83, 256 ; 2 uses
  %i.r = lshr i32 %spec.select.i.i83, 8
  %i.s = or disjoint i32 %spec.select12.i.i84, 8
  %.110.i.i86 = select i1 %.not11.i.i85, i32 %spec.select.i.i83, i32 %i.r
  %.1.i.i87 = select i1 %.not11.i.i85, i32 %spec.select12.i.i84, i32 %i.s
  %i.t = zext nneg i32 %.110.i.i86 to i64
  %i.u = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.1.i.i87, %i.w          ; 3 uses
  %i.y = icmp eq i32 %i.e, %3
  br i1 %i.y, label %.preheader117, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.z = icmp sgt i32 %i.p, 1
  %i.aa = add nsw i32 %i.x, -1
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  br i1 %i.z, label %.lr.ph.us.preheader, label %.lr.ph127.split.preheader

.lr.ph127.split.preheader:                        ; preds = %.lr.ph127
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph127.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph127
  %i.ac = add nsw i32 %i.p, -2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %smax232 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count233 = zext nneg i32 %smax232 to i64
  %i.af = add nsw i32 %i.p, -1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.p, 9
  %n.vec361 = and i64 %i.ag, 4294967288           ; 4 uses
  %i.ah = shl nuw nsw i64 %n.vec361, 1
  %i.ai = trunc nuw i64 %n.vec361 to i32
  %i.aj = or disjoint i32 %i.ai, 1
  %cmp.n370 = icmp eq i64 %n.vec361, %i.ag
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next230, %._crit_edge.us ] ; 2 uses
  %.028.i88125.us = phi ptr [ %1, %.lr.ph.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %i.ak = load i16, ptr %.028.i88125.us, align 2, !tbaa !34
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.us
  %i.am = getelementptr i8, ptr %.028.i88125.us, i64 %i.ah
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph360 ], [ %i.at, %vector.body362 ]
  %vec.phi364 = phi <4 x i32> [ zeroinitializer, %vector.ph360 ], [ %i.au, %vector.body362 ]
  %i.ao = shl i64 %index363, 1
  %next.gep365 = getelementptr i8, ptr %.028.i88125.us, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep365, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep365, i64 10
  %wide.load366 = load <4 x i16>, ptr %i.ap, align 2, !tbaa !34
  %wide.load367 = load <4 x i16>, ptr %i.aq, align 2, !tbaa !34
  %i.ar = zext <4 x i16> %wide.load366 to <4 x i32>
  %i.as = zext <4 x i16> %wide.load367 to <4 x i32>
  %i.at = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <4 x i32> %vec.phi364, %i.as        ; 2 uses
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.av, label %middle.block369, label %vector.body362, !llvm.loop !1431

middle.block369:                                  ; preds = %vector.body362
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n370, label %._crit_edge.us, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.lr.ph.us, %middle.block369
  %.028.i88125.us.pn.ph = phi ptr [ %.028.i88125.us, %.lr.ph.us ], [ %i.am, %middle.block369 ]
  %.0.i92122.us.ph = phi i32 [ 1, %.lr.ph.us ], [ %i.aj, %middle.block369 ]
  %.025.i91121.us.ph = phi i32 [ %i.al, %.lr.ph.us ], [ %i.aw, %middle.block369 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %.028.i88125.us.pn = phi ptr [ %.1.i93123.us, %scalar.ph358 ], [ %.028.i88125.us.pn.ph, %scalar.ph358.preheader ]
  %.0.i92122.us = phi i32 [ %i.ba, %scalar.ph358 ], [ %.0.i92122.us.ph, %scalar.ph358.preheader ]
  %.025.i91121.us = phi i32 [ %i.az, %scalar.ph358 ], [ %.025.i91121.us.ph, %scalar.ph358.preheader ]
  %.1.i93123.us = getelementptr inbounds nuw i8, ptr %.028.i88125.us.pn, i64 2 ; 2 uses
  %i.ax = load i16, ptr %.1.i93123.us, align 2, !tbaa !34
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nuw nsw i32 %.025.i91121.us, %i.ay  ; 2 uses
  %i.ba = add nuw nsw i32 %.0.i92122.us, 1        ; 2 uses
  %exitcond228.not = icmp eq i32 %i.ba, %i.p
  br i1 %exitcond228.not, label %._crit_edge.us, label %scalar.ph358, !llvm.loop !1432

._crit_edge.us:                                   ; preds = %scalar.ph358, %middle.block369
  %.lcssa353 = phi i32 [ %i.aw, %middle.block369 ], [ %i.az, %scalar.ph358 ]
  %i.bb = getelementptr i8, ptr %.028.i88125.us, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.bb, i64 4
  %i.bc = add nuw nsw i32 %.lcssa353, %i.ab
  %i.bd = ashr i32 %i.bc, %i.x
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv229
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !107
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %mip_downsampling_10.exit95, label %.lr.ph.us, !llvm.loop !1433

.preheader117:                                    ; preds = %bb.a
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %.lr.ph.preheader, label %mip_downsampling_10.exit95

.lr.ph.preheader:                                 ; preds = %.preheader117
  %wide.trip.count238 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check374 = icmp ult i32 %3, 8
  br i1 %min.iters.check374, label %.lr.ph.preheader509, label %vector.ph375

vector.ph375:                                     ; preds = %.lr.ph.preheader
  %n.vec376 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next381, %vector.body377 ] ; 3 uses
end_hunk_1
begin_hunk_2_@intra_pred_8:bb.a
._crit_edge254:                                   ; preds = %bb.as, %.lr.ph253.split.us, %middle.block687, %vec.epilog.middle.block720, %middle.block595, %vec.epilog.middle.block619
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %.loopexit, label %.preheader, !llvm.loop !2133

.lr.ph253.split:                                  ; preds = %.lr.ph253.split.preheader, %bb.as
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %bb.as ], [ %indvars.iv318.ph, %.lr.ph253.split.preheader ] ; 4 uses
  %i.abq = load i8, ptr %i.wu, align 1, !tbaa !40
  %i.abr = zext i8 %i.abq to i32
  %i.abs = load i8, ptr %i.wa, align 1, !tbaa !40
  %i.abt = zext i8 %i.abs to i32
  %i.abu = getelementptr i8, ptr %i.ww, i64 %indvars.iv318 ; 2 uses
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !40
  %i.abw = zext i8 %i.abv to i32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv318
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !40
  %i.abz = zext i8 %i.aby to i32
  %i.aca = load i8, ptr %i.wb, align 1, !tbaa !40
  %i.acb = zext i8 %i.aca to i32
  switch i32 %i.ak, label %bb.as [
    i32 50, label %.thread213
    i32 18, label %bb.ar
  ]

.thread213:                                       ; preds = %.lr.ph253.split
  %indvars.iv318.tr = trunc nuw i64 %indvars.iv318 to i32
  %i.acc = shl nuw i32 %indvars.iv318.tr, 1
  %i.acd = ashr i32 %i.acc, %i.vv
  %i.ace = call i32 @llvm.smin.i32(i32 %i.acd, i32 31)
  %i.acf = lshr i32 32, %i.ace
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph253.split
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph253.split, %.thread213, %bb.ar
  %.0190 = phi i32 [ %i.acf, %.thread213 ], [ 0, %.lr.ph253.split ], [ 0, %bb.ar ]
  %.0 = phi i32 [ 0, %.thread213 ], [ 0, %.lr.ph253.split ], [ %i.xa, %bb.ar ]
  %i.acg = sub nsw i32 %i.abr, %i.abt
  %i.ach = mul nsw i32 %i.acg, %.0190
  %i.aci = sub nsw i32 %i.abz, %i.acb
  %i.acj = mul nsw i32 %i.aci, %.0
  %i.ack = add nsw i32 %i.acj, 32
  %i.acl = add nsw i32 %i.ack, %i.ach
  %i.acm = ashr i32 %i.acl, 6
  %i.acn = add nsw i32 %i.acm, %i.abw
  %i.aco = call i32 @llvm.smax.i32(i32 %i.acn, i32 0)
  %.0.i216 = call i32 @llvm.umin.i32(i32 %i.aco, i32 255)
  %.0.i = trunc nuw i32 %.0.i216 to i8
  store i8 %.0.i, ptr %i.abu, align 1, !tbaa !40
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %._crit_edge254, label %.lr.ph253.split, !llvm.loop !2134

.loopexit:                                        ; preds = %._crit_edge254, %bb.aq, %.preheader.lr.ph, %.thread211, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %.not.i42 = icmp ult i32 %3, 65536              ; 2 uses
  %i.a = lshr i32 %3, 16
  %spec.select.i43 = select i1 %.not.i42, i32 %3, i32 %i.a ; 3 uses
  %spec.select12.i44 = select i1 %.not.i42, i32 0, i32 16 ; 2 uses
  %.not11.i45 = icmp samesign ult i32 %spec.select.i43, 256 ; 2 uses
  %i.b = lshr i32 %spec.select.i43, 8
  %i.c = or disjoint i32 %spec.select12.i44, 8
  %.110.i46 = select i1 %.not11.i45, i32 %spec.select.i43, i32 %i.b
  %.1.i47 = select i1 %.not11.i45, i32 %spec.select12.i44, i32 %i.c
  %i.d = zext nneg i32 %.110.i46 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !40
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %.1.i47, %i.g            ; 4 uses
  %.not.i = icmp ult i32 %4, 65536                ; 2 uses
  %i.i = lshr i32 %4, 16
  %spec.select.i = select i1 %.not.i, i32 %4, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o              ; 4 uses
  %i.q = mul nuw nsw i32 %4, %3                   ; 3 uses
  %i.r = add nuw nsw i32 %i.h, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 3 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %3, 0
  %i.v = zext nneg i32 %4 to i64                  ; 4 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.v       ; 5 uses
  %i.x = sext i32 %3 to i64                       ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x       ; 4 uses
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %i.z = getelementptr i8, ptr %2, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.z, i64 1
  %scevgep72 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.aa = getelementptr i8, ptr %1, i64 %i.x
  %scevgep73 = getelementptr i8, ptr %i.aa, i64 1
  %i.ab = add nsw i64 %i.v, -1
  %i.ac = mul i64 %5, %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep74 = getelementptr i8, ptr %i.ad, i64 %wide.trip.count ; 4 uses
  %min.iters.check = icmp ult i32 %3, 4
  %bound0 = icmp ult ptr %0, %scevgep73
  %bound1 = icmp ult ptr %i.y, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %5, 0
  %i.ae = or i1 %found.conflict, %stride.check
  %bound075 = icmp ult ptr %0, %scevgep72
  %bound176 = icmp ult ptr %1, %scevgep74
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %i.ae, %found.conflict77
  %bound078 = icmp ult ptr %0, %i.w
  %bound179 = icmp ult ptr %2, %scevgep74
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  %bound082 = icmp ult ptr %0, %scevgep
  %bound183 = icmp ult ptr %i.w, %scevgep74
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  %min.iters.check86 = icmp ult i32 %3, 16
  %i.af = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert95 = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat96 = shufflevector <16 x i32> %broadcast.splatinsert95, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat98 = shufflevector <16 x i32> %broadcast.splatinsert97, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <16 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat102 = shufflevector <16 x i32> %broadcast.splatinsert101, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <16 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat104 = shufflevector <16 x i32> %broadcast.splatinsert103, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  %n.vec107 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat123 = shufflevector <4 x i32> %broadcast.splatinsert122, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat125 = shufflevector <4 x i32> %broadcast.splatinsert124, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat127 = shufflevector <4 x i32> %broadcast.splatinsert126, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n140 = icmp eq i64 %n.vec107, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add nsw i32 %4, %i.ah                   ; 3 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52 ; 3 uses
  %i.ak = mul nsw i64 %5, %indvars.iv52
  %i.al = getelementptr i8, ptr %0, i64 %i.ak     ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next53 to i32 ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx85
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.an = load i8, ptr %i.w, align 1, !tbaa !40, !alias.scope !2155
  %broadcast.splatinsert87 = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat88 = shufflevector <16 x i8> %broadcast.splatinsert87, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = zext <16 x i8> %broadcast.splat88 to <16 x i32>
  %i.ap = mul nuw nsw <16 x i32> %broadcast.splat, %i.ao
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !40, !alias.scope !2156
  %broadcast.splatinsert89 = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat90 = shufflevector <16 x i8> %broadcast.splatinsert89, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ar = zext <16 x i8> %broadcast.splat90 to <16 x i32>
  %i.as = load i8, ptr %i.y, align 1, !tbaa !40, !alias.scope !2157
  %broadcast.splatinsert91 = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat92 = shufflevector <16 x i8> %broadcast.splatinsert91, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.at = zext <16 x i8> %broadcast.splat92 to <16 x i32>
  %broadcast.splatinsert93 = insertelement <16 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat94 = shufflevector <16 x i32> %broadcast.splatinsert93, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind105 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next106, %vector.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !40, !alias.scope !2158
  %i.av = zext <16 x i8> %wide.load to <16 x i32>
  %i.aw = mul nsw <16 x i32> %broadcast.splat94, %i.av
  %i.ax = add nsw <16 x i32> %i.ap, %i.aw
  %i.ay = shl <16 x i32> %i.ax, %broadcast.splat96
  %i.az = xor <16 x i32> %vec.ind105, splat (i32 -1)
  %i.ba = add nsw <16 x i32> %broadcast.splat98, %i.az
  %i.bb = mul nsw <16 x i32> %i.ba, %i.ar
  %6 = trunc <16 x i64> %vec.ind to <16 x i32>
  %7 = add <16 x i32> %6, splat (i32 1)
  %i.bc = mul nuw nsw <16 x i32> %7, %i.at
  %i.bd = add nsw <16 x i32> %i.bc, %i.bb
  %i.be = shl <16 x i32> %i.bd, %broadcast.splat100
  %i.bf = add <16 x i32> %i.ay, %broadcast.splat102
  %i.bg = add <16 x i32> %i.bf, %i.be
  %i.bh = ashr <16 x i32> %i.bg, %broadcast.splat104
  %i.bi = trunc <16 x i32> %i.bh to <16 x i8>
  %i.bj = getelementptr i8, ptr %i.al, i64 %index
  store <16 x i8> %i.bi, ptr %i.bj, align 1, !tbaa !40, !alias.scope !2159, !noalias !2160
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next106 = add <16 x i32> %vec.ind105, splat (i32 16)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !2151

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = load i8, ptr %i.w, align 1, !tbaa !40, !alias.scope !2155
  %broadcast.splatinsert110 = insertelement <4 x i8> poison, i8 %i.bl, i64 0
  %broadcast.splat111 = shufflevector <4 x i8> %broadcast.splatinsert110, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bm = zext <4 x i8> %broadcast.splat111 to <4 x i32>
  %i.bn = mul nuw nsw <4 x i32> %broadcast.splat109, %i.bm
  %i.bo = load i8, ptr %i.aj, align 1, !tbaa !40, !alias.scope !2156
  %broadcast.splatinsert112 = insertelement <4 x i8> poison, i8 %i.bo, i64 0
  %broadcast.splat113 = shufflevector <4 x i8> %broadcast.splatinsert112, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bp = zext <4 x i8> %broadcast.splat113 to <4 x i32>
  %i.bq = load i8, ptr %i.y, align 1, !tbaa !40, !alias.scope !2157
  %broadcast.splatinsert114 = insertelement <4 x i8> poison, i8 %i.bq, i64 0
  %broadcast.splat115 = shufflevector <4 x i8> %broadcast.splatinsert114, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.br = zext <4 x i8> %broadcast.splat115 to <4 x i32>
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat129 = shufflevector <4 x i64> %broadcast.splatinsert128, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat129, <i64 0, i64 1, i64 2, i64 3>
  %i.bs = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction132 = or disjoint <4 x i32> %broadcast.splat131, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind134 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next138, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind135 = phi <4 x i32> [ %induction132, %vec.epilog.ph ], [ %vec.ind.next139, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !40, !alias.scope !2158
  %i.bu = zext <4 x i8> %wide.load136 to <4 x i32>
  %i.bv = mul nsw <4 x i32> %broadcast.splat117, %i.bu
  %i.bw = add nsw <4 x i32> %i.bn, %i.bv
  %i.bx = shl <4 x i32> %i.bw, %broadcast.splat119
  %i.by = xor <4 x i32> %vec.ind135, splat (i32 -1)
  %i.bz = add nsw <4 x i32> %broadcast.splat121, %i.by
  %i.ca = mul nsw <4 x i32> %i.bz, %i.bp
  %8 = trunc <4 x i64> %vec.ind134 to <4 x i32>
  %9 = add <4 x i32> %8, splat (i32 1)
  %i.cb = mul nuw nsw <4 x i32> %9, %i.br
  %i.cc = add nsw <4 x i32> %i.cb, %i.ca
  %i.cd = shl <4 x i32> %i.cc, %broadcast.splat123
  %i.ce = add <4 x i32> %i.bx, %broadcast.splat125
  %i.cf = add <4 x i32> %i.ce, %i.cd
  %i.cg = ashr <4 x i32> %i.cf, %broadcast.splat127
  %i.ch = trunc <4 x i32> %i.cg to <4 x i8>
  %i.ci = getelementptr i8, ptr %i.al, i64 %index133
  store <4 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !40, !alias.scope !2159, !noalias !2160
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %vec.ind.next138 = add nuw nsw <4 x i64> %vec.ind134, splat (i64 4)
  %vec.ind.next139 = add <4 x i32> %vec.ind135, splat (i32 4)
  %i.cj = icmp eq i64 %index.next137, %n.vec107
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n140, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec107, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !40
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.ai, %i.cm
  %i.co = load i8, ptr %i.w, align 1, !tbaa !40
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nuw nsw i32 %i.am, %i.cp
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = shl i32 %i.cr, %i.h
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add nsw i32 %3, %i.cu
  %i.cw = load i8, ptr %i.aj, align 1, !tbaa !40
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nsw i32 %i.cv, %i.cx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cz = load i8, ptr %i.y, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  %i.db = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dc = mul nuw nsw i32 %i.db, %i.da
  %i.dd = add nsw i32 %i.dc, %i.cy
  %i.de = shl i32 %i.dd, %i.p
  %i.df = add i32 %i.cs, %i.q
  %i.dg = add i32 %i.df, %i.de
  %i.dh = ashr i32 %i.dg, %i.s
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr i8, ptr %i.al, i64 %indvars.iv
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !40
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2153

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %i.v
  br i1 %exitcond56.not, label %._crit_edge50.split, label %iter.check, !llvm.loop !2154

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @pred_mip_8(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 15 uses
  %i.b = tail call i32 @ff_vvc_get_mip_size_id(i32 noundef %3, i32 noundef %4) #14 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pred_mip_8.boundary_sizes, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 10 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pred_mip_8.pred_sizes, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 5 uses
  %i.h = shl i32 %i.e, 1
  %i.i = icmp eq i32 %i.b, 2                      ; 3 uses
  %.neg = sext i1 %i.i to i32
  %i.j = add i32 %i.h, %.neg                      ; 9 uses
  %i.k = tail call ptr @ff_vvc_get_mip_matrix(i32 noundef %i.b, i32 noundef %6) #14
  %i.l = sdiv i32 %3, %i.g                        ; 11 uses
  %i.m = sdiv i32 %4, %i.g                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.o ; 4 uses
  %spec.select81 = select i1 %.not, ptr %i.o, ptr %i.a ; 4 uses
  %i.p = sdiv i32 %3, %i.e                        ; 8 uses
  %.not.i.i82 = icmp ult i32 %i.p, 65536          ; 2 uses
  %i.q = lshr i32 %i.p, 16
  %spec.select.i.i83 = select i1 %.not.i.i82, i32 %i.p, i32 %i.q ; 3 uses
  %spec.select12.i.i84 = select i1 %.not.i.i82, i32 0, i32 16 ; 2 uses
  %.not11.i.i85 = icmp samesign ult i32 %spec.select.i.i83, 256 ; 2 uses
  %i.r = lshr i32 %spec.select.i.i83, 8
  %i.s = or disjoint i32 %spec.select12.i.i84, 8
  %.110.i.i86 = select i1 %.not11.i.i85, i32 %spec.select.i.i83, i32 %i.r
  %.1.i.i87 = select i1 %.not11.i.i85, i32 %spec.select12.i.i84, i32 %i.s
  %i.t = zext nneg i32 %.110.i.i86 to i64
  %i.u = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.1.i.i87, %i.w          ; 3 uses
  %i.y = icmp eq i32 %i.e, %3
  br i1 %i.y, label %.preheader117, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.z = icmp sgt i32 %i.p, 1
  %i.aa = add nsw i32 %i.x, -1
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  br i1 %i.z, label %.lr.ph.us.preheader, label %.lr.ph127.split.preheader

.lr.ph127.split.preheader:                        ; preds = %.lr.ph127
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph127.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph127
  %i.ac = zext nneg i32 %i.p to i64
  %smax232 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count233 = zext nneg i32 %smax232 to i64
  %i.ad = add nsw i32 %i.p, -1
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.p, 9
  %n.vec361 = and i64 %i.ae, 4294967288           ; 4 uses
  %i.af = trunc nuw i64 %n.vec361 to i32
  %i.ag = or disjoint i32 %i.af, 1
  %cmp.n370 = icmp eq i64 %n.vec361, %i.ae
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next230, %._crit_edge.us ] ; 2 uses
  %.028.i88125.us = phi ptr [ %1, %.lr.ph.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %i.ah = load i8, ptr %.028.i88125.us, align 1, !tbaa !40
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.us
  %i.aj = getelementptr i8, ptr %.028.i88125.us, i64 %n.vec361
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ai, i64 0
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ak, %vector.ph360 ], [ %i.ap, %vector.body362 ]
  %vec.phi364 = phi <4 x i32> [ zeroinitializer, %vector.ph360 ], [ %i.aq, %vector.body362 ]
  %next.gep365 = getelementptr i8, ptr %.028.i88125.us, i64 %index363 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep365, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep365, i64 5
  %wide.load366 = load <4 x i8>, ptr %i.al, align 1, !tbaa !40
  %wide.load367 = load <4 x i8>, ptr %i.am, align 1, !tbaa !40
  %i.an = zext <4 x i8> %wide.load366 to <4 x i32>
  %i.ao = zext <4 x i8> %wide.load367 to <4 x i32>
  %i.ap = add <4 x i32> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <4 x i32> %vec.phi364, %i.ao        ; 2 uses
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.ar, label %middle.block369, label %vector.body362, !llvm.loop !2161

middle.block369:                                  ; preds = %vector.body362
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n370, label %._crit_edge.us, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.lr.ph.us, %middle.block369
  %.028.i88125.us.pn.ph = phi ptr [ %.028.i88125.us, %.lr.ph.us ], [ %i.aj, %middle.block369 ]
  %.0.i92122.us.ph = phi i32 [ 1, %.lr.ph.us ], [ %i.ag, %middle.block369 ]
  %.025.i91121.us.ph = phi i32 [ %i.ai, %.lr.ph.us ], [ %i.as, %middle.block369 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %.028.i88125.us.pn = phi ptr [ %.1.i93123.us, %scalar.ph358 ], [ %.028.i88125.us.pn.ph, %scalar.ph358.preheader ]
  %.0.i92122.us = phi i32 [ %i.aw, %scalar.ph358 ], [ %.0.i92122.us.ph, %scalar.ph358.preheader ]
  %.025.i91121.us = phi i32 [ %i.av, %scalar.ph358 ], [ %.025.i91121.us.ph, %scalar.ph358.preheader ]
  %.1.i93123.us = getelementptr inbounds nuw i8, ptr %.028.i88125.us.pn, i64 1 ; 2 uses
  %i.at = load i8, ptr %.1.i93123.us, align 1, !tbaa !40
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %.025.i91121.us, %i.au  ; 2 uses
  %i.aw = add nuw nsw i32 %.0.i92122.us, 1        ; 2 uses
  %exitcond228.not = icmp eq i32 %i.aw, %i.p
  br i1 %exitcond228.not, label %._crit_edge.us, label %scalar.ph358, !llvm.loop !2162

._crit_edge.us:                                   ; preds = %scalar.ph358, %middle.block369
  %.lcssa353 = phi i32 [ %i.as, %middle.block369 ], [ %i.av, %scalar.ph358 ]
  %scevgep = getelementptr i8, ptr %.028.i88125.us, i64 %i.ac
  %i.ax = add nuw nsw i32 %.lcssa353, %i.ab
  %i.ay = ashr i32 %i.ax, %i.x
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv229
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !107
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count233
  br i1 %exitcond234.not, label %mip_downsampling_8.exit95, label %.lr.ph.us, !llvm.loop !2163

.preheader117:                                    ; preds = %bb.a
  %i.ba = icmp sgt i32 %3, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %mip_downsampling_8.exit95

.lr.ph.preheader:                                 ; preds = %.preheader117
  %wide.trip.count238 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check374 = icmp ult i32 %3, 8
  br i1 %min.iters.check374, label %.lr.ph.preheader509, label %vector.ph375

vector.ph375:                                     ; preds = %.lr.ph.preheader
  %n.vec376 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next381, %vector.body377 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %index378 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load379 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !40
  %wide.load380 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !40
  %i.bd = zext <4 x i8> %wide.load379 to <4 x i32>
end_hunk_2
