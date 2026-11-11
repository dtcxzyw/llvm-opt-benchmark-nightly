Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ituh263dec?download=true
inline.NumInlined: 161
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@h263_decode_gob_header:bb.a
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !71
  %i.ca = and i32 %i.bo, 7
  %i.cb = zext i8 %i.bz to i32
  %i.cc = add i32 %i.bo, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.b, align 8, !tbaa !72
  %i.cd = lshr exact i32 128, %i.ca
  %i.ce = and i32 %i.cd, %i.cb
  %.not.i41 = icmp eq i32 %i.ce, 0
  br i1 %.not.i41, label %check_marker.exit42.thread, label %check_marker.exit42

check_marker.exit42.thread:                       ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %i.bo, i32 noundef %.val37, ptr noundef nonnull @.str.38) #10
  br label %.thread

check_marker.exit42:                              ; preds = %bb.l, %ff_h263_decode_mba.exit
  %i.cf = phi i32 [ %i.cc, %bb.l ], [ %i.bo, %ff_h263_decode_mba.exit ] ; 5 uses
  %i.cg = lshr i32 %i.cf, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !71
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = and i32 %i.cf, 7
  %i.cm = shl i32 %i.ck, %i.cl
  %i.cn = lshr i32 %i.cm, 27                      ; 2 uses
  %i.co = add i32 %i.cf, 5                        ; 4 uses
  store i32 %i.co, ptr %i.b, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 %i.cn, ptr %i.cp, align 8, !tbaa !53
  %i.cq = lshr i32 %i.co, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !71
  %i.cu = and i32 %i.co, 7
  %i.cv = zext i8 %i.ct to i32
  %i.cw = add i32 %i.cf, 6
  store i32 %i.cw, ptr %i.b, align 8, !tbaa !72
  %i.cx = lshr exact i32 128, %i.cu
  %i.cy = and i32 %i.cx, %i.cv
  %.not.i43 = icmp eq i32 %i.cy, 0
  br i1 %.not.i43, label %check_marker.exit44.thread, label %check_marker.exit44

check_marker.exit44.thread:                       ; preds = %check_marker.exit42
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %i.co, i32 noundef %.val37, ptr noundef nonnull @.str.39) #10
  br label %.thread

check_marker.exit44:                              ; preds = %check_marker.exit42
  %i.cz = add i32 %i.cf, 8
  store i32 %i.cz, ptr %i.b, align 8, !tbaa !72
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.da = lshr i32 %i.x, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !71
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = and i32 %i.x, 7
  %i.dg = shl i32 %i.de, %i.df
  %i.dh = lshr i32 %i.dg, 27
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3108
  store i32 0, ptr %i.di, align 4, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.dk = load i32, ptr %i.dj, align 16, !tbaa !82
  %i.dl = mul i32 %i.dk, %i.dh                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3112
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !76
  %i.dn = add i32 %i.q, 8                         ; 2 uses
  store i32 %i.dn, ptr %i.b, align 8, !tbaa !72
  %i.do = lshr i32 %i.dn, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.val38, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !71
  %i.ds = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.dt = and i32 %i.q, 7
  %i.du = shl i32 %i.ds, %i.dt
  %i.dv = lshr i32 %i.du, 27                      ; 2 uses
  %i.dw = add i32 %i.q, 13
  store i32 %i.dw, ptr %i.b, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 %i.dv, ptr %i.dx, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %check_marker.exit44
  %i.dy = phi i32 [ %i.dv, %bb.m ], [ %i.cn, %check_marker.exit44 ]
  %i.dz = phi i32 [ %i.dl, %bb.m ], [ %i.bt, %check_marker.exit44 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !83
  %.not36 = icmp slt i32 %i.dz, %i.eb
  br i1 %.not36, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ec = icmp eq i32 %i.dy, 0
  %. = sext i1 %i.ec to i32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %check_marker.exit44.thread, %check_marker.exit42.thread, %check_marker.exit.thread, %bb.o, %bb.n, %bb.a
  %.033 = phi i32 [ -1, %bb.n ], [ -1, %bb.a ], [ %., %bb.o ], [ -1, %check_marker.exit.thread ], [ -1, %check_marker.exit42.thread ], [ -1, %check_marker.exit44.thread ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ff_h263_decode_motion(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 1, !tbaa !71
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  %i.j = and i32 %i.c, 7
  %i.k = shl i32 %i.i, %i.j
  %i.l = lshr i32 %i.k, 23
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !71
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !71   ; 2 uses
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = icmp slt i16 %i.r, 0
  br i1 %i.t, label %bb.b, label %get_vlc2.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.c, 9                          ; 3 uses
  %i.v = lshr i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !71
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = and i32 %i.u, 7
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = add nsw i32 %i.s, 32
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = add i32 %i.ad, %i.p
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !71
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load i16, ptr %i.ag, align 4, !tbaa !71
  %i.al = sext i16 %i.ak to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.a, %bb.b
  %.154.i = phi i32 [ %i.al, %bb.b ], [ %i.p, %bb.a ] ; 4 uses
  %.152.i = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ]
  %.1.i = phi i32 [ %i.aj, %bb.b ], [ %i.s, %bb.a ]
  %i.am = add i32 %.1.i, %.152.i                  ; 5 uses
  store i32 %i.am, ptr %i.b, align 8, !tbaa !72
  %i.an = icmp eq i32 %.154.i, 0
  br i1 %i.an, label %bb.i, label %bb.c

bb.c:                                             ; preds = %get_vlc2.exit
  %i.ao = icmp slt i32 %.154.i, 0
  br i1 %i.ao, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = lshr i32 %i.am, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !71
  %i.at = and i32 %i.am, 7
  %i.au = zext i8 %i.as to i32
  %i.av = add i32 %i.am, 1                        ; 3 uses
  store i32 %i.av, ptr %i.b, align 8, !tbaa !72
  %i.aw = add nsw i32 %2, -1                      ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = add nsw i32 %.154.i, -1
  %i.ay = shl i32 %i.ax, %i.aw
  %i.az = lshr i32 %i.av, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !71
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %i.av, 7
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = sub nsw i32 33, %2
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = add i32 %i.am, %2
  store i32 %i.bi, ptr %i.b, align 8, !tbaa !72
  %i.bj = or i32 %i.bh, %i.ay
  %i.bk = add nsw i32 %i.bj, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.bk, %bb.e ], [ %.154.i, %bb.d ] ; 2 uses
  %i.bl = lshr exact i32 128, %i.at
  %i.bm = and i32 %i.bl, %i.au
  %.not35 = icmp eq i32 %i.bm, 0
  %i.bn = sub nsw i32 0, %.0
  %spec.select = select i1 %.not35, i32 %.0, i32 %i.bn
  %i.bo = add nsw i32 %spec.select, %1            ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %.not36 = icmp eq i32 %i.bq, 0
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = sub i32 27, %2                          ; 2 uses
  %i.bs = shl i32 %i.bo, %i.br
  %i.bt = ashr exact i32 %i.bs, %i.br
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bu = icmp slt i32 %1, -31
  %i.bv = icmp slt i32 %i.bo, -63
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = add nsw i32 %i.bo, 64
  %spec.select37 = select i1 %or.cond, i32 %i.bw, i32 %i.bo
  %i.bx = icmp sgt i32 %1, 32
  %i.by = icmp sgt i32 %i.bo, 63
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = add nsw i32 %i.bo, -64
  %spec.select38 = select i1 %or.cond3, i32 %i.bz, i32 %spec.select37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c, %get_vlc2.exit
  %.031 = phi i32 [ 65535, %bb.c ], [ %1, %get_vlc2.exit ], [ %i.bt, %bb.g ], [ %spec.select38, %bb.h ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_h263_decode_mb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 9 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !75   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !76   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !84
  %i.l = mul nsw i32 %i.k, %i.i
  %i.m = add nsw i32 %i.l, %i.g                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 0, ptr %i.e, align 4, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.o = load i32, ptr %i.n, align 16, !tbaa !54
  switch i32 %i.o, label %.preheader484 [
    i32 2, label %.preheader486
    i32 3, label %bb.bd
  ]

.preheader486:                                    ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 24 uses
  %i.r = load ptr, ptr %i.p, align 16, !tbaa !73  ; 3 uses
  %.promoted500 = load i32, ptr %i.q, align 8, !tbaa !72
  br label %bb.b

.preheader484:                                    ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 16, !tbaa !73  ; 2 uses
  %.promoted503 = load i32, ptr %i.t, align 8, !tbaa !72
  br label %bb.ea

bb.b:                                             ; preds = %.preheader486, %bb.g
  %i.v = phi i32 [ %.promoted500, %.preheader486 ], [ %i.cd, %bb.g ] ; 4 uses
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !71
  %i.aa = and i32 %i.v, 7                         ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = add i32 %i.v, 1                         ; 4 uses
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !72
  %i.ad = lshr exact i32 128, %i.aa
  %i.ae = and i32 %i.ad, %i.ab
  %.not355 = icmp eq i32 %i.ae, 0
  br i1 %.not355, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3116
  store i32 0, ptr %i.af, align 4, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ag, i8 -1, i64 24, i1 false), !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2728
  store i32 1, ptr %i.ah, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2732
  store i32 0, ptr %i.ai, align 4, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !86
  %i.al = sext i32 %i.m to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  store i32 135176, ptr %i.am, align 4, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i32 0, ptr %i.an, align 16, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2740
  store i32 0, ptr %i.ao, align 4, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3724
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4452
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = or i32 %i.as, %i.aq
  %.not378 = icmp eq i32 %i.at, 0
  %i.au = zext i1 %.not378 to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i32 %i.au, ptr %i.av, align 16, !tbaa !107
  br label %bb.fq

bb.d:                                             ; preds = %bb.b
  %i.aw = lshr i32 %i.ac, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !71
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %i.ac, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 25
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_inter_MCBPC_vlc, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !71
  %i.bh = sext i16 %i.bg to i32                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !71 ; 2 uses
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = icmp slt i16 %i.bj, 0
  br i1 %i.bl, label %bb.e, label %get_vlc2.exit399

bb.e:                                             ; preds = %bb.d
  %i.bm = add i32 %i.v, 8                         ; 2 uses
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !71
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = shl i32 %i.br, %i.aa
  %i.bt = add nsw i32 %i.bk, 32
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = add i32 %i.bu, %i.bh
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_inter_MCBPC_vlc, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !71
  %i.ca = sext i16 %i.bz to i32
  %i.cb = load i16, ptr %i.bx, align 4, !tbaa !71
  %i.cc = sext i16 %i.cb to i32
  br label %get_vlc2.exit399

get_vlc2.exit399:                                 ; preds = %bb.d, %bb.e
  %.154.i396 = phi i32 [ %i.cc, %bb.e ], [ %i.bh, %bb.d ] ; 7 uses
  %.152.i397 = phi i32 [ %i.bm, %bb.e ], [ %i.ac, %bb.d ]
  %.1.i398 = phi i32 [ %i.ca, %bb.e ], [ %i.bk, %bb.d ]
  %i.cd = add i32 %.1.i398, %.152.i397            ; 2 uses
  store i32 %i.cd, ptr %i.q, align 8, !tbaa !72
  %i.ce = icmp slt i32 %.154.i396, 0
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_vlc2.exit399
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !39
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cg, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.g, i32 noundef %i.i) #10
  br label %h263p_decode_umotion.exit.thread

