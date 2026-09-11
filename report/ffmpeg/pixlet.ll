Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pixlet?download=true
inline.NumInlined: 45
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@init_decoder:bb.a
  %i.bq = udiv i8 %.lhs.trunc.2, 3
  %.zext.2 = zext nneg i8 %i.bq to i32
  %i.br = sub nsw i32 %i.x, %.zext.2              ; 2 uses
  %i.bs = lshr i32 %i.ar, %i.br                   ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 4 uses
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %indvars.iv.next.2 ; 5 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !45
  %i.bu = lshr i32 %i.as, %i.br                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !46
  %i.bw = mul i32 %i.bs, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = trunc nuw nsw i64 %indvars.iv.next.2 to i8
  %i.bz = urem i8 %i.by, 3                        ; 2 uses
  %.not69.2 = icmp eq i8 %i.bz, 2
  %i.ca = select i1 %.not69.2, i32 0, i32 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !47
  %.not70.2 = icmp eq i8 %i.bz, 1
  %i.cc = select i1 %.not70.2, i32 0, i32 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !48
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 12
  br i1 %exitcond.2.not, label %.loopexit, label %bb.g, !llvm.loop !93

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.b
  %.0 = phi i32 [ -12, %bb.a ], [ -12, %bb.b ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @postprocess_chroma(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = sdiv i32 %i.f, 2
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = add nsw i32 %3, -1
  %i.j = shl nuw i32 1, %i.i                      ; 3 uses
  %i.k = sub nsw i32 16, %3                       ; 3 uses
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.m = icmp sgt i32 %1, 0
  %notmask.i40 = shl nsw i32 -1, %3               ; 4 uses
  %i.n = xor i32 %notmask.i40, -1                 ; 3 uses
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %i.s = add nsw i32 %2, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.d, %i.t
  %i.v = add i64 %i.u, %wide.trip.count
  %i.w = shl i64 %i.v, 1
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.w
  %i.x = mul nsw i64 %i.h, %i.t
  %i.y = add i64 %i.x, %wide.trip.count
  %i.z = shl i64 %i.y, 1
  %scevgep55 = getelementptr i8, ptr %i.r, i64 %i.z
  %min.iters.check = icmp ult i32 %1, 8
  %bound0 = icmp ult ptr %i.p, %scevgep55
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.b, -1
  %i.aa = or i1 %found.conflict, %stride.check
  %stride.check56 = icmp slt i32 %i.f, -1
  %i.ab = or i1 %i.aa, %stride.check56
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <8 x i32> poison, i32 %notmask.i40, i64 0
  %broadcast.splat58 = shufflevector <8 x i32> %broadcast.splatinsert57, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert61 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat62 = shufflevector <8 x i32> %broadcast.splatinsert61, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.049 = phi i32 [ %i.bp, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03648 = phi ptr [ %i.bo, %._crit_edge ], [ %i.r, %.preheader.preheader ] ; 3 uses
  %.03747 = phi ptr [ %i.bn, %._crit_edge ], [ %i.p, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ab
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03747, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !36, !alias.scope !100, !noalias !101
  %i.ad = sext <8 x i16> %wide.load to <8 x i32>
  %i.ae = add <8 x i32> %broadcast.splat, %i.ad   ; 3 uses
  %i.af = and <8 x i32> %i.ae, %broadcast.splat58
  %i.ag = icmp eq <8 x i32> %i.af, zeroinitializer
  %i.ah = icmp slt <8 x i32> %i.ae, zeroinitializer
  %i.ai = select <8 x i1> %i.ah, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat60
  %i.aj = select <8 x i1> %i.ag, <8 x i32> %i.ae, <8 x i32> %i.ai
  %i.ak = shl <8 x i32> %i.aj, %broadcast.splat62
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %i.ac, align 2, !tbaa !36, !alias.scope !100, !noalias !101
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.03648, i64 %index ; 2 uses
  %wide.load63 = load <8 x i16>, ptr %i.am, align 2, !tbaa !36, !alias.scope !101
  %i.an = sext <8 x i16> %wide.load63 to <8 x i32>
  %i.ao = add <8 x i32> %broadcast.splat, %i.an   ; 3 uses
  %i.ap = and <8 x i32> %i.ao, %broadcast.splat58
  %i.aq = icmp eq <8 x i32> %i.ap, zeroinitializer
  %i.ar = icmp slt <8 x i32> %i.ao, zeroinitializer
  %i.as = select <8 x i1> %i.ar, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat60
  %i.at = select <8 x i1> %i.aq, <8 x i32> %i.ao, <8 x i32> %i.as
  %i.au = shl <8 x i32> %i.at, %broadcast.splat62
  %i.av = trunc <8 x i32> %i.au to <8 x i16>
  store <8 x i16> %i.av, ptr %i.am, align 2, !tbaa !36, !alias.scope !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03747, i64 %indvars.iv ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !36
  %i.az = sext i16 %i.ay to i32
  %i.ba = add i32 %i.j, %i.az                     ; 3 uses
  %i.bb = and i32 %i.ba, %notmask.i40
  %.not.i41 = icmp eq i32 %i.bb, 0
  %isnotneg.inv.i42 = icmp slt i32 %i.ba, 0
  %i.bc = select i1 %isnotneg.inv.i42, i32 0, i32 %i.n
  %.0.i43 = select i1 %.not.i41, i32 %i.ba, i32 %i.bc
  %i.bd = shl i32 %.0.i43, %i.k
  %i.be = trunc i32 %i.bd to i16
  store i16 %i.be, ptr %i.ax, align 2, !tbaa !36
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03648, i64 %indvars.iv ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !36
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add i32 %i.j, %i.bh                     ; 3 uses
  %i.bj = and i32 %i.bi, %notmask.i40
  %.not.i = icmp eq i32 %i.bj, 0
  %isnotneg.inv.i = icmp slt i32 %i.bi, 0
  %i.bk = select i1 %isnotneg.inv.i, i32 0, i32 %i.n
  %.0.i = select i1 %.not.i, i32 %i.bi, i32 %i.bk
  %i.bl = shl i32 %.0.i, %i.k
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bf, align 2, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bn = getelementptr [2 x i8], ptr %.03747, i64 %i.d
  %i.bo = getelementptr [2 x i8], ptr %.03648, i64 %i.h
  %i.bp = add nuw nsw i32 %.049, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.bp, %2
  br i1 %exitcond52.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !99

._crit_edge50.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 268435456) i32 @read_low_coeffs(ptr nofree captures(none) %.32.val, ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef range(i64 -1073741824, 1073741824) %3) unnamed_addr #6 {
bb.a:
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %.._crit_edge31_crit_edge, label %.lr.ph30

.._crit_edge31_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %.32.val, i64 40
  %.val.i.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 40 ; 23 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %4 = load i32, ptr %i.d, align 8, !tbaa !42     ; 22 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %.backedge
  %.promoted.i32 = phi i32 [ %i.e, %.lr.ph30 ], [ %.val.i41, %.backedge ] ; 4 uses
  %.028 = phi i32 [ 0, %.lr.ph30 ], [ %.0.be, %.backedge ]
  %.07827 = phi i64 [ 3, %.lr.ph30 ], [ %.078.be, %.backedge ] ; 3 uses
  %.07926 = phi i32 [ 0, %.lr.ph30 ], [ %.079.be, %.backedge ]
  %.08025 = phi i32 [ 0, %.lr.ph30 ], [ %.080.be, %.backedge ] ; 2 uses
  %.08324 = phi ptr [ %0, %.lr.ph30 ], [ %.083.be, %.backedge ] ; 2 uses
  %i.f = lshr i64 %.07827, 8
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 3                          ; 2 uses
  %.not.i10610 = icmp eq i32 %i.h, 0
  br i1 %.not.i10610, label %ff_clz_c.exit107, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 14)
  br label %ff_clz_c.exit107

ff_clz_c.exit107:                                 ; preds = %.lr.ph.preheader, %bb.b
  %.0.i105.lcssa = phi i32 [ 14, %bb.b ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %i.l = lshr i32 %.promoted.i32, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  %i.p = icmp slt i32 %.promoted.i32, %4
  %i.q = zext i1 %i.p to i32
  %spec.select.i.i = add i32 %.promoted.i32, %i.q ; 6 uses
  %i.r = zext i8 %i.o to i32
  %i.s = and i32 %.promoted.i32, 7
  store i32 %spec.select.i.i, ptr %i.b, align 8, !tbaa !43
  %i.t = lshr exact i32 128, %i.s
  %i.u = and i32 %i.t, %i.r
  %.not.i112 = icmp eq i32 %i.u, 0
  br i1 %.not.i112, label %get_unary.exit, label %bb.c

bb.c:                                             ; preds = %ff_clz_c.exit107
  %i.v = lshr i32 %spec.select.i.i, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !31
  %i.z = icmp slt i32 %spec.select.i.i, %4
  %i.aa = zext i1 %i.z to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.aa ; 6 uses
  %i.ab = zext i8 %i.y to i32
  %i.ac = and i32 %spec.select.i.i, 7
  store i32 %spec.select.i.i.1, ptr %i.b, align 8, !tbaa !43
  %i.ad = lshr exact i32 128, %i.ac
  %i.ae = and i32 %i.ad, %i.ab
  %.not.i112.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i112.1, label %get_unary.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = lshr i32 %spec.select.i.i.1, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !31
  %i.aj = icmp slt i32 %spec.select.i.i.1, %4
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i.i.2 = add i32 %spec.select.i.i.1, %i.ak ; 6 uses
  %i.al = zext i8 %i.ai to i32
  %i.am = and i32 %spec.select.i.i.1, 7
  store i32 %spec.select.i.i.2, ptr %i.b, align 8, !tbaa !43
  %i.an = lshr exact i32 128, %i.am
  %i.ao = and i32 %i.an, %i.al
  %.not.i112.2 = icmp eq i32 %i.ao, 0
  br i1 %.not.i112.2, label %get_unary.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = lshr i32 %spec.select.i.i.2, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31
  %i.at = icmp slt i32 %spec.select.i.i.2, %4
  %i.au = zext i1 %i.at to i32
  %spec.select.i.i.3 = add i32 %spec.select.i.i.2, %i.au ; 6 uses
  %i.av = zext i8 %i.as to i32
  %i.aw = and i32 %spec.select.i.i.2, 7
  store i32 %spec.select.i.i.3, ptr %i.b, align 8, !tbaa !43
  %i.ax = lshr exact i32 128, %i.aw
  %i.ay = and i32 %i.ax, %i.av
  %.not.i112.3 = icmp eq i32 %i.ay, 0
  br i1 %.not.i112.3, label %get_unary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = lshr i32 %spec.select.i.i.3, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !31
  %i.bd = icmp slt i32 %spec.select.i.i.3, %4
  %i.be = zext i1 %i.bd to i32
  %spec.select.i.i.4 = add i32 %spec.select.i.i.3, %i.be ; 6 uses
  %i.bf = zext i8 %i.bc to i32
  %i.bg = and i32 %spec.select.i.i.3, 7
  store i32 %spec.select.i.i.4, ptr %i.b, align 8, !tbaa !43
  %i.bh = lshr exact i32 128, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.i112.4 = icmp eq i32 %i.bi, 0
  br i1 %.not.i112.4, label %get_unary.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = lshr i32 %spec.select.i.i.4, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !31
  %i.bn = icmp slt i32 %spec.select.i.i.4, %4
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i.5 = add i32 %spec.select.i.i.4, %i.bo ; 6 uses
  %i.bp = zext i8 %i.bm to i32
  %i.bq = and i32 %spec.select.i.i.4, 7
  store i32 %spec.select.i.i.5, ptr %i.b, align 8, !tbaa !43
  %i.br = lshr exact i32 128, %i.bq
  %i.bs = and i32 %i.br, %i.bp
  %.not.i112.5 = icmp eq i32 %i.bs, 0
  br i1 %.not.i112.5, label %get_unary.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i32 %spec.select.i.i.5, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !31
  %i.bx = icmp slt i32 %spec.select.i.i.5, %4
  %i.by = zext i1 %i.bx to i32
  %spec.select.i.i.6 = add i32 %spec.select.i.i.5, %i.by ; 6 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %spec.select.i.i.5, 7
  store i32 %spec.select.i.i.6, ptr %i.b, align 8, !tbaa !43
  %i.cb = lshr exact i32 128, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not.i112.6 = icmp eq i32 %i.cc, 0
  br i1 %.not.i112.6, label %get_unary.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = lshr i32 %spec.select.i.i.6, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !31
  %i.ch = icmp slt i32 %spec.select.i.i.6, %4
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i.i.7 = add i32 %spec.select.i.i.6, %i.ci ; 5 uses
  %i.cj = zext i8 %i.cg to i32
  %i.ck = and i32 %spec.select.i.i.6, 7
  store i32 %spec.select.i.i.7, ptr %i.b, align 8, !tbaa !43
  %i.cl = lshr exact i32 128, %i.ck
  %i.cm = and i32 %i.cl, %i.cj
  %.not.i112.7 = icmp eq i32 %i.cm, 0
  br i1 %.not.i112.7, label %get_unary.exit, label %get_unary.exit.thread.loopexit

get_unary.exit.thread.loopexit:                   ; preds = %bb.i
  %i.cn = lshr i32 %spec.select.i.i.7, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !31
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %spec.select.i.i.7, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = add i32 %spec.select.i.i.7, 16
  %i.cw = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.cv) ; 2 uses
  store i32 %i.cw, ptr %i.b, align 8, !tbaa !43
  br label %bb.l

get_unary.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %ff_clz_c.exit107
  %.05.i.lcssa = phi i32 [ 0, %ff_clz_c.exit107 ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ] ; 4 uses
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i, %ff_clz_c.exit107 ], [ %spec.select.i.i.1, %bb.c ], [ %spec.select.i.i.2, %bb.d ], [ %spec.select.i.i.3, %bb.e ], [ %spec.select.i.i.4, %bb.f ], [ %spec.select.i.i.5, %bb.g ], [ %spec.select.i.i.6, %bb.h ], [ %spec.select.i.i.7, %bb.i ] ; 4 uses
  %i.cx = lshr i32 %spec.select.i.i.lcssa, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !31
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = and i32 %spec.select.i.i.lcssa, 7
  %i.dd = shl i32 %i.db, %i.dc
  %i.de = sub nuw nsw i32 32, %.0.i105.lcssa
  %i.df = lshr i32 %i.dd, %i.de                   ; 2 uses
  %i.dg = icmp samesign ult i32 %i.df, 2
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_unary.exit
  %i.dh = add nsw i32 %.0.i105.lcssa, -1
  %i.di = add i32 %i.dh, %spec.select.i.i.lcssa
  %i.dj = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.di) ; 2 uses
  store i32 %i.dj, ptr %i.b, align 8, !tbaa !43
  %mulshl97 = shl nuw nsw i32 %.05.i.lcssa, %.0.i105.lcssa
  %i.dk = sub nsw i32 %mulshl97, %.05.i.lcssa
  br label %bb.l

