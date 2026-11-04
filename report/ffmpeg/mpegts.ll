Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegts?download=true
inline.NumInlined: 193
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mpegts_probe:bb.a
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ac = urem i32 %i.ab, 188
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !104
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !104
  %i.ah = add nsw i32 %.02731.i, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.033.i, i32 %i.ag)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.i
  %.229.i = phi i32 [ %.02731.i, %.lr.ph.split.i ], [ %i.ah, %bb.c ], [ %.02731.i, %bb.b ] ; 2 uses
  %.3.i = phi i32 [ %.033.i, %.lr.ph.split.i ], [ %spec.select.i, %bb.c ], [ %.033.i, %bb.b ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count41.i
  br i1 %exitcond.not.i, label %analyze.exit, label %.lr.ph.split.i, !llvm.loop !4

analyze.exit:                                     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ai = mul nuw nsw i64 %indvars.iv, 192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.b, i8 0, i64 768, i1 false)
  %i.ak = mul nuw nsw i32 %i.l, 192
  %i.al = add nsw i32 %i.ak, -3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %wide.trip.count41.i70 = zext nneg i32 %i.al to i64
  br label %.lr.ph.split.i71

.lr.ph.split.i71:                                 ; preds = %bb.g, %analyze.exit
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i77, %bb.g ], [ 0, %analyze.exit ] ; 3 uses
  %.033.i73 = phi i32 [ %.3.i76, %bb.g ], [ 0, %analyze.exit ] ; 3 uses
  %.02731.i74 = phi i32 [ %.229.i75, %bb.g ], [ 0, %analyze.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i72 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = icmp eq i8 %i.ao, 71
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.i71
  %i.aq = load i16, ptr %i.am, align 1, !tbaa !17
  %i.ar = and i16 %i.aq, -225
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = and i8 %i.at, 48
  %i.av = icmp eq i16 %i.ar, -225
  %i.aw = icmp ne i8 %i.au, 0
  %or.cond3.i79 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond3.i79, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = trunc nuw nsw i64 %indvars.iv.i72 to i32
  %i.ay = urem i32 %i.ax, 192
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !104
  %i.bd = add nsw i32 %.02731.i74, 1
  %spec.select.i80 = tail call i32 @llvm.smax.i32(i32 %.033.i73, i32 %i.bc)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.split.i71
  %.229.i75 = phi i32 [ %.02731.i74, %.lr.ph.split.i71 ], [ %i.bd, %bb.f ], [ %.02731.i74, %bb.e ] ; 2 uses
  %.3.i76 = phi i32 [ %.033.i73, %.lr.ph.split.i71 ], [ %spec.select.i80, %bb.f ], [ %.033.i73, %bb.e ] ; 3 uses
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count41.i70
  br i1 %exitcond.not.i78, label %analyze.exit81.loopexit, label %.lr.ph.split.i71, !llvm.loop !4

analyze.exit81.loopexit:                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.be = mul nuw nsw i64 %indvars.iv, 204
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.be ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(816) %i.a, i8 0, i64 816, i1 false)
  %i.bg = mul nuw nsw i32 %i.l, 204
  %i.bh = add nsw i32 %i.bg, -3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %wide.trip.count41.i86 = zext nneg i32 %i.bh to i64
  br label %.lr.ph.split.i87