bb.g:                                             ; preds = %get_vlc2.exit399
  %i.ch = icmp eq i32 %.154.i396, 20
  br i1 %i.ch, label %bb.b, label %bb.h, !llvm.loop !101

bb.h:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4688
  tail call void %i.cj(ptr noundef nonnull %i.ck) #10
  %i.cl = and i32 %.154.i396, 8                   ; 2 uses
  %i.cm = and i32 %.154.i396, 4                   ; 2 uses
  %.not356 = icmp eq i32 %i.cm, 0
  %.lobit = lshr exact i32 %i.cm, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3116
  store i32 %.lobit, ptr %i.cn, align 4, !tbaa !85
  br i1 %.not356, label %bb.i, label %bb.ef

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.cp = load i32, ptr %i.co, align 16, !tbaa !87 ; 2 uses
  %.not357 = icmp eq i32 %i.cp, 0
  %.pre526 = load i32, ptr %i.q, align 8, !tbaa !72 ; 4 uses
  %.pre528 = load ptr, ptr %i.p, align 16, !tbaa !73 ; 3 uses
  br i1 %.not357, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = lshr i32 %.pre526, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre528, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !71
  %i.cu = and i32 %.pre526, 7
  %i.cv = zext i8 %i.ct to i32
  %i.cw = add i32 %.pre526, 1                     ; 2 uses
  store i32 %i.cw, ptr %i.q, align 8, !tbaa !72
  %i.cx = lshr exact i32 128, %i.cu
  %i.cy = and i32 %i.cx, %i.cv
  %.not358 = icmp eq i32 %i.cy, 0
  br i1 %.not358, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = call fastcc i32 @h263_get_modb(ptr noundef nonnull %i.p, i32 noundef %i.cp, ptr noundef %i.e)
  %.pre = load i32, ptr %i.q, align 8, !tbaa !72
  %.pre527 = load ptr, ptr %i.p, align 16, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.da = phi ptr [ %.pre527, %bb.k ], [ %.pre528, %bb.j ], [ %.pre528, %bb.i ]
  %i.db = phi i32 [ %.pre, %bb.k ], [ %i.cw, %bb.j ], [ %.pre526, %bb.i ] ; 3 uses
  %.0304 = phi i32 [ %i.cz, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.dc = lshr i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 1, !tbaa !71
end_hunk_0
begin_hunk_1_@ff_h263_decode_mb:bb.a
bb.v:                                             ; preds = %bb.u
  %i.ev = call fastcc i32 @h263p_decode_umotion(ptr noundef nonnull %0, i32 noundef %i.eu)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ew = call i32 @ff_h263_decode_motion(ptr noundef nonnull %0, i32 noundef %i.eu, i32 noundef 1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0310 = phi i32 [ %i.ev, %bb.v ], [ %i.ew, %bb.w ] ; 3 uses
  %i.ex = icmp sgt i32 %.0310, 65534
  br i1 %i.ex, label %h263p_decode_umotion.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i32 %.0314, ptr %i.ey, align 16, !tbaa !80
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2740
  store i32 %.0310, ptr %i.ez, align 4, !tbaa !80
  %i.fa = load i32, ptr %i.en, align 8, !tbaa !57
  %.not367 = icmp eq i32 %i.fa, 0
  br i1 %.not367, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = load i32, ptr %i.c, align 4, !tbaa !80
  %i.fc = sub nsw i32 %.0314, %i.fb
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.fe = load i32, ptr %i.d, align 4, !tbaa !80
  %i.ff = sub nsw i32 %.0310, %i.fe
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.fh = load i32, ptr %i.q, align 8, !tbaa !72
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.q, align 8, !tbaa !72
  br label %.loopexit

bb.ac:                                            ; preds = %bb.p
  store i32 4160, ptr %i.ek, align 4, !tbaa !80
  store i32 1, ptr %i.el, align 4, !tbaa !106
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4420 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2736
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.bc
  %indvars.iv = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next, %bb.bc ] ; 3 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv to i32
  %i.fn = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef %i.fm, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.fo = load i32, ptr %i.fj, align 8, !tbaa !57
  %.not362 = icmp eq i32 %i.fo, 0                 ; 2 uses
  %i.fp = load i32, ptr %i.c, align 4, !tbaa !80  ; 8 uses
  %i.fq = load i32, ptr %i.q, align 8, !tbaa !72  ; 7 uses
  %i.fr = load ptr, ptr %i.p, align 16, !tbaa !73 ; 13 uses
  %i.fs = lshr i32 %i.fq, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft ; 2 uses
  br i1 %.not362, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !71
  %i.fw = and i32 %i.fq, 7
  %i.fx = zext i8 %i.fv to i32
  %i.fy = add i32 %i.fq, 1                        ; 4 uses
  store i32 %i.fy, ptr %i.q, align 8, !tbaa !72
  %i.fz = lshr exact i32 128, %i.fw
  %i.ga = and i32 %i.fz, %i.fx
  %.not.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i, label %bb.af, label %h263p_decode_umotion.exit.thread552

bb.af:                                            ; preds = %bb.ae
  %i.gb = lshr i32 %i.fy, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !71
  %i.gf = and i32 %i.fy, 7
  %i.gg = zext i8 %i.ge to i32
  %i.gh = shl nuw nsw i32 %i.gg, %i.gf
  %i.gi = lshr i32 %i.gh, 7
  %i.gj = add i32 %i.fq, 2                        ; 2 uses
  store i32 %i.gj, ptr %i.q, align 8, !tbaa !72
  %i.gk = and i32 %i.gi, 1
  %i.gl = or disjoint i32 %i.gk, 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.gm = phi i32 [ %i.gj, %bb.af ], [ %i.hf, %bb.ah ] ; 4 uses
  %.0.i = phi i32 [ %i.gl, %bb.af ], [ %i.hh, %bb.ah ] ; 3 uses
  %i.gn = lshr i32 %i.gm, 3
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !71
  %i.gr = and i32 %i.gm, 7
  %i.gs = zext i8 %i.gq to i32
  %i.gt = add i32 %i.gm, 1                        ; 4 uses
  store i32 %i.gt, ptr %i.q, align 8, !tbaa !72
  %i.gu = lshr exact i32 128, %i.gr
  %i.gv = and i32 %i.gu, %i.gs
  %.not19.i = icmp eq i32 %i.gv, 0
  br i1 %.not19.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gw = shl i32 %.0.i, 1
  %i.gx = lshr i32 %i.gt, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !71
  %i.hb = and i32 %i.gt, 7
  %i.hc = zext i8 %i.ha to i32
  %i.hd = shl nuw nsw i32 %i.hc, %i.hb
  %i.he = lshr i32 %i.hd, 7
  %i.hf = add i32 %i.gm, 2                        ; 2 uses
  store i32 %i.hf, ptr %i.q, align 8, !tbaa !72
  %i.hg = and i32 %i.he, 1
  %i.hh = or disjoint i32 %i.hg, %i.gw            ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 32767
  br i1 %i.hi, label %bb.ai, label %bb.ag, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ah
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.hk, ptr noundef nonnull @.str.40) #10
  br label %h263p_decode_umotion.exit.thread

bb.aj:                                            ; preds = %bb.ag
  %i.hl = and i32 %.0.i, 1
  %i.hm = ashr i32 %.0.i, 1                       ; 2 uses
  %.not20.i = icmp eq i32 %i.hl, 0
  %i.hn = sub nsw i32 0, %i.hm
  %.p.i = select i1 %.not20.i, i32 %i.hm, i32 %i.hn
  %i.ho = add i32 %.p.i, %i.fp
  br label %h263p_decode_umotion.exit

bb.ak:                                            ; preds = %bb.ad
  %i.hp = load i32, ptr %i.fu, align 1, !tbaa !71
  %i.hq = call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = and i32 %i.fq, 7
  %i.hs = shl i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 23
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.hu ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 4, !tbaa !71
  %i.hx = sext i16 %i.hw to i32                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !71 ; 2 uses
  %i.ia = sext i16 %i.hz to i32                   ; 2 uses
  %i.ib = icmp slt i16 %i.hz, 0
  br i1 %i.ib, label %bb.al, label %get_vlc2.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.ic = add i32 %i.fq, 9                        ; 3 uses
  %i.id = lshr i32 %i.ic, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 1, !tbaa !71
  %i.ih = call i32 @llvm.bswap.i32(i32 %i.ig)
  %i.ii = and i32 %i.ic, 7
  %i.ij = shl i32 %i.ih, %i.ii
  %i.ik = add nsw i32 %i.ia, 32
  %i.il = lshr i32 %i.ij, %i.ik
  %i.im = add i32 %i.il, %i.hx
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !71
  %i.ir = sext i16 %i.iq to i32
  %i.is = load i16, ptr %i.io, align 4, !tbaa !71
  %i.it = sext i16 %i.is to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.al, %bb.ak
  %.154.i.i = phi i32 [ %i.it, %bb.al ], [ %i.hx, %bb.ak ] ; 4 uses
  %.152.i.i = phi i32 [ %i.ic, %bb.al ], [ %i.fq, %bb.ak ]
  %.1.i.i = phi i32 [ %i.ir, %bb.al ], [ %i.ia, %bb.ak ]
  %i.iu = add i32 %.1.i.i, %.152.i.i              ; 5 uses
  store i32 %i.iu, ptr %i.q, align 8, !tbaa !72
  %i.iv = icmp eq i32 %.154.i.i, 0
  br i1 %i.iv, label %h263p_decode_umotion.exit, label %bb.am

bb.am:                                            ; preds = %get_vlc2.exit.i
  %i.iw = icmp slt i32 %.154.i.i, 0
  br i1 %i.iw, label %h263p_decode_umotion.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ix = lshr i32 %i.iu, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !71
  %i.jb = and i32 %i.iu, 7
  %i.jc = zext i8 %i.ja to i32
  %i.jd = add i32 %i.iu, 1                        ; 3 uses
  store i32 %i.jd, ptr %i.q, align 8, !tbaa !72
  %i.je = lshr exact i32 128, %i.jb
  %i.jf = and i32 %i.je, %i.jc
  %.not35.i = icmp eq i32 %i.jf, 0
  %i.jg = sub nsw i32 0, %.154.i.i
  %spec.select.i = select i1 %.not35.i, i32 %.154.i.i, i32 %i.jg
  %i.jh = add nsw i32 %spec.select.i, %i.fp       ; 6 uses
  %i.ji = load i32, ptr %i.fk, align 4, !tbaa !58
  %.not36.i = icmp eq i32 %i.ji, 0
  br i1 %.not36.i, label %.thread, label %bb.ao