bb.k:                                             ; preds = %get_unary.exit
  %i.dl = add i32 %spec.select.i.i.lcssa, %.0.i105.lcssa
  %i.dm = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.dl) ; 2 uses
  store i32 %i.dm, ptr %i.b, align 8, !tbaa !43
  %mulshl = shl nuw nsw i32 %.05.i.lcssa, %.0.i105.lcssa
  %i.dn = xor i32 %.05.i.lcssa, -1
  %i.do = add nsw i32 %mulshl, %i.dn
  %i.dp = add nsw i32 %i.do, %i.df
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %get_unary.exit.thread.loopexit
  %.promoted.i113 = phi i32 [ %i.dj, %bb.j ], [ %i.dm, %bb.k ], [ %i.cw, %get_unary.exit.thread.loopexit ] ; 5 uses
  %.076 = phi i32 [ %i.dk, %bb.j ], [ %i.dp, %bb.k ], [ %i.cu, %get_unary.exit.thread.loopexit ]
  %i.dq = add nsw i32 %.076, %.028                ; 3 uses
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = and i16 %i.dr, 1
  %i.dt = sub nsw i16 0, %i.ds
  %i.du = or i16 %i.dt, 1
  %i.dv = add nsw i32 %i.dq, 1
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = mul i16 %i.du, %i.dx
  %i.dz = add i32 %.08025, 1                      ; 2 uses
  %i.ea = zext i32 %.08025 to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.08324, i64 %i.ea
  store i16 %i.dy, ptr %i.eb, align 2, !tbaa !36
  %i.ec = add nuw i32 %.07926, 1                  ; 4 uses
  %i.ed = icmp eq i32 %i.dz, %2                   ; 2 uses
  %spec.select100.idx = select i1 %i.ed, i64 %3, i64 0
  %spec.select100 = getelementptr inbounds [2 x i8], ptr %.08324, i64 %spec.select100.idx ; 4 uses
  %spec.select101 = select i1 %i.ed, i32 0, i32 %i.dz ; 4 uses
  %i.ee = mul nsw i32 %i.dq, 120
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %.07827, 120
  %i.eh = ashr i64 %i.eg, 8
  %i.ei = sub i64 %.07827, %i.eh
  %i.ej = add i64 %i.ei, %i.ef                    ; 5 uses
  %i.ek = and i64 %i.ej, 4611686018427387840
  %.not = icmp eq i64 %i.ek, 0
  %.not98 = icmp ult i32 %i.ec, %1
  %or.cond = and i1 %.not98, %.not
  br i1 %or.cond, label %bb.m, label %.backedge