.lr.ph.split.i87:                                 ; preds = %bb.j, %analyze.exit81.loopexit
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i93, %bb.j ], [ 0, %analyze.exit81.loopexit ] ; 3 uses
  %.033.i89 = phi i32 [ %.3.i92, %bb.j ], [ 0, %analyze.exit81.loopexit ] ; 3 uses
  %.02731.i90 = phi i32 [ %.229.i91, %bb.j ], [ 0, %analyze.exit81.loopexit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv.i88 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = icmp eq i8 %i.bk, 71
  br i1 %i.bl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.i87
  %i.bm = load i16, ptr %i.bi, align 1, !tbaa !17
  %i.bn = and i16 %i.bm, -225
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = and i8 %i.bp, 48
  %i.br = icmp eq i16 %i.bn, -225
  %i.bs = icmp ne i8 %i.bq, 0
  %or.cond3.i95 = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond3.i95, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = trunc nuw nsw i64 %indvars.iv.i88 to i32
  %i.bu = urem i32 %i.bt, 204
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !104
  %i.by = add nsw i32 %i.bx, 1                    ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !104
  %i.bz = add nsw i32 %.02731.i90, 1
  %spec.select.i96 = tail call i32 @llvm.smax.i32(i32 %.033.i89, i32 %i.by)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.split.i87
  %.229.i91 = phi i32 [ %.02731.i90, %.lr.ph.split.i87 ], [ %i.bz, %bb.i ], [ %.02731.i90, %bb.h ] ; 2 uses
  %.3.i92 = phi i32 [ %.033.i89, %.lr.ph.split.i87 ], [ %spec.select.i96, %bb.i ], [ %.033.i89, %bb.h ] ; 3 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count41.i86
  br i1 %exitcond.not.i94, label %analyze.exit97.loopexit, label %.lr.ph.split.i87, !llvm.loop !4

analyze.exit97.loopexit:                          ; preds = %bb.j
  %.neg.i = mul i32 %.3.i, -10
  %i.ca = add i32 %.neg.i, %.229.i
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %i.cc = udiv i32 %i.cb, 10
  %i.cd = sub nsw i32 %.3.i, %i.cc
  %.neg.i68 = mul i32 %.3.i76, -10
  %i.ce = add i32 %.neg.i68, %.229.i75
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.cg = udiv i32 %i.cf, 10
  %i.ch = sub nsw i32 %.3.i76, %i.cg
  %.neg.i84 = mul i32 %.3.i92, -10
  %i.ci = add i32 %.neg.i84, %.229.i91
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = udiv i32 %i.cj, 10
  %i.cl = sub nsw i32 %.3.i92, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 %i.ch)
  %. = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cl) ; 2 uses
  %i.cn = add nsw i32 %., %.058102                ; 2 uses
  %i.co = tail call i32 @llvm.smax.i32(i32 %.059101, i32 %.) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 100 ; 2 uses
  %i.cp = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.cp, label %.lr.ph.i, label %._crit_edge, !llvm.loop !246

._crit_edge:                                      ; preds = %analyze.exit97.loopexit
  %i.cq = mul nsw i32 %i.cn, 10
  %i.cr = icmp sgt i32 %i.co, 69
  %i.cs = sdiv i32 %i.cq, %i.f
  %.fr = freeze i32 %i.cs                         ; 6 uses
  %i.ct = icmp sgt i32 %i.e, 2243
  %i.cu = icmp sgt i32 %.fr, 6                    ; 3 uses
  %or.cond = and i1 %i.ct, %i.cu
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cv = add nuw nsw i32 %.fr, 90
  br label %.thread121

bb.l:                                             ; preds = %._crit_edge
  %i.cw = icmp sgt i32 %i.e, 2039                 ; 3 uses
  %i.cx = icmp sgt i32 %.fr, 9
  %or.cond3 = and i1 %i.cw, %i.cx
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = add nuw nsw i32 %.fr, 90
  br label %.thread121

bb.n:                                             ; preds = %bb.l
  %or.cond5 = and i1 %i.cw, %i.cu
  br i1 %or.cond5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = add nuw nsw i32 %.fr, 40
  br label %.thread121

bb.p:                                             ; preds = %bb.n
  %or.cond7 = select i1 %i.cw, i1 %i.cr, i1 false
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = add nsw i32 %.fr, 40
  br label %.thread121

bb.r:                                             ; preds = %bb.p
  %spec.select = select i1 %i.cu, i32 2, i32 0
  br label %.thread121

