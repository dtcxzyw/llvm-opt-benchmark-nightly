Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/agm?download=true
inline.NumInlined: 66
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@read_code:bb.a
  %i.o = or disjoint i32 %i.n, 10
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.042 = phi i32 [ %i.o, %bb.l ], [ 3, %bb.d ], [ 7, %bb.e ], [ 2, %bb.f ], [ 4, %bb.g ], [ 8, %bb.h ], [ 5, %bb.i ], [ 9, %bb.j ], [ 6, %bb.k ], [ 1, %bb.c ], [ 1, %bb.c ] ; 3 uses
  %.041 = phi i32 [ 5, %bb.l ], [ 4, %bb.d ], [ 4, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 4, %bb.h ], [ 4, %bb.i ], [ 4, %bb.j ], [ 4, %bb.k ], [ 3, %bb.c ], [ 3, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = add i32 %.041, %.val
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 4 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !70
  %i.t = lshr i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !tbaa !54
  %i.x = and i32 %i.s, 7
  %i.y = lshr i32 %i.w, %i.x
  %i.z = sub nuw nsw i32 32, %.042
  %i.aa = lshr i32 -1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %i.ac = add i32 %i.s, %.042
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ac)
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !70
  store i32 %i.ab, ptr %2, align 4, !tbaa !73
  store i32 1, ptr %3, align 4, !tbaa !73
  store i32 0, ptr %1, align 4, !tbaa !73
  %i.ae = add nsw i32 %.042, -1
  %i.af = shl nuw nsw i32 1, %i.ae                ; 2 uses
  %i.ag = load i32, ptr %2, align 4, !tbaa !73    ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.af
  br i1 %i.ah, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.af, %i.ag
  %i.aj = sub nsw i32 0, %i.ai
  br label %.sink.split

bb.o:                                             ; preds = %bb.b
  %i.ak = and i32 %i.j, 4
  %.not46 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !69 ; 4 uses
  %i.an = add i32 %.val, 3
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.an) ; 8 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !70
  %i.ap = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not46, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i32 %i.ao, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !54
  %i.au = and i32 %i.ao, 7
  %i.av = lshr i32 %i.at, %i.au                   ; 2 uses
  br i1 %i.ap, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %i.ax = add i32 %i.ao, 4
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ax) ; 7 uses
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !70
  switch i32 %i.aw, label %bb.u [
    i32 0, label %bb.s
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.az = lshr i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !54
  %i.bd = and i32 %i.ay, 7
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = and i32 %i.be, 65535
  %i.bg = add i32 %i.ay, 16
  br label %.sink.split65

bb.s:                                             ; preds = %bb.q
  %i.bh = lshr i32 %i.ay, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !54
  %i.bl = and i32 %i.ay, 7
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = and i32 %i.bm, 1023
  %i.bo = add i32 %i.ay, 10
  br label %.sink.split65

bb.t:                                             ; preds = %bb.p
  %i.bp = and i32 %i.av, 1023
  %i.bq = add i32 %i.ao, 10
  br label %.sink.split65

.sink.split65:                                    ; preds = %bb.r, %bb.s, %bb.t
  %.sink67 = phi i32 [ %i.bq, %bb.t ], [ %i.bo, %bb.s ], [ %i.bg, %bb.r ]
  %.sink.ph = phi i32 [ %i.bp, %bb.t ], [ %i.bn, %bb.s ], [ %i.bf, %bb.r ]
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %.sink67)
  store i32 %i.br, ptr %i.a, align 8, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %.sink.split65, %bb.q
  %.sink = phi i32 [ %i.aw, %bb.q ], [ %.sink.ph, %.sink.split65 ]
  store i32 %.sink, ptr %1, align 4, !tbaa !73
  br label %.sink.split

