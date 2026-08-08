inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
@.str.9 = private unnamed_addr constant [47 x i8] c"                 (N is 8 or 12; default is 8)\0A\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"  -quality N     Compression quality (0..100; 5-95 is most useful range,\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"                 default is 75)\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"P6\0A%u %u\0A%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.jpeg_decompress_struct, align 8 ; 3 uses
  %3 = alloca %struct.jpeg_compress_struct, align 8 ; 21 uses
  %4 = alloca %struct.jpeg_error_mgr, align 8     ; 3 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 75, ptr %i.c, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 8, ptr %i.d, align 4, !tbaa !4
  %i.e = icmp slt i32 %0, 3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !8
  tail call fastcc void @usage(ptr noundef %i.f)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str) #12
  %.not.not = icmp eq i32 %i.i, 0                 ; 2 uses
  br i1 %.not.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.1) #12
  %.not46 = icmp eq i32 %i.j, 0
  br i1 %.not46, label %.lr.ph.preheader, label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !8
  tail call fastcc void @usage(ptr noundef %i.k)
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.04468 = phi i32 [ %i.an, %bb.s ], [ 2, %.lr.ph.preheader ] ; 5 uses
  %i.l = sext i32 %.04468 to i64                  ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %.not47 = icmp eq i8 %i.o, 45
  br i1 %.not47, label %bb.f, label %bb.t

bb.f:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.q = call i32 @strncasecmp(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.2, i64 noundef 1) #12
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %.04468, 1                   ; 3 uses
  %.not49 = icmp slt i32 %i.r, %0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.s)
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.v, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.d) #11
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %i.d, align 4, !tbaa !4
  %i.z = and i32 %i.y, -5
  %or.cond.not = icmp eq i32 %i.z, 8
  br i1 %or.cond.not, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.aa)
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.ab = call i32 @strncasecmp(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.4, i64 noundef 1) #12
  %.not50 = icmp eq i32 %i.ab, 0
  br i1 %.not50, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %.04468, 1                  ; 4 uses
  %.not51 = icmp slt i32 %i.ac, %0
  br i1 %.not51, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.ad)
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ag, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) #11
  %i.ai = icmp slt i32 %i.ah, 1
  %i.aj = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 100
  %or.cond5 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.al)
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.c, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.j, %bb.q, %bb.r, %bb.l
  %.1 = phi i32 [ %.04468, %bb.l ], [ %i.ac, %bb.r ], [ %i.ac, %bb.q ], [ %i.r, %bb.j ]
  %i.an = add nsw i32 %.1, 1                      ; 2 uses
  %i.ao = icmp slt i32 %i.an, %0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.s
  %i.ap = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.ap)
  unreachable

bb.t:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  br i1 %.not.not, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !4
  %i.as = load i32, ptr %i.d, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.at = call ptr @jpeg_std_error(ptr noundef nonnull %4) #11
  store ptr %i.at, ptr %3, align 8, !tbaa !14
  call void @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 80, i64 noundef 584) #11
  %i.au = call noalias ptr @fopen(ptr noundef nonnull readonly %i.n, ptr noundef nonnull @.str.12) ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 38, ptr %i.ax, align 8, !tbaa !32
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !37
  call void %i.ay(ptr noundef nonnull %3) #11, !inline_history !38
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef %i.au) #11
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  store <4 x i32> <i32 640, i32 480, i32 3, i32 2>, ptr %i.az, align 8, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i32 %i.as, ptr %i.bb, align 8, !tbaa !39
  call void @jpeg_set_defaults(ptr noundef nonnull %3) #11
  call void @jpeg_set_quality(ptr noundef nonnull %3, i32 noundef %i.ar, i32 noundef 1) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 1, ptr %i.be, align 4, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 1, ptr %i.bf, align 8, !tbaa !43
  call void @jpeg_start_compress(ptr noundef nonnull %3, i32 noundef 1) #11
  %i.bg = load i32, ptr %i.bb, align 8, !tbaa !39
  %i.bh = icmp eq i32 %i.bg, 12
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = call ptr %i.bl(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1920, i32 noundef 480) #11, !inline_history !38 ; 4 uses
  br i1 %i.bh, label %.preheader50.i.a, label %.preheader52.i