.thread:                                          ; preds = %bb.an
  %i.jj = shl i32 %i.jh, 26
  %i.jk = ashr exact i32 %i.jj, 26
  br label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.jl = icmp slt i32 %i.fp, -31
  %i.jm = icmp slt i32 %i.jh, -63
  %or.cond.i = select i1 %i.jl, i1 %i.jm, i1 false
  %i.jn = add nsw i32 %i.jh, 64
  %spec.select37.i = select i1 %or.cond.i, i32 %i.jn, i32 %i.jh
  %i.jo = icmp sgt i32 %i.fp, 32
  %i.jp = icmp sgt i32 %i.jh, 63
  %or.cond3.i = select i1 %i.jo, i1 %i.jp, i1 false
  %i.jq = add nsw i32 %i.jh, -64
  %spec.select38.i = select i1 %or.cond3.i, i32 %i.jq, i32 %spec.select37.i
  br label %h263p_decode_umotion.exit

h263p_decode_umotion.exit:                        ; preds = %bb.ao, %get_vlc2.exit.i, %bb.aj
  %i.jr = phi i32 [ %i.jd, %bb.ao ], [ %i.gt, %bb.aj ], [ %i.iu, %get_vlc2.exit.i ] ; 2 uses
  %.1315 = phi i32 [ %spec.select38.i, %bb.ao ], [ %i.ho, %bb.aj ], [ %i.fp, %get_vlc2.exit.i ] ; 3 uses
  %i.js = icmp sgt i32 %.1315, 65534
  br i1 %i.js, label %h263p_decode_umotion.exit.thread, label %bb.ap

h263p_decode_umotion.exit.thread552:              ; preds = %bb.ae
  %i.jt = icmp sgt i32 %i.fp, 65534
  br i1 %i.jt, label %h263p_decode_umotion.exit.thread, label %.thread554

bb.ap:                                            ; preds = %h263p_decode_umotion.exit
  br i1 %.not362, label %bb.av, label %.thread554

.thread554:                                       ; preds = %h263p_decode_umotion.exit.thread552, %bb.ap
  %.1315467556 = phi i32 [ %.1315, %bb.ap ], [ %i.fp, %h263p_decode_umotion.exit.thread552 ] ; 2 uses
  %i.ju = phi i32 [ %i.jr, %bb.ap ], [ %i.fy, %h263p_decode_umotion.exit.thread552 ] ; 4 uses
  %i.jv = load i32, ptr %i.d, align 4, !tbaa !80  ; 4 uses
  %i.jw = lshr i32 %i.ju, 3
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !71
  %i.ka = and i32 %i.ju, 7
  %i.kb = zext i8 %i.jz to i32
  %i.kc = add i32 %i.ju, 1                        ; 3 uses
  store i32 %i.kc, ptr %i.q, align 8, !tbaa !72
  %i.kd = lshr exact i32 128, %i.ka
  %i.ke = and i32 %i.kd, %i.kb
  %.not.i408 = icmp eq i32 %i.ke, 0
  br i1 %.not.i408, label %bb.aq, label %h263p_decode_umotion.exit414

bb.aq:                                            ; preds = %.thread554
  %i.kf = lshr i32 %i.kc, 3
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !71
  %i.kj = and i32 %i.kc, 7
  %i.kk = zext i8 %i.ki to i32
  %i.kl = shl nuw nsw i32 %i.kk, %i.kj
  %i.km = lshr i32 %i.kl, 7
  %i.kn = add i32 %i.ju, 2                        ; 2 uses
  store i32 %i.kn, ptr %i.q, align 8, !tbaa !72
  %i.ko = and i32 %i.km, 1
  %i.kp = or disjoint i32 %i.ko, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.kq = phi i32 [ %i.kn, %bb.aq ], [ %i.lj, %bb.as ] ; 4 uses
  %.0.i410 = phi i32 [ %i.kp, %bb.aq ], [ %i.ll, %bb.as ] ; 3 uses
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !71
  %i.kv = and i32 %i.kq, 7
  %i.kw = zext i8 %i.ku to i32
  %i.kx = add i32 %i.kq, 1                        ; 3 uses
  store i32 %i.kx, ptr %i.q, align 8, !tbaa !72
  %i.ky = lshr exact i32 128, %i.kv
  %i.kz = and i32 %i.ky, %i.kw
  %.not19.i411 = icmp eq i32 %i.kz, 0
  br i1 %.not19.i411, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.la = shl i32 %.0.i410, 1
  %i.lb = lshr i32 %i.kx, 3
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !71
  %i.lf = and i32 %i.kx, 7
  %i.lg = zext i8 %i.le to i32
  %i.lh = shl nuw nsw i32 %i.lg, %i.lf
  %i.li = lshr i32 %i.lh, 7
  %i.lj = add i32 %i.kq, 2                        ; 2 uses
  store i32 %i.lj, ptr %i.q, align 8, !tbaa !72
  %i.lk = and i32 %i.li, 1
  %i.ll = or disjoint i32 %i.lk, %i.la            ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 32767
  br i1 %i.lm, label %bb.at, label %bb.ar, !llvm.loop !0

bb.at:                                            ; preds = %bb.as
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.lo, ptr noundef nonnull @.str.40) #10
  br label %h263p_decode_umotion.exit.thread

bb.au:                                            ; preds = %bb.ar
  %i.lp = and i32 %.0.i410, 1
  %i.lq = ashr i32 %.0.i410, 1                    ; 2 uses
  %.not20.i412 = icmp eq i32 %i.lp, 0
  %i.lr = sub nsw i32 0, %i.lq
  %.p.i413 = select i1 %.not20.i412, i32 %i.lq, i32 %i.lr
  %i.ls = add i32 %.p.i413, %i.jv
  br label %h263p_decode_umotion.exit414

bb.av:                                            ; preds = %.thread, %bb.ap
  %.1315467551 = phi i32 [ %i.jk, %.thread ], [ %.1315, %bb.ap ] ; 3 uses
  %i.lt = phi i32 [ %i.jd, %.thread ], [ %i.jr, %bb.ap ] ; 4 uses
  %i.lu = load i32, ptr %i.d, align 4, !tbaa !80  ; 7 uses
  %i.lv = lshr i32 %i.lt, 3
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 1, !tbaa !71
  %i.lz = call i32 @llvm.bswap.i32(i32 %i.ly)
  %i.ma = and i32 %i.lt, 7
  %i.mb = shl i32 %i.lz, %i.ma
  %i.mc = lshr i32 %i.mb, 23
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.md ; 2 uses
  %i.mf = load i16, ptr %i.me, align 4, !tbaa !71
  %i.mg = sext i16 %i.mf to i32                   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !71 ; 2 uses
  %i.mj = sext i16 %i.mi to i32                   ; 2 uses
  %i.mk = icmp slt i16 %i.mi, 0
  br i1 %i.mk, label %bb.aw, label %get_vlc2.exit.i415

bb.aw:                                            ; preds = %bb.av
  %i.ml = add i32 %i.lt, 9                        ; 3 uses
  %i.mm = lshr i32 %i.ml, 3
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 1, !tbaa !71
  %i.mq = call i32 @llvm.bswap.i32(i32 %i.mp)
  %i.mr = and i32 %i.ml, 7
  %i.ms = shl i32 %i.mq, %i.mr
  %i.mt = add nsw i32 %i.mj, 32
  %i.mu = lshr i32 %i.ms, %i.mt
  %i.mv = add i32 %i.mu, %i.mg
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !71
  %i.na = sext i16 %i.mz to i32
  %i.nb = load i16, ptr %i.mx, align 4, !tbaa !71
  %i.nc = sext i16 %i.nb to i32
  br label %get_vlc2.exit.i415

get_vlc2.exit.i415:                               ; preds = %bb.aw, %bb.av
  %.154.i.i416 = phi i32 [ %i.nc, %bb.aw ], [ %i.mg, %bb.av ] ; 4 uses
  %.152.i.i417 = phi i32 [ %i.ml, %bb.aw ], [ %i.lt, %bb.av ]
  %.1.i.i418 = phi i32 [ %i.na, %bb.aw ], [ %i.mj, %bb.av ]
  %i.nd = add i32 %.1.i.i418, %.152.i.i417        ; 4 uses
  store i32 %i.nd, ptr %i.q, align 8, !tbaa !72
  %i.ne = icmp eq i32 %.154.i.i416, 0
  br i1 %i.ne, label %h263p_decode_umotion.exit414, label %bb.ax

bb.ax:                                            ; preds = %get_vlc2.exit.i415
  %i.nf = icmp slt i32 %.154.i.i416, 0
  br i1 %i.nf, label %h263p_decode_umotion.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ng = lshr i32 %i.nd, 3
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !71
  %i.nk = and i32 %i.nd, 7
  %i.nl = zext i8 %i.nj to i32
  %i.nm = add i32 %i.nd, 1
  store i32 %i.nm, ptr %i.q, align 8, !tbaa !72
  %i.nn = lshr exact i32 128, %i.nk
  %i.no = and i32 %i.nn, %i.nl
  %.not35.i420 = icmp eq i32 %i.no, 0
  %i.np = sub nsw i32 0, %.154.i.i416
  %spec.select.i421 = select i1 %.not35.i420, i32 %.154.i.i416, i32 %i.np
  %i.nq = add nsw i32 %spec.select.i421, %i.lu    ; 6 uses
  %i.nr = load i32, ptr %i.fk, align 4, !tbaa !58
  %.not36.i422 = icmp eq i32 %i.nr, 0
  br i1 %.not36.i422, label %h263p_decode_umotion.exit414.thread469, label %bb.az

h263p_decode_umotion.exit414.thread469:           ; preds = %bb.ay
  %i.ns = shl i32 %i.nq, 26
  %i.nt = ashr exact i32 %i.ns, 26
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.nu = icmp slt i32 %i.lu, -31
  %i.nv = icmp slt i32 %i.nq, -63
  %or.cond.i423 = select i1 %i.nu, i1 %i.nv, i1 false
  %i.nw = add nsw i32 %i.nq, 64
  %spec.select37.i424 = select i1 %or.cond.i423, i32 %i.nw, i32 %i.nq
  %i.nx = icmp sgt i32 %i.lu, 32
  %i.ny = icmp sgt i32 %i.nq, 63
  %or.cond3.i425 = select i1 %i.nx, i1 %i.ny, i1 false
  %i.nz = add nsw i32 %i.nq, -64
  %spec.select38.i426 = select i1 %or.cond3.i425, i32 %i.nz, i32 %spec.select37.i424
  br label %h263p_decode_umotion.exit414