bb.m:                                             ; preds = %bb.l
  %i.el = add nuw nsw i64 %i.ej, 8
  %i.em = lshr i64 %i.el, 5
  %.not99 = icmp eq i64 %i.ej, 0
  br i1 %.not99, label %ff_clz_c.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = trunc i64 %i.ej to i32                  ; 2 uses
  %.not.i13 = icmp eq i32 %i.en, 0
  br i1 %.not.i13, label %ff_clz_c.exit, label %.lr.ph16.preheader

.lr.ph16.preheader:                               ; preds = %bb.n
  %i.eo = tail call range(i32 26, 33) i32 @llvm.ctlz.i32(i32 %i.en, i1 true)
  %i.ep = zext nneg i32 %i.eo to i64
  br label %ff_clz_c.exit

ff_clz_c.exit:                                    ; preds = %bb.n, %.lr.ph16.preheader, %bb.m
  %i.eq = phi i64 [ 32, %bb.m ], [ 32, %bb.n ], [ %i.ep, %.lr.ph16.preheader ]
  %i.er = add nuw nsw i64 %i.eq, %i.em
  %i.es = trunc i64 %i.er to i32                  ; 3 uses
  %i.et = add i32 %i.es, -24                      ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.et
  %i.eu = and i32 %notmask.i, 16383
  %i.ev = xor i32 %i.eu, 16383                    ; 2 uses
  %i.ew = lshr i32 %.promoted.i113, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !31
  %i.fa = icmp slt i32 %.promoted.i113, %4
  %i.fb = zext i1 %i.fa to i32
  %spec.select.i.i116 = add i32 %.promoted.i113, %i.fb ; 6 uses
  %i.fc = zext i8 %i.ez to i32
  %i.fd = and i32 %.promoted.i113, 7
  store i32 %spec.select.i.i116, ptr %i.b, align 8, !tbaa !43
  %i.fe = lshr exact i32 128, %i.fd
  %i.ff = and i32 %i.fe, %i.fc
  %.not.i117 = icmp eq i32 %i.ff, 0
  br i1 %.not.i117, label %get_unary.exit120, label %bb.o