.thread121:                                       ; preds = %bb.r, %bb.a, %bb.q, %bb.o, %bb.m, %bb.k
  %.060 = phi i32 [ %i.cv, %bb.k ], [ %i.cy, %bb.m ], [ %i.cz, %bb.o ], [ %i.da, %bb.q ], [ 0, %bb.a ], [ %spec.select, %bb.r ]
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mpegts_read_header(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [2 x i64], align 16                 ; 7 uses
  %i.a = alloca [188 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !249  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !164
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, 8192
  %. = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.l)
  %i.m = tail call i32 @ffio_ensure_seekback(ptr noundef %i.f, i64 noundef %.) #13
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.95) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = tail call i64 @avio_seek(ptr noundef %i.f, i64 noundef 0, i32 noundef 1) #13 ; 2 uses
  %i.p = tail call fastcc i32 @get_packet_size(ptr noundef nonnull %0) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !108
  %i.r = icmp slt i32 %i.p, 1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.96) #13
  store i32 188, ptr %i.q, align 8, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %0, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !250
  %i.w = icmp eq ptr %i.v, @ff_mpegts_demuxer
  br i1 %i.w, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i64 @avio_seek(ptr noundef %i.f, i64 noundef %i.o, i32 noundef 0) #13
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %seek_back.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !251
  %i.ab = and i32 %i.aa, 1
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i32 32, i32 16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef %i.ac, ptr noundef nonnull @.str.101) #13
  br label %seek_back.exit

seek_back.exit:                                   ; preds = %bb.f, %bb.g
  %i.ad = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i88 = icmp eq ptr %i.ad, null
  br i1 %.not.i88, label %mpegts_open_section_filter.exit, label %bb.h

bb.h:                                             ; preds = %seek_back.exit
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 17, i32 noundef 1) #13
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8464 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i = icmp eq ptr %i.ah, null
  br i1 %.not20.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @av_free(ptr noundef nonnull %i.ad) #13
  br label %mpegts_open_section_filter.exit

bb.k:                                             ; preds = %bb.i
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 1, ptr %i.ai, align 4, !tbaa !65
  store i32 17, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 -1, ptr %i.aj, align 4, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 -1, ptr %i.ak, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 -1, ptr %i.al, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr @sdt_cb, ptr %i.am, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.d, ptr %i.an, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.ad, ptr %i.ao, align 8, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 -1, ptr %i.as, align 8, !tbaa !73
  br label %mpegts_open_section_filter.exit

mpegts_open_section_filter.exit:                  ; preds = %seek_back.exit, %bb.j, %bb.k
  %i.at = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i89 = icmp eq ptr %i.at, null
  br i1 %.not.i89, label %mpegts_open_section_filter.exit93, label %bb.l

bb.l:                                             ; preds = %mpegts_open_section_filter.exit
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 1) #13
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8328 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  %.not.i.i90 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i90, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i92 = icmp eq ptr %i.ax, null
  br i1 %.not20.i.i92, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @av_free(ptr noundef nonnull %i.at) #13
  br label %mpegts_open_section_filter.exit93

bb.o:                                             ; preds = %bb.m
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 1, ptr %i.ay, align 4, !tbaa !65
  store i32 0, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 -1, ptr %i.az, align 4, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 -1, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 -1, ptr %i.bb, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr @pat_cb, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %i.d, ptr %i.bd, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.at, ptr %i.be, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = or i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 -1, ptr %i.bi, align 8, !tbaa !73
  br label %mpegts_open_section_filter.exit93

mpegts_open_section_filter.exit93:                ; preds = %mpegts_open_section_filter.exit, %bb.n, %bb.o
  %i.bj = tail call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i94 = icmp eq ptr %i.bj, null
  br i1 %.not.i94, label %mpegts_open_section_filter.exit98, label %bb.p

bb.p:                                             ; preds = %mpegts_open_section_filter.exit93
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bk, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef 18, i32 noundef 1) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8472 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  %.not.i.i95 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i95, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i97 = icmp eq ptr %i.bn, null
  br i1 %.not20.i.i97, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @av_free(ptr noundef nonnull %i.bj) #13
  br label %mpegts_open_section_filter.exit98

bb.s:                                             ; preds = %bb.q
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 1, ptr %i.bo, align 4, !tbaa !65
  store i32 18, ptr %i.bn, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 -1, ptr %i.bp, align 4, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 -1, ptr %i.bq, align 8, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 -1, ptr %i.br, align 8, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store ptr @eit_cb, ptr %i.bs, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store ptr %i.d, ptr %i.bt, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store ptr %i.bj, ptr %i.bu, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 -1, ptr %i.by, align 8, !tbaa !73
  br label %mpegts_open_section_filter.exit98

