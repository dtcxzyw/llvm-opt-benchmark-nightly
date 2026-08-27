Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/agm?download=true
inline.NumInlined: 66
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@read_code:bb.a
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
  %.042 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.a ], [ 0, %bb.m ], [ 0, %.sink.split ]
  ret i32 %.042
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
  br i1 %.not337, label %.critedge.thread, label %.preheader442

.preheader442:                                    ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !118
  %.not341505 = icmp sgt i32 %i.ac, 0
  br i1 %.not341505, label %.lr.ph507, label %.critedge.thread396

.lr.ph507:                                        ; preds = %.preheader442
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

bb.e:                                             ; preds = %.lr.ph507, %.critedge345
  %.0298506 = phi i32 [ 0, %.lr.ph507 ], [ %i.ga, %.critedge345 ] ; 3 uses
  %i.at = load ptr, ptr %i.v, align 16, !tbaa !133
  %i.au = call fastcc i32 @decode_inter_blocks(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.at) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aw = load i32, ptr %i.p, align 4, !tbaa !119 ; 2 uses
  %.not340502 = icmp sgt i32 %i.aw, 0
  br i1 %.not340502, label %.lr.ph504, label %.critedge345

.lr.ph504:                                        ; preds = %.preheader
  %i.ax = lshr i32 %.0298506, %i.ae
  %i.ay = xor i32 %.0298506, -1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph504, %.critedge344
  %indvars.iv534 = phi i64 [ 0, %.lr.ph504 ], [ %indvars.iv.next535, %.critedge344 ] ; 7 uses
  %i.az = phi i32 [ %i.aw, %.lr.ph504 ], [ %i.fy, %.critedge344 ]
  %i.ba = ashr i32 %i.az, %i.ae
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = trunc nuw nsw i64 %indvars.iv534 to i32
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
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv534
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73 ; 2 uses
  %i.bt = icmp sgt i16 %i.bi, -33
  br i1 %i.bt, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !109
  %i.bw = sdiv i16 %i.bv, %.rhs.trunc
  %.sext = sext i16 %i.bw to i32
  %i.bx = sdiv i16 %i.bi, %.rhs.trunc
  %.sext434 = sext i16 %i.bx to i32
  %i.by = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.bz = add i32 %i.by, %i.ay
  %i.ca = shl nsw i32 %i.bz, 3                    ; 2 uses
  %i.cb = sub nsw i32 %i.ca, %.sext               ; 3 uses
  %i.cc = shl nuw nsw i64 %indvars.iv534, 3       ; 3 uses
  %i.cd = trunc nsw i64 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, %.sext434            ; 3 uses
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
  br i1 %.not339, label %.critedge344, label %vector.ph600

