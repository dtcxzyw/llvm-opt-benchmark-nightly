Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/thp?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"thp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"THP\00", align 1
@ff_thp_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 96, i32 0, [4 x i8] zeroinitializer, ptr @thp_probe, ptr @thp_read_header, ptr @thp_read_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @thp_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load i32, ptr %i.b, align 1, !tbaa !11
  %.not = icmp eq i32 %i.c, 5261396
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 1, !tbaa !11
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = bitcast i32 %i.f to float                ; 3 uses
  %i.h = fpext nsz float %i.g to double
  %i.i = fcmp nsz olt double %i.h, 1.000000e-01
  %1 = fcmp nsz ogt float %i.g, 1.000000e+03
  %or.cond = or i1 %1, %i.i
  %2 = fcmp uno float %i.g, 0.000000e+00
  %or.cond7 = or i1 %2, %or.cond
  %spec.select = select i1 %or.cond7, i32 25, i32 100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @thp_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 23 uses
  %i.e = tail call i64 @avio_size(ptr noundef %i.d) #5
  %i.f = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 0 uses
  %i.g = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  store i32 %i.g, ptr %i.b, align 8, !tbaa !43
  %i.h = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 0 uses
  %i.i = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.l = bitcast i32 %i.k to float
  %i.m = fpext nsz float %i.l to double
  %i.n = tail call i64 @av_d2q(double noundef %i.m, i32 noundef 2147483647) #6 ; 3 uses
  store i64 %i.n, ptr %i.j, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = and i64 %i.n, 2147483648
  %.not = icmp eq i64 %i.s, 0
  %or.cond = and i1 %i.r, %.not
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !31
  %i.v = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 %i.e, ptr %i.y, align 8, !tbaa !48
  %i.z = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !49
  %i.ab = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 0 uses
  %i.ac = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !50
  %i.ae = tail call i32 @avio_rb32(ptr noundef %i.d) #5
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !51
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !32
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !33
  %i.al = load i32, ptr %i.aa, align 8, !tbaa !49
  %i.am = sext i32 %i.al to i64
  %i.an = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.am, i32 noundef 0) #5 ; 0 uses
  %i.ao = tail call i32 @avio_rb32(ptr noundef %i.d) #5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !52
  %i.aq = icmp ugt i32 %i.ao, 16
  br i1 %i.aq, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.as = tail call i32 @avio_read(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ar, i32 noundef 16) #5 ; 0 uses
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  switch i8 %i.ba, label %bb.l [
    i8 0, label %bb.e
    i8 1, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !53
  %.not99 = icmp eq ptr %i.bb, null
  br i1 %.not99, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.bc = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #5 ; 7 uses
  %.not100 = icmp eq ptr %i.bc, null
  br i1 %.not100, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %i.o, align 4, !tbaa !54
  %i.be = load i32, ptr %i.j, align 8, !tbaa !55
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.bc, i32 noundef 64, i32 noundef %i.bd, i32 noundef %i.be) #5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 3 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 100, ptr %i.bh, align 4, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !63
  %i.bj = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !64
  %i.bm = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 76
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !65
  %i.bp = load i64, ptr %i.j, align 8             ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bp to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.bp, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.bq = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.br = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.bs = fdiv nsz double %i.bq, %i.br
  %i.bt = fptosi double %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !66
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !31
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !68
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !69
  store i32 %i.ca, ptr %i.ay, align 4, !tbaa !37
  %i.cb = load i32, ptr %i.b, align 8, !tbaa !43
  %i.cc = icmp eq i32 %i.cb, 69632
  br i1 %i.cc, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.cd = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.ce = load i32, ptr %i.av, align 8, !tbaa !38
  %.not97 = icmp eq i32 %i.ce, 0
  br i1 %.not97, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.cf = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #5 ; 5 uses
  %.not98 = icmp eq ptr %i.cf, null
  br i1 %.not98, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 3 uses
  store i32 1, ptr %i.ch, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 69650, ptr %i.ci, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !63
  %i.ck = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 132
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !70
  %i.cn = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 152
  store i32 %i.cn, ptr %i.cp, align 8, !tbaa !66
  %i.cq = tail call i32 @avio_rb32(ptr noundef nonnull %i.d) #5
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !67
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 152
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !66
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.cf, i32 noundef 64, i32 noundef 1, i32 noundef %i.cv) #5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !69
  store i32 %i.cx, ptr %i.aw, align 8, !tbaa !39
  store i32 1, ptr %i.av, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.ap, align 4, !tbaa !52
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.l, %bb.e, %bb.i, %bb.c
end_hunk_0
