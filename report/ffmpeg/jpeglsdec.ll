Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeglsdec?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_jpegls_decode_lse:bb.a
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 992
  store i32 %i.ab, ptr %i.ac, align 16, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 7 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !14
  %i.ae = load i16, ptr %i.y, align 1, !tbaa !15
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 996
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 9 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !14
  %i.aj = load i16, ptr %i.ad, align 1, !tbaa !15
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i32 %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  store ptr %i.an, ptr %i.a, align 8, !tbaa !14
  %i.ao = load i16, ptr %i.ai, align 1, !tbaa !15
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1004
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 524
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37
  %i.aw = and i32 %i.av, 1
  %.not110 = icmp eq i32 %i.aw, 0
  br i1 %.not110, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.at, i32 noundef 48, ptr noundef nonnull @.str, i32 noundef %i.w, i32 noundef %i.ab, i32 noundef %i.ag, i32 noundef %i.al, i32 noundef %i.aq) #9
  br label %bb.ae

bb.f:                                             ; preds = %bytestream2_get_byte.exit118
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i32 0, ptr %i.ax, align 16, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bytestream2_get_byte.exit118
  %i.ay = ptrtoint ptr %i.p to i64
  %i.az = sub i64 %i.e, %i.ay
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bytestream2_get_byte.exit116, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !14
  %i.bc = load i8, ptr %i.p, align 1, !tbaa !15
  %i.bd = zext i8 %i.bc to i32
  %.pre138 = ptrtoint ptr %i.bb to i64
  br label %bytestream2_get_byte.exit116

bytestream2_get_byte.exit116:                     ; preds = %bb.g, %bb.h
  %.pre-phi139 = phi i64 [ %.pre138, %bb.h ], [ %i.e, %bb.g ]
  %i.be = phi ptr [ %i.bb, %bb.h ], [ %i.c, %bb.g ] ; 2 uses
  %.0.i115 = phi i32 [ %i.bd, %bb.h ], [ 0, %bb.g ]
  %i.bf = sub i64 %i.e, %.pre-phi139
  %i.bg = icmp slt i64 %i.bf, 1
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bytestream2_get_byte.exit116
  store ptr %i.c, ptr %i.a, align 8, !tbaa !13
  br label %bytestream2_get_byte.exit114

bb.j:                                             ; preds = %bytestream2_get_byte.exit116
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !14
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bj = zext i8 %i.bi to i32
  br label %bytestream2_get_byte.exit114