bb.v:                                             ; preds = %bb.o
  br i1 %i.ap, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = lshr i32 %i.ao, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !54
  %i.bw = and i32 %i.ao, 7
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = and i32 %i.bx, 15
  %i.bz = add i32 %i.ao, 4
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.bz)
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !70
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %storemerge = phi i32 [ %i.by, %bb.w ], [ 0, %bb.v ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !73
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.x, %bb.n
  %.sink64 = phi i32 [ %i.aj, %bb.n ], [ 0, %bb.x ], [ 0, %bb.u ]
  store i32 %.sink64, ptr %2, align 4, !tbaa !73
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.m, %bb.c, %bb.a
  %.0 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.a ], [ 0, %bb.m ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_inter_plane(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 20)) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %or.cond.i = icmp ugt i32 %2, 268435455
  %i.d = shl nuw nsw i32 %2, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.e, 2147483135    ; 2 uses
  %i.f = icmp ne ptr %i.c, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.f       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.c, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.e, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %1, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  store i32 %.013.i.i, ptr %i.g, align 4, !tbaa !68
  %i.h = add nuw nsw i32 %.013.i.i, 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  store i32 0, ptr %i.j, align 8, !tbaa !70
  br i1 %or.cond3.i.i, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87   ; 3 uses
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !119
  %i.r = shl nsw i32 %i.q, 6
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 1
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  %i.u = load ptr, ptr %i.n, align 16, !tbaa !120
  %.not336 = icmp eq ptr %i.u, null
  br i1 %.not336, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.x = load i32, ptr %i.p, align 4, !tbaa !119
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.z) #13
  %i.aa = load ptr, ptr %i.v, align 16, !tbaa !133
  %.not337 = icmp eq ptr %i.aa, null
  br i1 %.not337, label %.critedge.thread, label %.preheader461

.preheader461:                                    ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !118
  %.not341524 = icmp sgt i32 %i.ac, 0
  br i1 %.not341524, label %.lr.ph526, label %.critedge.thread403

.lr.ph526:                                        ; preds = %.preheader461
  %i.ad = icmp eq i32 %6, 0                       ; 3 uses
  %i.ae = zext i1 %i.ad to i32                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = xor i1 %i.ad, true
  %i.ah = zext i1 %i.ag to i32                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ak = zext nneg i32 %6 to i64                 ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak ; 3 uses
  %.rhs.trunc = select i1 %i.ad, i16 1, i16 2     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 944
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph526, %.critedge345
  %.0307525 = phi i32 [ 0, %.lr.ph526 ], [ %i.gb, %.critedge345 ] ; 3 uses
  %i.at = load ptr, ptr %i.v, align 16, !tbaa !133
  %i.au = call fastcc i32 @decode_inter_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.at) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aw = load i32, ptr %i.p, align 4, !tbaa !119 ; 2 uses
  %.not340521 = icmp sgt i32 %i.aw, 0
  br i1 %.not340521, label %.lr.ph523, label %.critedge345

.lr.ph523:                                        ; preds = %.preheader
  %i.ax = lshr i32 %.0307525, %i.ae
  %i.ay = xor i32 %.0307525, -1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph523, %.critedge344
  %indvars.iv553 = phi i64 [ 0, %.lr.ph523 ], [ %indvars.iv.next554, %.critedge344 ] ; 7 uses
  %i.az = phi i32 [ %i.aw, %.lr.ph523 ], [ %i.fz, %.critedge344 ]
  %i.ba = ashr i32 %i.az, %i.ae
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = trunc nuw nsw i64 %indvars.iv553 to i32
  %i.bd = lshr i32 %i.bc, %i.ae
  %i.be = add nsw i32 %i.bb, %i.bd
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !105 ; 2 uses
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 124
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !91
  %i.bm = ashr i32 %i.bl, %i.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !93
  %i.bp = ashr i32 %i.bo, %i.ah
  %i.bq = load ptr, ptr %i.v, align 16, !tbaa !133
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv553
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73 ; 2 uses
  %i.bt = icmp sgt i16 %i.bi, -33
  br i1 %i.bt, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !109
  %i.bw = sdiv i16 %i.bv, %.rhs.trunc
  %.sext = sext i16 %i.bw to i32
  %i.bx = sdiv i16 %i.bi, %.rhs.trunc
  %.sext453 = sext i16 %i.bx to i32
  %i.by = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.bz = add i32 %i.by, %i.ay
  %i.ca = shl nsw i32 %i.bz, 3                    ; 2 uses
  %i.cb = sub nsw i32 %i.ca, %.sext               ; 3 uses
  %i.cc = shl nuw nsw i64 %indvars.iv553, 3       ; 3 uses
  %i.cd = trunc nsw i64 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, %.sext453            ; 3 uses
  %i.cf = icmp slt i32 %i.cb, 0
  br i1 %i.cf, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = add nuw nsw i32 %i.cb, 8
  %i.ch = icmp sgt i32 %i.cg, %i.bm
  %i.ci = icmp slt i32 %i.ce, 0
  %or.cond = select i1 %i.ch, i1 true, i1 %i.ci
  %i.cj = add nuw nsw i32 %i.ce, 8
  %i.ck = icmp sgt i32 %i.cj, %i.bp
  %or.cond343 = select i1 %or.cond, i1 true, i1 %i.ck
  br i1 %or.cond343, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.cm = load i32, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.cn = mul nsw i32 %i.cm, %i.ca
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cc ; 2 uses
  %i.cr = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.cs = load i32, ptr %i.aq, align 4, !tbaa !73 ; 2 uses
  %i.ct = mul nsw i32 %i.cs, %i.cb
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = zext nneg i32 %i.ce to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw ; 2 uses
  %i.cy = sext i32 %i.cm to i64                   ; 7 uses
  %i.cz = sext i32 %i.cs to i64                   ; 7 uses
  %i.da = load i64, ptr %i.cx, align 1, !tbaa !54
  store i64 %i.da, ptr %i.cq, align 1, !tbaa !54
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !54
  store i64 %i.dd, ptr %i.db, align 1, !tbaa !54
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.cy ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.cz ; 2 uses
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !54
  store i64 %i.dg, ptr %i.de, align 1, !tbaa !54
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.cy ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.cz ; 2 uses
  %i.dj = load i64, ptr %i.di, align 1, !tbaa !54
  store i64 %i.dj, ptr %i.dh, align 1, !tbaa !54
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.cy ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.cz ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 1, !tbaa !54
  store i64 %i.dm, ptr %i.dk, align 1, !tbaa !54
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 %i.cy ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.cz ; 2 uses
  %i.dp = load i64, ptr %i.do, align 1, !tbaa !54
  store i64 %i.dp, ptr %i.dn, align 1, !tbaa !54
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.cy ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %i.cz ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 1, !tbaa !54
  store i64 %i.ds, ptr %i.dq, align 1, !tbaa !54
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.cy
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.cz
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !54
  store i64 %i.dv, ptr %i.dt, align 1, !tbaa !54
  %.not339 = icmp eq i32 %i.bs, 0
  br i1 %.not339, label %.critedge344, label %vector.ph619