h263p_decode_umotion.exit414:                     ; preds = %bb.az, %get_vlc2.exit.i415, %bb.au, %.thread554
  %.1315467550 = phi i32 [ %.1315467556, %.thread554 ], [ %.1315467556, %bb.au ], [ %.1315467551, %get_vlc2.exit.i415 ], [ %.1315467551, %bb.az ]
  %i.oa = phi i32 [ %i.jv, %.thread554 ], [ %i.jv, %bb.au ], [ %i.lu, %get_vlc2.exit.i415 ], [ %i.lu, %bb.az ]
  %.1311 = phi i32 [ %i.jv, %.thread554 ], [ %i.ls, %bb.au ], [ %i.lu, %get_vlc2.exit.i415 ], [ %spec.select38.i426, %bb.az ] ; 2 uses
  %i.ob = icmp sgt i32 %.1311, 65534
  br i1 %i.ob, label %h263p_decode_umotion.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %h263p_decode_umotion.exit414.thread469, %h263p_decode_umotion.exit414
  %.1315467549 = phi i32 [ %.1315467551, %h263p_decode_umotion.exit414.thread469 ], [ %.1315467550, %h263p_decode_umotion.exit414 ] ; 3 uses
  %i.oc = phi i32 [ %i.lu, %h263p_decode_umotion.exit414.thread469 ], [ %i.oa, %h263p_decode_umotion.exit414 ]
  %.1311471 = phi i32 [ %i.nt, %h263p_decode_umotion.exit414.thread469 ], [ %.1311, %h263p_decode_umotion.exit414 ] ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv ; 2 uses
  store i32 %.1315467549, ptr %i.od, align 8, !tbaa !80
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  store i32 %.1311471, ptr %i.oe, align 4, !tbaa !80
  %i.of = load i32, ptr %i.fj, align 8, !tbaa !57
  %.not364 = icmp ne i32 %i.of, 0
  %i.og = sub nsw i32 %.1315467549, %i.fp
  %i.oh = icmp eq i32 %i.og, 1
  %or.cond570 = select i1 %.not364, i1 %i.oh, i1 false
  %i.oi = sub nsw i32 %.1311471, %i.oc
  %i.oj = icmp eq i32 %i.oi, 1
  %or.cond572 = select i1 %or.cond570, i1 %i.oj, i1 false
  br i1 %or.cond572, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ok = load i32, ptr %i.q, align 8, !tbaa !72
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.q, align 8, !tbaa !72
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.om = trunc i32 %.1315467549 to i16
  store i16 %i.om, ptr %i.fn, align 2, !tbaa !70
  %i.on = trunc i32 %.1311471 to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.ad, !llvm.loop !102

bb.bd:                                            ; preds = %bb.a
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.oq = load i32, ptr %i.op, align 16, !tbaa !88 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.os = load ptr, ptr %i.or, align 16, !tbaa !89
  %i.ot = mul nsw i32 %i.oq, %i.i
  %i.ou = add nsw i32 %i.ot, %i.g
  %i.ov = shl nsw i32 %i.ou, 1
  %i.ow = sext i32 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !89
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.ow ; 2 uses
  %i.pb = shl nsw i32 %i.oq, 1                    ; 4 uses
  %i.pc = add nsw i32 %i.pb, 3
  %i.pd = sext i32 %i.pc to i64                   ; 2 uses
  %i.pe = or disjoint i32 %i.pb, 1
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = add nsw i32 %i.pb, 2
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = sext i32 %i.pb to i64                   ; 4 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.pa, i64 %i.pi
  store <4 x i16> zeroinitializer, ptr %i.pj, align 2, !tbaa !70
  store <4 x i16> zeroinitializer, ptr %i.pa, align 2, !tbaa !70
  %i.pk = getelementptr inbounds [2 x i8], ptr %i.ox, i64 %i.pi
  store <4 x i16> zeroinitializer, ptr %i.pk, align 2, !tbaa !70
  store <4 x i16> zeroinitializer, ptr %i.ox, align 2, !tbaa !70
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 13 uses
  %i.pn = load ptr, ptr %i.pl, align 16, !tbaa !73 ; 3 uses
  %.promoted = load i32, ptr %i.pm, align 8, !tbaa !72
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %i.po = phi i32 [ %i.qx, %bb.bh ], [ %.promoted, %bb.bd ] ; 4 uses
  %i.pp = lshr i32 %i.po, 3
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 1, !tbaa !71
  %i.pt = tail call i32 @llvm.bswap.i32(i32 %i.ps)
  %i.pu = and i32 %i.po, 7
  %i.pv = shl i32 %i.pt, %i.pu
  %i.pw = lshr i32 %i.pv, 26
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @h263_mbtype_b_vlc, i64 %i.px ; 2 uses
  %i.pz = load i16, ptr %i.py, align 4, !tbaa !71
  %i.qa = sext i16 %i.pz to i32                   ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !71 ; 2 uses
  %i.qd = sext i16 %i.qc to i32                   ; 2 uses
  %i.qe = icmp slt i16 %i.qc, 0
  br i1 %i.qe, label %bb.bf, label %get_vlc2.exit392

bb.bf:                                            ; preds = %bb.be
  %i.qf = add i32 %i.po, 6                        ; 3 uses
  %i.qg = lshr i32 %i.qf, 3
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 1, !tbaa !71
  %i.qk = tail call i32 @llvm.bswap.i32(i32 %i.qj)
  %i.ql = and i32 %i.qf, 7
  %i.qm = shl i32 %i.qk, %i.ql
  %i.qn = add nsw i32 %i.qd, 32
  %i.qo = lshr i32 %i.qm, %i.qn
  %i.qp = add i32 %i.qo, %i.qa
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @h263_mbtype_b_vlc, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 2
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !71
  %i.qu = sext i16 %i.qt to i32
  %i.qv = load i16, ptr %i.qr, align 4, !tbaa !71
  %i.qw = sext i16 %i.qv to i32
  br label %get_vlc2.exit392

get_vlc2.exit392:                                 ; preds = %bb.be, %bb.bf
  %.154.i389 = phi i32 [ %i.qw, %bb.bf ], [ %i.qa, %bb.be ] ; 12 uses
  %.152.i390 = phi i32 [ %i.qf, %bb.bf ], [ %i.po, %bb.be ]
  %.1.i391 = phi i32 [ %i.qu, %bb.bf ], [ %i.qd, %bb.be ]
  %i.qx = add i32 %.1.i391, %.152.i390            ; 3 uses
  store i32 %i.qx, ptr %i.pm, align 8, !tbaa !72
  %i.qy = icmp slt i32 %.154.i389, 0
  br i1 %i.qy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %get_vlc2.exit392
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !39
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ra, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %i.g, i32 noundef %i.i) #10
  br label %h263p_decode_umotion.exit.thread

bb.bh:                                            ; preds = %get_vlc2.exit392
  %.not = icmp eq i32 %.154.i389, 0
  br i1 %.not, label %bb.be, label %bb.bi, !llvm.loop !103

bb.bi:                                            ; preds = %bb.bh
  %i.rb = and i32 %.154.i389, 7
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 3116 ; 2 uses
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !85
  %i.rd = and i32 %.154.i389, 1024
  %.not341 = icmp eq i32 %i.rd, 0
  br i1 %.not341, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.rf = load ptr, ptr %i.re, align 16, !tbaa !108
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 4688
  tail call void %i.rf(ptr noundef nonnull %i.rg) #10
  %i.rh = load i32, ptr %i.pm, align 8, !tbaa !72 ; 3 uses
  %i.ri = load ptr, ptr %i.pl, align 16, !tbaa !73 ; 3 uses
  %i.rj = lshr i32 %i.rh, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 1, !tbaa !71
  %i.rn = tail call i32 @llvm.bswap.i32(i32 %i.rm)
  %i.ro = and i32 %i.rh, 7
  %i.rp = shl i32 %i.rn, %i.ro
  %i.rq = lshr i32 %i.rp, 29
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @cbpc_b_vlc, i64 %i.rr ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 4, !tbaa !71 ; 2 uses
  %i.ru = zext i16 %i.rt to i32                   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 2
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !71
  %i.rx = sext i16 %i.rw to i32
  %i.ry = add i32 %i.rh, %i.rx                    ; 4 uses
  store i32 %i.ry, ptr %i.pm, align 8, !tbaa !72
  %i.rz = load i32, ptr %i.rc, align 4, !tbaa !85
  %.not342 = icmp eq i32 %i.rz, 0
  br i1 %.not342, label %bb.bk, label %bb.dz

bb.bk:                                            ; preds = %bb.bj
  %i.sa = lshr i32 %i.ry, 3
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 1, !tbaa !71
  %i.se = tail call i32 @llvm.bswap.i32(i32 %i.sd)
  %i.sf = and i32 %i.ry, 7
  %i.sg = shl i32 %i.se, %i.sf
  %i.sh = lshr i32 %i.sg, 26
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_cbpy_vlc, i64 %i.si ; 2 uses
  %i.sk = load i16, ptr %i.sj, align 4, !tbaa !71 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !71
  %i.sn = sext i16 %i.sm to i32
  %i.so = add i32 %i.ry, %i.sn                    ; 2 uses
  store i32 %i.so, ptr %i.pm, align 8, !tbaa !72
  %i.sp = icmp slt i16 %i.sk, 0
  br i1 %i.sp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !39
  %i.ss = load i32, ptr %i.f, align 4, !tbaa !75
  %i.st = load i32, ptr %i.h, align 8, !tbaa !76
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sr, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %i.ss, i32 noundef %i.st) #10
  br label %h263p_decode_umotion.exit.thread
end_hunk_1
begin_hunk_2_@preview_obmc:.preheader172
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !71
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = and i32 %i.bz, 7
  %i.cm = shl i32 %i.ck, %i.cl
  %i.cn = lshr i32 %i.cm, 26
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_cbpy_vlc, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !71
  %i.cs = sext i16 %i.cr to i32
  %i.ct = add i32 %i.bz, %i.cs                    ; 5 uses
  store i32 %i.ct, ptr %i.v, align 8, !tbaa !72
  %i.cu = and i32 %.154.i, 8
  %.not100 = icmp eq i32 %i.cu, 0
  br i1 %.not100, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !61
  %.not101 = icmp eq i32 %i.cw, 0
  br i1 %.not101, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = lshr i32 %i.ct, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !71
  %i.db = and i32 %i.ct, 7
  %i.dc = zext i8 %i.da to i32
  %i.dd = add i32 %i.ct, 1
  %i.de = lshr exact i32 128, %i.db
  %i.df = and i32 %i.de, %i.dc
  %.not102 = icmp eq i32 %i.df, 0
  %i.dg = select i1 %.not102, i32 5, i32 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dh = phi i32 [ %i.dd, %bb.i ], [ %i.ct, %bb.h ]
  %i.di = phi i32 [ %i.dg, %bb.i ], [ 2, %bb.h ]
  %i.dj = add i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.v, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dk = and i32 %.154.i, 16
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !86
  %i.do = sext i32 %i.t to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  br i1 %i.dl, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %bb.k
  store i32 4104, ptr %i.dp, align 4, !tbaa !80
  %i.dq = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !57
  %.not106 = icmp eq i32 %i.ds, 0
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !80  ; 6 uses
  %i.du = load i32, ptr %i.v, align 8, !tbaa !72  ; 7 uses
  %i.dv = load ptr, ptr %i.c, align 16, !tbaa !73 ; 6 uses
  %i.dw = lshr i32 %i.du, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx ; 2 uses
  br i1 %.not106, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !71
  %i.ea = and i32 %i.du, 7
  %i.eb = zext i8 %i.dz to i32
  %i.ec = add i32 %i.du, 1                        ; 3 uses
  store i32 %i.ec, ptr %i.v, align 8, !tbaa !72
  %i.ed = lshr exact i32 128, %i.ea
  %i.ee = and i32 %i.ed, %i.eb
  %.not.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i, label %bb.n, label %h263p_decode_umotion.exit.thread212

