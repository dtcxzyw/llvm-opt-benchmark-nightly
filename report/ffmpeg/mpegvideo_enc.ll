Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 125
begin_hunk_0_@av_frame_ref

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @prepare_picture(ptr noundef %0, ptr noundef initializes((104, 112)) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.e = load <2 x i32>, ptr %i.c, align 8, !tbaa !54
  %i.f = add nsw <2 x i32> %i.e, splat (i32 32)
  store <2 x i32> %i.f, ptr %i.d, align 8, !tbaa !54
  %i.g = tail call i32 @ff_encode_alloc_frame(ptr noundef %i.b, ptr noundef %1) #14 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.k = tail call i32 @ff_mpv_pic_check_linesize(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #14 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54
  %i.p = shl nsw i32 %i.o, 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %1, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %.not.peel = icmp eq ptr %i.u, null
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.x = load i32, ptr %i.v, align 4, !tbaa !192
  %i.y = load i32, ptr %i.w, align 8, !tbaa !193
  %i.z = lshr i32 16, %i.y
  %i.aa = lshr i32 16, %i.x
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c, %.preheader
  %i.ab = load <2 x i32>, ptr %i.c, align 8, !tbaa !54
  store <2 x i32> %i.ab, ptr %i.d, align 8, !tbaa !54
  %i.ac = tail call i32 @av_frame_copy_props(ptr noundef nonnull %1, ptr noundef %2) #14
  %. = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 0)
  br label %bb.e

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %.peel.next ], [ %i.am, %bb.d ]
  %i.ae = phi ptr [ %i.t, %.peel.next ], [ %i.al, %bb.d ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %i.ah = mul nsw i32 %i.z, %i.ag
  %i.ai = add nsw i32 %i.aa, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !454

bb.e:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.035 = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.a ], [ %., %._crit_edge ]
  ret i32 %.035
}

declare i32 @ff_encode_alloc_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ff_mpv_pic_check_linesize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #0