vector.ph619:                                     ; preds = %bb.i
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.dx = load ptr, ptr %i.n, align 16, !tbaa !120
  %i.dy = shl nuw nsw i64 %indvars.iv553, 6       ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dy
  tail call void %i.dw(ptr noundef %i.dz) #13
  %i.ea = load ptr, ptr %i.n, align 16, !tbaa !120 ; 2 uses
  %i.eb = and i64 %i.dy, 4294967232
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.eb ; 9 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %wide.load622 = load <8 x i16>, ptr %invariant.gep, align 2, !tbaa !121
  %wide.load623 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !121
  %i.ed = add <8 x i16> %wide.load622, splat (i16 1)
  %i.ee = add <8 x i16> %wide.load623, splat (i16 1)
  %i.ef = and <8 x i16> %i.ed, splat (i16 -4)
  %i.eg = and <8 x i16> %i.ee, splat (i16 -4)
  store <8 x i16> %i.ef, ptr %invariant.gep, align 2, !tbaa !121
  store <8 x i16> %i.eg, ptr %i.ec, align 2, !tbaa !121
  %i.eh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48 ; 2 uses
  %wide.load622.1 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !121
  %wide.load623.1 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !121
  %i.ej = add <8 x i16> %wide.load622.1, splat (i16 1)
  %i.ek = add <8 x i16> %wide.load623.1, splat (i16 1)
  %i.el = and <8 x i16> %i.ej, splat (i16 -4)
  %i.em = and <8 x i16> %i.ek, splat (i16 -4)
  store <8 x i16> %i.el, ptr %i.eh, align 2, !tbaa !121
  store <8 x i16> %i.em, ptr %i.ei, align 2, !tbaa !121
  %i.en = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80 ; 2 uses
  %wide.load622.2 = load <8 x i16>, ptr %i.en, align 2, !tbaa !121
  %wide.load623.2 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !121
  %i.ep = add <8 x i16> %wide.load622.2, splat (i16 1)
  %i.eq = add <8 x i16> %wide.load623.2, splat (i16 1)
  %i.er = and <8 x i16> %i.ep, splat (i16 -4)
  %i.es = and <8 x i16> %i.eq, splat (i16 -4)
  store <8 x i16> %i.er, ptr %i.en, align 2, !tbaa !121
  store <8 x i16> %i.es, ptr %i.eo, align 2, !tbaa !121
  %i.et = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112 ; 2 uses
  %wide.load622.3 = load <8 x i16>, ptr %i.et, align 2, !tbaa !121
  %wide.load623.3 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !121
  %i.ev = add <8 x i16> %wide.load622.3, splat (i16 1)
  %i.ew = add <8 x i16> %wide.load623.3, splat (i16 1)
  %i.ex = and <8 x i16> %i.ev, splat (i16 -4)
  %i.ey = and <8 x i16> %i.ew, splat (i16 -4)
  store <8 x i16> %i.ex, ptr %i.et, align 2, !tbaa !121
  store <8 x i16> %i.ey, ptr %i.eu, align 2, !tbaa !121
  %i.ez = load ptr, ptr %i.as, align 16, !tbaa !135
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.dy
  %i.fb = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.fc = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.fd = add i32 %i.fc, %i.ay
  %i.fe = shl nsw i32 %i.fd, 3
  %i.ff = load i32, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.fg = mul nsw i32 %i.fe, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.fb, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.cc
  %i.fk = sext i32 %i.ff to i64
  tail call void %i.ez(ptr noundef %i.fa, ptr noundef %i.fj, i64 noundef %i.fk) #13
  br label %.critedge344