bb.o:                                             ; preds = %ff_clz_c.exit
  %i.fg = lshr i32 %spec.select.i.i116, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !31
  %i.fk = icmp slt i32 %spec.select.i.i116, %4
  %i.fl = zext i1 %i.fk to i32
  %spec.select.i.i116.1 = add i32 %spec.select.i.i116, %i.fl ; 6 uses
  %i.fm = zext i8 %i.fj to i32
  %i.fn = and i32 %spec.select.i.i116, 7
  store i32 %spec.select.i.i116.1, ptr %i.b, align 8, !tbaa !43
  %i.fo = lshr exact i32 128, %i.fn
  %i.fp = and i32 %i.fo, %i.fm
  %.not.i117.1 = icmp eq i32 %i.fp, 0
  br i1 %.not.i117.1, label %get_unary.exit120, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fq = lshr i32 %spec.select.i.i116.1, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !31
  %i.fu = icmp slt i32 %spec.select.i.i116.1, %4
  %i.fv = zext i1 %i.fu to i32
  %spec.select.i.i116.2 = add i32 %spec.select.i.i116.1, %i.fv ; 6 uses
  %i.fw = zext i8 %i.ft to i32
  %i.fx = and i32 %spec.select.i.i116.1, 7
  store i32 %spec.select.i.i116.2, ptr %i.b, align 8, !tbaa !43
  %i.fy = lshr exact i32 128, %i.fx
  %i.fz = and i32 %i.fy, %i.fw
  %.not.i117.2 = icmp eq i32 %i.fz, 0
  br i1 %.not.i117.2, label %get_unary.exit120, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ga = lshr i32 %spec.select.i.i116.2, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !31
  %i.ge = icmp slt i32 %spec.select.i.i116.2, %4
  %i.gf = zext i1 %i.ge to i32
  %spec.select.i.i116.3 = add i32 %spec.select.i.i116.2, %i.gf ; 6 uses
  %i.gg = zext i8 %i.gd to i32
  %i.gh = and i32 %spec.select.i.i116.2, 7
  store i32 %spec.select.i.i116.3, ptr %i.b, align 8, !tbaa !43
  %i.gi = lshr exact i32 128, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not.i117.3 = icmp eq i32 %i.gj, 0
  br i1 %.not.i117.3, label %get_unary.exit120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gk = lshr i32 %spec.select.i.i116.3, 3
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !31
  %i.go = icmp slt i32 %spec.select.i.i116.3, %4
  %i.gp = zext i1 %i.go to i32
  %spec.select.i.i116.4 = add i32 %spec.select.i.i116.3, %i.gp ; 6 uses
  %i.gq = zext i8 %i.gn to i32
  %i.gr = and i32 %spec.select.i.i116.3, 7
  store i32 %spec.select.i.i116.4, ptr %i.b, align 8, !tbaa !43
  %i.gs = lshr exact i32 128, %i.gr
  %i.gt = and i32 %i.gs, %i.gq
  %.not.i117.4 = icmp eq i32 %i.gt, 0
  br i1 %.not.i117.4, label %get_unary.exit120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = lshr i32 %spec.select.i.i116.4, 3
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !31
  %i.gy = icmp slt i32 %spec.select.i.i116.4, %4
  %i.gz = zext i1 %i.gy to i32
  %spec.select.i.i116.5 = add i32 %spec.select.i.i116.4, %i.gz ; 6 uses
  %i.ha = zext i8 %i.gx to i32
  %i.hb = and i32 %spec.select.i.i116.4, 7
  store i32 %spec.select.i.i116.5, ptr %i.b, align 8, !tbaa !43
  %i.hc = lshr exact i32 128, %i.hb
  %i.hd = and i32 %i.hc, %i.ha
  %.not.i117.5 = icmp eq i32 %i.hd, 0
  br i1 %.not.i117.5, label %get_unary.exit120, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.he = lshr i32 %spec.select.i.i116.5, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !31
  %i.hi = icmp slt i32 %spec.select.i.i116.5, %4
  %i.hj = zext i1 %i.hi to i32
  %spec.select.i.i116.6 = add i32 %spec.select.i.i116.5, %i.hj ; 6 uses
  %i.hk = zext i8 %i.hh to i32
  %i.hl = and i32 %spec.select.i.i116.5, 7
  store i32 %spec.select.i.i116.6, ptr %i.b, align 8, !tbaa !43
  %i.hm = lshr exact i32 128, %i.hl
  %i.hn = and i32 %i.hm, %i.hk
  %.not.i117.6 = icmp eq i32 %i.hn, 0
  br i1 %.not.i117.6, label %get_unary.exit120, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = lshr i32 %spec.select.i.i116.6, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !31
  %i.hs = icmp slt i32 %spec.select.i.i116.6, %4
  %i.ht = zext i1 %i.hs to i32
  %spec.select.i.i116.7 = add i32 %spec.select.i.i116.6, %i.ht ; 5 uses
  %i.hu = zext i8 %i.hr to i32
  %i.hv = and i32 %spec.select.i.i116.6, 7
  store i32 %spec.select.i.i116.7, ptr %i.b, align 8, !tbaa !43
  %i.hw = lshr exact i32 128, %i.hv
  %i.hx = and i32 %i.hw, %i.hu
  %.not.i117.7 = icmp eq i32 %i.hx, 0
  br i1 %.not.i117.7, label %get_unary.exit120, label %get_unary.exit120.thread.loopexit