declare void @av_frame_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ff_mpv_alloc_pic_accessories(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc i32 @estimate_best_b_count(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !153  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load i32, ptr %i.e, align 16, !tbaa !130
  %i.g = ashr i32 %i.f, %i.d                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131
  %i.j = ashr i32 %i.i, %i.d                      ; 4 uses
  %or.cond = icmp ult i32 %i.d, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.37, i32 noundef 1501) #14
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @av_packet_alloc() #14     ; 15 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !459
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10444
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10448
  %i.o = load i32, ptr %i.n, align 16, !tbaa !54  ; 2 uses
  %.not149 = icmp eq i32 %i.o, 0
  %spec.select = select i1 %.not149, i32 %i.m, i32 %i.o ; 3 uses
  %i.p = mul nsw i32 %spec.select, %spec.select
  %i.q = add nuw nsw i32 %i.p, 64
  %i.r = lshr i32 %i.q, 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9864 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102  ; 2 uses
  %i.u = icmp sgt i32 %i.t, -2
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.x = zext nneg i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10176 ; 4 uses
  %i.aa = ashr i32 %i.g, 1                        ; 4 uses
  %i.ab = ashr i32 %i.j, 1                        ; 4 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !187 ; 4 uses
  %.not154.peel = icmp eq ptr %i.ac, null
  br i1 %.not154.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !190 ; 4 uses
  %.sroa.0.0.copyload.peel = load ptr, ptr %i.ad, align 8
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.6.0.copyload.peel = load ptr, ptr %.sroa.6.0..sroa_idx.peel, align 8
  %.sroa.9.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.9.0.copyload.peel = load ptr, ptr %.sroa.9.0..sroa_idx.peel, align 8
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.af = load ptr, ptr %i.z, align 16, !tbaa !148 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !54
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.am = sext i32 %i.al to i64
  tail call void %i.ae(ptr noundef %i.ag, i64 noundef %i.aj, ptr noundef %.sroa.0.0.copyload.peel, i64 noundef %i.am, i32 noundef %i.g, i32 noundef %i.j) #14
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.ao = load ptr, ptr %i.z, align 16, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !190
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  %i.ax = sext i32 %i.aw to i64
  tail call void %i.an(ptr noundef %i.aq, i64 noundef %i.at, ptr noundef %.sroa.6.0.copyload.peel, i64 noundef %i.ax, i32 noundef %i.aa, i32 noundef %i.ab) #14
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.az = load ptr, ptr %i.z, align 16, !tbaa !148 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.be = sext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !190
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !54
  %i.bi = sext i32 %i.bh to i64
  tail call void %i.ay(ptr noundef %i.bb, i64 noundef %i.be, ptr noundef %.sroa.9.0.copyload.peel, i64 noundef %i.bi, i32 noundef %i.aa, i32 noundef %i.ab) #14
  %.pre = load i32, ptr %i.s, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.bj = phi i32 [ %.pre, %bb.e ], [ %i.t, %.lr.ph ] ; 2 uses
  %.not210.peel = icmp slt i32 %i.bj, 0
  br i1 %.not210.peel, label %.loopexit, label %.peel.next

.preheader195:                                    ; preds = %bb.h
  %i.bk = icmp slt i32 %i.dg, 0
  br i1 %i.bk, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader195
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10176 ; 2 uses
  %i.bo = zext nneg i32 %i.r to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  br label %bb.i

.peel.next:                                       ; preds = %bb.f, %bb.h
  %i.bs = phi i32 [ %i.dg, %bb.h ], [ %i.bj, %bb.f ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.f ] ; 4 uses
  %i.bt = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 9872
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !187 ; 5 uses
  %.not154 = icmp eq ptr %i.bv, null
  br i1 %.not154, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !190 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bw, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 132
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191
  %i.bz = icmp eq i32 %i.by, 0
  %.sroa.9.0.idx = select i1 %i.bz, i64 16, i64 0 ; 3 uses
  %.sroa.9.0 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload, i64 %.sroa.9.0.idx
  %.sroa.6.0 = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 %.sroa.9.0.idx
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.9.0.idx
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !148 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !90
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !54
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !54
  %i.cj = sext i32 %i.ci to i64
  tail call void %i.ca(ptr noundef %i.cd, i64 noundef %i.cg, ptr noundef %.sroa.0.0, i64 noundef %i.cj, i32 noundef %i.g, i32 noundef %i.j) #14
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !148 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !54
  %i.cq = sext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.bv, align 8, !tbaa !190
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !54
  %i.cu = sext i32 %i.ct to i64
  tail call void %i.ck(ptr noundef %i.cn, i64 noundef %i.cq, ptr noundef %.sroa.6.0, i64 noundef %i.cu, i32 noundef %i.aa, i32 noundef %i.ab) #14
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.cw = load ptr, ptr %i.cb, align 8, !tbaa !148 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !90
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !54
  %i.db = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bv, align 8, !tbaa !190
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !54
  %i.df = sext i32 %i.de to i64
  tail call void %i.cv(ptr noundef %i.cy, i64 noundef %i.db, ptr noundef %.sroa.9.0, i64 noundef %i.df, i32 noundef %i.aa, i32 noundef %i.ab) #14
  %.pre225 = load i32, ptr %i.s, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.next
  %i.dg = phi i32 [ %.pre225, %bb.g ], [ %i.bs, %.peel.next ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dh = sext i32 %i.dg to i64
  %.not210 = icmp sgt i64 %indvars.iv, %i.dh
  br i1 %.not210, label %.preheader195, label %.peel.next, !llvm.loop !455

bb.i:                                             ; preds = %.lr.ph209, %.thread188
  %indvars.iv222 = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next223, %.thread188 ] ; 6 uses
  %.0128207 = phi i32 [ -1, %.lr.ph209 ], [ %.1129, %.thread188 ] ; 13 uses
  %.0132206 = phi i64 [ 9223372036854775807, %.lr.ph209 ], [ %.1133, %.thread188 ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv222
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !187
  %.not151 = icmp eq ptr %i.dj, null
  br i1 %.not151, label %.thread183, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = call ptr @avcodec_alloc_context3(ptr noundef null) #14 ; 12 uses
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !460
  %.not152 = icmp eq ptr %i.dk, null
  br i1 %.not152, label %encode_frame.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  store i32 %i.g, ptr %i.dl, align 8, !tbaa !123
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 116
  store i32 %i.j, ptr %i.dm, align 4, !tbaa !124
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 64 ; 2 uses
  store i32 32770, ptr %i.dn, align 8, !tbaa !108
  %i.do = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !108
  %i.dr = and i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, 32770
  store i32 %i.ds, ptr %i.dn, align 8, !tbaa !108
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 284
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !122
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 284
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !122
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 244
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 244
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 252
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !159
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 252
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !159
  %i.eb = load <2 x i32>, ptr %i.dw, align 4, !tbaa !54
  store <2 x i32> %i.eb, ptr %i.dx, align 4, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 136
  store i32 0, ptr %i.ec, align 8, !tbaa !92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 84
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 84
  %i.ef = load i64, ptr %i.ee, align 4
  store i64 %i.ef, ptr %i.ed, align 4
  %i.eg = load i32, ptr %i.s, align 8, !tbaa !102
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 200
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !101
  %1 = load ptr, ptr %i.bm, align 8, !tbaa !56
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !103
  %i.ek = call i32 @avcodec_open2(ptr noundef nonnull %i.dk, ptr noundef %i.ej, ptr noundef null) #14 ; 3 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %encode_frame.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.em = load ptr, ptr %i.bn, align 16, !tbaa !148 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  store i32 1, ptr %i.en, align 8, !tbaa !198
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 160
  store i32 118, ptr %i.eo, align 8, !tbaa !233
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !460 ; 3 uses
  %i.eq = call i32 @avcodec_send_frame(ptr noundef %i.ep, ptr noundef %i.em) #14 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %encode_frame.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.es = call i32 @avcodec_receive_packet(ptr noundef %i.ep, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ev, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.es, %.preheader.i ], [ %i.ew, %.lr.ph.i ] ; 2 uses
  switch i32 %.lcssa.i, label %encode_frame.exit.thread [
    i32 -11, label %encode_frame.exit
    i32 -541478725, label %encode_frame.exit
  ]

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.023.i = phi i32 [ %i.ev, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.eu = load i32, ptr %i.bp, align 8, !tbaa !211
  %i.ev = add nsw i32 %i.eu, %.023.i              ; 2 uses
  call void @av_packet_unref(ptr noundef nonnull %i.k) #14
  %i.ew = call i32 @avcodec_receive_packet(ptr noundef %i.ep, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !456

encode_frame.exit:                                ; preds = %._crit_edge.i, %._crit_edge.i
  %i.ey = icmp slt i32 %.0.lcssa.i, 0
  br i1 %i.ey, label %encode_frame.exit.thread, label %.preheader

.preheader:                                       ; preds = %encode_frame.exit
  %i.ez = trunc i64 %indvars.iv222 to i32
  %i.fa = add i32 %i.ez, 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %encode_frame.exit166
  %indvars.iv219 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next220, %encode_frame.exit166 ] ; 4 uses
  %.0119 = phi i64 [ 0, %.preheader ], [ %i.gc, %encode_frame.exit166 ] ; 2 uses
  %i.fb = load i32, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %.not153 = icmp sgt i64 %indvars.iv219, %i.fc
  br i1 %.not153, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fd = trunc nuw nsw i64 %indvars.iv219 to i32
  %i.fe = urem i32 %i.fd, %i.fa
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = icmp eq i64 %indvars.iv222, %i.ff
  %i.fh = zext i32 %i.fb to i64
  %i.fi = icmp eq i64 %indvars.iv219, %i.fh
  %spec.select155 = or i1 %i.fi, %i.fg            ; 2 uses
  %i.fj = select i1 %spec.select155, i32 2, i32 3
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next220
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !148 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  store i32 %i.fj, ptr %i.fm, align 8, !tbaa !198
  %i.fn = select i1 %spec.select155, i32 %i.m, i32 %spec.select
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !233
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !460 ; 3 uses
  %i.fq = call i32 @avcodec_send_frame(ptr noundef %i.fp, ptr noundef %i.fl) #14 ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %encode_frame.exit.thread, label %.preheader.i158

.preheader.i158:                                  ; preds = %bb.n
  %i.fs = call i32 @avcodec_receive_packet(ptr noundef %i.fp, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, -1
  br i1 %i.ft, label %.lr.ph.i164, label %._crit_edge.i159

._crit_edge.i159:                                 ; preds = %.lr.ph.i164, %.preheader.i158
  %.0.lcssa.i160 = phi i32 [ 0, %.preheader.i158 ], [ %i.fv, %.lr.ph.i164 ] ; 3 uses
  %.lcssa.i161 = phi i32 [ %i.fs, %.preheader.i158 ], [ %i.fw, %.lr.ph.i164 ] ; 2 uses
  switch i32 %.lcssa.i161, label %encode_frame.exit.thread [
    i32 -11, label %encode_frame.exit166
    i32 -541478725, label %encode_frame.exit166
  ]

.lr.ph.i164:                                      ; preds = %.preheader.i158, %.lr.ph.i164
  %.023.i165 = phi i32 [ %i.fv, %.lr.ph.i164 ], [ 0, %.preheader.i158 ]
  %i.fu = load i32, ptr %i.bq, align 8, !tbaa !211
  %i.fv = add nsw i32 %i.fu, %.023.i165           ; 2 uses
  call void @av_packet_unref(ptr noundef nonnull %i.k) #14
  %i.fw = call i32 @avcodec_receive_packet(ptr noundef %i.fp, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  br i1 %i.fx, label %.lr.ph.i164, label %._crit_edge.i159, !llvm.loop !456

encode_frame.exit166:                             ; preds = %._crit_edge.i159, %._crit_edge.i159
  %i.fy = icmp sgt i32 %.0.lcssa.i160, -1
  %i.fz = zext nneg i32 %.0.lcssa.i160 to i64
  %i.ga = mul nuw nsw i64 %i.fz, %i.bo
  %i.gb = lshr i64 %i.ga, 4
  %i.gc = add i64 %i.gb, %.0119
  br i1 %i.fy, label %bb.m, label %encode_frame.exit.thread, !llvm.loop !457

.thread:                                          ; preds = %bb.m
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !460 ; 3 uses
  %i.ge = call i32 @avcodec_send_frame(ptr noundef %i.gd, ptr noundef null) #14 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %encode_frame.exit.thread, label %.preheader.i167

.preheader.i167:                                  ; preds = %.thread
  %i.gg = call i32 @avcodec_receive_packet(ptr noundef %i.gd, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %.lr.ph.i173, label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %.lr.ph.i173, %.preheader.i167
  %.0.lcssa.i169 = phi i32 [ 0, %.preheader.i167 ], [ %i.gj, %.lr.ph.i173 ] ; 3 uses
  %.lcssa.i170 = phi i32 [ %i.gg, %.preheader.i167 ], [ %i.gk, %.lr.ph.i173 ] ; 2 uses
  switch i32 %.lcssa.i170, label %encode_frame.exit.thread [
    i32 -11, label %encode_frame.exit175
    i32 -541478725, label %encode_frame.exit175
  ]

.lr.ph.i173:                                      ; preds = %.preheader.i167, %.lr.ph.i173
  %.023.i174 = phi i32 [ %i.gj, %.lr.ph.i173 ], [ 0, %.preheader.i167 ]
  %i.gi = load i32, ptr %i.br, align 8, !tbaa !211
  %i.gj = add nsw i32 %i.gi, %.023.i174           ; 2 uses
  call void @av_packet_unref(ptr noundef nonnull %i.k) #14
  %i.gk = call i32 @avcodec_receive_packet(ptr noundef %i.gd, ptr noundef nonnull %i.k) #14 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %.lr.ph.i173, label %._crit_edge.i168, !llvm.loop !456

encode_frame.exit175:                             ; preds = %._crit_edge.i168, %._crit_edge.i168
  %i.gm = icmp slt i32 %.0.lcssa.i169, 0
  br i1 %i.gm, label %encode_frame.exit.thread, label %bb.o

bb.o:                                             ; preds = %encode_frame.exit175
  %i.gn = zext nneg i32 %.0.lcssa.i169 to i64
  %i.go = mul nuw nsw i64 %i.gn, %i.bo
  %i.gp = lshr i64 %i.go, 4
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !460 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 576
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !154
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 584
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !154
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 592
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !154
  %i.gx = add i64 %i.gp, %.0119
  %i.gy = add i64 %i.gx, %i.gs
  %i.gz = add i64 %i.gy, %i.gu
  %i.ha = add i64 %i.gz, %i.gw                    ; 2 uses
  %i.hb = icmp slt i64 %i.ha, %.0132206
  %spec.select156 = call i64 @llvm.smin.i64(i64 %i.ha, i64 %.0132206)
  %i.hc = trunc nuw nsw i64 %indvars.iv222 to i32
  %spec.select157 = select i1 %i.hb, i32 %i.hc, i32 %.0128207
  br label %encode_frame.exit.thread

encode_frame.exit.thread:                         ; preds = %._crit_edge.i159, %bb.n, %encode_frame.exit166, %._crit_edge.i168, %.thread, %._crit_edge.i, %bb.l, %bb.o, %encode_frame.exit175, %encode_frame.exit, %bb.j, %bb.k
  %.1133 = phi i64 [ %.0132206, %bb.k ], [ %.0132206, %bb.j ], [ %.0132206, %encode_frame.exit ], [ %.0132206, %encode_frame.exit175 ], [ %spec.select156, %bb.o ], [ %.0132206, %._crit_edge.i168 ], [ %.0132206, %._crit_edge.i ], [ %.0132206, %bb.l ], [ %.0132206, %.thread ], [ %.0132206, %encode_frame.exit166 ], [ %.0132206, %bb.n ], [ %.0132206, %._crit_edge.i159 ]
  %.1129 = phi i32 [ %.0128207, %bb.k ], [ %.0128207, %bb.j ], [ %.0128207, %encode_frame.exit ], [ %.0128207, %encode_frame.exit175 ], [ %spec.select157, %bb.o ], [ %.0128207, %._crit_edge.i168 ], [ %.0128207, %._crit_edge.i ], [ %.0128207, %bb.l ], [ %.0128207, %.thread ], [ %.0128207, %encode_frame.exit166 ], [ %.0128207, %bb.n ], [ %.0128207, %._crit_edge.i159 ] ; 2 uses
  %.3 = phi i32 [ %i.ek, %bb.k ], [ -12, %bb.j ], [ %.0.lcssa.i, %encode_frame.exit ], [ %.0.lcssa.i169, %encode_frame.exit175 ], [ %i.ek, %bb.o ], [ %.lcssa.i170, %._crit_edge.i168 ], [ %.lcssa.i, %._crit_edge.i ], [ %i.eq, %bb.l ], [ %i.ge, %.thread ], [ %.lcssa.i161, %._crit_edge.i159 ], [ %i.fq, %bb.n ], [ %.0.lcssa.i160, %encode_frame.exit166 ] ; 2 uses
  call void @avcodec_free_context(ptr noundef nonnull %i.b) #14
  call void @av_packet_unref(ptr noundef nonnull %i.k) #14
  %i.hd = icmp slt i32 %.3, 0
  br i1 %i.hd, label %.thread183, label %.thread188

.thread188:                                       ; preds = %encode_frame.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1
  %i.he = load i32, ptr %i.s, align 8, !tbaa !102
  %i.hf = sext i32 %i.he to i64
  %.not150.not = icmp slt i64 %indvars.iv222, %i.hf
  br i1 %.not150.not, label %bb.i, label %.loopexit, !llvm.loop !458

.thread183:                                       ; preds = %bb.i, %encode_frame.exit.thread
  %.2130.ph = phi i32 [ %.0128207, %bb.i ], [ %.3, %encode_frame.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.thread188, %bb.f, %bb.d, %.preheader195, %.thread183
  %.3131 = phi i32 [ %.2130.ph, %.thread183 ], [ -1, %.preheader195 ], [ -1, %bb.f ], [ -1, %bb.d ], [ %.1129, %.thread188 ]
  call void @av_packet_free(ptr noundef nonnull %i.a) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %.loopexit
  %.0136 = phi i32 [ %.3131, %.loopexit ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0136
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #10

declare ptr @av_packet_alloc() local_unnamed_addr #0

declare ptr @avcodec_alloc_context3(ptr noundef) local_unnamed_addr #0

end_hunk_0