bb.j:                                             ; preds = %bb.f
  %.not338 = icmp eq i32 %i.bs, 0
  br i1 %.not338, label %.critedge344, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fl = load ptr, ptr %i.aj, align 16, !tbaa !128
  %i.fm = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.fn = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.fo = add i32 %i.fn, %i.ay
  %i.fp = shl nsw i32 %i.fo, 3
  %i.fq = load i32, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.fr = mul nsw i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fm, i64 %i.fs
  %i.fu = shl nuw nsw i64 %indvars.iv553, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
  %i.fw = sext i32 %i.fq to i64
  %i.fx = load ptr, ptr %i.n, align 16, !tbaa !120
  %.idx592 = shl nuw nsw i64 %indvars.iv553, 7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx592
  tail call void %i.fl(ptr noundef %i.fv, i64 noundef %i.fw, ptr noundef %i.fy) #13
  br label %.critedge344

.critedge344:                                     ; preds = %bb.j, %bb.i, %vector.ph619, %bb.k
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.fz = load i32, ptr %i.p, align 4, !tbaa !119 ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.not340 = icmp slt i64 %indvars.iv.next554, %i.ga
  br i1 %.not340, label %bb.f, label %.critedge345, !llvm.loop !136

.critedge345:                                     ; preds = %.critedge344, %.preheader
  %i.gb = add nuw nsw i32 %.0307525, 1            ; 2 uses
  %i.gc = load i32, ptr %i.ab, align 16, !tbaa !118
  %.not341 = icmp slt i32 %i.gb, %i.gc
  br i1 %.not341, label %bb.e, label %.critedge.thread403, !llvm.loop !137

bb.l:                                             ; preds = %bb.b
  %i.gd = and i32 %i.l, 2
  %.not = icmp eq i32 %i.gd, 0
  br i1 %.not, label %bb.at, label %.preheader474

.preheader474:                                    ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.gf = load i32, ptr %i.ge, align 16, !tbaa !118 ; 2 uses
  %.not335491 = icmp sgt i32 %i.gf, 0
  br i1 %.not335491, label %.preheader472.lr.ph, label %.critedge.thread403

.preheader472.lr.ph:                              ; preds = %.preheader474
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gh = icmp eq i32 %6, 0                       ; 3 uses
  %i.gi = zext i1 %i.gh to i32                    ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gk = xor i1 %i.gh, true
  %i.gl = zext i1 %i.gk to i32                    ; 2 uses
  %.rhs.trunc455 = select i1 %i.gh, i16 1, i16 2  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 7 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gq = zext nneg i32 %6 to i64                 ; 4 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gq ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gq ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gq
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gz = load i32, ptr %i.gg, align 4, !tbaa !119 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.preheader472.preheader, label %.critedge.thread403

.preheader472.preheader:                          ; preds = %.preheader472.lr.ph
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br label %.preheader472

.preheader472:                                    ; preds = %.preheader472.preheader, %.thread419
  %i.hi = phi i32 [ %i.ph, %.thread419 ], [ %i.gf, %.preheader472.preheader ]
  %i.hj = phi i32 [ %i.pi, %.thread419 ], [ %i.gz, %.preheader472.preheader ] ; 3 uses
  %.0310493 = phi i32 [ %i.pj, %.thread419 ], [ 0, %.preheader472.preheader ] ; 3 uses
  %storemerge.i479.lcssa483.lcssa488492 = phi i32 [ %storemerge.i479.lcssa483.lcssa, %.thread419 ], [ 0, %.preheader472.preheader ] ; 2 uses
  %.not334485 = icmp sgt i32 %i.hj, 0
  br i1 %.not334485, label %.lr.ph, label %.thread419