mpegts_open_section_filter.exit98:                ; preds = %mpegts_open_section_filter.exit93, %bb.r, %bb.s
  %i.bz = load i32, ptr %i.q, align 8, !tbaa !108
  %i.ca = sext i32 %i.bz to i64
  %i.cb = sdiv i64 %i.h, %i.ca
  %i.cc = tail call fastcc i32 @handle_packets(ptr noundef nonnull %i.d, i64 noundef %i.cb) ; 0 uses
  store i32 1, ptr %i.t, align 8, !tbaa !110
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cd, i32 noundef 56, ptr noundef nonnull @.str.97) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !159
  %i.cg = or i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !159
  br label %bb.af

bb.t:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ch = tail call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #13 ; 4 uses
  %.not = icmp eq ptr %i.ch, null
  br i1 %.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.ch, i32 noundef 60, i32 noundef 1, i32 noundef 27000000) #13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  store i32 2, ptr %i.cj, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 131072, ptr %i.ck, align 4, !tbaa !30
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !108
  %i.cm = call fastcc i32 @read_packet(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.cl, ptr noundef %i.b) ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %finished_reading_packet.exit103
  %.075124 = phi i32 [ 0, %.lr.ph ], [ %.1, %finished_reading_packet.exit103 ] ; 4 uses
  %.076122 = phi i32 [ 0, %.lr.ph ], [ %i.eo, %finished_reading_packet.exit103 ] ; 2 uses
  %.077121 = phi i32 [ -1, %.lr.ph ], [ %.178, %finished_reading_packet.exit103 ] ; 4 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !16  ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !17
  %i.cr = and i16 %i.cq, -225
  %i.cs = call i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext nneg i16 %i.cs to i32              ; 3 uses
  %i.cu = icmp eq i32 %.077121, -1
  %i.cv = icmp eq i32 %.077121, %i.ct
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %bb.w, label %parse_pcr.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = and i8 %i.cx, 32
  %.not.not.i = icmp eq i8 %i.cy, 0
  br i1 %.not.not.i, label %parse_pcr.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17  ; 2 uses
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %parse_pcr.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = and i8 %i.dd, 16
  %.not.i99 = icmp eq i8 %i.de, 0
  %i.df = icmp ult i8 %i.da, 7
  %or.cond.i = or i1 %i.df, %.not.i99
  br i1 %or.cond.i, label %parse_pcr.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.dh = load i32, ptr %i.dg, align 1, !tbaa !17
  %i.di = call i32 @llvm.bswap.i32(i32 %i.dh)
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17  ; 2 uses
  %i.dn = lshr i8 %i.dm, 7
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = or disjoint i64 %i.dk, %i.do
  %i.dq = and i8 %i.dm, 1
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = zext i8 %i.du to i64
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = load i32, ptr %i.q, align 8, !tbaa !108 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 192
  %i.dz = add nsw i32 %i.dx, -188
  %.0.i101 = select i1 %i.dy, i32 0, i32 %i.dz    ; 2 uses
  %i.ea = icmp sgt i32 %.0.i101, 0
  br i1 %i.ea, label %bb.aa, label %finished_reading_packet.exit

bb.aa:                                            ; preds = %bb.z
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.eb = zext nneg i32 %.0.i101 to i64
  %i.ec = call i64 @avio_skip(ptr noundef %.val87, i64 noundef %i.eb) #13 ; 0 uses
  br label %finished_reading_packet.exit

finished_reading_packet.exit:                     ; preds = %bb.z, %bb.aa
  %i.ed = mul nuw nsw i64 %i.dp, 300
  %i.ee = add nuw nsw i64 %i.dw, %i.ed
  %3 = zext nneg i32 %.075124 to i64
  %4 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  store i64 %i.ee, ptr %4, align 8, !tbaa !77
  %5 = icmp sgt i32 %.075124, 0
  br i1 %5, label %bb.ab, label %finished_reading_packet.exit103

bb.ab:                                            ; preds = %finished_reading_packet.exit
  %6 = load i64, ptr %2, align 8, !tbaa !77       ; 3 uses
  %7 = load i64, ptr %1, align 16, !tbaa !77      ; 4 uses
  %i.ef = sub nsw i64 %6, %7                      ; 5 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load ptr, ptr %i.s, align 8, !tbaa !64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eh, i32 noundef 24, ptr noundef nonnull @.str.98, i64 noundef %7, i64 noundef %6) #13
  store i64 %6, ptr %1, align 16, !tbaa !77
  br label %finished_reading_packet.exit103