get_unary.exit120.thread.loopexit:                ; preds = %bb.u
  %i.hy = lshr i32 %spec.select.i.i116.7, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 1, !tbaa !31
  %i.ic = tail call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = and i32 %spec.select.i.i116.7, 7
  %i.ie = shl i32 %i.ic, %i.id
  %i.if = lshr i32 %i.ie, 16
  %i.ig = add i32 %spec.select.i.i116.7, 16
  %i.ih = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.ig) ; 2 uses
  store i32 %i.ih, ptr %i.b, align 8, !tbaa !43
  br label %bb.x

get_unary.exit120:                                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %ff_clz_c.exit
  %.05.i115.lcssa = phi i32 [ 0, %ff_clz_c.exit ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ], [ 6, %bb.t ], [ 7, %bb.u ] ; 2 uses
  %spec.select.i.i116.lcssa = phi i32 [ %spec.select.i.i116, %ff_clz_c.exit ], [ %spec.select.i.i116.1, %bb.o ], [ %spec.select.i.i116.2, %bb.p ], [ %spec.select.i.i116.3, %bb.q ], [ %spec.select.i.i116.4, %bb.r ], [ %spec.select.i.i116.5, %bb.s ], [ %spec.select.i.i116.6, %bb.t ], [ %spec.select.i.i116.7, %bb.u ] ; 4 uses
  %i.ii = lshr i32 %spec.select.i.i116.lcssa, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 1, !tbaa !31
  %i.im = tail call i32 @llvm.bswap.i32(i32 %i.il)
  %i.in = and i32 %spec.select.i.i116.lcssa, 7
  %i.io = shl i32 %i.im, %i.in
  %i.ip = sub i32 56, %i.es
  %i.iq = lshr i32 %i.io, %i.ip                   ; 2 uses
  %i.ir = icmp ugt i32 %i.iq, 1
  br i1 %i.ir, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_unary.exit120
  %i.is = add i32 %spec.select.i.i116.lcssa, %i.et
  %i.it = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.is) ; 2 uses
  store i32 %i.it, ptr %i.b, align 8, !tbaa !43
  %i.iu = mul nuw nsw i32 %.05.i115.lcssa, %i.ev
  %i.iv = add nsw i32 %i.iu, -1
  %i.iw = add i32 %i.iv, %i.iq
  br label %bb.x