.lr.ph:                                           ; preds = %.preheader472
  %i.hk = lshr i32 %.0310493, %i.gi
  %i.hl = xor i32 %.0310493, -1                   ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.as
  %indvars.iv540 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next541, %bb.as ] ; 4 uses
  %i.hm = phi i32 [ %i.hj, %.lr.ph ], [ %i.pf, %bb.as ]
  %storemerge.i479.lcssa483486 = phi i32 [ %storemerge.i479.lcssa483.lcssa488492, %.lr.ph ], [ %storemerge.i479, %bb.as ]
  %i.hn = ashr i32 %i.hm, %i.gi
  %i.ho = mul nsw i32 %i.hn, %i.hk
  %i.hp = trunc nuw nsw i64 %indvars.iv540 to i32
  %i.hq = lshr i32 %i.hp, %i.gi
  %i.hr = add nsw i32 %i.ho, %i.hq
  %i.hs = load ptr, ptr %i.gj, align 8, !tbaa !104
  %i.ht = sext i32 %i.hr to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ht ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !105 ; 2 uses
  %i.hw = sdiv i16 %i.hv, %.rhs.trunc455
  %.sext456 = sext i16 %i.hw to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !109
  %i.hz = sdiv i16 %i.hy, %.rhs.trunc455
  %.sext459 = sext i16 %i.hz to i32
  %i.ia = load ptr, ptr %i.gm, align 8, !tbaa !41 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 124
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !91
  %i.id = ashr i32 %i.ic, %i.gl
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 120
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !93
  %i.ig = ashr i32 %i.if, %i.gl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.go, i8 0, i64 128, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.am, %bb.m
  %storemerge.i478 = phi i32 [ %storemerge.i479.lcssa483486, %bb.m ], [ %storemerge.i479, %bb.am ] ; 3 uses
  %.0384 = phi i32 [ 0, %bb.m ], [ %.1385, %bb.am ] ; 5 uses
  %.02732.i = phi i32 [ 0, %bb.m ], [ %.128.i, %bb.am ] ; 3 uses
  %i.ih = icmp sgt i32 %storemerge.i478, 0
  br i1 %i.ih, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ii = sub nuw nsw i32 64, %.02732.i
  %..i = tail call i32 @llvm.umin.i32(i32 %storemerge.i478, i32 %i.ii) ; 2 uses
  %i.ij = sub nsw i32 %storemerge.i478, %..i
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.ik = load i32, ptr %i.k, align 4, !tbaa !87
  %i.il = and i32 %i.ik, 1
  %.val.i359 = load i32, ptr %i.j, align 8, !tbaa !70 ; 5 uses
  %.val49.i = load i32, ptr %i.g, align 4, !tbaa !68
  %i.im = sub nsw i32 %.val49.i, %.val.i359
  %i.in = icmp slt i32 %i.im, 2
  br i1 %i.in, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val60.i = load ptr, ptr %1, align 8, !tbaa !67 ; 6 uses
  %i.io = lshr i32 %.val.i359, 3
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 1, !tbaa !54
  %i.is = and i32 %.val.i359, 7
  %i.it = lshr i32 %i.ir, %i.is                   ; 4 uses
  %i.iu = and i32 %i.it, 3
  %.not.i360 = icmp eq i32 %i.iu, 0
  br i1 %.not.i360, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iv = and i32 %i.it, 15
  switch i32 %i.iv, label %.critedge.thread [
    i32 1, label %bb.ab
    i32 9, label %bb.ab
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 5, label %bb.u
    i32 13, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 10, label %bb.x
    i32 11, label %bb.y
    i32 14, label %bb.z
    i32 15, label %bb.aa
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  br label %bb.ab

bb.u:                                             ; preds = %bb.r, %bb.r
  br label %bb.ab

bb.v:                                             ; preds = %bb.r
  br label %bb.ab

bb.w:                                             ; preds = %bb.r
  br label %bb.ab

bb.x:                                             ; preds = %bb.r
  br label %bb.ab

bb.y:                                             ; preds = %bb.r
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.iw = lshr i32 %i.it, 4
  %i.ix = and i32 %i.iw, 1
  %i.iy = or disjoint i32 %i.ix, 10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r
  %.042.i = phi i32 [ %i.iy, %bb.aa ], [ 3, %bb.s ], [ 7, %bb.t ], [ 2, %bb.u ], [ 4, %bb.v ], [ 8, %bb.w ], [ 5, %bb.x ], [ 9, %bb.y ], [ 6, %bb.z ], [ 1, %bb.r ], [ 1, %bb.r ] ; 3 uses
  %.041.i = phi i32 [ 5, %bb.aa ], [ 4, %bb.s ], [ 4, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.y ], [ 4, %bb.z ], [ 3, %bb.r ], [ 3, %bb.r ]
  %i.iz = load i32, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.ja = add i32 %.041.i, %.val.i359
  %i.jb = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 %i.ja) ; 4 uses
  store i32 %i.jb, ptr %i.j, align 8, !tbaa !70
  %i.jc = lshr i32 %i.jb, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 1, !tbaa !54
  %i.jg = and i32 %i.jb, 7
  %i.jh = lshr i32 %i.jf, %i.jg
  %i.ji = sub nuw nsw i32 32, %.042.i
  %i.jj = lshr i32 -1, %i.ji
  %i.jk = and i32 %i.jh, %i.jj                    ; 3 uses
  %i.jl = add i32 %i.jb, %.042.i
  %i.jm = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 %i.jl)
  store i32 %i.jm, ptr %i.j, align 8, !tbaa !70
  %i.jn = add nsw i32 %.042.i, -1
  %i.jo = shl nuw nsw i32 1, %i.jn                ; 2 uses
  %i.jp = icmp samesign ult i32 %i.jk, %i.jo
  br i1 %i.jp, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.jq = add nuw nsw i32 %i.jo, %i.jk
  %i.jr = sub nsw i32 0, %i.jq
  br label %bb.al