bytestream2_get_byte.exit114:                     ; preds = %bb.i, %bb.j
  %.0.i113 = phi i32 [ 0, %bb.i ], [ %i.bj, %bb.j ] ; 9 uses
  %i.bk = icmp samesign ult i32 %.0.i, 5
  br i1 %i.bk, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_byte.exit114
  %i.bl = add nsw i32 %.0.i113, -5
  %or.cond = icmp ult i32 %i.bl, -4
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.bn, ptr noundef nonnull @.str.1, i32 noundef %.0.i113) #9
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !16 ; 3 uses
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = add nsw i32 %i.bp, 1
  %i.br = mul nsw i32 %i.bq, %.0.i113
  %i.bs = icmp slt i32 %i.br, 65530
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.rhs.trunc123 = trunc nuw nsw i32 %.0.i113 to i16
  %i.bt = udiv i16 -6, %.rhs.trunc123
  %.zext124 = zext i16 %i.bt to i32
  %i.bu = add nsw i32 %.zext124, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.o
  %.094 = phi i32 [ 255, %bb.m ], [ %i.bu, %bb.o ], [ %i.bp, %bb.n ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 524
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !37
  %i.bz = and i32 %i.by, 1
  %.not107 = icmp eq i32 %i.bz, 0
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.bw, i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %i.r, i32 noundef %.0.i115, i32 noundef %.0.i113, i32 noundef %.094) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = icmp sgt i32 %.094, 255
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.cb, ptr noundef nonnull @.str.3) #9
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.cc = trunc nuw i32 %.0.i to i16
  %.lhs.trunc = add i16 %i.cc, -5
  %.rhs.trunc = trunc nuw nsw i32 %.0.i113 to i16
  %i.cd = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %i.cd to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 16, !tbaa !52 ; 5 uses
  %i.cg = add nsw i32 %i.cf, %.zext
  %..094 = tail call i32 @llvm.smin.i32(i32 %.094, i32 %i.cg) ; 2 uses
  %i.ch = icmp slt i32 %.094, %i.cf
  br i1 %i.ch, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !53
  switch i32 %i.ck, label %bb.ae [
    i32 8, label %bb.v
    i32 11, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !54 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 116
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55
  switch i32 %i.co, label %bb.ae [
    i32 8, label %bb.w
    i32 11, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 652
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !60 ; 3 uses
  %i.ct = add i32 %i.cs, -1
  %or.cond111 = icmp ult i32 %i.ct, 7
  br i1 %or.cond111, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %notmask = shl nsw i32 -1, %i.cs
  %i.cu = xor i32 %notmask, -1
  %...094 = tail call i32 @llvm.smin.i32(i32 %..094, i32 %i.cu)
  %i.cv = sub nuw nsw i32 8, %i.cs
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi i32 [ %...094, %bb.x ], [ %..094, %bb.w ] ; 3 uses
  %.0 = phi i32 [ %i.cv, %bb.x ], [ 0, %bb.w ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1524 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !61 ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !61
  %.not108.not = icmp eq ptr %i.cq, null
  br i1 %.not108.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.y
  %.not109127 = icmp sgt i32 %i.cf, %.1
  br i1 %.not109127, label %._crit_edge130, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.preheader
  %i.cz = icmp samesign ult i32 %.0.i113, 4
  %i.da = select i1 %i.cz, i32 -16777216, i32 0   ; 2 uses
  %i.db = load ptr, ptr %i.b, align 16, !tbaa !9  ; 3 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = add nsw i32 %.1, 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph129.split.us
  %.093128.us = phi i32 [ %i.cf, %.lr.ph129.split.us ], [ %i.dx, %._crit_edge.us ] ; 3 uses
  %i.de = shl i32 %.093128.us, %.0
  %i.df = and i32 %i.de, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg ; 2 uses
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !62
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph.us, %bytestream2_get_byte.exit.us
  %i.di = phi i32 [ %i.da, %.lr.ph.us ], [ %i.dv, %bytestream2_get_byte.exit.us ]
  %i.dj = phi ptr [ %.pre, %.lr.ph.us ], [ %i.dq, %bytestream2_get_byte.exit.us ] ; 3 uses
  %.092125.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dw, %bytestream2_get_byte.exit.us ] ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dc, %i.dk
  %i.dm = icmp slt i64 %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !14
  %i.do = load i8, ptr %i.dj, align 1, !tbaa !15
  %i.dp = zext i8 %i.do to i32
  br label %bytestream2_get_byte.exit.us

bb.ab:                                            ; preds = %bb.z
  store ptr %i.db, ptr %i.a, align 8, !tbaa !13
  br label %bytestream2_get_byte.exit.us

bytestream2_get_byte.exit.us:                     ; preds = %bb.ab, %bb.aa
  %i.dq = phi ptr [ %i.db, %bb.ab ], [ %i.dn, %bb.aa ]
  %.0.i112.us = phi i32 [ 0, %bb.ab ], [ %i.dp, %bb.aa ]
  %i.dr = xor i32 %.092125.us, -1
  %i.ds = add nsw i32 %.0.i113, %i.dr
  %i.dt = shl nsw i32 %i.ds, 3
  %i.du = shl i32 %.0.i112.us, %i.dt
  %i.dv = or i32 %i.di, %i.du                     ; 2 uses
  store i32 %i.dv, ptr %i.dh, align 4, !tbaa !62
  %i.dw = add nuw nsw i32 %.092125.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, %.0.i113
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.z, !llvm.loop !63

._crit_edge.us:                                   ; preds = %bytestream2_get_byte.exit.us
  %i.dx = add i32 %.093128.us, 1
  %exitcond136.not = icmp eq i32 %.093128.us, %.1
  br i1 %exitcond136.not, label %._crit_edge130, label %.lr.ph.us, !llvm.loop !65

.thread:                                          ; preds = %bb.y
  %.inv = icmp slt i32 %i.cx, 1
  %. = select i1 %.inv, i32 1, i32 -1094995529
  br label %bb.ae

._crit_edge130:                                   ; preds = %._crit_edge.us, %.preheader
  %.093.lcssa = phi i32 [ %i.cf, %.preheader ], [ %i.dd, %._crit_edge.us ]
  store i32 %.093.lcssa, ptr %i.ce, align 16, !tbaa !52
  br label %bb.ae

bb.ac:                                            ; preds = %bytestream2_get_byte.exit118
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.dz, ptr noundef nonnull @.str.4) #9
  br label %bb.ae

bb.ad:                                            ; preds = %bytestream2_get_byte.exit118.thread, %bytestream2_get_byte.exit118
  %.0.i117121 = phi i32 [ 0, %bytestream2_get_byte.exit118.thread ], [ %i.r, %bytestream2_get_byte.exit118 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eb, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.0.i117121) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.d, %bb.e, %bb.u, %bb.v, %._crit_edge130, %.thread, %bb.t, %bytestream2_get_byte.exit114, %bb.c, %bb.ad, %bb.ac, %bb.s, %bb.l
  %.196 = phi i32 [ -1094995529, %bb.ad ], [ -38, %bb.ac ], [ -1094995529, %bb.t ], [ -1094995529, %bb.c ], [ -1163346256, %bb.l ], [ -1163346256, %bb.s ], [ -1094995529, %bytestream2_get_byte.exit114 ], [ %., %.thread ], [ 0, %._crit_edge130 ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_jpegls_decode_picture(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.f = load i32, ptr %i.e, align 4, !tbaa !67   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.h = load i32, ptr %i.g, align 4, !tbaa !68   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4088 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = icmp sgt i64 %i.k, %i.o
  br i1 %i.p, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noalias ptr @av_malloc(i64 noundef 5924) #9 ; 3 uses
  %.not333 = icmp eq ptr %i.r, null
  br i1 %.not333, label %bb.ap, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.i, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0290 = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.d ] ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 10 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @av_mallocz(i64 noundef %i.w) #9 ; 6 uses
  %.not334 = icmp eq ptr %i.x, null
  br i1 %.not334, label %bb.ap, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0290, i64 5900 ; 2 uses
  store i32 %i.d, ptr %i.aa, align 4, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !74
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 2)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0290, i64 5884 ; 2 uses
  store i32 %spec.select, ptr %i.ad, align 4, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0290, i64 5892 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ai = load <2 x i32>, ptr %i.ah, align 16, !tbaa !62
  store <2 x i32> %i.ai, ptr %.0290, align 4, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.0290, i64 8 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1004
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %.0290, i64 5880 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !78
  tail call void @ff_jpegls_reset_coding_parameters(ptr noundef nonnull %.0290, i32 noundef 0) #9
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !76 ; 4 uses
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.ar = shl nuw i32 1, %i.aq
  %.not335 = icmp slt i32 %i.ap, %i.ar
  br i1 %.not335, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.0290, i64 4
  %i.at = load i32, ptr %.0290, align 4, !tbaa !79 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !80 ; 3 uses
  %i.av = icmp sgt i32 %i.at, %i.au
  br i1 %i.av, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr %i.al, align 4, !tbaa !77 ; 3 uses
  %i.ax = icmp sgt i32 %i.au, %i.aw
  %i.ay = icmp sgt i32 %i.aw, %i.ap
  %or.cond = or i1 %i.ax, %i.ay
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.ao, align 4, !tbaa !78 ; 2 uses
  %spec.select342 = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 255)
  %i.ba = icmp sgt i32 %i.az, %spec.select342
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.ab, align 4, !tbaa !74 ; 2 uses
  %reass.sub336 = sub i32 %i.f, %i.bb
  %.inv = icmp sgt i32 %i.bb, 8
  %.0287.v = select i1 %.inv, i32 16, i32 8
  %.0287 = add i32 %.0287.v, %reass.sub336        ; 8 uses
  %i.bc = icmp sgt i32 %.0287, 15
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 524
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = and i32 %i.bg, 1
  %.not337 = icmp eq i32 %i.bh, 0
  br i1 %.not337, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !81
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !70
  %i.bl = load i32, ptr %i.aa, align 4, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %.0290, i64 5876
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %.0290, i64 5888
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %.0290, i64 5896
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !84
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.be, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.ap, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.br) #9
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !36
  %i.bt = load i32, ptr %i.ab, align 4, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !85
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bs, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %i.h, i32 noundef %i.f, i32 noundef %i.bt, i32 noundef %i.bv) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 4 uses
  store i32 -1, ptr %i.bw, align 4, !tbaa !86
  switch i32 %i.h, label %bb.ag [
    i32 0, label %bb.n
    i32 1, label %bb.x
    i32 2, label %bb.af
  ]

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1776
end_hunk_0