bb.w:                                             ; preds = %get_unary.exit120
  %i.ix = add i32 %i.es, -25
  %i.iy = add i32 %i.ix, %spec.select.i.i116.lcssa
  %i.iz = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.iy) ; 2 uses
  store i32 %i.iz, ptr %i.b, align 8, !tbaa !43
  %i.ja = mul nuw nsw i32 %.05.i115.lcssa, %i.ev
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %get_unary.exit120.thread.loopexit
  %.val.i42 = phi i32 [ %i.ih, %get_unary.exit120.thread.loopexit ], [ %i.it, %bb.v ], [ %i.iz, %bb.w ]
  %.077 = phi i32 [ %i.if, %get_unary.exit120.thread.loopexit ], [ %i.iw, %bb.v ], [ %i.ja, %bb.w ] ; 8 uses
  %i.jb = sub nuw i32 %1, %i.ec
  %i.jc = icmp ugt i32 %.077, %i.jb
  br i1 %i.jc, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jd = add i32 %.077, %i.ec
  %.not33 = icmp eq i32 %.077, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %bb.y
  %xtraiter = and i32 %.077, 1
  %i.je = icmp eq i32 %.077, 1
  br i1 %i.je, label %.lr.ph21.epil.preheader, label %.lr.ph21.preheader.new

