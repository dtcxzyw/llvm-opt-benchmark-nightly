Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@chrRangeToJpeg16_c:bb.a
  %i.x = mul nsw i64 %i.w, %i.b
  %i.y = add nsw i64 %i.x, %4
  %i.z = lshr i64 %i.y, 18
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, %i.b
  %i.af = add nsw i64 %i.ae, %4
  %i.ag = lshr i64 %i.af, 18
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 524287)
  store i32 %i.ai, ptr %i.u, align 4, !tbaa !39
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 524287)
  store i32 %i.aj, ptr %i.ab, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !192

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: cold nounwind uwtable
define void @ff_sws_init_scale(ptr noundef initializes((52888, 52904)) %0) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @sws_init_swscale(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @sws_init_swscale(ptr noundef initializes((52888, 52904)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52888
  store ptr @xyz12Torgb48_c, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52896
  store ptr @rgb48Toxyz12_c, ptr %i.d, align 16, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52984
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52992
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 53000
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 53008
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 53016
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 53024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 53032
  tail call void @ff_sws_init_output_funcs(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 53048
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53056
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 53064
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 53072
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 53080
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 53088
  tail call void @ff_sws_init_input_funcs(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.s = load i32, ptr %i.r, align 4, !tbaa !195
  %i.t = icmp eq i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51   ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.w = icmp slt i32 %i.v, 15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 53120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 53112 ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr @hScale8To15_c, ptr %i.x, align 16, !tbaa !196
  store ptr @hScale8To15_c, ptr %i.y, align 8, !tbaa !197
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !33
  %i.ab = and i32 %i.aa, 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 53096
  store ptr @ff_hyscale_fast_c, ptr %i.ac, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 53104
  store ptr @ff_hcscale_fast_c, ptr %i.ad, align 16, !tbaa !199
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  store ptr @hScale8To19_c, ptr %i.x, align 16, !tbaa !196
  store ptr @hScale8To19_c, ptr %i.y, align 8, !tbaa !197
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp sgt i32 %i.v, 14
  %i.af = select i1 %i.ae, ptr @hScale16To19_c, ptr @hScale16To15_c ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 53120
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !196
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 53112
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  tail call void @ff_sws_init_range_convert(ptr noundef nonnull %0) #16
  %i.ai = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #14 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ai, null
  br i1 %.not.i38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 810) #14
  tail call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.al = and i64 %i.ak, 10
  %or.cond10.i41 = icmp eq i64 %i.al, 0
  br i1 %or.cond10.i41, label %bb.j, label %isGray.exit43.thread

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !41
  %i.ao = icmp ugt i8 %i.an, 2
  %i.ap = add i32 %i.b, -9
  %i.aq = icmp ult i32 %i.ap, 2
  %or.cond = or i1 %i.aq, %i.ao
  br i1 %or.cond, label %isGray.exit43.thread, label %bb.o

isGray.exit43.thread:                             ; preds = %bb.i, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32 ; 2 uses
  %i.at = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.as) #14 ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %isGray.exit43.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 810) #14
  tail call void @abort() #15
  unreachable

bb.l:                                             ; preds = %isGray.exit43.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !42
  %i.aw = and i64 %i.av, 10
  %or.cond10.i = icmp eq i64 %i.aw, 0
  br i1 %or.cond10.i, label %bb.m, label %isGray.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !41
  %i.az = icmp ult i8 %i.ay, 3
  %i.ba = add i32 %i.as, -11
  %i.bb = icmp ult i32 %i.ba, -2
  %spec.select = and i1 %i.bb, %i.az
  br label %isGray.exit

isGray.exit:                                      ; preds = %bb.m, %bb.l
  %i.bc = phi i1 [ false, %bb.l ], [ %spec.select, %bb.m ]
  %i.bd = add i32 %i.b, -9
  %i.be = icmp ult i32 %i.bd, 2
  %or.cond3 = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %isGray.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 53168
  store i32 1, ptr %i.bf, align 16, !tbaa !200
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n, %isGray.exit
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_sws_init_xyzdsp(ptr nofree noundef writeonly captures(none) initializes((52888, 52904)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52888
  store ptr @xyz12Torgb48_c, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52896
  store ptr @rgb48Toxyz12_c, ptr %i.b, align 16, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xyz12Torgb48_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #14
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge92.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = icmp sgt i32 %5, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52904
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52920
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52922
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52924
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52926
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52928
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52930
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52932
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52934
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52936
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52912 ; 6 uses
  %i.r = sext i32 %4 to i64
  %i.s = sext i32 %2 to i64
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge92.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = mul nuw nsw i32 %5, 3
  %i.u = zext nneg i32 %i.t to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.08091 = phi i32 [ %i.x, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.08190 = phi ptr [ %i.w, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.08289 = phi ptr [ %i.v, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge92.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %.08289, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.08190, i64 %i.s
  %i.x = add nuw nsw i32 %.08091, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %6
  br i1 %exitcond.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !201

bb.b:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !42
  %i.z = and i64 %i.y, 1
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.08289, i64 %indvars.iv ; 5 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !48 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !48
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !48
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = load i16, ptr %i.al, align 1, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.078.in = phi i16 [ %i.ac, %bb.c ], [ %i.ab, %bb.d ]
  %.077.in = phi i16 [ %i.af, %bb.c ], [ %i.ak, %bb.d ]
  %.0.in = phi i16 [ %i.ai, %bb.c ], [ %i.am, %bb.d ]
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !203 ; 3 uses
  %i.ao = lshr i16 %.078.in, 4
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53
  %i.as = zext i16 %i.ar to i32                   ; 3 uses
  %i.at = lshr i16 %.077.in, 4
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !53
  %i.ax = zext i16 %i.aw to i32                   ; 3 uses
  %i.ay = lshr i16 %.0.in, 4
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !53
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = load i16, ptr %i.h, align 8, !tbaa !53
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.as
  %i.bg = load i16, ptr %i.i, align 2, !tbaa !53
  %i.bh = sext i16 %i.bg to i32
  %i.bi = mul nsw i32 %i.bh, %i.ax
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = load i16, ptr %i.j, align 4, !tbaa !53
  %i.bl = sext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.bc
  %i.bn = add nsw i32 %i.bj, %i.bm
  %i.bo = ashr i32 %i.bn, 12
  %i.bp = load i16, ptr %i.k, align 2, !tbaa !53
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.as
  %i.bs = load i16, ptr %i.l, align 8, !tbaa !53
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.ax
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = load i16, ptr %i.m, align 2, !tbaa !53
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bc
  %i.bz = add nsw i32 %i.bv, %i.by
  %i.ca = ashr i32 %i.bz, 12
  %i.cb = load i16, ptr %i.n, align 4, !tbaa !53
  %i.cc = sext i16 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, %i.as
  %i.ce = load i16, ptr %i.o, align 2, !tbaa !53
  %i.cf = sext i16 %i.ce to i32
  %i.cg = mul nsw i32 %i.cf, %i.ax
  %i.ch = add nsw i32 %i.cg, %i.cd
  %i.ci = load i16, ptr %i.p, align 8, !tbaa !53
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.bc
  %i.cl = add nsw i32 %i.ch, %i.ck
  %i.cm = ashr i32 %i.cl, 12
  %7 = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %.0.i8788 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535) ; 2 uses
  %8 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %.0.i8589 = tail call i32 @llvm.umin.i32(i32 %8, i32 65535) ; 2 uses
  %9 = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %.0.i90 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535) ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %10 = load ptr, ptr %i.q, align 8, !tbaa !204
  %11 = zext nneg i32 %.0.i8788 to i64
  %12 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !53
  %14 = shl i16 %13, 4
  %i.cn = tail call i16 @llvm.bswap.i16(i16 %14)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv ; 2 uses
  store i16 %i.cn, ptr %i.co, align 1, !tbaa !48
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.cq = zext nneg i32 %.0.i8589 to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !53
  %i.ct = shl i16 %i.cs, 4
  %i.cu = tail call i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i16 %i.cu, ptr %i.cv, align 1, !tbaa !48
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.cx = zext nneg i32 %.0.i90 to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !53
  %i.da = shl i16 %i.cz, 4
  %i.db = tail call i16 @llvm.bswap.i16(i16 %i.da)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0.i = zext nneg i32 %.0.i90 to i64
  %.0.i85 = zext nneg i32 %.0.i8589 to i64
  %.0.i87 = zext nneg i32 %.0.i8788 to i64
  %15 = load ptr, ptr %i.q, align 8, !tbaa !204
  %16 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %.0.i87
  %17 = load i16, ptr %16, align 2, !tbaa !53
  %18 = shl i16 %17, 4
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv ; 2 uses
  store i16 %18, ptr %i.dc, align 1, !tbaa !48
  %i.dd = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %.0.i85
  %i.df = load i16, ptr %i.de, align 2, !tbaa !53
  %i.dg = shl i16 %i.df, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i16 %i.dg, ptr %i.dh, align 1, !tbaa !48
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.0.i
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !53
  %i.dl = shl i16 %i.dk, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i16 [ %i.dl, %bb.g ], [ %i.db, %bb.f ]
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i16 %.sink, ptr %i.dn, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.do, label %bb.b, label %._crit_edge, !llvm.loop !202
}

; Function Attrs: nounwind uwtable
define internal void @rgb48Toxyz12_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #14
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge92.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = icmp sgt i32 %5, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52944
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52960
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52962
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52964
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52966
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52968
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52970
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52972
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52974
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52976
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52952 ; 6 uses
  %i.r = sext i32 %4 to i64
  %i.s = sext i32 %2 to i64
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge92.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = mul nuw nsw i32 %5, 3
  %i.u = zext nneg i32 %i.t to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.08091 = phi i32 [ %i.x, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.08190 = phi ptr [ %i.w, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.08289 = phi ptr [ %i.v, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge92.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %.08289, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.08190, i64 %i.s
  %i.x = add nuw nsw i32 %.08091, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %6
  br i1 %exitcond.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !205

bb.b:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !42
  %i.z = and i64 %i.y, 1
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.08289, i64 %indvars.iv ; 5 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !48 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !48
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !48
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = load i16, ptr %i.al, align 1, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.078.in = phi i16 [ %i.ac, %bb.c ], [ %i.ab, %bb.d ]
  %.077.in = phi i16 [ %i.af, %bb.c ], [ %i.ak, %bb.d ]
  %.0.in = phi i16 [ %i.ai, %bb.c ], [ %i.am, %bb.d ]
  %i.an = load ptr, ptr %i.g, align 16, !tbaa !207 ; 3 uses
  %i.ao = lshr i16 %.078.in, 4
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53
  %i.as = zext i16 %i.ar to i32                   ; 3 uses
  %i.at = lshr i16 %.077.in, 4
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !53
  %i.ax = zext i16 %i.aw to i32                   ; 3 uses
  %i.ay = lshr i16 %.0.in, 4
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !53
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = load i16, ptr %i.h, align 16, !tbaa !53
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.as
  %i.bg = load i16, ptr %i.i, align 2, !tbaa !53
  %i.bh = sext i16 %i.bg to i32
  %i.bi = mul nsw i32 %i.bh, %i.ax
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = load i16, ptr %i.j, align 4, !tbaa !53
  %i.bl = sext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.bc
  %i.bn = add nsw i32 %i.bj, %i.bm
  %i.bo = ashr i32 %i.bn, 12
  %i.bp = load i16, ptr %i.k, align 2, !tbaa !53
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.as
  %i.bs = load i16, ptr %i.l, align 8, !tbaa !53
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.ax
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = load i16, ptr %i.m, align 2, !tbaa !53
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bc
  %i.bz = add nsw i32 %i.bv, %i.by
  %i.ca = ashr i32 %i.bz, 12
  %i.cb = load i16, ptr %i.n, align 4, !tbaa !53
  %i.cc = sext i16 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, %i.as
  %i.ce = load i16, ptr %i.o, align 2, !tbaa !53
  %i.cf = sext i16 %i.ce to i32
  %i.cg = mul nsw i32 %i.cf, %i.ax
  %i.ch = add nsw i32 %i.cg, %i.cd
  %i.ci = load i16, ptr %i.p, align 16, !tbaa !53
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.bc
  %i.cl = add nsw i32 %i.ch, %i.ck
  %i.cm = ashr i32 %i.cl, 12
  %7 = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %.0.i8788 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535) ; 2 uses
  %8 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %.0.i8589 = tail call i32 @llvm.umin.i32(i32 %8, i32 65535) ; 2 uses
  %9 = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %.0.i90 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535) ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %10 = load ptr, ptr %i.q, align 8, !tbaa !208
  %11 = zext nneg i32 %.0.i8788 to i64
  %12 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !53
  %14 = shl i16 %13, 4
  %i.cn = tail call i16 @llvm.bswap.i16(i16 %14)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv ; 2 uses
  store i16 %i.cn, ptr %i.co, align 1, !tbaa !48
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.cq = zext nneg i32 %.0.i8589 to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !53
  %i.ct = shl i16 %i.cs, 4
  %i.cu = tail call i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i16 %i.cu, ptr %i.cv, align 1, !tbaa !48
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.cx = zext nneg i32 %.0.i90 to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !53
  %i.da = shl i16 %i.cz, 4
  %i.db = tail call i16 @llvm.bswap.i16(i16 %i.da)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0.i = zext nneg i32 %.0.i90 to i64
  %.0.i85 = zext nneg i32 %.0.i8589 to i64
  %.0.i87 = zext nneg i32 %.0.i8788 to i64
  %15 = load ptr, ptr %i.q, align 8, !tbaa !208
  %16 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %.0.i87
  %17 = load i16, ptr %16, align 2, !tbaa !53
  %18 = shl i16 %17, 4
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv ; 2 uses
  store i16 %18, ptr %i.dc, align 1, !tbaa !48
  %i.dd = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %.0.i85
  %i.df = load i16, ptr %i.de, align 2, !tbaa !53
  %i.dg = shl i16 %i.df, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i16 %i.dg, ptr %i.dh, align 1, !tbaa !48
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.0.i
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !53
  %i.dl = shl i16 %i.dk, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i16 [ %i.dl, %bb.g ], [ %i.db, %bb.f ]
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.08190, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i16 %.sink, ptr %i.dn, align 1, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.do, label %bb.b, label %._crit_edge, !llvm.loop !206
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_update_palette(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39552
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39556
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39560
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 39564
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 39568
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 39572
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 39576
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 39580
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 39584
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1512
  br label %bb.c

bb.b:                                             ; preds = %bb.o
  ret void

bb.c:                                             ; preds = %bb.a, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.o ] ; 7 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 16 uses
  switch i32 %i.t, label %bb.h [
    i32 11, label %bb.d
    i32 20, label %bb.e
    i32 17, label %bb.f
    i32 22, label %bb.g
    i32 8, label %bb.i
    i32 56, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !39  ; 4 uses
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = lshr i32 %i.aa, 16
  %i.ad = and i32 %i.ac, 255
  %i.ae = lshr i32 %i.aa, 8
  %i.af = and i32 %i.ae, 255
  %i.ag = and i32 %i.aa, 255
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i32 %i.y, 5
  %i.ai = mul nuw nsw i32 %i.ah, 36
  %i.aj = lshr i32 %i.y, 2
  %i.ak = and i32 %i.aj, 7
  %i.al = mul nuw nsw i32 %i.ak, 36
  %i.am = and i32 %i.y, 3
  %i.an = mul nuw nsw i32 %i.am, 85
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ao = lshr i32 %i.y, 6
  %i.ap = mul nuw nsw i32 %i.ao, 85
  %i.aq = lshr i32 %i.y, 3
  %i.ar = and i32 %i.aq, 7
  %i.as = mul nuw nsw i32 %i.ar, 36
  %i.at = and i32 %i.y, 7
  %i.au = mul nuw nsw i32 %i.at, 36
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.av = lshr i32 %i.y, 3
  %i.aw = mul nuw nsw i32 %i.av, 255
  %i.ax = lshr i32 %i.y, 1
  %i.ay = and i32 %i.ax, 3
  %i.az = mul nuw nsw i32 %i.ay, 85
  %i.ba = trunc i64 %indvars.iv to i1
  %i.bb = select i1 %i.ba, i32 255, i32 0
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bc = lshr i32 %i.y, 3
  %i.bd = mul nuw nsw i32 %i.bc, 255
  %i.be = lshr i32 %i.y, 1
  %i.bf = and i32 %i.be, 3
  %i.bg = mul nuw nsw i32 %i.bf, 85
  %i.bh = trunc i64 %indvars.iv to i1
  %i.bi = select i1 %i.bh, i32 255, i32 0
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.093 = phi i32 [ %i.ad, %bb.d ], [ %i.ai, %bb.e ], [ %i.au, %bb.f ], [ %i.aw, %bb.g ], [ %i.bi, %bb.h ], [ %i.y, %bb.c ], [ %i.y, %bb.c ] ; 8 uses
  %.092 = phi i32 [ %i.af, %bb.d ], [ %i.al, %bb.e ], [ %i.as, %bb.f ], [ %i.az, %bb.g ], [ %i.bg, %bb.h ], [ %i.y, %bb.c ], [ %i.y, %bb.c ] ; 8 uses
  %.091 = phi i32 [ %i.ag, %bb.d ], [ %i.an, %bb.e ], [ %i.ap, %bb.f ], [ %i.bb, %bb.g ], [ %i.bd, %bb.h ], [ %i.y, %bb.c ], [ %i.y, %bb.c ] ; 8 uses
  %.0 = phi i32 [ %i.ab, %bb.d ], [ 255, %bb.e ], [ 255, %bb.f ], [ 255, %bb.g ], [ 255, %bb.h ], [ 255, %bb.c ], [ 255, %bb.c ] ; 3 uses
  %i.bj = mul nsw i32 %.093, %i.b
  %i.bk = mul nsw i32 %.092, %i.d
  %i.bl = mul nsw i32 %.091, %i.f
  %i.bm = add i32 %i.bj, 540672
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = ashr i32 %i.bo, 15
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 255)
  %i.bs = mul nsw i32 %.093, %i.h
  %i.bt = mul nsw i32 %.092, %i.j
  %i.bu = mul nsw i32 %.091, %i.l
  %i.bv = add i32 %i.bs, 4210688
  %i.bw = add i32 %i.bv, %i.bt
  %i.bx = add i32 %i.bw, %i.bu
  %i.by = ashr i32 %i.bx, 15
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 255)
  %i.cb = mul nsw i32 %.093, %i.n
  %i.cc = mul nsw i32 %.092, %i.p
  %i.cd = mul nsw i32 %.091, %i.r
  %i.ce = add i32 %i.cb, 4210688
  %i.cf = add i32 %i.ce, %i.cc
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = ashr i32 %i.cg, 15
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 255)
  %i.ck = shl nuw nsw i32 %i.ca, 8
  %i.cl = or disjoint i32 %i.ck, %i.br
  %i.cm = shl nuw nsw i32 %i.cj, 16
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = shl nuw i32 %.0, 24                     ; 4 uses
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !39
  switch i32 %i.w, label %bb.n [
    i32 26, label %bb.j
    i32 2, label %bb.j
    i32 25, label %bb.k
    i32 27, label %bb.l
    i32 71, label %bb.m
    i32 111, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.cr = shl nuw nsw i32 %.092, 8
  %i.cs = add nuw nsw i32 %i.cr, %.093
  %i.ct = shl nuw nsw i32 %.091, 16
  %i.cu = add nuw nsw i32 %i.cs, %i.ct
  %i.cv = add i32 %i.cu, %i.co
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.cw = shl nuw nsw i32 %.093, 8
  %i.cx = shl nuw nsw i32 %.092, 16
  %i.cy = shl i32 %.091, 24
  %i.cz = add nuw i32 %i.cx, %i.cw
  %i.da = or disjoint i32 %i.cz, %.0
  %i.db = add i32 %i.da, %i.cy
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.dc = shl nuw nsw i32 %.091, 8
  %i.dd = shl nuw nsw i32 %.092, 16
  %i.de = shl i32 %.093, 24
  %i.df = add i32 %i.dd, %i.de
  %i.dg = add i32 %i.df, %i.dc
  %i.dh = or disjoint i32 %i.dg, %.0
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.i
  %i.di = shl nuw nsw i32 %.091, 8
  %i.dj = shl nuw nsw i32 %.093, 16
  %i.dk = add nuw i32 %i.dj, %.092
  %i.dl = add i32 %i.dk, %i.di
  %i.dm = add i32 %i.dl, %i.co
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.dn = shl nuw nsw i32 %.092, 8
  %i.do = shl nuw nsw i32 %.093, 16
  %i.dp = add nuw i32 %i.dn, %i.do
  %i.dq = add i32 %i.dp, %.091
  %i.dr = add i32 %i.dq, %i.co
  br label %bb.o

end_hunk_0
