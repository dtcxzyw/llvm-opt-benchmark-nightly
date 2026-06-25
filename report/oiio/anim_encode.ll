inline.NumInlined: 118
inline.NumDeleted: 43
begin_hunk_0_@WebPAnimEncoderAdd:bb.a
  %.val108.i = load i64, ptr %i.cb, align 8, !tbaa !84
  %i.cc = getelementptr i8, ptr %i.bd, i64 56
  %.val109.i = load i64, ptr %i.cc, align 8, !tbaa !85
  %i.cd = sub i64 %.val109.i, %.val108.i          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !34
  %.not95.i = icmp sgt i64 %i.cd, %i.cf           ; 2 uses
  br i1 %.not95.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !35 ; 2 uses
  %.not96.i = icmp eq i32 %i.ch, -1
  br i1 %.not96.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = sext i32 %i.ch to i64
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !39
  %.val105.i = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.cj = getelementptr [104 x i8], ptr %.val.i, i64 %.val105.i
  %i.ck = getelementptr [104 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  store i32 0, ptr %i.cl, align 8, !tbaa !78
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 1, ptr %i.cm, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 1, ptr %i.cn, align 8, !tbaa !83
  %i.co = trunc i64 %i.az to i32
  store i32 %i.co, ptr %i.cg, align 8, !tbaa !35
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.cq = add i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !81
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 0, ptr %i.cs, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.ct, align 8, !tbaa !83
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cu = load i32, ptr %i.bl, align 4, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !36
  %.not97.i = icmp slt i32 %i.cu, %i.cw
  br i1 %.not97.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.cy = add i64 %i.cx, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !81
  store i32 0, ptr %i.bl, align 4, !tbaa !82
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 -1, ptr %i.da, align 8, !tbaa !35
  store i64 4294967296, ptr %i.ce, align 8, !tbaa !34
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not95.i, label %bb.au, label %.thread.i

bb.au:                                            ; preds = %bb.at
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.bz, align 4
  br label %.thread.i

.thread134.i:                                     ; preds = %bb.ak, %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !86
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !86
  br label %.thread117.i

.thread.i:                                        ; preds = %bb.at, %bb.au, %bb.ai, %bb.ae
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @WebPCopyPixels(ptr noundef %i.de, ptr noundef nonnull %i.df) #14
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %.pre.i = load i32, ptr %i.a, align 4
  %i.dg = icmp eq i32 %.pre.i, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !86
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !86
  br i1 %i.dg, label %CacheFrame.exit.thread, label %.thread117.i

.thread117.i:                                     ; preds = %bb.aj, %bb.al, %.thread.i, %.thread134.i, %bb.ag, %bb.ad
  %i.dk = phi i1 [ false, %.thread.i ], [ true, %bb.ad ], [ true, %bb.ag ], [ false, %.thread134.i ], [ true, %bb.al ], [ true, %bb.aj ]
  %.3122.i = phi i32 [ 0, %.thread.i ], [ %i.bg, %bb.ad ], [ %i.bq, %bb.ag ], [ 0, %.thread134.i ], [ %i.bx, %bb.aj ], [ %i.ca, %bb.al ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %FrameRelease.exit.i, label %bb.av

bb.av:                                            ; preds = %.thread117.i
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.dl) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !55
  call void @WebPFree(ptr noundef %i.dn) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bd, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit.i

FrameRelease.exit.i:                              ; preds = %bb.av, %.thread117.i
  %i.do = load i64, ptr %i.ay, align 8, !tbaa !67
  %i.dp = add i64 %i.do, -1
  store i64 %i.dp, ptr %i.ay, align 8, !tbaa !67
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !41
  %.not103.i = icmp eq i32 %i.dq, 0
  br i1 %.not103.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %FrameRelease.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !82
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !82
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %FrameRelease.exit.i
  br i1 %i.dk, label %CacheFrame.exit, label %CacheFrame.exit.thread

CacheFrame.exit:                                  ; preds = %bb.ax
  %i.du = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %.3122.i) #14 ; 0 uses
  %i.dv = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  store i32 %.3122.i, ptr %i.dw, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.aq, align 8, !tbaa !75
  store i32 1, ptr %i.ar, align 8, !tbaa !33
  br label %.critedge