bb.n:                                             ; preds = %bb.m
  %i.ef = lshr i32 %i.ec, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !71
  %i.ej = and i32 %i.ec, 7
  %i.ek = zext i8 %i.ei to i32
  %i.el = shl nuw nsw i32 %i.ek, %i.ej
  %i.em = lshr i32 %i.el, 7
  %i.en = add i32 %i.du, 2                        ; 2 uses
  store i32 %i.en, ptr %i.v, align 8, !tbaa !72
  %i.eo = and i32 %i.em, 1
  %i.ep = or disjoint i32 %i.eo, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.eq = phi i32 [ %i.en, %bb.n ], [ %i.fj, %bb.p ] ; 4 uses
  %.0.i = phi i32 [ %i.ep, %bb.n ], [ %i.fl, %bb.p ] ; 3 uses
  %i.er = lshr i32 %i.eq, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !71
  %i.ev = and i32 %i.eq, 7
  %i.ew = zext i8 %i.eu to i32
  %i.ex = add i32 %i.eq, 1                        ; 3 uses
  store i32 %i.ex, ptr %i.v, align 8, !tbaa !72
  %i.ey = lshr exact i32 128, %i.ev
  %i.ez = and i32 %i.ey, %i.ew
  %.not19.i = icmp eq i32 %i.ez, 0
  br i1 %.not19.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = shl i32 %.0.i, 1
  %i.fb = lshr i32 %i.ex, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !71
  %i.ff = and i32 %i.ex, 7
  %i.fg = zext i8 %i.fe to i32
  %i.fh = shl nuw nsw i32 %i.fg, %i.ff
  %i.fi = lshr i32 %i.fh, 7
  %i.fj = add i32 %i.eq, 2                        ; 2 uses
  store i32 %i.fj, ptr %i.v, align 8, !tbaa !72
  %i.fk = and i32 %i.fi, 1
  %i.fl = or disjoint i32 %i.fk, %i.fa            ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 32767
  br i1 %i.fm, label %h263p_decode_umotion.exit, label %bb.o, !llvm.loop !0

bb.q:                                             ; preds = %bb.o
  %i.fn = and i32 %.0.i, 1
  %i.fo = ashr i32 %.0.i, 1                       ; 2 uses
  %.not20.i = icmp eq i32 %i.fn, 0
  %i.fp = sub nsw i32 0, %i.fo
  %.p.i = select i1 %.not20.i, i32 %i.fo, i32 %i.fp
  %i.fq = add i32 %.p.i, %i.dt
  br label %h263p_decode_umotion.exit.thread212

bb.r:                                             ; preds = %bb.l
  %i.fr = load i32, ptr %i.dy, align 1, !tbaa !71
  %i.fs = call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = and i32 %i.du, 7
  %i.fu = shl i32 %i.fs, %i.ft
  %i.fv = lshr i32 %i.fu, 23
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.fw ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 4, !tbaa !71
  %i.fz = sext i16 %i.fy to i32                   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !71 ; 2 uses
  %i.gc = sext i16 %i.gb to i32                   ; 2 uses
  %i.gd = icmp slt i16 %i.gb, 0
  br i1 %i.gd, label %bb.s, label %get_vlc2.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ge = add i32 %i.du, 9                        ; 3 uses
  %i.gf = lshr i32 %i.ge, 3
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 1, !tbaa !71
  %i.gj = call i32 @llvm.bswap.i32(i32 %i.gi)
  %i.gk = and i32 %i.ge, 7
  %i.gl = shl i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %i.gc, 32
  %i.gn = lshr i32 %i.gl, %i.gm
  %i.go = add i32 %i.gn, %i.fz
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !71
  %i.gt = sext i16 %i.gs to i32
  %i.gu = load i16, ptr %i.gq, align 4, !tbaa !71
  %i.gv = sext i16 %i.gu to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.s, %bb.r
  %.154.i.i = phi i32 [ %i.gv, %bb.s ], [ %i.fz, %bb.r ] ; 4 uses
  %.152.i.i = phi i32 [ %i.ge, %bb.s ], [ %i.du, %bb.r ]
  %.1.i.i = phi i32 [ %i.gt, %bb.s ], [ %i.gc, %bb.r ]
  %i.gw = add i32 %.1.i.i, %.152.i.i              ; 4 uses
  store i32 %i.gw, ptr %i.v, align 8, !tbaa !72
  %i.gx = icmp eq i32 %.154.i.i, 0
  br i1 %i.gx, label %h263p_decode_umotion.exit.thread, label %bb.t

bb.t:                                             ; preds = %get_vlc2.exit.i
  %i.gy = icmp slt i32 %.154.i.i, 0
  br i1 %i.gy, label %h263p_decode_umotion.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gz = lshr i32 %i.gw, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71
  %i.hd = and i32 %i.gw, 7
  %i.he = zext i8 %i.hc to i32
  %i.hf = add i32 %i.gw, 1
  store i32 %i.hf, ptr %i.v, align 8, !tbaa !72
  %i.hg = lshr exact i32 128, %i.hd
  %i.hh = and i32 %i.hg, %i.he
  %.not35.i = icmp eq i32 %i.hh, 0
  %i.hi = sub nsw i32 0, %.154.i.i
  %spec.select.i = select i1 %.not35.i, i32 %.154.i.i, i32 %i.hi
  %i.hj = add nsw i32 %spec.select.i, %i.dt       ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !58
  %.not36.i = icmp eq i32 %i.hl, 0
  br i1 %.not36.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hm = shl i32 %i.hj, 26
  %i.hn = ashr exact i32 %i.hm, 26
  br label %h263p_decode_umotion.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ho = icmp slt i32 %i.dt, -31
  %i.hp = icmp slt i32 %i.hj, -63
  %or.cond.i = select i1 %i.ho, i1 %i.hp, i1 false
  %i.hq = add nsw i32 %i.hj, 64
  %spec.select37.i = select i1 %or.cond.i, i32 %i.hq, i32 %i.hj
  %i.hr = icmp sgt i32 %i.dt, 32
  %i.hs = icmp sgt i32 %i.hj, 63
  %or.cond3.i = select i1 %i.hr, i1 %i.hs, i1 false
  %i.ht = add nsw i32 %i.hj, -64
  %spec.select38.i = select i1 %or.cond3.i, i32 %i.ht, i32 %spec.select37.i
  br label %h263p_decode_umotion.exit.thread

h263p_decode_umotion.exit:                        ; preds = %bb.p
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.hv, ptr noundef nonnull @.str.40) #10
  %.pre197 = load i32, ptr %i.dr, align 8, !tbaa !57
  %i.hw = icmp eq i32 %.pre197, 0
  br i1 %i.hw, label %h263p_decode_umotion.exit.thread, label %h263p_decode_umotion.exit.thread212

h263p_decode_umotion.exit.thread212:              ; preds = %bb.q, %bb.m, %h263p_decode_umotion.exit
  %.094215 = phi i32 [ 65535, %h263p_decode_umotion.exit ], [ %i.fq, %bb.q ], [ %i.dt, %bb.m ] ; 3 uses
  %i.hx = load i32, ptr %i.b, align 4, !tbaa !80  ; 2 uses
  %i.hy = load i32, ptr %i.v, align 8, !tbaa !72  ; 4 uses
  %i.hz = load ptr, ptr %i.c, align 16, !tbaa !73 ; 4 uses
  %i.ia = lshr i32 %i.hy, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !71
  %i.ie = and i32 %i.hy, 7
  %i.if = zext i8 %i.id to i32
  %i.ig = add i32 %i.hy, 1                        ; 3 uses
  store i32 %i.ig, ptr %i.v, align 8, !tbaa !72
  %i.ih = lshr exact i32 128, %i.ie
  %i.ii = and i32 %i.ih, %i.if
  %.not.i109 = icmp eq i32 %i.ii, 0
  br i1 %.not.i109, label %bb.x, label %h263p_decode_umotion.exit115

bb.x:                                             ; preds = %h263p_decode_umotion.exit.thread212
  %i.ij = lshr i32 %i.ig, 3
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !71
  %i.in = and i32 %i.ig, 7
  %i.io = zext i8 %i.im to i32
  %i.ip = shl nuw nsw i32 %i.io, %i.in
  %i.iq = lshr i32 %i.ip, 7
  %i.ir = add i32 %i.hy, 2                        ; 2 uses
  store i32 %i.ir, ptr %i.v, align 8, !tbaa !72
  %i.is = and i32 %i.iq, 1
  %i.it = or disjoint i32 %i.is, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.iu = phi i32 [ %i.ir, %bb.x ], [ %i.jn, %bb.z ] ; 4 uses
  %.0.i111 = phi i32 [ %i.it, %bb.x ], [ %i.jp, %bb.z ] ; 3 uses
  %i.iv = lshr i32 %i.iu, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !71
  %i.iz = and i32 %i.iu, 7
  %i.ja = zext i8 %i.iy to i32
  %i.jb = add i32 %i.iu, 1                        ; 3 uses
  store i32 %i.jb, ptr %i.v, align 8, !tbaa !72
  %i.jc = lshr exact i32 128, %i.iz
  %i.jd = and i32 %i.jc, %i.ja
  %.not19.i112 = icmp eq i32 %i.jd, 0
  br i1 %.not19.i112, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.je = shl i32 %.0.i111, 1
  %i.jf = lshr i32 %i.jb, 3
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !71
  %i.jj = and i32 %i.jb, 7
  %i.jk = zext i8 %i.ji to i32
  %i.jl = shl nuw nsw i32 %i.jk, %i.jj
  %i.jm = lshr i32 %i.jl, 7
  %i.jn = add i32 %i.iu, 2                        ; 2 uses
  store i32 %i.jn, ptr %i.v, align 8, !tbaa !72
  %i.jo = and i32 %i.jm, 1
  %i.jp = or disjoint i32 %i.jo, %i.je            ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, 32767
  br i1 %i.jq, label %bb.aa, label %bb.y, !llvm.loop !0

bb.aa:                                            ; preds = %bb.z
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.js, ptr noundef nonnull @.str.40) #10
  br label %h263p_decode_umotion.exit115

bb.ab:                                            ; preds = %bb.y
  %i.jt = and i32 %.0.i111, 1
  %i.ju = ashr i32 %.0.i111, 1                    ; 2 uses
  %.not20.i113 = icmp eq i32 %i.jt, 0
  %i.jv = sub nsw i32 0, %i.ju
  %.p.i114 = select i1 %.not20.i113, i32 %i.ju, i32 %i.jv
  %i.jw = add i32 %.p.i114, %i.hx
  br label %h263p_decode_umotion.exit115

