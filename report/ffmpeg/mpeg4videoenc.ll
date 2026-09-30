Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videoenc?download=true
inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_blocks_intra:bb.a
  %i.o = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !52
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = icmp sgt i32 %i.k, %i.n
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = shl i32 %i.j, %i.n
  %i.t = or i32 %i.s, %i.q
  %i.u = sub nuw nsw i32 %i.k, %i.n
  br label %mpeg4_encode_dc.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %i.j, %i.k
  %i.ac = sub nsw i32 %i.n, %i.k
  %i.ad = lshr i32 %i.q, %i.ac
  %i.ae = or i32 %i.ad, %i.ab
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %i.w, align 1, !tbaa !50
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !53
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub12.i = add nsw i32 %i.k, 32
  %i.ai = sub i32 %reass.sub12.i, %i.n
  br label %mpeg4_encode_dc.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr @uni_DCtab_chrom_len, i64 %i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !50
  %i.al = zext i8 %i.ak to i32                    ; 5 uses
  %i.am = getelementptr inbounds [2 x i8], ptr @uni_DCtab_chrom_bits, i64 %i.i
  %i.an = load i16, ptr %i.am, align 2, !tbaa !52
  %i.ao = zext i16 %i.an to i32                   ; 3 uses
  %i.ap = icmp sgt i32 %i.k, %i.al
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = shl i32 %i.j, %i.al
  %i.ar = or i32 %i.aq, %i.ao
  %i.as = sub nuw nsw i32 %i.k, %i.al
  br label %mpeg4_encode_dc.exit

bb.l:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ugt i64 %i.ax, 3
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = shl i32 %i.j, %i.k
  %i.ba = sub nsw i32 %i.al, %i.k
  %i.bb = lshr i32 %i.ao, %i.ba
  %i.bc = or i32 %i.bb, %i.az
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %i.au, align 1, !tbaa !50
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !53
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %reass.sub.i = add nsw i32 %i.k, 32
  %i.bg = sub i32 %reass.sub.i, %i.al
  br label %mpeg4_encode_dc.exit

mpeg4_encode_dc.exit:                             ; preds = %bb.e, %bb.i, %bb.k, %bb.o
  %.026.i.i8.sink.i = phi i32 [ %i.q, %bb.i ], [ %i.t, %bb.e ], [ %i.ar, %bb.k ], [ %i.ao, %bb.o ]
  %.0.i.i9.sink.i = phi i32 [ %i.ai, %bb.i ], [ %i.u, %bb.e ], [ %i.as, %bb.k ], [ %i.bg, %bb.o ]
  store i32 %.026.i.i8.sink.i, ptr %4, align 8, !tbaa !55
  store i32 %.0.i.i9.sink.i, ptr %i.a, align 4, !tbaa !54
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !49 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mpeg4_encode_dc.exit
  %i.bk = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108
  tail call fastcc void @mpeg4_encode_ac_coeffs(ptr noundef %i.bk, i32 noundef %i.bi, i32 noundef 1, ptr noundef %i.bm, ptr noundef %5, ptr noundef nonnull @uni_mpeg4_intra_rl_bits, ptr noundef nonnull @uni_mpeg4_intra_rl_len)
  br label %bb.q

bb.q:                                             ; preds = %mpeg4_encode_dc.exit, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !195
}