CacheFrame.exit.thread:                           ; preds = %bb.ax, %.thread.i
  %.3122.i.sink = phi i32 [ 0, %.thread.i ], [ %.3122.i, %bb.ax ]
  %i.dx = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 136
  store i32 %.3122.i.sink, ptr %i.dy, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.dz = call fastcc i32 @FlushFrames(ptr noundef %0)
  %.not68 = icmp eq i32 %i.dz, 0
  store ptr null, ptr %i.aq, align 8, !tbaa !75
  store i32 1, ptr %i.ar, align 8, !tbaa !33
  br i1 %.not68, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %CacheFrame.exit.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i32 %2, ptr %i.ea, align 4, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %CacheFrame.exit, %bb.f, %bb.g, %bb.i, %CacheFrame.exit.thread, %bb.ay, %bb.a, %bb.z, %bb.w, %bb.t, %bb.o, %bb.l
  %.1 = phi i32 [ 0, %CacheFrame.exit.thread ], [ 1, %bb.l ], [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.t ], [ 1, %bb.ay ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %CacheFrame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @IncreasePreviousDuration(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  %2 = alloca %struct.WebPData, align 8           ; 7 uses
  %i.b = alloca [72 x i8], align 16               ; 5 uses
  %3 = alloca %struct.WebPData, align 8           ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %0, i64 1088
  %.val36 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %0, i64 1104
  %.val37 = load i64, ptr %i.f, align 8, !tbaa !77
  %i.g = getelementptr [104 x i8], ptr %.val36, i64 %.val37
  %i.h = getelementptr [104 x i8], ptr %i.g, i64 %i.d ; 13 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -80      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 16777215
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @__const.IncreasePreviousDuration.lossless_1x1_bytes, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %i.m, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull align 16 dereferenceable(72) @__const.IncreasePreviousDuration.lossy_1x1_bytes, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %3, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 72, ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !90
  %.not33 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not33, ptr %3, ptr %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %. = phi ptr [ %2, %bb.b ], [ %i.s, %bb.c ]     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 3, ptr %i.u, align 4, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %1, ptr %i.z, align 8, !tbaa !87
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %., i64 8 ; 2 uses
  %5 = load i64, ptr %4, align 8, !tbaa !88       ; 2 uses
  %.not18.i = icmp eq i64 %5, 0
  br i1 %.not18.i, label %bb.f, label %6

6:                                                ; preds = %bb.e
  %7 = call ptr @WebPMalloc(i64 noundef %5) #14   ; 3 uses
  store ptr %7, ptr %i.h, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.critedge, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %., align 8, !tbaa !55
  %11 = load i64, ptr %4, align 8, !tbaa !88      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %10, i64 %11, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %11, ptr %12, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %9, %bb.e
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !82
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.ah, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) @__const.IncreasePreviousDuration.rect, i64 16, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.i, align 8, !tbaa !87
  %i.aj = getelementptr i8, ptr %i.h, i64 -32
  store i32 %i.k, ptr %i.aj, align 8, !tbaa !97
  br label %bb.h

.critedge:                                        ; preds = %6, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @FlushFrames(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.EncodedFrame, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  %.not47 = icmp eq i64 %i.b, 0
  br i1 %.not47, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1088
  %i.d = getelementptr i8, ptr %0, i64 1104       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.val44.pre = load i64, ptr %i.d, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.val44 = phi i64 [ %.val44.pre, %.lr.ph ], [ %i.am, %bb.h ]
  %.val = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.i = getelementptr [104 x i8], ptr %.val, i64 %.val44 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %.not40 = icmp eq i32 %i.k, 0
  %.idx = select i1 %.not40, i64 0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 5 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.n = tail call i32 @WebPMuxPushFrame(ptr noundef %i.m, ptr noundef %i.l, i32 noundef 1) #14 ; 2 uses
  %.not41.not = icmp eq i32 %i.n, 1
  br i1 %.not41.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %i.n) #14 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.f, align 8, !tbaa !71
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !101
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.14, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !102
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %FrameRelease.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.ad) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.af) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit

FrameRelease.exit:                                ; preds = %bb.e, %bb.f
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !81
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !81
  %i.ai = load <2 x i64>, ptr %i.d, align 8, !tbaa !103
  %i.aj = add <2 x i64> %i.ai, <i64 1, i64 -1>    ; 3 uses
  store <2 x i64> %i.aj, ptr %i.d, align 8, !tbaa !103
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %.not43 = icmp eq i32 %i.ak, -1
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %FrameRelease.exit
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.h, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %FrameRelease.exit, %bb.g
  %.not = icmp eq i64 %i.ah, 0
  %i.am = extractelement <2 x i64> %i.aj, i64 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.an = extractelement <2 x i64> %i.aj, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.ao = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.an, %._crit_edge.loopexit ]
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %.not39 = icmp eq i64 %i.ar, 0
  br i1 %.not39, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.at, i64 104, i1 false), !tbaa.struct !104
  %sext = shl i64 %i.ar, 32
  %i.au = ashr exact i64 %sext, 32                ; 3 uses
  %i.av = getelementptr inbounds [104 x i8], ptr %i.at, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.av, i64 104, i1 false), !tbaa.struct !104
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.ax = getelementptr inbounds [104 x i8], ptr %i.aw, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !104
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ay, null
  br i1 %.not.i45, label %FrameRelease.exit46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds [104 x i8], ptr %i.ay, i64 %i.au ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.ba) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %i.bc) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit46

FrameRelease.exit46:                              ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.aq, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge, %bb.i, %FrameRelease.exit46
  %.2 = phi i32 [ 0, %.thread ], [ 1, %FrameRelease.exit46 ], [ 1, %bb.i ], [ 1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @WebPPictureYUVAToARGB(ptr noundef) local_unnamed_addr #3

declare i32 @WebPValidateConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPAnimEncoderAssemble(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6) #14 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !86   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #14 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %.not = icmp ne i32 %i.j, 0
  %.not44 = icmp eq i64 %i.f, 1
end_hunk_0