bb.ad:                                            ; preds = %bb.q
  %i.js = and i32 %i.it, 4
  %.not46.i = icmp eq i32 %i.js, 0
  %i.jt = load i32, ptr %i.i, align 8, !tbaa !69  ; 4 uses
  %i.ju = add i32 %.val.i359, 3
  %i.jv = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.ju) ; 8 uses
  store i32 %i.jv, ptr %i.j, align 8, !tbaa !70
  %i.jw = icmp eq i32 %i.il, 0                    ; 2 uses
  br i1 %.not46.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jx = lshr i32 %i.jv, 3
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 1, !tbaa !54
  %i.kb = and i32 %i.jv, 7
  %i.kc = lshr i32 %i.ka, %i.kb                   ; 2 uses
  br i1 %i.jw, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kd = and i32 %i.kc, 15                       ; 2 uses
  %i.ke = add i32 %i.jv, 4
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.ke) ; 7 uses
  store i32 %i.kf, ptr %i.j, align 8, !tbaa !70
  switch i32 %i.kd, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kg = lshr i32 %i.kf, 3
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 1, !tbaa !54
  %i.kk = and i32 %i.kf, 7
  %i.kl = lshr i32 %i.kj, %i.kk
  %i.km = and i32 %i.kl, 65535
  %i.kn = add i32 %i.kf, 16
  br label %.sink.split65.i

bb.ah:                                            ; preds = %bb.af
  %i.ko = lshr i32 %i.kf, 3
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 1, !tbaa !54
  %i.ks = and i32 %i.kf, 7
  %i.kt = lshr i32 %i.kr, %i.ks
  %i.ku = and i32 %i.kt, 1023
  %i.kv = add i32 %i.kf, 10
  br label %.sink.split65.i

bb.ai:                                            ; preds = %bb.ae
  %i.kw = and i32 %i.kc, 1023
  %i.kx = add i32 %i.jv, 10
  br label %.sink.split65.i

.sink.split65.i:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink67.i = phi i32 [ %i.kx, %bb.ai ], [ %i.kv, %bb.ah ], [ %i.kn, %bb.ag ]
  %.sink.ph.i = phi i32 [ %i.kw, %bb.ai ], [ %i.ku, %bb.ah ], [ %i.km, %bb.ag ]
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %.sink67.i)
  store i32 %i.ky, ptr %i.j, align 8, !tbaa !70
  br label %bb.al

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.jw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kz = lshr i32 %i.jv, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 1, !tbaa !54
  %i.ld = and i32 %i.jv, 7
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = and i32 %i.le, 15
  %i.lg = add i32 %i.jv, 4
  %i.lh = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.lg)
  store i32 %i.lh, ptr %i.j, align 8, !tbaa !70
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.af, %.sink.split65.i, %bb.ab, %bb.ac
end_hunk_0