h263p_decode_umotion.exit.thread:                 ; preds = %bb.w, %bb.v, %get_vlc2.exit.i, %bb.t, %h263p_decode_umotion.exit
  %.094209 = phi i32 [ 65535, %h263p_decode_umotion.exit ], [ %spec.select38.i, %bb.w ], [ %i.hn, %bb.v ], [ %i.dt, %get_vlc2.exit.i ], [ 65535, %bb.t ] ; 4 uses
  %i.jx = load i32, ptr %i.b, align 4, !tbaa !80  ; 4 uses
  %i.jy = load i32, ptr %i.v, align 8, !tbaa !72  ; 4 uses
  %i.jz = load ptr, ptr %i.c, align 16, !tbaa !73 ; 3 uses
  %i.ka = lshr i32 %i.jy, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 1, !tbaa !71
  %i.ke = call i32 @llvm.bswap.i32(i32 %i.kd)
  %i.kf = and i32 %i.jy, 7
  %i.kg = shl i32 %i.ke, %i.kf
  %i.kh = lshr i32 %i.kg, 23
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.ki ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 4, !tbaa !71
  %i.kl = sext i16 %i.kk to i32                   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !71 ; 2 uses
  %i.ko = sext i16 %i.kn to i32                   ; 2 uses
  %i.kp = icmp slt i16 %i.kn, 0
  br i1 %i.kp, label %bb.ac, label %get_vlc2.exit.i116

bb.ac:                                            ; preds = %h263p_decode_umotion.exit.thread
  %i.kq = add i32 %i.jy, 9                        ; 3 uses
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 1, !tbaa !71
  %i.kv = call i32 @llvm.bswap.i32(i32 %i.ku)
  %i.kw = and i32 %i.kq, 7
  %i.kx = shl i32 %i.kv, %i.kw
  %i.ky = add nsw i32 %i.ko, 32
  %i.kz = lshr i32 %i.kx, %i.ky
  %i.la = add i32 %i.kz, %i.kl
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !71
  %i.lf = sext i16 %i.le to i32
  %i.lg = load i16, ptr %i.lc, align 4, !tbaa !71
  %i.lh = sext i16 %i.lg to i32
  br label %get_vlc2.exit.i116

get_vlc2.exit.i116:                               ; preds = %bb.ac, %h263p_decode_umotion.exit.thread
  %.154.i.i117 = phi i32 [ %i.lh, %bb.ac ], [ %i.kl, %h263p_decode_umotion.exit.thread ] ; 4 uses
  %.152.i.i118 = phi i32 [ %i.kq, %bb.ac ], [ %i.jy, %h263p_decode_umotion.exit.thread ]
  %.1.i.i119 = phi i32 [ %i.lf, %bb.ac ], [ %i.ko, %h263p_decode_umotion.exit.thread ]
  %i.li = add i32 %.1.i.i119, %.152.i.i118        ; 4 uses
  store i32 %i.li, ptr %i.v, align 8, !tbaa !72
  %i.lj = icmp eq i32 %.154.i.i117, 0
  br i1 %i.lj, label %h263p_decode_umotion.exit115, label %bb.ad

bb.ad:                                            ; preds = %get_vlc2.exit.i116
  %i.lk = icmp slt i32 %.154.i.i117, 0
  br i1 %i.lk, label %h263p_decode_umotion.exit115, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ll = lshr i32 %i.li, 3
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !71
  %i.lp = and i32 %i.li, 7
  %i.lq = zext i8 %i.lo to i32
  %i.lr = add i32 %i.li, 1
  store i32 %i.lr, ptr %i.v, align 8, !tbaa !72
  %i.ls = lshr exact i32 128, %i.lp
  %i.lt = and i32 %i.ls, %i.lq
  %.not35.i121 = icmp eq i32 %i.lt, 0
  %i.lu = sub nsw i32 0, %.154.i.i117
  %spec.select.i122 = select i1 %.not35.i121, i32 %.154.i.i117, i32 %i.lu
  %i.lv = add nsw i32 %spec.select.i122, %i.jx    ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !58
  %.not36.i123 = icmp eq i32 %i.lx, 0
  br i1 %.not36.i123, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ly = shl i32 %i.lv, 26
  %i.lz = ashr exact i32 %i.ly, 26
  br label %h263p_decode_umotion.exit115

bb.ag:                                            ; preds = %bb.ae
  %i.ma = icmp slt i32 %i.jx, -31
  %i.mb = icmp slt i32 %i.lv, -63
  %or.cond.i124 = select i1 %i.ma, i1 %i.mb, i1 false
  %i.mc = add nsw i32 %i.lv, 64
  %spec.select37.i125 = select i1 %or.cond.i124, i32 %i.mc, i32 %i.lv
  %i.md = icmp sgt i32 %i.jx, 32
  %i.me = icmp sgt i32 %i.lv, 63
  %or.cond3.i126 = select i1 %i.md, i1 %i.me, i1 false
  %i.mf = add nsw i32 %i.lv, -64
  %spec.select38.i127 = select i1 %or.cond3.i126, i32 %i.mf, i32 %spec.select37.i125
  br label %h263p_decode_umotion.exit115

h263p_decode_umotion.exit115:                     ; preds = %bb.ag, %bb.af, %bb.ad, %get_vlc2.exit.i116, %bb.ab, %bb.aa, %h263p_decode_umotion.exit.thread212
  %.094208 = phi i32 [ %.094215, %h263p_decode_umotion.exit.thread212 ], [ %.094215, %bb.ab ], [ %.094215, %bb.aa ], [ %.094209, %bb.ad ], [ %.094209, %get_vlc2.exit.i116 ], [ %.094209, %bb.af ], [ %.094209, %bb.ag ]
  %.0 = phi i32 [ %i.hx, %h263p_decode_umotion.exit.thread212 ], [ %i.jw, %bb.ab ], [ 65535, %bb.aa ], [ 65535, %bb.ad ], [ %i.jx, %get_vlc2.exit.i116 ], [ %i.lz, %bb.af ], [ %spec.select38.i127, %bb.ag ]
  %i.mg = trunc i32 %.094208 to i16               ; 4 uses
  %i.mh = sext i32 %i.u to i64
  %i.mi = getelementptr [2 x i8], ptr %i.dq, i64 %i.mh ; 4 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 4
  store i16 %i.mg, ptr %i.mj, align 2, !tbaa !70
  store i16 %i.mg, ptr %i.mi, align 2, !tbaa !70
  %i.mk = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i16 %i.mg, ptr %i.mk, align 2, !tbaa !70
  store i16 %i.mg, ptr %i.dq, align 2, !tbaa !70
  %i.ml = trunc i32 %.0 to i16                    ; 4 uses
  %i.mm = getelementptr i8, ptr %i.mi, i64 6
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !70
  %i.mn = getelementptr i8, ptr %i.mi, i64 2
  store i16 %i.ml, ptr %i.mn, align 2, !tbaa !70
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dq, i64 6
  store i16 %i.ml, ptr %i.mo, align 2, !tbaa !70
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store i16 %i.ml, ptr %i.mp, align 2, !tbaa !70
  br label %.loopexit

bb.ah:                                            ; preds = %bb.k
  store i32 4160, ptr %i.dp, align 4, !tbaa !80
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 4420 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %h263p_decode_umotion.exit157.thread
  %.2183 = phi i32 [ 0, %bb.ah ], [ %i.vq, %h263p_decode_umotion.exit157.thread ] ; 2 uses
  %i.mt = call ptr @ff_h263_pred_motion(ptr noundef nonnull %0, i32 noundef %.2183, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.mu = load i32, ptr %i.mq, align 8, !tbaa !57
  %.not103 = icmp eq i32 %i.mu, 0
  %i.mv = load i32, ptr %i.a, align 4, !tbaa !80  ; 6 uses
  %i.mw = load i32, ptr %i.v, align 8, !tbaa !72  ; 7 uses
  %i.mx = load ptr, ptr %i.c, align 16, !tbaa !73 ; 6 uses
  %i.my = lshr i32 %i.mw, 3
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mz ; 2 uses
  br i1 %.not103, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !71
  %i.nc = and i32 %i.mw, 7
  %i.nd = zext i8 %i.nb to i32
  %i.ne = add i32 %i.mw, 1                        ; 3 uses
  store i32 %i.ne, ptr %i.v, align 8, !tbaa !72
  %i.nf = lshr exact i32 128, %i.nc
  %i.ng = and i32 %i.nf, %i.nd
  %.not.i130 = icmp eq i32 %i.ng, 0
  br i1 %.not.i130, label %bb.ak, label %h263p_decode_umotion.exit136.thread222

bb.ak:                                            ; preds = %bb.aj
  %i.nh = lshr i32 %i.ne, 3
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !71
  %i.nl = and i32 %i.ne, 7
  %i.nm = zext i8 %i.nk to i32
  %i.nn = shl nuw nsw i32 %i.nm, %i.nl
  %i.no = lshr i32 %i.nn, 7
  %i.np = add i32 %i.mw, 2                        ; 2 uses
  store i32 %i.np, ptr %i.v, align 8, !tbaa !72
  %i.nq = and i32 %i.no, 1
  %i.nr = or disjoint i32 %i.nq, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.ns = phi i32 [ %i.np, %bb.ak ], [ %i.ol, %bb.am ] ; 4 uses
  %.0.i132 = phi i32 [ %i.nr, %bb.ak ], [ %i.on, %bb.am ] ; 3 uses
  %i.nt = lshr i32 %i.ns, 3
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !71
  %i.nx = and i32 %i.ns, 7
  %i.ny = zext i8 %i.nw to i32
  %i.nz = add i32 %i.ns, 1                        ; 3 uses
  store i32 %i.nz, ptr %i.v, align 8, !tbaa !72
  %i.oa = lshr exact i32 128, %i.nx
  %i.ob = and i32 %i.oa, %i.ny
  %.not19.i133 = icmp eq i32 %i.ob, 0
  br i1 %.not19.i133, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.oc = shl i32 %.0.i132, 1
  %i.od = lshr i32 %i.nz, 3
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !71
  %i.oh = and i32 %i.nz, 7
  %i.oi = zext i8 %i.og to i32
  %i.oj = shl nuw nsw i32 %i.oi, %i.oh
  %i.ok = lshr i32 %i.oj, 7
  %i.ol = add i32 %i.ns, 2                        ; 2 uses
  store i32 %i.ol, ptr %i.v, align 8, !tbaa !72
  %i.om = and i32 %i.ok, 1
  %i.on = or disjoint i32 %i.om, %i.oc            ; 2 uses
  %i.oo = icmp sgt i32 %i.on, 32767
  br i1 %i.oo, label %h263p_decode_umotion.exit136, label %bb.al, !llvm.loop !0

bb.an:                                            ; preds = %bb.al
  %i.op = and i32 %.0.i132, 1
  %i.oq = ashr i32 %.0.i132, 1                    ; 2 uses
  %.not20.i134 = icmp eq i32 %i.op, 0
  %i.or = sub nsw i32 0, %i.oq
  %.p.i135 = select i1 %.not20.i134, i32 %i.oq, i32 %i.or
  %i.os = add i32 %.p.i135, %i.mv
  br label %h263p_decode_umotion.exit136.thread222

bb.ao:                                            ; preds = %bb.ai
  %i.ot = load i32, ptr %i.na, align 1, !tbaa !71
  %i.ou = call i32 @llvm.bswap.i32(i32 %i.ot)
  %i.ov = and i32 %i.mw, 7
  %i.ow = shl i32 %i.ou, %i.ov
  %i.ox = lshr i32 %i.ow, 23
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 4, !tbaa !71
  %i.pb = sext i16 %i.pa to i32                   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !71 ; 2 uses
  %i.pe = sext i16 %i.pd to i32                   ; 2 uses
  %i.pf = icmp slt i16 %i.pd, 0
  br i1 %i.pf, label %bb.ap, label %get_vlc2.exit.i137

bb.ap:                                            ; preds = %bb.ao
  %i.pg = add i32 %i.mw, 9                        ; 3 uses
  %i.ph = lshr i32 %i.pg, 3
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 1, !tbaa !71
  %i.pl = call i32 @llvm.bswap.i32(i32 %i.pk)
  %i.pm = and i32 %i.pg, 7
  %i.pn = shl i32 %i.pl, %i.pm
  %i.po = add nsw i32 %i.pe, 32
  %i.pp = lshr i32 %i.pn, %i.po
  %i.pq = add i32 %i.pp, %i.pb
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.pr ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !71
  %i.pv = sext i16 %i.pu to i32
  %i.pw = load i16, ptr %i.ps, align 4, !tbaa !71
  %i.px = sext i16 %i.pw to i32
  br label %get_vlc2.exit.i137

get_vlc2.exit.i137:                               ; preds = %bb.ap, %bb.ao
  %.154.i.i138 = phi i32 [ %i.px, %bb.ap ], [ %i.pb, %bb.ao ] ; 4 uses
  %.152.i.i139 = phi i32 [ %i.pg, %bb.ap ], [ %i.mw, %bb.ao ]
  %.1.i.i140 = phi i32 [ %i.pv, %bb.ap ], [ %i.pe, %bb.ao ]
  %i.py = add i32 %.1.i.i140, %.152.i.i139        ; 4 uses
  store i32 %i.py, ptr %i.v, align 8, !tbaa !72
  %i.pz = icmp eq i32 %.154.i.i138, 0
  br i1 %i.pz, label %h263p_decode_umotion.exit136.thread, label %bb.aq

bb.aq:                                            ; preds = %get_vlc2.exit.i137
  %i.qa = icmp slt i32 %.154.i.i138, 0
  br i1 %i.qa, label %h263p_decode_umotion.exit136.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qb = lshr i32 %i.py, 3
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !71
  %i.qf = and i32 %i.py, 7
  %i.qg = zext i8 %i.qe to i32
  %i.qh = add i32 %i.py, 1
  store i32 %i.qh, ptr %i.v, align 8, !tbaa !72
  %i.qi = lshr exact i32 128, %i.qf
  %i.qj = and i32 %i.qi, %i.qg
  %.not35.i142 = icmp eq i32 %i.qj, 0
  %i.qk = sub nsw i32 0, %.154.i.i138
  %spec.select.i143 = select i1 %.not35.i142, i32 %.154.i.i138, i32 %i.qk
  %i.ql = add nsw i32 %spec.select.i143, %i.mv    ; 6 uses
  %i.qm = load i32, ptr %i.ms, align 4, !tbaa !58
  %.not36.i144 = icmp eq i32 %i.qm, 0
  br i1 %.not36.i144, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qn = shl i32 %i.ql, 26
  %i.qo = ashr exact i32 %i.qn, 26
  br label %h263p_decode_umotion.exit136.thread

bb.at:                                            ; preds = %bb.ar
  %i.qp = icmp slt i32 %i.mv, -31
  %i.qq = icmp slt i32 %i.ql, -63
  %or.cond.i145 = select i1 %i.qp, i1 %i.qq, i1 false
  %i.qr = add nsw i32 %i.ql, 64
  %spec.select37.i146 = select i1 %or.cond.i145, i32 %i.qr, i32 %i.ql
  %i.qs = icmp sgt i32 %i.mv, 32
  %i.qt = icmp sgt i32 %i.ql, 63
  %or.cond3.i147 = select i1 %i.qs, i1 %i.qt, i1 false
  %i.qu = add nsw i32 %i.ql, -64
  %spec.select38.i148 = select i1 %or.cond3.i147, i32 %i.qu, i32 %spec.select37.i146
  br label %h263p_decode_umotion.exit136.thread

h263p_decode_umotion.exit136:                     ; preds = %bb.am
  %i.qv = load ptr, ptr %i.mr, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.qv, ptr noundef nonnull @.str.40) #10
  %.pre = load i32, ptr %i.mq, align 8, !tbaa !57
  %i.qw = icmp eq i32 %.pre, 0
  br i1 %i.qw, label %h263p_decode_umotion.exit136.thread, label %h263p_decode_umotion.exit136.thread222