vector.ph600:                                     ; preds = %bb.i
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.dx = load ptr, ptr %i.n, align 16, !tbaa !120
  %i.dy = shl nuw nsw i64 %indvars.iv534, 6       ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dy
  tail call void %i.dw(ptr noundef %i.dz) #13
  %i.ea = load ptr, ptr %i.n, align 16, !tbaa !120 ; 2 uses
  %7 = and i64 %i.dy, 4294967232
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %7 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %wide.load603 = load <8 x i16>, ptr %invariant.gep, align 2, !tbaa !121
  %wide.load604 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !121
  %i.ec = add <8 x i16> %wide.load603, splat (i16 1)
  %i.ed = add <8 x i16> %wide.load604, splat (i16 1)
  %i.ee = and <8 x i16> %i.ec, splat (i16 -4)
  %i.ef = and <8 x i16> %i.ed, splat (i16 -4)
  store <8 x i16> %i.ee, ptr %invariant.gep, align 2, !tbaa !121
  store <8 x i16> %i.ef, ptr %i.eb, align 2, !tbaa !121
  %i.eg = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48 ; 2 uses
  %wide.load603.1 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !121
  %wide.load604.1 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !121
  %i.ei = add <8 x i16> %wide.load603.1, splat (i16 1)
  %i.ej = add <8 x i16> %wide.load604.1, splat (i16 1)
  %i.ek = and <8 x i16> %i.ei, splat (i16 -4)
  %i.el = and <8 x i16> %i.ej, splat (i16 -4)
  store <8 x i16> %i.ek, ptr %i.eg, align 2, !tbaa !121
  store <8 x i16> %i.el, ptr %i.eh, align 2, !tbaa !121
  %i.em = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80 ; 2 uses
  %wide.load603.2 = load <8 x i16>, ptr %i.em, align 2, !tbaa !121
  %wide.load604.2 = load <8 x i16>, ptr %i.en, align 2, !tbaa !121
  %i.eo = add <8 x i16> %wide.load603.2, splat (i16 1)
  %i.ep = add <8 x i16> %wide.load604.2, splat (i16 1)
  %i.eq = and <8 x i16> %i.eo, splat (i16 -4)
  %i.er = and <8 x i16> %i.ep, splat (i16 -4)
  store <8 x i16> %i.eq, ptr %i.em, align 2, !tbaa !121
  store <8 x i16> %i.er, ptr %i.en, align 2, !tbaa !121
  %i.es = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112 ; 2 uses
  %wide.load603.3 = load <8 x i16>, ptr %i.es, align 2, !tbaa !121
  %wide.load604.3 = load <8 x i16>, ptr %i.et, align 2, !tbaa !121
  %i.eu = add <8 x i16> %wide.load603.3, splat (i16 1)
  %i.ev = add <8 x i16> %wide.load604.3, splat (i16 1)
  %i.ew = and <8 x i16> %i.eu, splat (i16 -4)
  %i.ex = and <8 x i16> %i.ev, splat (i16 -4)
  store <8 x i16> %i.ew, ptr %i.es, align 2, !tbaa !121
  store <8 x i16> %i.ex, ptr %i.et, align 2, !tbaa !121
  %i.ey = load ptr, ptr %i.as, align 16, !tbaa !135
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.dy
  %i.fa = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.fb = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.fc = add i32 %i.fb, %i.ay
  %i.fd = shl nsw i32 %i.fc, 3
  %i.fe = load i32, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.ff = mul nsw i32 %i.fd, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fa, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.cc
  %i.fj = sext i32 %i.fe to i64
  tail call void %i.ey(ptr noundef %i.ez, ptr noundef %i.fi, i64 noundef %i.fj) #13
  br label %.critedge344

bb.j:                                             ; preds = %bb.f
  %.not338 = icmp eq i32 %i.bs, 0
  br i1 %.not338, label %.critedge344, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fk = load ptr, ptr %i.aj, align 16, !tbaa !128
  %i.fl = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.fm = load i32, ptr %i.ab, align 16, !tbaa !118
  %i.fn = add i32 %i.fm, %i.ay
  %i.fo = shl nsw i32 %i.fn, 3
  %i.fp = load i32, ptr %i.an, align 4, !tbaa !73 ; 2 uses
  %i.fq = mul nsw i32 %i.fo, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fl, i64 %i.fr
  %i.ft = shl nuw nsw i64 %indvars.iv534, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = sext i32 %i.fp to i64
  %i.fw = load ptr, ptr %i.n, align 16, !tbaa !120
  %.idx573 = shl nuw nsw i64 %indvars.iv534, 7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx573
  tail call void %i.fk(ptr noundef %i.fu, i64 noundef %i.fv, ptr noundef %i.fx) #13
  br label %.critedge344

.critedge344:                                     ; preds = %bb.j, %bb.i, %vector.ph600, %bb.k
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.fy = load i32, ptr %i.p, align 4, !tbaa !119 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %.not340 = icmp slt i64 %indvars.iv.next535, %i.fz
  br i1 %.not340, label %bb.f, label %.critedge345, !llvm.loop !136

.critedge345:                                     ; preds = %.critedge344, %.preheader
  %i.ga = add nuw nsw i32 %.0298506, 1            ; 2 uses
  %i.gb = load i32, ptr %i.ab, align 16, !tbaa !118
  %.not341 = icmp slt i32 %i.ga, %i.gb
  br i1 %.not341, label %bb.e, label %.critedge.thread396, !llvm.loop !137