.lr.ph21.preheader.new:                           ; preds = %.lr.ph21.preheader
  %unroll_iter = and i32 %.077, -2
  br label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph21, %.lr.ph21.preheader.new
  %.220 = phi i32 [ %spec.select101, %.lr.ph21.preheader.new ], [ %spec.select103.1, %.lr.ph21 ] ; 2 uses
  %.28518 = phi ptr [ %spec.select100, %.lr.ph21.preheader.new ], [ %spec.select102.1, %.lr.ph21 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph21.preheader.new ], [ %niter.next.1, %.lr.ph21 ]
  %i.jf = add i32 %.220, 1                        ; 2 uses
  %i.jg = zext i32 %.220 to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.28518, i64 %i.jg
  store i16 0, ptr %i.jh, align 2, !tbaa !36
  %i.ji = icmp eq i32 %i.jf, %2                   ; 2 uses
  %spec.select102.idx = select i1 %i.ji, i64 %3, i64 0
  %spec.select102 = getelementptr inbounds [2 x i8], ptr %.28518, i64 %spec.select102.idx ; 2 uses
  %spec.select103 = select i1 %i.ji, i32 0, i32 %i.jf ; 2 uses
  %i.jj = add i32 %spec.select103, 1              ; 2 uses
  %i.jk = zext i32 %spec.select103 to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %spec.select102, i64 %i.jk
  store i16 0, ptr %i.jl, align 2, !tbaa !36
  %i.jm = icmp eq i32 %i.jj, %2                   ; 2 uses
  %spec.select102.idx.1 = select i1 %i.jm, i64 %3, i64 0
  %spec.select102.1 = getelementptr inbounds [2 x i8], ptr %spec.select102, i64 %spec.select102.idx.1 ; 3 uses
  %spec.select103.1 = select i1 %i.jm, i32 0, i32 %i.jj ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph21, !llvm.loop !104

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph21
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph21.epil.preheader