parse_pcr.exit.thread:                            ; preds = %bb.y, %bb.w, %bb.x, %bb.v
  %i.ei = load i32, ptr %i.q, align 8, !tbaa !108 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 192
  %i.ek = add nsw i32 %i.ei, -188
  %.0.i102 = select i1 %i.ej, i32 0, i32 %i.ek    ; 2 uses
  %i.el = icmp sgt i32 %.0.i102, 0
  br i1 %i.el, label %bb.ad, label %finished_reading_packet.exit103

bb.ad:                                            ; preds = %parse_pcr.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.em = zext nneg i32 %.0.i102 to i64
  %i.en = call i64 @avio_skip(ptr noundef %.val, i64 noundef %i.em) #13 ; 0 uses
  br label %finished_reading_packet.exit103

finished_reading_packet.exit103:                  ; preds = %bb.ad, %parse_pcr.exit.thread, %finished_reading_packet.exit, %bb.ac
  %.178 = phi i32 [ %i.ct, %bb.ac ], [ %i.ct, %finished_reading_packet.exit ], [ %.077121, %parse_pcr.exit.thread ], [ %.077121, %bb.ad ]
  %.1 = phi i32 [ 1, %bb.ac ], [ 1, %finished_reading_packet.exit ], [ %.075124, %parse_pcr.exit.thread ], [ %.075124, %bb.ad ]
  %i.eo = add nuw nsw i32 %.076122, 1
  %i.ep = load i32, ptr %i.q, align 8, !tbaa !108
  %i.eq = call fastcc i32 @read_packet(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.ep, ptr noundef %i.b) ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.thread, label %bb.v

.thread:                                          ; preds = %finished_reading_packet.exit103, %bb.u, %bb.t
  %.079.ph = phi i32 [ -12, %bb.t ], [ %i.cm, %bb.u ], [ %i.eq, %finished_reading_packet.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %seek_back.exit105

bb.ae:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.ef, ptr %i.es, align 8, !tbaa !165
  %i.et = add nsw i32 %.076122, -1
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul nsw i64 %i.ef, %i.eu
  %i.ew = sub nsw i64 %7, %i.ev                   ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !166
  %i.ey = udiv i64 40608000000, %i.ef             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !252
  %i.fa = load ptr, ptr %i.ci, align 8, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store i64 %i.ey, ptr %i.fb, align 8, !tbaa !253
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i64 %i.ew, ptr %i.fc, align 8, !tbaa !254
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.fe = sitofp nsz i64 %i.ew to double
  %i.ff = sitofp nsz i64 %7 to double
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ff, i64 1
  %i.fi = fdiv nsz <2 x double> %i.fh, <double 1.000000e+06, double 2.700000e+07> ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  %i.fk = extractelement <2 x double> %i.fi, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fd, i32 noundef 56, ptr noundef nonnull @.str.99, double noundef %i.fj, double noundef %i.fk, i64 noundef %i.ef) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %mpegts_open_section_filter.exit98
  %i.fl = call i64 @avio_seek(ptr noundef %i.f, i64 noundef %i.o, i32 noundef 0) #13
  %i.fm = icmp slt i64 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %seek_back.exit105

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !251
  %i.fp = and i32 %i.fo, 1
  %.not.i104 = icmp eq i32 %i.fp, 0
  %i.fq = select i1 %.not.i104, i32 32, i32 16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef %i.fq, ptr noundef nonnull @.str.101) #13
  br label %seek_back.exit105

seek_back.exit105:                                ; preds = %bb.ag, %bb.af, %.thread
  %.180 = phi i32 [ %.079.ph, %.thread ], [ 0, %bb.af ], [ 0, %bb.ag ]
  ret i32 %.180
}