declare void @ff_h263_encode_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mpeg4_encode_ac_coeffs(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = icmp samesign ult i32 %2, %1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.f = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.03954 = phi i32 [ %i.a, %.lr.ph ], [ %.1, %bb.o ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !52   ; 2 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = xor i32 %.03954, -1
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = add i32 %i.n, %i.m                       ; 2 uses
  %i.p = add nsw i32 %i.l, 64                     ; 2 uses
  %i.q = icmp ult i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = shl nsw i32 %i.o, 7
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %6, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50
  %i.w = zext i8 %i.v to i32                      ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %5, i64 %i.t
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49   ; 3 uses
  %i.z = load i32, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !54  ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, %i.w
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = shl i32 %i.z, %i.w
  %i.ad = or i32 %i.ac, %i.y
  %i.ae = sub nuw nsw i32 %i.aa, %i.w
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 3
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = shl i32 %i.z, %i.aa
  %i.am = sub nsw i32 %i.w, %i.aa
  %i.an = lshr i32 %i.y, %i.am
  %i.ao = or i32 %i.an, %i.al
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.ag, align 1, !tbaa !50
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !53
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub = sub i32 %i.aa, %i.w
  %i.as = add i32 %reass.sub, 32
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.at = shl i32 %i.o, 14
  %i.au = shl nsw i32 %i.l, 1
  %i.av = and i32 %i.au, 8190
  %7 = add i32 %i.at, 31465473
  %i.aw = or disjoint i32 %i.av, %7               ; 4 uses
  %i.ax = load i32, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !54  ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 30
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = shl i32 %i.ax, 30
  %i.bb = or i32 %i.ba, %i.aw
  br label %put_bits.exit44

bb.l:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ugt i64 %i.bg, 3
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = shl i32 %i.ax, %i.ay
  %i.bj = sub nsw i32 30, %i.ay
  %i.bk = lshr i32 %i.aw, %i.bj
  %i.bl = or i32 %i.bk, %i.bi
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  store i32 %i.bm, ptr %i.bd, align 1, !tbaa !50
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store ptr %i.bo, ptr %i.e, align 8, !tbaa !53
  br label %put_bits.exit44

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.m, %bb.n, %bb.k
  %.sink = phi i32 [ -30, %bb.k ], [ 2, %bb.n ], [ 2, %bb.m ]
  %.026.i.i42 = phi i32 [ %i.bb, %bb.k ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ]
  %i.bp = add nsw i32 %i.ay, %.sink
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.e, %put_bits.exit44
  %.026.i.i.sink = phi i32 [ %.026.i.i42, %put_bits.exit44 ], [ %i.ad, %bb.e ], [ %i.y, %bb.i ]
  %.0.i.i.sink = phi i32 [ %i.bp, %put_bits.exit44 ], [ %i.ae, %bb.e ], [ %i.as, %bb.i ]
  store i32 %.026.i.i.sink, ptr %4, align 8, !tbaa !55
  store i32 %.0.i.i.sink, ptr %i.c, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ %.03954, %bb.b ], [ %i.n, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.039.lcssa = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.o ]
  %.0.lcssa = phi i32 [ %2, %bb.a ], [ %1, %bb.o ] ; 2 uses
  %i.bq = zext nneg i32 %.0.lcssa to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !50
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !52
  %i.bw = sext i16 %i.bv to i32                   ; 2 uses
  %i.bx = xor i32 %.039.lcssa, -1
  %i.by = add i32 %.0.lcssa, %i.bx                ; 2 uses
  %i.bz = add nsw i32 %i.bw, 64                   ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 128
  br i1 %i.ca, label %bb.p, label %bb.v

bb.p:                                             ; preds = %._crit_edge
  %i.cb = shl nsw i32 %i.by, 7
  %i.cc = add nsw i32 %i.cb, 8192
  %i.cd = or disjoint i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %6, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !50
  %i.ch = zext i8 %i.cg to i32                    ; 5 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ce
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !49 ; 3 uses
  %i.ck = load i32, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !54 ; 5 uses
  %i.cn = icmp sgt i32 %i.cm, %i.ch
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = shl i32 %i.ck, %i.ch
  %i.cp = or i32 %i.co, %i.cj
  %i.cq = sub nuw nsw i32 %i.cm, %i.ch
  br label %put_bits.exit48

bb.r:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 2 uses
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = icmp ugt i64 %i.cx, 3
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = shl i32 %i.ck, %i.cm
  %i.da = sub nsw i32 %i.ch, %i.cm
  %i.db = lshr i32 %i.cj, %i.da
  %i.dc = or i32 %i.db, %i.cz
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc)
  store i32 %i.dd, ptr %i.cu, align 1, !tbaa !50
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.df, ptr %i.ct, align 8, !tbaa !53
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub57 = sub i32 %i.cm, %i.ch
  %i.dg = add i32 %reass.sub57, 32
  br label %put_bits.exit48