bb.l:                                             ; preds = %bb.b
  %i.gc = and i32 %i.l, 2
  %.not = icmp eq i32 %i.gc, 0
  br i1 %.not, label %bb.at, label %.preheader455

.preheader455:                                    ; preds = %bb.l
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ge = load i32, ptr %i.gd, align 16, !tbaa !118 ; 2 uses
  %.not335472 = icmp sgt i32 %i.ge, 0
  br i1 %.not335472, label %.preheader453.lr.ph, label %.critedge.thread396

.preheader453.lr.ph:                              ; preds = %.preheader455
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gg = icmp eq i32 %6, 0                       ; 3 uses
  %i.gh = zext i1 %i.gg to i32                    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gj = xor i1 %i.gg, true
  %i.gk = zext i1 %i.gj to i32                    ; 2 uses
  %.rhs.trunc436 = select i1 %i.gg, i16 1, i16 2  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gp = zext nneg i32 %6 to i64                 ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gp
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gy = load i32, ptr %i.gf, align 4, !tbaa !119 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.preheader453.preheader, label %.critedge.thread396

.preheader453.preheader:                          ; preds = %.preheader453.lr.ph
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br label %.preheader453

.preheader453:                                    ; preds = %.preheader453.preheader, %.thread408
  %i.hh = phi i32 [ %i.pg, %.thread408 ], [ %i.ge, %.preheader453.preheader ]
  %i.hi = phi i32 [ %i.ph, %.thread408 ], [ %i.gy, %.preheader453.preheader ] ; 3 uses
  %.0295474 = phi i32 [ %i.pi, %.thread408 ], [ 0, %.preheader453.preheader ] ; 3 uses
  %storemerge.i460.lcssa464.lcssa469473 = phi i32 [ %storemerge.i460.lcssa464.lcssa, %.thread408 ], [ 0, %.preheader453.preheader ] ; 2 uses
  %.not334466 = icmp sgt i32 %i.hi, 0
  br i1 %.not334466, label %.lr.ph, label %.thread408

.lr.ph:                                           ; preds = %.preheader453
  %i.hj = lshr i32 %.0295474, %i.gh
  %i.hk = xor i32 %.0295474, -1                   ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.as
  %indvars.iv521 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next522, %bb.as ] ; 4 uses
  %i.hl = phi i32 [ %i.hi, %.lr.ph ], [ %i.pe, %bb.as ]
  %storemerge.i460.lcssa464467 = phi i32 [ %storemerge.i460.lcssa464.lcssa469473, %.lr.ph ], [ %storemerge.i460, %bb.as ]
  %i.hm = ashr i32 %i.hl, %i.gh
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = trunc nuw nsw i64 %indvars.iv521 to i32
  %i.hp = lshr i32 %i.ho, %i.gh
  %i.hq = add nsw i32 %i.hn, %i.hp
  %i.hr = load ptr, ptr %i.gi, align 8, !tbaa !104
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hs ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !105 ; 2 uses
  %i.hv = sdiv i16 %i.hu, %.rhs.trunc436
  %.sext437 = sext i16 %i.hv to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !109
  %i.hy = sdiv i16 %i.hx, %.rhs.trunc436
  %.sext440 = sext i16 %i.hy to i32
  %i.hz = load ptr, ptr %i.gl, align 8, !tbaa !41 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 124
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !91
  %i.ic = ashr i32 %i.ib, %i.gk
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 120
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !93
  %i.if = ashr i32 %i.ie, %i.gk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.gn, i8 0, i64 128, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.am, %bb.m
  %storemerge.i459 = phi i32 [ %storemerge.i460.lcssa464467, %bb.m ], [ %storemerge.i460, %bb.am ] ; 3 uses
  %.0384 = phi i32 [ 0, %bb.m ], [ %.1385, %bb.am ] ; 5 uses
  %.02632.i = phi i32 [ 0, %bb.m ], [ %.1.i, %bb.am ] ; 3 uses
  %i.ig = icmp sgt i32 %storemerge.i459, 0
  br i1 %i.ig, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ih = sub nuw nsw i32 64, %.02632.i
  %..i = tail call i32 @llvm.umin.i32(i32 %storemerge.i459, i32 %i.ih) ; 2 uses
  %i.ii = sub nsw i32 %storemerge.i459, %..i
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.ij = load i32, ptr %i.k, align 4, !tbaa !87
  %i.ik = and i32 %i.ij, 1
  %.val.i359 = load i32, ptr %i.j, align 8, !tbaa !70 ; 5 uses
  %.val49.i = load i32, ptr %i.g, align 4, !tbaa !68
  %i.il = sub nsw i32 %.val49.i, %.val.i359
  %i.im = icmp slt i32 %i.il, 2
  br i1 %i.im, label %.critedge.thread, label %bb.q