; Function Attrs: nounwind uwtable
define internal range(i32 189, 188) i32 @mpegts_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((32, 36)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 -1, ptr %i.c, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !139
  %i.e = tail call fastcc i32 @handle_packets(ptr noundef %i.b, i64 noundef 0) ; 4 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !139
  tail call void @av_packet_unref(ptr noundef %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8328
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !65
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !148
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !167
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = tail call fastcc i32 @new_pes_packet(ptr noundef nonnull %i.o, ptr noundef %1) ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread47, label %.thread44

.thread44:                                        ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 4, ptr %i.x, align 8, !tbaa !148
  br label %bb.i

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192
  br i1 %exitcond.not, label %.thread47, label %bb.c, !llvm.loop !255

bb.h:                                             ; preds = %bb.a
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %bb.i, label %.thread47

bb.i:                                             ; preds = %.thread44, %bb.h
  %i.y = load i32, ptr %i.c, align 8, !tbaa !141
  %i.z = icmp slt i32 %i.y, 0
  %spec.select = select i1 %i.z, i32 -1094995529, i32 0
  br label %.thread47

.thread47:                                        ; preds = %.thread, %bb.g, %bb.i, %bb.h
  %.331 = phi i32 [ %i.v, %bb.g ], [ %i.e, %bb.h ], [ %spec.select, %bb.i ], [ %i.e, %.thread ]
  ret i32 %.331
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mpegts_read_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call fastcc void @mpegts_free(ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @mpegts_get_dts(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !108
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = srem i64 %i.e, %i.h                      ; 2 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !77
  %i.k = xor i64 %i.i, -1
  %i.l = add nsw i64 %i.k, %i.h
  %i.m = add i64 %i.l, %i.j
  %.fr = freeze i64 %i.m                          ; 2 uses
  %i.n = srem i64 %.fr, %i.h
  %i.o = sub nsw i64 %.fr, %i.n
  %i.p = add nsw i64 %i.o, %i.i                   ; 2 uses
  tail call void @ff_read_frame_flush(ptr noundef %0) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !163
  %i.s = tail call i64 @avio_seek(ptr noundef %i.r, i64 noundef %i.p, i32 noundef 0) #13
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call ptr @av_packet_alloc() #13     ; 7 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !257
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.v = icmp slt i64 %i.p, %3
  br i1 %i.v, label %.lr.ph, label %.thread.sink.split

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 36 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.aa = tail call i32 @av_read_frame(ptr noundef %0, ptr noundef nonnull %i.u) #13
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !168
  %.not27 = icmp ne i64 %i.ac, -9223372036854775808
  %.pre = load i64, ptr %i.x, align 8, !tbaa !169 ; 2 uses
  %i.ad = icmp sgt i64 %.pre, -1
  %or.cond = select i1 %.not27, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !142
  tail call void @ff_reduce_index(ptr noundef %0, i32 noundef %i.ae) #13
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !142
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !169
  %i.al = load i64, ptr %i.w, align 8, !tbaa !168
  %i.am = tail call i32 @av_add_index_entry(ptr noundef %i.aj, i64 noundef %i.ak, i64 noundef %i.al, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  %i.an = load i32, ptr %i.y, align 4, !tbaa !142
  %i.ao = icmp eq i32 %i.an, %1
  %.pre33 = load i64, ptr %i.x, align 8, !tbaa !169 ; 4 uses
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %2, align 8, !tbaa !77
  %.not28 = icmp slt i64 %.pre33, %i.ap
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !168
  store i64 %.pre33, ptr %2, align 8, !tbaa !77
  br label %.thread.sink.split

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.ar = phi i64 [ %.pre, %bb.d ], [ %.pre33, %bb.e ], [ %.pre33, %bb.f ]
  tail call void @av_packet_unref(ptr noundef nonnull %i.u) #13
  %i.as = icmp slt i64 %i.ar, %3
  br i1 %i.as, label %bb.c, label %.thread.sink.split, !llvm.loop !256

.thread.sink.split:                               ; preds = %bb.h, %bb.c, %.preheader, %bb.g
  %.2.ph = phi i64 [ -9223372036854775808, %.preheader ], [ %i.aq, %bb.g ], [ -9223372036854775808, %bb.c ], [ -9223372036854775808, %bb.h ]
  call void @av_packet_free(ptr noundef nonnull %i.a) #13
  br label %.thread
end_hunk_0