put_bits.exit48:                                  ; preds = %bb.q, %bb.u
  %.026.i.i46 = phi i32 [ %i.cp, %bb.q ], [ %i.cj, %bb.u ]
  %.0.i.i47 = phi i32 [ %i.cq, %bb.q ], [ %i.dg, %bb.u ]
  store i32 %.026.i.i46, ptr %4, align 8, !tbaa !55
  store i32 %.0.i.i47, ptr %i.cl, align 4, !tbaa !54
  br label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  %i.dh = shl i32 %i.by, 14
  %i.di = shl nsw i32 %i.bw, 1
  %i.dj = and i32 %i.di, 8190
  %8 = add i32 %i.dh, 32514049
  %i.dk = or disjoint i32 %i.dj, %8               ; 4 uses
  %i.dl = load i32, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !54 ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 30
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = shl i32 %i.dl, 30
  %i.dq = or i32 %i.dp, %i.dk
  br label %put_bits.exit52

bb.x:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !56
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !53 ; 2 uses
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ugt i64 %i.dx, 3
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = shl i32 %i.dl, %i.dn
  %i.ea = sub nsw i32 30, %i.dn
  %i.eb = lshr i32 %i.dk, %i.ea
  %i.ec = or i32 %i.eb, %i.dz
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  store i32 %i.ed, ptr %i.du, align 1, !tbaa !50
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.ef, ptr %i.dt, align 8, !tbaa !53
  br label %put_bits.exit52

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #14
  br label %put_bits.exit52

put_bits.exit52:                                  ; preds = %bb.y, %bb.z, %bb.w
  %.sink75 = phi i32 [ -30, %bb.w ], [ 2, %bb.z ], [ 2, %bb.y ]
  %.026.i.i50 = phi i32 [ %i.dq, %bb.w ], [ %i.dk, %bb.z ], [ %i.dk, %bb.y ]
  %i.eg = add nsw i32 %i.dn, %.sink75
  store i32 %.026.i.i50, ptr %4, align 8, !tbaa !55
  store i32 %i.eg, ptr %i.dm, align 4, !tbaa !54
  br label %bb.aa