end_hunk_0
begin_hunk_1_@decode_inter_plane:bb.a
  %.val60.i = load ptr, ptr %1, align 8, !tbaa !67 ; 6 uses
  %i.in = lshr i32 %.val.i359, 3
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 1, !tbaa !54
  %i.ir = and i32 %.val.i359, 7
  %i.is = lshr i32 %i.iq, %i.ir                   ; 4 uses
  %i.it = and i32 %i.is, 3
  %.not.i360 = icmp eq i32 %i.it, 0
  br i1 %.not.i360, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iu = and i32 %i.is, 15
  switch i32 %i.iu, label %.critedge.thread [
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
  %i.iv = lshr i32 %i.is, 4
  %i.iw = and i32 %i.iv, 1
  %i.ix = or disjoint i32 %i.iw, 10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r
  %.041.i = phi i32 [ %i.ix, %bb.aa ], [ 3, %bb.s ], [ 7, %bb.t ], [ 2, %bb.u ], [ 4, %bb.v ], [ 8, %bb.w ], [ 5, %bb.x ], [ 9, %bb.y ], [ 6, %bb.z ], [ 1, %bb.r ], [ 1, %bb.r ] ; 3 uses
  %.0.i = phi i32 [ 5, %bb.aa ], [ 4, %bb.s ], [ 4, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.y ], [ 4, %bb.z ], [ 3, %bb.r ], [ 3, %bb.r ]
  %i.iy = load i32, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.iz = add i32 %.0.i, %.val.i359
  %i.ja = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 %i.iz) ; 4 uses
  store i32 %i.ja, ptr %i.j, align 8, !tbaa !70
  %i.jb = lshr i32 %i.ja, 3
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 1, !tbaa !54
  %i.jf = and i32 %i.ja, 7
  %i.jg = lshr i32 %i.je, %i.jf
  %i.jh = sub nuw nsw i32 32, %.041.i
  %i.ji = lshr i32 -1, %i.jh
  %i.jj = and i32 %i.jg, %i.ji                    ; 3 uses
  %i.jk = add i32 %i.ja, %.041.i
  %i.jl = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 %i.jk)
  store i32 %i.jl, ptr %i.j, align 8, !tbaa !70
  %i.jm = add nsw i32 %.041.i, -1
  %i.jn = shl nuw nsw i32 1, %i.jm                ; 2 uses
  %i.jo = icmp samesign ult i32 %i.jj, %i.jn
  br i1 %i.jo, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.jp = add nuw nsw i32 %i.jn, %i.jj
  %i.jq = sub nsw i32 0, %i.jp
  br label %bb.al