.preheader50.i.a:                                 ; preds = %bb.w, %middle.block
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %middle.block ], [ 0, %bb.w ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv70.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47
  %indvars.iv70.tr.i = trunc i64 %indvars.iv70.i to i32
  %i.bp = shl i32 %indvars.iv70.tr.i, 12
  %i.bq = udiv i32 %i.bp, 480                     ; 2 uses
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %i.bs = and i16 %i.br, 4095
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <8 x i16> poison, i16 %i.bs, i64 0
  %broadcast.splat125 = shufflevector <8 x i16> %broadcast.splatinsert124, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader50.i.a
  %index = phi i64 [ 0, %.preheader50.i.a ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader50.i.a ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %5 = shl <8 x i32> %vec.ind, splat (i32 12)
  %6 = udiv <8 x i32> %5, splat (i32 640)         ; 2 uses
  %7 = trunc nuw nsw <8 x i32> %6 to <8 x i16>
  %i.bt = mul nuw nsw i64 %index, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bt
  %8 = add nuw nsw <8 x i32> %6, %broadcast.splat
  %9 = trunc nuw nsw <8 x i32> %8 to <8 x i16>
  %i.bv = and <8 x i16> %9, splat (i16 4095)
  %i.bw = shufflevector <8 x i16> %7, <8 x i16> %broadcast.splat125, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = shufflevector <8 x i16> %i.bv, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.bw, <16 x i16> %i.bx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %i.bu, align 2, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.by = icmp eq i64 %index.next, 640
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next71.i, 480
  br i1 %exitcond73.not.i, label %.loopexit51.i, label %.preheader50.i.a, !llvm.loop !53

.preheader52.i:                                   ; preds = %bb.w, %bb.y
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv62.i ; 3 uses
  %indvars.iv62.tr.i = trunc i64 %indvars.iv62.i to i32
  %i.ca = shl i32 %indvars.iv62.tr.i, 8
  %i.cb = udiv i32 %i.ca, 480                     ; 2 uses
  %i.cc = trunc i32 %i.cb to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader52.i
  %indvars.iv.i = phi i64 [ 0, %.preheader52.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %10 = shl i32 %indvars.iv.tr.i, 8
  %11 = udiv i32 %10, 640                         ; 2 uses
  %i.cd = trunc nuw i32 %11 to i8
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !8
  %i.cf = mul nuw nsw i64 %indvars.iv.i, 3        ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !11
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !11
  %i.ck = add nuw nsw i32 %11, %i.cb
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %bb.y, label %bb.x, !llvm.loop !54

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next63.i, 480
  br i1 %exitcond65.not.i, label %.loopexit51.i, label %.preheader52.i, !llvm.loop !55

.loopexit51.i:                                    ; preds = %bb.y, %middle.block
  %.045.i = phi ptr [ %i.bm, %middle.block ], [ null, %bb.y ]
  %.044.i = phi ptr [ null, %middle.block ], [ %i.bm, %bb.y ]
  %i.cp = load i32, ptr %i.bb, align 8, !tbaa !39
  %i.cq = icmp eq i32 %i.cp, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 340 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !56 ; 3 uses
  %i.ct = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.cu = icmp ult i32 %i.cs, %i.ct               ; 2 uses
  br i1 %i.cq, label %.preheader.i, label %.preheader48.i

.preheader48.i:                                   ; preds = %.loopexit51.i
  br i1 %i.cu, label %.lr.ph.i, label %write_JPEG_file.exit

.preheader.i:                                     ; preds = %.loopexit51.i
  br i1 %i.cu, label %.lr.ph58.i, label %write_JPEG_file.exit

.lr.ph58.i:                                       ; preds = %.preheader.i, %.lr.ph58.i
  %i.cv = phi i32 [ %i.da, %.lr.ph58.i ], [ %i.cs, %.preheader.i ]
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.045.i, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !47
  store ptr %i.cy, ptr %i.b, align 8, !tbaa !47
  %i.cz = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef 1) #11 ; 0 uses
  %i.da = load i32, ptr %i.cr, align 4, !tbaa !56 ; 2 uses
  %i.db = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.dc = icmp ult i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph58.i, label %write_JPEG_file.exit, !llvm.loop !58

.lr.ph.i:                                         ; preds = %.preheader48.i, %.lr.ph.i
  %i.dd = phi i32 [ %i.di, %.lr.ph.i ], [ %i.cs, %.preheader48.i ]
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.044.i, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !8
  %i.dh = call i32 @jpeg_write_scanlines(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 1) #11 ; 0 uses
  %i.di = load i32, ptr %i.cr, align 4, !tbaa !56 ; 2 uses
  %i.dj = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.dk = icmp ult i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph.i, label %write_JPEG_file.exit, !llvm.loop !59

write_JPEG_file.exit:                             ; preds = %.lr.ph.i, %.lr.ph58.i, %.preheader48.i, %.preheader.i
  call void @jpeg_finish_compress(ptr noundef nonnull %3) #11
  %i.dl = call i32 @fclose(ptr noundef %i.au)     ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ac

bb.z:                                             ; preds = %bb.t
  %i.dm = sub nsw i32 %0, %.04468
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @usage(ptr noundef %i.do)
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dp = getelementptr i8, ptr %i.aq, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call fastcc void @do_read_JPEG_file(ptr noundef %2, ptr noundef nonnull %i.n, ptr noundef %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %write_JPEG_file.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.5, ptr noundef %0) #13 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef %0) #13 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.7, i64 37, i64 1, ptr %i.e) #14 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.8, i64 60, i64 1, ptr %i.g) #14 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.9, i64 46, i64 1, ptr %i.i) #14 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.10, i64 73, i64 1, ptr %i.k) #14 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %i.m) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #6

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #6

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @jpeg12_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @do_read_JPEG_file(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.my_error_mgr, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.13) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.d = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.14, ptr noundef %1) #13 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.12) ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.h = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.14, ptr noundef %2) #13 ; 0 uses
  %i.i = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = call ptr @jpeg_std_error(ptr noundef nonnull %3) #11
  store ptr %i.j, ptr %0, align 8, !tbaa !62
  store ptr @my_error_exit, ptr %3, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.l = call i32 @_setjmp(ptr noundef nonnull %i.k) #16
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @jpeg_destroy_decompress(ptr noundef nonnull %0) #11
  %i.m = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.n = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @jpeg_CreateDecompress(ptr noundef nonnull %0, i32 noundef 80, i64 noundef 656) #11
  call void @jpeg_stdio_src(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
end_hunk_0