bb.aa:                                            ; preds = %put_bits.exit52, %put_bits.exit48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_dc_tab() unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ -256, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.a = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.b = icmp eq i64 %indvars.iv, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.d = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.e = sub nuw nsw i32 32, %i.d
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  %.045.lcssa = phi i32 [ 0, %bb.b ], [ %i.e, %.lr.ph.preheader ] ; 9 uses
  %i.f = zext nneg i32 %.045.lcssa to i64         ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_lum, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !50    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !50    ; 2 uses
  %.not50 = icmp eq i32 %.045.lcssa, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = zext i8 %i.j to i32
  %i.l = zext i8 %i.h to i32
  %i.m = icmp slt i64 %indvars.iv, 0
  %notmask = shl nsw i32 -1, %.045.lcssa
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = add i32 %i.n, -1
  %i.p = xor i32 %notmask, %i.o
  %.0 = select i1 %i.m, i32 %i.p, i32 %i.a        ; 2 uses
  %i.q = shl i32 %i.l, %.045.lcssa
  %i.r = or i32 %i.q, %.0                         ; 2 uses
  %i.s = add nuw nsw i32 %.045.lcssa, %i.k
  %i.t = icmp samesign ugt i32 %.045.lcssa, 8     ; 2 uses
  %i.u = shl i32 %i.r, 1
  %i.v = or disjoint i32 %i.u, 1
  %.047.ph = select i1 %i.t, i32 %i.v, i32 %i.r
  %i.w = zext i1 %i.t to i32
  %.046.ph = add nuw nsw i32 %i.s, %i.w
  %i.x = trunc i32 %.047.ph to i16
  %i.y = add nsw i64 %indvars.iv, 256             ; 4 uses
  %i.z = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.y
  store i16 %i.x, ptr %i.z, align 2, !tbaa !52
  %i.aa = trunc i32 %.046.ph to i8
  %i.ab = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !50
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !50
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl i32 %i.ae, %.045.lcssa
  %i.aj = or i32 %i.ai, %.0                       ; 2 uses
  %i.ak = add nuw nsw i32 %.045.lcssa, %i.ah      ; 2 uses
  %i.al = icmp samesign ugt i32 %.045.lcssa, 8
  br i1 %i.al, label %bb.e, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.am = zext i8 %i.h to i16
  %i.an = add nsw i64 %indvars.iv, 256            ; 3 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr @uni_DCtab_lum_bits, i64 %i.an
  store i16 %i.am, ptr %i.ao, align 2, !tbaa !52
  %i.ap = getelementptr inbounds i8, ptr @uni_DCtab_lum_len, i64 %i.an
  store i8 %i.j, ptr %i.ap, align 1, !tbaa !50
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.f ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !50
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !50
  %i.av = zext i8 %i.au to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = shl i32 %i.aj, 1
  %i.ax = or disjoint i32 %i.aw, 1
  %i.ay = add nuw nsw i32 %i.ak, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %i.az = phi i64 [ %i.y, %bb.e ], [ %i.y, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  %.148 = phi i32 [ %i.ax, %bb.e ], [ %i.aj, %bb.c ], [ %i.as, %bb.d ]
  %.1 = phi i32 [ %i.ay, %bb.e ], [ %i.ak, %bb.c ], [ %i.av, %bb.d ]
  %i.ba = trunc i32 %.148 to i16
  %i.bb = getelementptr inbounds [2 x i8], ptr @uni_DCtab_chrom_bits, i64 %i.az
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !52
  %i.bc = trunc i32 %.1 to i8
  %i.bd = getelementptr inbounds i8, ptr @uni_DCtab_chrom_len, i64 %i.az
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !197

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_uni_mpeg4_rl_tab(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 16384)) %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca [2 x [32 x i8]], align 16         ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %2, i8 30, i64 16384, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 11 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge
  %indvars.iv154 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next155, %.critedge ] ; 3 uses
  %i.d = shl nuw nsw i64 %indvars.iv154, 14       ; 3 uses
  %i.e = add nuw nsw i64 %i.d, 31465473           ; 2 uses
  %i.f = shl nuw nsw i64 %indvars.iv154, 7        ; 5 uses
  %i.g = or disjoint i64 %i.f, 8192               ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = trunc i64 %i.d to i32
  %3 = add i32 %i.j, 31473663
  store i32 %3, ptr %i.i, align 4, !tbaa !49
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 32764
  %i.k = trunc i64 %i.d to i32
  %5 = add i32 %i.k, 32522239
  store i32 %5, ptr %4, align 4, !tbaa !49
  %6 = trunc nuw nsw i64 %i.e to i32
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.q = or i32 %i.p, %6                          ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.q, ptr %gep, align 4, !tbaa !49
  %i.r = or i32 %i.q, 1048576
  %gep165 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv
  store i32 %i.r, ptr %gep165, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.s = mul nuw nsw i64 %indvars.iv.next, 8190
  %i.t = and i64 %i.s, 8190
  %i.u = or disjoint i64 %i.t, %i.e               ; 2 uses
  %i.v = sub nsw i64 %i.f, %indvars.iv.next
  %i.w = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.v
  %i.x = trunc nuw nsw i64 %i.u to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !49
  %i.y = sub nuw nsw i64 %i.g, %indvars.iv.next
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = trunc i64 %i.u to i32
  %i.ab = or i32 %i.aa, 1048576
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !49
  %.not142 = icmp eq i64 %indvars.iv.next, 64
  br i1 %.not142, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.ac, align 1, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  store i8 0, ptr %i.ad, align 1, !tbaa !50
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, 64
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !198