h263p_decode_umotion.exit136.thread222:           ; preds = %bb.an, %bb.aj, %h263p_decode_umotion.exit136
  %.195225 = phi i32 [ 65535, %h263p_decode_umotion.exit136 ], [ %i.os, %bb.an ], [ %i.mv, %bb.aj ] ; 5 uses
  %i.qx = load i32, ptr %i.b, align 4, !tbaa !80  ; 2 uses
  %i.qy = load i32, ptr %i.v, align 8, !tbaa !72  ; 4 uses
  %i.qz = load ptr, ptr %i.c, align 16, !tbaa !73 ; 4 uses
  %i.ra = lshr i32 %i.qy, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !71
  %i.re = and i32 %i.qy, 7
  %i.rf = zext i8 %i.rd to i32
  %i.rg = add i32 %i.qy, 1                        ; 3 uses
  store i32 %i.rg, ptr %i.v, align 8, !tbaa !72
  %i.rh = lshr exact i32 128, %i.re
  %i.ri = and i32 %i.rh, %i.rf
  %.not.i151 = icmp eq i32 %i.ri, 0
  br i1 %.not.i151, label %bb.au, label %h263p_decode_umotion.exit157.thread233

bb.au:                                            ; preds = %h263p_decode_umotion.exit136.thread222
  %i.rj = lshr i32 %i.rg, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !71
  %i.rn = and i32 %i.rg, 7
  %i.ro = zext i8 %i.rm to i32
  %i.rp = shl nuw nsw i32 %i.ro, %i.rn
  %i.rq = lshr i32 %i.rp, 7
  %i.rr = add i32 %i.qy, 2                        ; 2 uses
  store i32 %i.rr, ptr %i.v, align 8, !tbaa !72
  %i.rs = and i32 %i.rq, 1
  %i.rt = or disjoint i32 %i.rs, 2
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.ru = phi i32 [ %i.rr, %bb.au ], [ %i.sn, %bb.aw ] ; 4 uses
  %.0.i153 = phi i32 [ %i.rt, %bb.au ], [ %i.sp, %bb.aw ] ; 3 uses
  %i.rv = lshr i32 %i.ru, 3
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !71
  %i.rz = and i32 %i.ru, 7
  %i.sa = zext i8 %i.ry to i32
  %i.sb = add i32 %i.ru, 1                        ; 3 uses
  store i32 %i.sb, ptr %i.v, align 8, !tbaa !72
  %i.sc = lshr exact i32 128, %i.rz
  %i.sd = and i32 %i.sc, %i.sa
  %.not19.i154 = icmp eq i32 %i.sd, 0
  br i1 %.not19.i154, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.se = shl i32 %.0.i153, 1
  %i.sf = lshr i32 %i.sb, 3
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !71
  %i.sj = and i32 %i.sb, 7
  %i.sk = zext i8 %i.si to i32
  %i.sl = shl nuw nsw i32 %i.sk, %i.sj
  %i.sm = lshr i32 %i.sl, 7
  %i.sn = add i32 %i.ru, 2                        ; 2 uses
  store i32 %i.sn, ptr %i.v, align 8, !tbaa !72
  %i.so = and i32 %i.sm, 1
  %i.sp = or disjoint i32 %i.so, %i.se            ; 2 uses
  %i.sq = icmp sgt i32 %i.sp, 32767
  br i1 %i.sq, label %h263p_decode_umotion.exit157, label %bb.av, !llvm.loop !0

bb.ax:                                            ; preds = %bb.av
  %i.sr = and i32 %.0.i153, 1
  %i.ss = ashr i32 %.0.i153, 1                    ; 2 uses
  %.not20.i155 = icmp eq i32 %i.sr, 0
  %i.st = sub nsw i32 0, %i.ss
  %.p.i156 = select i1 %.not20.i155, i32 %i.ss, i32 %i.st
  %i.su = add i32 %.p.i156, %i.qx
  br label %h263p_decode_umotion.exit157.thread233

h263p_decode_umotion.exit136.thread:              ; preds = %bb.at, %bb.as, %get_vlc2.exit.i137, %bb.aq, %h263p_decode_umotion.exit136
  %.195219 = phi i32 [ 65535, %h263p_decode_umotion.exit136 ], [ %spec.select38.i148, %bb.at ], [ %i.qo, %bb.as ], [ %i.mv, %get_vlc2.exit.i137 ], [ 65535, %bb.aq ] ; 4 uses
  %i.sv = load i32, ptr %i.b, align 4, !tbaa !80  ; 4 uses
  %i.sw = load i32, ptr %i.v, align 8, !tbaa !72  ; 4 uses
  %i.sx = load ptr, ptr %i.c, align 16, !tbaa !73 ; 3 uses
  %i.sy = lshr i32 %i.sw, 3
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 1, !tbaa !71
  %i.tc = call i32 @llvm.bswap.i32(i32 %i.tb)
  %i.td = and i32 %i.sw, 7
  %i.te = shl i32 %i.tc, %i.td
  %i.tf = lshr i32 %i.te, 23
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.tg ; 2 uses
  %i.ti = load i16, ptr %i.th, align 4, !tbaa !71
  %i.tj = sext i16 %i.ti to i32                   ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !71 ; 2 uses
  %i.tm = sext i16 %i.tl to i32                   ; 2 uses
  %i.tn = icmp slt i16 %i.tl, 0
  br i1 %i.tn, label %bb.ay, label %get_vlc2.exit.i158

bb.ay:                                            ; preds = %h263p_decode_umotion.exit136.thread
  %i.to = add i32 %i.sw, 9                        ; 3 uses
  %i.tp = lshr i32 %i.to, 3
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 1, !tbaa !71
  %i.tt = call i32 @llvm.bswap.i32(i32 %i.ts)
  %i.tu = and i32 %i.to, 7
  %i.tv = shl i32 %i.tt, %i.tu
  %i.tw = add nsw i32 %i.tm, 32
  %i.tx = lshr i32 %i.tv, %i.tw
  %i.ty = add i32 %i.tx, %i.tj
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_mv_vlc, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 2
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !71
  %i.ud = sext i16 %i.uc to i32
  %i.ue = load i16, ptr %i.ua, align 4, !tbaa !71
  %i.uf = sext i16 %i.ue to i32
  br label %get_vlc2.exit.i158

get_vlc2.exit.i158:                               ; preds = %bb.ay, %h263p_decode_umotion.exit136.thread
  %.154.i.i159 = phi i32 [ %i.uf, %bb.ay ], [ %i.tj, %h263p_decode_umotion.exit136.thread ] ; 4 uses
  %.152.i.i160 = phi i32 [ %i.to, %bb.ay ], [ %i.sw, %h263p_decode_umotion.exit136.thread ]
  %.1.i.i161 = phi i32 [ %i.ud, %bb.ay ], [ %i.tm, %h263p_decode_umotion.exit136.thread ]
  %i.ug = add i32 %.1.i.i161, %.152.i.i160        ; 4 uses
  store i32 %i.ug, ptr %i.v, align 8, !tbaa !72
  %i.uh = icmp eq i32 %.154.i.i159, 0
  br i1 %i.uh, label %h263p_decode_umotion.exit157.thread, label %bb.az