bb.ad:                                            ; preds = %bb.q
  %i.jr = and i32 %i.is, 4
  %.not46.i = icmp eq i32 %i.jr, 0
  %i.js = load i32, ptr %i.i, align 8, !tbaa !69  ; 4 uses
  %i.jt = add i32 %.val.i359, 3
  %i.ju = tail call i32 @llvm.umin.i32(i32 %i.js, i32 %i.jt) ; 8 uses
  store i32 %i.ju, ptr %i.j, align 8, !tbaa !70
  %i.jv = icmp eq i32 %i.ik, 0                    ; 2 uses
  br i1 %.not46.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jw = lshr i32 %i.ju, 3
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 1, !tbaa !54
  %i.ka = and i32 %i.ju, 7
  %i.kb = lshr i32 %i.jz, %i.ka                   ; 2 uses
  br i1 %i.jv, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kc = and i32 %i.kb, 15                       ; 2 uses
  %i.kd = add i32 %i.ju, 4
  %i.ke = tail call i32 @llvm.umin.i32(i32 %i.js, i32 %i.kd) ; 7 uses
  store i32 %i.ke, ptr %i.j, align 8, !tbaa !70
  switch i32 %i.kc, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.kf = lshr i32 %i.ke, 3
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 1, !tbaa !54
  %i.kj = and i32 %i.ke, 7
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = and i32 %i.kk, 65535
  %i.km = add i32 %i.ke, 16
  br label %.sink.split65.i

bb.ah:                                            ; preds = %bb.af
  %i.kn = lshr i32 %i.ke, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 1, !tbaa !54
  %i.kr = and i32 %i.ke, 7
  %i.ks = lshr i32 %i.kq, %i.kr
  %i.kt = and i32 %i.ks, 1023
  %i.ku = add i32 %i.ke, 10
  br label %.sink.split65.i

bb.ai:                                            ; preds = %bb.ae
  %i.kv = and i32 %i.kb, 1023
  %i.kw = add i32 %i.ju, 10
  br label %.sink.split65.i