bb.d:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.e:                                             ; preds = %bb.b, %bb.j
  %indvars.iv157 = phi i64 [ 101, %bb.b ], [ %indvars.iv.next158, %bb.j ] ; 6 uses
  %.0151 = phi i32 [ 0, %bb.b ], [ %i.ah, %bb.j ]
  %.0132150 = phi i32 [ undef, %bb.b ], [ %spec.select, %bb.j ]
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !201
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv157
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50  ; 2 uses
  %i.ah = sext i8 %i.ag to i32                    ; 4 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !202
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv157
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !50  ; 2 uses
  %i.al = sext i8 %i.ak to i32                    ; 6 uses
  %i.am = load i32, ptr %i.n, align 4, !tbaa !203
  %i.an = sext i32 %i.am to i64
  %.not145 = icmp slt i64 %indvars.iv157, %i.an   ; 2 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !204
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv157 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !52
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 1                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !52 ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 3 uses
  %i.aw = select i1 %.not145, i32 0, i32 8192     ; 2 uses
  %i.ax = shl nsw i32 %i.ah, 7
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 4 uses
  %i.az = add nsw i32 %i.ay, %i.al
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ba
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !49
  %i.bc = trunc i16 %i.au to i8                   ; 2 uses
  %i.bd = add i8 %i.bc, 1                         ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.b, i64 %i.ba
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !50
  %i.bf = or disjoint i32 %i.as, 1
  %i.bg = sub nsw i32 %i.ay, %i.al
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bh
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !49
  %i.bj = getelementptr inbounds i8, ptr %i.b, i64 %i.bh
  store i8 %i.bd, ptr %i.bj, align 1, !tbaa !50
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not145, i64 0, i64 32
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bk = sext i8 %i.ak to i64
  %i.bl = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !50  ; 2 uses
  %.not = icmp eq i8 %i.bm, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = add i8 %i.ag, 1                         ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = phi i8 [ %i.bn, %bb.f ], [ %i.bm, %bb.e ]
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, %i.ah                ; 2 uses
  %i.br = add nuw nsw i32 %i.av, 10               ; 2 uses
  %i.bs = icmp slt i32 %i.bq, 64
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bt = shl nsw i32 %i.bq, 7
  %i.bu = add nsw i32 %i.bt, %i.aw                ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.al
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50
  %i.bz = zext i8 %i.by to i32
  %i.ca = icmp samesign ult i32 %i.br, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = shl i32 28, %i.av
  %i.cc = or i32 %i.cb, %i.as                     ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bw
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !49
  %i.ce = trunc nuw i32 %i.br to i8               ; 2 uses
  store i8 %i.ce, ptr %i.bx, align 1, !tbaa !50
  %i.cf = or disjoint i32 %i.cc, 1
  %i.cg = sub nsw i32 %i.bu, %i.al
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !49
  %i.cj = getelementptr inbounds i8, ptr %i.b, i64 %i.ch
  store i8 %i.ce, ptr %i.cj, align 1, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not141 = icmp eq i32 %.0151, %i.ah
  %spec.select = select i1 %.not141, i32 %.0132150, i32 %i.al ; 2 uses
  %i.ck = shl i32 12, %i.av
  %i.cl = or i32 %i.ck, %i.as                     ; 2 uses
  %i.cm = add nsw i32 %spec.select, %i.al         ; 2 uses
  %i.cn = add nsw i32 %i.ay, %i.cm
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.co
  store i32 %i.cl, ptr %i.cp, align 4, !tbaa !49
  %i.cq = add i8 %i.bc, 9                         ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.b, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !50
  %i.cs = or disjoint i32 %i.cl, 1
  %i.ct = sub nsw i32 %i.ay, %i.cm
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cu
  store i32 %i.cs, ptr %i.cv, align 4, !tbaa !49
  %i.cw = getelementptr inbounds i8, ptr %i.b, i64 %i.cu
  store i8 %i.cq, ptr %i.cw, align 1, !tbaa !50
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1
  %.not163 = icmp eq i64 %indvars.iv157, 0
  br i1 %.not163, label %bb.d, label %bb.e, !llvm.loop !199
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @ff_h263_aspect_to_info(i64) local_unnamed_addr #11

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ff_write_quant_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ff_put_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