.lr.ph21.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph21.preheader
  %.220.epil.init = phi i32 [ %spec.select101, %.lr.ph21.preheader ], [ %spec.select103.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.28518.epil.init = phi ptr [ %spec.select100, %.lr.ph21.preheader ], [ %spec.select102.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod53 = trunc i32 %.077 to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.jn = add i32 %.220.epil.init, 1              ; 2 uses
  %i.jo = zext i32 %.220.epil.init to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.28518.epil.init, i64 %i.jo
  store i16 0, ptr %i.jp, align 2, !tbaa !36
  %i.jq = icmp eq i32 %i.jn, %2                   ; 2 uses
  %spec.select102.idx.epil = select i1 %i.jq, i64 %3, i64 0
  %spec.select102.epil = getelementptr inbounds [2 x i8], ptr %.28518.epil.init, i64 %spec.select102.idx.epil
  %spec.select103.epil = select i1 %i.jq, i32 0, i32 %i.jn
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.y
  %.285.lcssa = phi ptr [ %spec.select100, %bb.y ], [ %spec.select102.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select102.epil, %.lr.ph21.epil.preheader ]
  %.2.lcssa = phi i32 [ %spec.select101, %bb.y ], [ %spec.select103.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select103.epil, %.lr.ph21.epil.preheader ]
  %i.jr = icmp slt i32 %.077, 65535
  %i.js = zext i1 %i.jr to i32
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.l
  %.val.i41 = phi i32 [ %.val.i42, %._crit_edge ], [ %.promoted.i113, %bb.l ] ; 2 uses
  %.083.be = phi ptr [ %.285.lcssa, %._crit_edge ], [ %spec.select100, %bb.l ]
  %.080.be = phi i32 [ %.2.lcssa, %._crit_edge ], [ %spec.select101, %bb.l ]
  %.079.be = phi i32 [ %i.jd, %._crit_edge ], [ %i.ec, %bb.l ] ; 2 uses
  %.078.be = phi i64 [ 0, %._crit_edge ], [ %i.ej, %bb.l ]
  %.0.be = phi i32 [ %i.js, %._crit_edge ], [ 0, %bb.l ]
  %i.jt = icmp ult i32 %.079.be, %1
  br i1 %i.jt, label %bb.b, label %._crit_edge31, !llvm.loop !105

._crit_edge31:                                    ; preds = %.backedge, %.._crit_edge31_crit_edge
  %.val.i = phi i32 [ %.val.i.pre, %.._crit_edge31_crit_edge ], [ %.val.i41, %.backedge ] ; 3 uses
  %i.ju = sub nsw i32 0, %.val.i
  %i.jv = and i32 %i.ju, 7                        ; 2 uses
  %.not.i121 = icmp eq i32 %i.jv, 0
  br i1 %.not.i121, label %align_get_bits.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge31
  %i.jw = getelementptr i8, ptr %.32.val, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !42
  %i.jz = add i32 %i.jv, %.val.i
  %i.ka = tail call i32 @llvm.umin.i32(i32 %i.jy, i32 %i.jz) ; 2 uses
  store i32 %i.ka, ptr %i.jw, align 8, !tbaa !43
  br label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %._crit_edge31, %bb.z
  %.val111 = phi i32 [ %.val.i, %._crit_edge31 ], [ %i.ka, %bb.z ]
  %i.kb = ashr i32 %.val111, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %align_get_bits.exit
  %.082 = phi i32 [ %i.kb, %align_get_bits.exit ], [ -1094995529, %bb.x ]
  ret i32 %.082
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!14, !14, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!33 = !{!"PixletContext", !10, i64 0, !29, i64 8, !32, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !17, i64 88, !5, i64 96, !5, i64 352, !5, i64 131424}
!34 = !{!33, !6, i64 56}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!33, !6, i64 64}
!39 = !{!33, !6, i64 68}
!40 = !{!6, !6, i64 0}
!41 = !{!32, !14, i64 0}
!42 = !{!32, !6, i64 16}
!43 = !{!32, !6, i64 8}
!44 = !{!"SubBand", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !6, i64 4}
!47 = !{!44, !6, i64 12}
!48 = !{!44, !6, i64 16}
!49 = !{!44, !6, i64 8}
!50 = !{!33, !17, i64 88}
!51 = !{!17, !17, i64 0}
!52 = !{!27, !6, i64 136}
!53 = !{!27, !6, i64 156}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !91}
!63 = distinct !{!63, !37}
!64 = distinct !{!64, !37}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !91}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !91}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!76 = !{!75, !14, i64 24}
!77 = !{!75, !6, i64 32}
!78 = !{!29, !14, i64 0}
!79 = !{!29, !14, i64 16}
!80 = !{!29, !14, i64 8}
!81 = !{!33, !6, i64 60}
!82 = !{!27, !6, i64 112}
!83 = !{!27, !6, i64 116}
!84 = !{!"p2 omnipotent char", !25, i64 0}
!85 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!86 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!87 = !{!"AVFrame", !5, i64 0, !5, i64 64, !84, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !85, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !86, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!88 = !{!87, !6, i64 280}
!89 = !{!13, !13, i64 0}
!90 = !{!32, !6, i64 12}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!27, !6, i64 64}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !37, !102, !103}
!98 = distinct !{!98, !37, !102}
!99 = distinct !{!99, !37}
!100 = !{!95}
!101 = !{!96}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
end_hunk_0