.sink.split65.i:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink67.i = phi i32 [ %i.kw, %bb.ai ], [ %i.ku, %bb.ah ], [ %i.km, %bb.ag ]
  %.sink.ph.i = phi i32 [ %i.kv, %bb.ai ], [ %i.kt, %bb.ah ], [ %i.kl, %bb.ag ]
  %i.kx = tail call i32 @llvm.umin.i32(i32 %i.js, i32 %.sink67.i)
  store i32 %i.kx, ptr %i.j, align 8, !tbaa !70
  br label %bb.al

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.jv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ky = lshr i32 %i.ju, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 1, !tbaa !54
  %i.lc = and i32 %i.ju, 7
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = and i32 %i.ld, 15
  %i.lf = add i32 %i.ju, 4
  %i.lg = tail call i32 @llvm.umin.i32(i32 %i.js, i32 %i.lf)
  store i32 %i.lg, ptr %i.j, align 8, !tbaa !70
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.af, %.sink.split65.i, %bb.ab, %bb.ac
  %storemerge.i461 = phi i32 [ 0, %bb.ab ], [ %.sink.ph.i, %.sink.split65.i ], [ 0, %bb.ac ], [ %i.kc, %bb.af ], [ %i.le, %bb.ak ], [ 0, %bb.aj ]
  %.2391.ph = phi i32 [ %i.jj, %bb.ab ], [ 0, %.sink.split65.i ], [ %i.jq, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %.4388.ph = phi i32 [ 1, %bb.ab ], [ %.0384, %.sink.split65.i ], [ 1, %bb.ac ], [ %.0384, %bb.af ], [ %.0384, %bb.ak ], [ %.0384, %bb.aj ]
  %i.lh = zext nneg i32 %.02632.i to i64          ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !73
  %i.lk = mul nsw i32 %i.lj, %.2391.ph
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.lh
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !54
  %i.lo = zext i8 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.lo
  store i16 %i.ll, ptr %i.lp, align 2, !tbaa !121
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.o
  %storemerge.i460 = phi i32 [ %i.ii, %bb.o ], [ %storemerge.i461, %bb.al ] ; 3 uses
  %.1385 = phi i32 [ %.0384, %bb.o ], [ %.4388.ph, %bb.al ] ; 3 uses
  %.pn.i = phi i32 [ %..i, %bb.o ], [ 1, %bb.al ]
  %.1.i = add nuw nsw i32 %.pn.i, %.02632.i       ; 2 uses
  %i.lq = icmp sgt i32 %.1.i, 63
  br i1 %i.lq, label %decode_inter_block.exit, label %bb.n, !llvm.loop !138

decode_inter_block.exit:                          ; preds = %bb.am
  %i.lr = icmp sgt i16 %i.hu, -33
  br i1 %i.lr, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %decode_inter_block.exit
  %i.ls = load i32, ptr %i.gd, align 16, !tbaa !118
  %i.lt = add i32 %i.ls, %i.hk
  %i.lu = shl nsw i32 %i.lt, 3                    ; 2 uses
  %i.lv = sub nsw i32 %i.lu, %.sext440            ; 3 uses
  %i.lw = shl nuw nsw i64 %indvars.iv521, 3       ; 3 uses
  %i.lx = trunc nsw i64 %i.lw to i32
  %i.ly = add nsw i32 %i.lx, %.sext437            ; 3 uses
  %i.lz = icmp slt i32 %i.lv, 0
  br i1 %i.lz, label %.critedge.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ma = add nuw nsw i32 %i.lv, 8
  %i.mb = icmp sgt i32 %i.ma, %i.ic
  %i.mc = icmp slt i32 %i.ly, 0
  %or.cond13 = select i1 %i.mb, i1 true, i1 %i.mc
  %i.md = add nuw nsw i32 %i.ly, 8
  %i.me = icmp sgt i32 %i.md, %i.if
  %or.cond347 = select i1 %or.cond13, i1 true, i1 %i.me
  br i1 %or.cond347, label %.critedge.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mf = load ptr, ptr %i.gq, align 8, !tbaa !53
  %i.mg = load i32, ptr %i.gs, align 4, !tbaa !73 ; 2 uses
  %i.mh = mul nsw i32 %i.mg, %i.lu
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds i8, ptr %i.mf, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.lw ; 2 uses
  %i.ml = load ptr, ptr %i.gt, align 8, !tbaa !53
  %i.mm = load i32, ptr %i.gv, align 4, !tbaa !73 ; 2 uses
  %i.mn = mul nsw i32 %i.mm, %i.lv
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds i8, ptr %i.ml, i64 %i.mo
  %i.mq = zext nneg i32 %i.ly to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq ; 2 uses
  %i.ms = sext i32 %i.mg to i64                   ; 7 uses
  %i.mt = sext i32 %i.mm to i64                   ; 7 uses
  %i.mu = load i64, ptr %i.mr, align 1, !tbaa !54
  store i64 %i.mu, ptr %i.mk, align 1, !tbaa !54
  %i.mv = getelementptr inbounds i8, ptr %i.mk, i64 %i.ms ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %i.mr, i64 %i.mt ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 1, !tbaa !54
  store i64 %i.mx, ptr %i.mv, align 1, !tbaa !54
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.ms ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 %i.mt ; 2 uses
  %i.na = load i64, ptr %i.mz, align 1, !tbaa !54
  store i64 %i.na, ptr %i.my, align 1, !tbaa !54
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %i.ms ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.mt ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 1, !tbaa !54
  store i64 %i.nd, ptr %i.nb, align 1, !tbaa !54
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.ms ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 %i.mt ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 1, !tbaa !54
  store i64 %i.ng, ptr %i.ne, align 1, !tbaa !54
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %i.ms ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.nf, i64 %i.mt ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 1, !tbaa !54
  store i64 %i.nj, ptr %i.nh, align 1, !tbaa !54
  %i.nk = getelementptr inbounds i8, ptr %i.nh, i64 %i.ms ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.ni, i64 %i.mt ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 1, !tbaa !54
  store i64 %i.nm, ptr %i.nk, align 1, !tbaa !54
  %i.nn = getelementptr inbounds i8, ptr %i.nk, i64 %i.ms
  %i.no = getelementptr inbounds i8, ptr %i.nl, i64 %i.mt
  %i.np = load i64, ptr %i.no, align 1, !tbaa !54
  store i64 %i.np, ptr %i.nn, align 1, !tbaa !54
  %.not333 = icmp eq i32 %.1385, 0
  br i1 %.not333, label %bb.as, label %vector.ph

vector.ph:                                        ; preds = %bb.ap
  %i.nq = load ptr, ptr %i.gw, align 8, !tbaa !134
  tail call void %i.nq(ptr noundef nonnull %i.gn) #13
  %wide.load = load <8 x i16>, ptr %i.gn, align 16, !tbaa !121
  %wide.load599 = load <8 x i16>, ptr %i.ha, align 16, !tbaa !121
  %i.nr = add <8 x i16> %wide.load, splat (i16 1)
  %i.ns = add <8 x i16> %wide.load599, splat (i16 1)
  %i.nt = and <8 x i16> %i.nr, splat (i16 -4)
  %i.nu = and <8 x i16> %i.ns, splat (i16 -4)
  store <8 x i16> %i.nt, ptr %i.gn, align 16, !tbaa !121
  store <8 x i16> %i.nu, ptr %i.ha, align 16, !tbaa !121
  %wide.load.1 = load <8 x i16>, ptr %i.hb, align 16, !tbaa !121
  %wide.load599.1 = load <8 x i16>, ptr %i.hc, align 16, !tbaa !121
  %i.nv = add <8 x i16> %wide.load.1, splat (i16 1)
  %i.nw = add <8 x i16> %wide.load599.1, splat (i16 1)
  %i.nx = and <8 x i16> %i.nv, splat (i16 -4)
  %i.ny = and <8 x i16> %i.nw, splat (i16 -4)
  store <8 x i16> %i.nx, ptr %i.hb, align 16, !tbaa !121
  store <8 x i16> %i.ny, ptr %i.hc, align 16, !tbaa !121
  %wide.load.2 = load <8 x i16>, ptr %i.hd, align 16, !tbaa !121
  %wide.load599.2 = load <8 x i16>, ptr %i.he, align 16, !tbaa !121
  %i.nz = add <8 x i16> %wide.load.2, splat (i16 1)
  %i.oa = add <8 x i16> %wide.load599.2, splat (i16 1)
  %i.ob = and <8 x i16> %i.nz, splat (i16 -4)
  %i.oc = and <8 x i16> %i.oa, splat (i16 -4)
  store <8 x i16> %i.ob, ptr %i.hd, align 16, !tbaa !121
  store <8 x i16> %i.oc, ptr %i.he, align 16, !tbaa !121
  %wide.load.3 = load <8 x i16>, ptr %i.hf, align 16, !tbaa !121
  %wide.load599.3 = load <8 x i16>, ptr %i.hg, align 16, !tbaa !121
  %i.od = add <8 x i16> %wide.load.3, splat (i16 1)
  %i.oe = add <8 x i16> %wide.load599.3, splat (i16 1)
  %i.of = and <8 x i16> %i.od, splat (i16 -4)
  %i.og = and <8 x i16> %i.oe, splat (i16 -4)
  store <8 x i16> %i.of, ptr %i.hf, align 16, !tbaa !121
  store <8 x i16> %i.og, ptr %i.hg, align 16, !tbaa !121
  %i.oh = load ptr, ptr %i.gx, align 16, !tbaa !135
  %i.oi = load ptr, ptr %i.gq, align 8, !tbaa !53
  %i.oj = load i32, ptr %i.gd, align 16, !tbaa !118
  %i.ok = add i32 %i.oj, %i.hk
  %i.ol = shl nsw i32 %i.ok, 3
  %i.om = load i32, ptr %i.gs, align 4, !tbaa !73 ; 2 uses
  %i.on = mul nsw i32 %i.ol, %i.om
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %i.oi, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.lw
  %i.or = sext i32 %i.om to i64
  tail call void %i.oh(ptr noundef nonnull %i.gn, ptr noundef %i.oq, i64 noundef %i.or) #13
  br label %bb.as

bb.aq:                                            ; preds = %decode_inter_block.exit
  %.not332 = icmp eq i32 %.1385, 0
  br i1 %.not332, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.os = load ptr, ptr %i.go, align 16, !tbaa !128
  %i.ot = load ptr, ptr %i.gq, align 8, !tbaa !53
  %i.ou = load i32, ptr %i.gd, align 16, !tbaa !118
  %i.ov = add i32 %i.ou, %i.hk
  %i.ow = shl nsw i32 %i.ov, 3
  %i.ox = load i32, ptr %i.gs, align 4, !tbaa !73 ; 2 uses
  %i.oy = mul nsw i32 %i.ow, %i.ox
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ot, i64 %i.oz
  %i.pb = shl nuw nsw i64 %indvars.iv521, 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pb
  %i.pd = sext i32 %i.ox to i64
  tail call void %i.os(ptr noundef %i.pc, i64 noundef %i.pd, ptr noundef nonnull %i.gn) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %vector.ph, %bb.ap
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.pe = load i32, ptr %i.gf, align 4, !tbaa !119 ; 3 uses
  %i.pf = sext i32 %i.pe to i64
  %.not334 = icmp slt i64 %indvars.iv.next522, %i.pf
  br i1 %.not334, label %bb.m, label %.thread408.loopexit, !llvm.loop !139

.thread408.loopexit:                              ; preds = %bb.as
  %.pre = load i32, ptr %i.gd, align 16, !tbaa !118
  br label %.thread408

.thread408:                                       ; preds = %.thread408.loopexit, %.preheader453
  %i.pg = phi i32 [ %i.hh, %.preheader453 ], [ %.pre, %.thread408.loopexit ] ; 2 uses
  %i.ph = phi i32 [ %i.hi, %.preheader453 ], [ %i.pe, %.thread408.loopexit ]
  %storemerge.i460.lcssa464.lcssa = phi i32 [ %storemerge.i460.lcssa464.lcssa469473, %.preheader453 ], [ %storemerge.i460, %.thread408.loopexit ]
  %i.pi = add nuw nsw i32 %.0295474, 1            ; 2 uses
  %.not335 = icmp slt i32 %i.pi, %i.pg
  br i1 %.not335, label %.preheader453, label %.critedge.thread396, !llvm.loop !140

bb.at:                                            ; preds = %bb.l
  %i.pj = and i32 %i.l, 1
  %.not324 = icmp eq i32 %i.pj, 0
  br i1 %.not324, label %.preheader446, label %bb.au

.preheader446:                                    ; preds = %bb.at
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.pl = load i32, ptr %i.pk, align 16, !tbaa !118 ; 2 uses
  %.not326496 = icmp sgt i32 %i.pl, 0
  br i1 %.not326496, label %.preheader445.lr.ph, label %.critedge.thread396

.preheader445.lr.ph:                              ; preds = %.preheader446
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.pq = zext nneg i32 %6 to i64                 ; 2 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.pq
  %i.pu = load i32, ptr %i.pm, align 4, !tbaa !119 ; 3 uses
  %i.pv = icmp sgt i32 %i.pu, 0
  br i1 %i.pv, label %.preheader445, label %.critedge.thread396

bb.au:                                            ; preds = %bb.at
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !119
  %i.qa = shl nsw i32 %i.pz, 6
  %i.qb = sext i32 %i.qa to i64
  %i.qc = shl nsw i64 %i.qb, 1
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.pw, ptr noundef nonnull %i.px, i64 noundef %i.qc) #13
  %i.qd = load ptr, ptr %i.pw, align 16, !tbaa !120
  %.not328 = icmp eq ptr %i.qd, null
  br i1 %.not328, label %.critedge.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.qg = load i32, ptr %i.py, align 4, !tbaa !119
  %i.qh = sext i32 %i.qg to i64
  %i.qi = shl nsw i64 %i.qh, 2
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.qe, ptr noundef nonnull %i.qf, i64 noundef %i.qi) #13
  %i.qj = load ptr, ptr %i.qe, align 16, !tbaa !133
  %.not329 = icmp eq ptr %i.qj, null
  br i1 %.not329, label %.critedge.thread, label %.preheader449

.preheader449:                                    ; preds = %bb.av
end_hunk_1