bb.az:                                            ; preds = %get_vlc2.exit.i158
  %i.ui = icmp slt i32 %.154.i.i159, 0
  br i1 %i.ui, label %h263p_decode_umotion.exit157.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.uj = lshr i32 %i.ug, 3
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !71
  %i.un = and i32 %i.ug, 7
  %i.uo = zext i8 %i.um to i32
  %i.up = add i32 %i.ug, 1
  store i32 %i.up, ptr %i.v, align 8, !tbaa !72
  %i.uq = lshr exact i32 128, %i.un
  %i.ur = and i32 %i.uq, %i.uo
  %.not35.i163 = icmp eq i32 %i.ur, 0
  %i.us = sub nsw i32 0, %.154.i.i159
  %spec.select.i164 = select i1 %.not35.i163, i32 %.154.i.i159, i32 %i.us
  %i.ut = add nsw i32 %spec.select.i164, %i.sv    ; 6 uses
  %i.uu = load i32, ptr %i.ms, align 4, !tbaa !58
  %.not36.i165 = icmp eq i32 %i.uu, 0
  br i1 %.not36.i165, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.uv = shl i32 %i.ut, 26
  %i.uw = ashr exact i32 %i.uv, 26
  br label %h263p_decode_umotion.exit157.thread

bb.bc:                                            ; preds = %bb.ba
  %i.ux = icmp slt i32 %i.sv, -31
  %i.uy = icmp slt i32 %i.ut, -63
  %or.cond.i166 = select i1 %i.ux, i1 %i.uy, i1 false
  %i.uz = add nsw i32 %i.ut, 64
  %spec.select37.i167 = select i1 %or.cond.i166, i32 %i.uz, i32 %i.ut
  %i.va = icmp sgt i32 %i.sv, 32
  %i.vb = icmp sgt i32 %i.ut, 63
  %or.cond3.i168 = select i1 %i.va, i1 %i.vb, i1 false
  %i.vc = add nsw i32 %i.ut, -64
  %spec.select38.i169 = select i1 %or.cond3.i168, i32 %i.vc, i32 %spec.select37.i167
  br label %h263p_decode_umotion.exit157.thread

h263p_decode_umotion.exit157:                     ; preds = %bb.aw
  %i.vd = load ptr, ptr %i.mr, align 8, !tbaa !39
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.vd, ptr noundef nonnull @.str.40) #10
  %.pre196 = load i32, ptr %i.mq, align 8, !tbaa !57
  %i.ve = icmp eq i32 %.pre196, 0
  br i1 %i.ve, label %h263p_decode_umotion.exit157.thread, label %h263p_decode_umotion.exit157.thread233

h263p_decode_umotion.exit157.thread233:           ; preds = %bb.ax, %h263p_decode_umotion.exit136.thread222, %h263p_decode_umotion.exit157
  %.1238 = phi i32 [ 65535, %h263p_decode_umotion.exit157 ], [ %i.su, %bb.ax ], [ %i.qx, %h263p_decode_umotion.exit136.thread222 ] ; 4 uses
  %i.vf = load i32, ptr %i.a, align 4, !tbaa !80
  %i.vg = sub nsw i32 %.195225, %i.vf
  %i.vh = icmp eq i32 %i.vg, 1
  br i1 %i.vh, label %bb.bd, label %h263p_decode_umotion.exit157.thread

bb.bd:                                            ; preds = %h263p_decode_umotion.exit157.thread233
  %i.vi = load i32, ptr %i.b, align 4, !tbaa !80
  %i.vj = sub nsw i32 %.1238, %i.vi
  %i.vk = icmp eq i32 %i.vj, 1
  br i1 %i.vk, label %bb.be, label %h263p_decode_umotion.exit157.thread

bb.be:                                            ; preds = %bb.bd
  %i.vl = load i32, ptr %i.v, align 8, !tbaa !72
  %i.vm = add i32 %i.vl, 1
  store i32 %i.vm, ptr %i.v, align 8, !tbaa !72
  br label %h263p_decode_umotion.exit157.thread

h263p_decode_umotion.exit157.thread:              ; preds = %bb.bc, %bb.bb, %get_vlc2.exit.i158, %bb.az, %bb.be, %bb.bd, %h263p_decode_umotion.exit157.thread233, %h263p_decode_umotion.exit157
  %.1230 = phi i32 [ 65535, %h263p_decode_umotion.exit157 ], [ %.1238, %bb.be ], [ %.1238, %bb.bd ], [ %.1238, %h263p_decode_umotion.exit157.thread233 ], [ %spec.select38.i169, %bb.bc ], [ %i.uw, %bb.bb ], [ %i.sv, %get_vlc2.exit.i158 ], [ 65535, %bb.az ]
  %.195218229 = phi i32 [ %.195225, %h263p_decode_umotion.exit157 ], [ %.195225, %bb.be ], [ %.195225, %bb.bd ], [ %.195225, %h263p_decode_umotion.exit157.thread233 ], [ %.195219, %bb.bc ], [ %.195219, %bb.bb ], [ %.195219, %get_vlc2.exit.i158 ], [ %.195219, %bb.az ]
  %i.vn = trunc i32 %.195218229 to i16
  store i16 %i.vn, ptr %i.mt, align 2, !tbaa !70
  %i.vo = trunc i32 %.1230 to i16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !70
  %i.vq = add nuw nsw i32 %.2183, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.vq, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !141

.loopexit:                                        ; preds = %h263p_decode_umotion.exit157.thread, %bb.f, %h263p_decode_umotion.exit115, %bb.b
  %i.vr = load <4 x i32>, ptr %i.l, align 16, !tbaa !80
  %i.vs = add nsw <4 x i32> %i.vr, splat (i32 -2)
  store <4 x i32> %i.vs, ptr %i.l, align 16, !tbaa !80
  %i.vt = load <2 x i32>, ptr %i.o, align 16, !tbaa !80
  %i.vu = add nsw <2 x i32> %i.vt, splat (i32 -1)
  store <2 x i32> %i.vu, ptr %i.o, align 16, !tbaa !80
  %i.vv = load i32, ptr %i.d, align 4, !tbaa !75
  %i.vw = add nsw i32 %i.vv, -1
  store i32 %i.vw, ptr %i.d, align 4, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_h263_decode_picture_header(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 17 uses
  %i.b = getelementptr i8, ptr %0, i64 4392       ; 73 uses
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !72 ; 3 uses
  %i.c = sub nsw i32 0, %.val.i
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %align_get_bits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.d, %.val.i                    ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !72
  br label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %bb.a, %bb.b
  %.val308 = phi i32 [ %.val.i, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.g = lshr i32 %.val308, 3
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !71
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %.val308, 7                      ; 3 uses
  %i.m = shl i32 %i.k, %i.l
  %i.n = icmp slt i32 %i.m, -1073741824
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %align_get_bits.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 824
  %i.r = load i64, ptr %i.q, align 8, !tbaa !146
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.p, i32 noundef 24, ptr noundef nonnull @.str.17) #10
  %.pre = load i32, ptr %i.b, align 8, !tbaa !72  ; 3 uses
  %.pre329 = load ptr, ptr %i.a, align 8, !tbaa !73
  %.pre349 = lshr i32 %.pre, 3
  %.pre350 = zext nneg i32 %.pre349 to i64
  %.pre352 = and i32 %.pre, 7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %align_get_bits.exit
  %.pre-phi353 = phi i32 [ %.pre352, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %align_get_bits.exit ]
  %.pre-phi351 = phi i64 [ %.pre350, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %align_get_bits.exit ]
  %i.t = phi ptr [ %.pre329, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %align_get_bits.exit ] ; 19 uses
  %i.u = phi i32 [ %.pre, %bb.d ], [ %.val308, %bb.c ], [ %.val308, %align_get_bits.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pre-phi351
  %i.w = load i32, ptr %i.v, align 1, !tbaa !71
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = shl i32 %i.x, %.pre-phi353
  %i.z = lshr i32 %i.y, 18                        ; 2 uses
  %i.aa = add i32 %i.u, 14                        ; 5 uses
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !72
  %i.ab = getelementptr i8, ptr %0, i64 4396      ; 3 uses
  %.val306 = load i32, ptr %i.ab, align 4, !tbaa !78 ; 2 uses
  %i.ac = sub nsw i32 %.val306, %i.aa             ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 24
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ae = and i32 %i.aa, 7
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.af = add nsw i32 %.0258318, -8
  %i.ag = icmp sgt i32 %.0258318, 32
  br i1 %i.ag, label %bb.g, label %._crit_edge, !llvm.loop !142

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ah = phi i32 [ %i.aa, %.lr.ph ], [ %i.ao, %bb.f ] ; 2 uses
  %.0258318 = phi i32 [ %i.ac, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %.0260317 = phi i32 [ %i.z, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.ai = lshr i32 %i.ah, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !71
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = shl i32 %i.am, %i.ae
  %i.ao = add i32 %i.ah, 8                        ; 4 uses
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !72
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %.0260317, i32 %i.an, i32 8)
  %i.aq = and i32 %i.ap, 4194303                  ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 32
  br i1 %i.ar, label %.thread, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.as = phi i32 [ %i.aa, %bb.e ], [ %i.ao, %bb.f ]
  %.0260.lcssa = phi i32 [ %i.z, %bb.e ], [ %i.aq, %bb.f ]
  %.not = icmp eq i32 %.0260.lcssa, 32
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 16, ptr noundef nonnull @.str.18) #10
  br label %.critedge

.thread:                                          ; preds = %bb.g, %._crit_edge
  %i.av = phi i32 [ %i.as, %._crit_edge ], [ %i.ao, %bb.g ] ; 21 uses
  %i.aw = lshr i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !71
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %i.av, 7                        ; 2 uses
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 24                      ; 2 uses
  %i.be = add i32 %i.av, 8                        ; 3 uses
  store i32 %i.be, ptr %i.b, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4412 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !147 ; 2 uses
  %i.bh = and i32 %i.bg, 255
  %reass.sub = sub nsw i32 %i.bd, %i.bh
  %i.bi = add nsw i32 %reass.sub, 128
  %i.bj = and i32 %i.bi, -256
  %i.bk = and i32 %i.bg, -256
  %i.bl = or disjoint i32 %i.bk, %i.bd
  %i.bm = sub i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !147
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 20 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 11 uses
  %i.bp = lshr i32 %i.be, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !71
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.av, 9                        ; 3 uses
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !72
  %i.bv = lshr exact i32 128, %i.bb
  %i.bw = and i32 %i.bv, %i.bt
  %.not.i309 = icmp eq i32 %i.bw, 0
  br i1 %.not.i309, label %check_marker.exit.thread, label %check_marker.exit

check_marker.exit.thread:                         ; preds = %.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bo, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %i.be, i32 noundef %.val306, ptr noundef nonnull @.str.19) #10
  br label %.critedge

end_hunk_2
