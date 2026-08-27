Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/loopFilter?download=true
inline.NumInlined: 32
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@GetStrength:bb.a
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !85 ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !87
  %i.ho = sext i16 %i.hn to i32
  %i.hp = add nsw i32 %i.fj, -4
  %i.hq = sub nsw i32 %i.hp, %i.ho
  %i.hr = icmp ult i32 %i.hq, -7
  %i.hs = or i1 %i.hi, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !87
  %i.hv = sext i16 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !87
  %i.hy = sext i16 %i.hx to i32
  %i.hz = sub nsw i32 %i.hv, %i.hy
  %i.ia = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.hz, i1 true)
  %i.ib = icmp sge i32 %i.ia, %5
  %i.ic = or i1 %i.hs, %i.ib
  %i.id = zext i1 %i.ic to i8
  store i8 %i.id, ptr %i.bx, align 1, !tbaa !46
  br label %bb.am

bb.ai:                                            ; preds = %bb.ae
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dk
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !51
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.dn
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !85 ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !87
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = add nsw i32 %i.ez, -4                   ; 2 uses
  %i.il = sub nsw i32 %i.ik, %i.ij
  %i.im = icmp ult i32 %i.il, -7
  %i.in = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !87
  %i.ip = sext i16 %i.io to i32                   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !87
  %i.is = sext i16 %i.ir to i32                   ; 2 uses
  %i.it = sub nsw i32 %i.ip, %i.is
  %i.iu = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.it, i1 true)
  %i.iv = icmp sge i32 %i.iu, %5
  %i.iw = or i1 %i.im, %i.iv
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cy
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !51
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.db
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !85 ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !87
  %i.jc = sext i16 %i.jb to i32                   ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dk
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !51
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.dn
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !85 ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !87
  %i.ji = sext i16 %i.jh to i32                   ; 2 uses
  %i.jj = add nsw i32 %i.jc, -4
  %i.jk = sub nsw i32 %i.jj, %i.ji
  %i.jl = icmp ult i32 %i.jk, -7
  %i.jm = or i1 %i.iw, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !87
  %i.jp = sext i16 %i.jo to i32                   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !87
  %i.js = sext i16 %i.jr to i32                   ; 2 uses
  %i.jt = sub nsw i32 %i.jp, %i.js
  %i.ju = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.jt, i1 true)
  %i.jv = icmp sge i32 %i.ju, %5
  %i.jw = or i1 %i.jm, %i.jv
  br i1 %i.jw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jx = sub nsw i32 %i.ik, %i.ji
  %i.jy = icmp ult i32 %i.jx, -7
  %i.jz = sub nsw i32 %i.ip, %i.js
  %i.ka = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.jz, i1 true)
  %i.kb = icmp sge i32 %i.ka, %5
  %i.kc = or i1 %i.jy, %i.kb
  %reass.sub = sub nsw i32 %i.jc, %i.ij
  %i.kd = add nsw i32 %reass.sub, -4
  %i.ke = icmp ult i32 %i.kd, -7
  %i.kf = or i1 %i.ke, %i.kc
  %i.kg = sub nsw i32 %i.jp, %i.is
  %i.kh = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.kg, i1 true)
  %i.ki = icmp sge i32 %i.kh, %5
  %i.kj = or i1 %i.ki, %i.kf
  %i.kk = zext i1 %i.kj to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kl = phi i8 [ 0, %bb.ai ], [ %i.kk, %bb.aj ]
  store i8 %i.kl, ptr %i.bx, align 1, !tbaa !46
  br label %bb.am

bb.al:                                            ; preds = %bb.ad
  store i8 1, ptr %i.bx, align 1, !tbaa !46
  br label %bb.am

bb.am:                                            ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n, %bb.h, %bb.r, %bb.al, %bb.ag, %bb.ah, %bb.ak, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.an, label %bb.b, !llvm.loop !88

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EdgeLoop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.pix_pos, align 4           ; 7 uses
  %12 = alloca %struct.pix_pos, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.a = icmp ne i32 %9, 0                        ; 7 uses
  %.pn.in.in.v = select i1 %i.a, i64 15448, i64 15444
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %2, i64 %.pn.in.in.v
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !4
  %.pn = add nsw i32 %.pn.in, -8                  ; 3 uses
  br i1 %i.a, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %6 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr @EdgeLoop.pelnum_cr, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 15536
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.h, %bb.b ], [ 16, %bb.a ]   ; 2 uses
  %.not = icmp eq i32 %6, 0                       ; 3 uses
  %i.k = shl i32 %7, 2                            ; 2 uses
  %i.l = icmp slt i32 %7, 4
  %i.m = select i1 %i.l, i32 %i.k, i32 1
  %.neg = add i32 %6, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 14224
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.q = icmp eq i32 %i.j, 8
  %or.cond = and i1 %i.a, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = sext i32 %10 to i64                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 15520
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 15524
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ar
  %.0215258 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ar ] ; 6 uses
  %.0216257 = phi i32 [ 0, %.lr.ph ], [ %.2218, %bb.ar ] ; 6 uses
  %.0219256 = phi i32 [ 0, %.lr.ph ], [ %i.kl, %bb.ar ] ; 7 uses
  %i.y = select i1 %.not, i32 %i.k, i32 %.0219256 ; 2 uses
  %i.z = select i1 %.not, i32 %.0219256, i32 %i.m ; 2 uses
  %i.aa = load ptr, ptr @getNeighbour, align 8, !tbaa !72
  call void %i.aa(i32 noundef %3, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %9, ptr noundef nonnull %12) #6
  %i.ab = load ptr, ptr @getNeighbour, align 8, !tbaa !72
  %i.ac = add i32 %.neg, %i.y
  %i.ad = sub nsw i32 %i.z, %6
  call void %i.ab(i32 noundef %3, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %9, ptr noundef nonnull %11) #6
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !28  ; 2 uses
  %i.af = getelementptr inbounds [536 x i8], ptr %i.ae, i64 %i.o ; 4 uses
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !76
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [536 x i8], ptr %i.ae, i64 %i.ah ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 424 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  %.not224 = icmp eq i32 %i.ak, 0
  br i1 %.not224, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 424
  %i.am = load i32, ptr %i.al, align 8, !tbaa !39
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = phi i8 [ 1, %bb.c ], [ %i.ao, %bb.d ]   ; 2 uses
  store i8 %i.ap, ptr @fieldModeFilteringFlag, align 1, !tbaa !46
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !39
  %.not225 = icmp eq i32 %i.aq, 0
  br i1 %.not225, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 424
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !39
  %.not226 = icmp eq i32 %i.as, 0
  br i1 %.not226, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = shl nuw i32 %.0219256, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.au = shl nuw i32 %.0219256, 1
  %i.av = and i32 %i.au, -4
  %i.aw = and i32 %.0219256, 1
  %i.ax = or disjoint i32 %i.av, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.i
  %i.ay = phi i32 [ %i.ax, %bb.i ], [ %i.at, %bb.h ], [ %.0219256, %bb.e ]
  %i.az = load i32, ptr %11, align 4, !tbaa !89
  %.not227 = icmp eq i32 %i.az, 0
  br i1 %.not227, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 516
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.ar

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not, label %.thread238, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not228 = icmp eq i8 %i.ap, 0
  br i1 %.not228, label %.thread238, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %i.aj, align 8, !tbaa !39
  %.not229 = icmp eq i32 %i.bd, 0
  %i.be = zext i1 %.not229 to i32
  %spec.select = shl nsw i32 %8, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 424
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !39
  %.not231 = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not231 to i32
  %spec.select237 = shl nsw i32 %8, %i.bh
  br label %.thread238

.thread238:                                       ; preds = %bb.m, %bb.l, %bb.n
  %i.bi = phi i32 [ %spec.select, %bb.n ], [ 1, %bb.l ], [ %8, %bb.m ] ; 3 uses
  %i.bj = phi i32 [ %spec.select237, %bb.n ], [ 1, %bb.l ], [ %8, %bb.m ] ; 2 uses
  %i.bk = load i32, ptr %i.r, align 4, !tbaa !79
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  %i.bo = load i32, ptr %i.s, align 4, !tbaa !80
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bp ; 8 uses
  %i.br = load i32, ptr %i.t, align 4, !tbaa !79
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !85
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !80
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.bw ; 8 uses
  br i1 %i.a, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread238
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.v
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.v
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = add nsw i32 %i.cd, %i.ca
  br label %bb.q

bb.p:                                             ; preds = %.thread238
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !32
  %i.cj = add nsw i32 %i.ci, %i.cg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.in.in = phi i32 [ %i.ce, %bb.o ], [ %i.cj, %bb.p ]
  %.in = add nsw i32 %.in.in, 1
  %i.ck = ashr i32 %.in, 1                        ; 2 uses
  %i.cl = add nsw i32 %i.ck, %4
  %i.cm = call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.cl, i32 range(i32 -2147483647, -2147483648) 0)
  %i.cn = call i32 @llvm.umin.i32(i32 %i.cm, i32 51)
  %i.co = add nsw i32 %i.ck, %5
  %i.cp = call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.co, i32 range(i32 -2147483647, -2147483648) 0)
  %i.cq = call i32 @llvm.umin.i32(i32 %i.cp, i32 51)
  %i.cr = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr @ALPHA_TABLE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !46
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl i32 %i.cu, %.pn                     ; 2 uses
  %i.cw = zext nneg i32 %i.cq to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @BETA_TABLE, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !46
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl i32 %i.cz, %.pn                     ; 4 uses
  %i.db = getelementptr inbounds nuw [5 x i8], ptr @CLIP_TAB, i64 %i.cr
  %i.dc = load i16, ptr %i.bx, align 2, !tbaa !87
  %i.dd = zext i16 %i.dc to i32                   ; 10 uses
  %i.de = load i16, ptr %i.bq, align 2, !tbaa !87
  %i.df = zext i16 %i.de to i32                   ; 10 uses
  %i.dg = sub nsw i32 0, %i.bj                    ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.dh ; 4 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !87 ; 2 uses
  %i.dk = zext i16 %i.dj to i32                   ; 11 uses
  %i.dl = sext i32 %i.bi to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.dl ; 4 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !87 ; 2 uses
  %i.do = zext i16 %i.dn to i32                   ; 11 uses
  %i.dp = shl nsw i32 %i.dg, 1
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.dq ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !87 ; 2 uses
  %i.dt = zext i16 %i.ds to i32                   ; 6 uses
  %i.du = shl nsw i32 %i.bi, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !87 ; 2 uses
  %i.dy = zext i16 %i.dx to i32                   ; 6 uses
  %i.dz = mul i32 %i.bj, -3
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !87
  %i.ed = zext i16 %i.ec to i32
  %i.ee = mul nsw i32 %i.bi, 3
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !87
  %i.ei = zext i16 %i.eh to i32
  %i.ej = sext i32 %i.ay to i64
  %i.ek = getelementptr inbounds i8, ptr %1, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !46  ; 4 uses
  %.not232 = icmp eq i8 %i.el, 0
  br i1 %.not232, label %bb.ar, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.em = sub nsw i32 %i.df, %i.dd                ; 2 uses
  %i.en = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.em, i1 true) ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.cv
  br i1 %i.eo, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %i.ep = zext i8 %i.el to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !46
  %i.es = zext i8 %i.er to i32
  %i.et = shl i32 %i.es, %.pn                     ; 6 uses
  %i.eu = sub nsw i32 %i.df, %i.do
  %i.ev = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.eu, i1 true)
  %i.ew = sub nsw i32 %i.ev, %i.da
  %i.ex = sub nsw i32 %i.dd, %i.dk
  %i.ey = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.ex, i1 true)
  %i.ez = sub nsw i32 %i.ey, %i.da
  %i.fa = and i32 %i.ew, %i.ez
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %bb.t, label %bb.ar

bb.t:                                             ; preds = %bb.s
  br i1 %i.a, label %bb.u, label %.thread241

bb.u:                                             ; preds = %bb.t
  %i.fc = add nuw nsw i32 %i.df, %i.dd
  %i.fd = icmp eq i8 %i.el, 4
  br i1 %i.fd, label %bb.v, label %bb.al

.thread241:                                       ; preds = %bb.t
  %i.fe = sub nsw i32 %i.df, %i.dy
  %i.ff = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.fe, i1 true)
  %i.fg = icmp slt i32 %i.ff, %i.da
  %i.fh = zext i1 %i.fg to i32                    ; 2 uses
  %i.fi = sub nsw i32 %i.dd, %i.dt
  %i.fj = call range(i32 0, 65536) i32 @llvm.abs.i32(i32 range(i32 -65535, 65536) %i.fi, i1 true)
  %i.fk = icmp slt i32 %i.fj, %i.da
  %i.fl = zext i1 %i.fk to i32                    ; 2 uses
  %i.fm = add nuw nsw i32 %i.df, %i.dd            ; 5 uses
  %i.fn = icmp eq i8 %i.el, 4
  br i1 %i.fn, label %bb.w, label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.fo = shl nuw nsw i32 %i.do, 1
  %i.fp = add nuw nsw i32 %i.df, 2
  %i.fq = add nuw nsw i32 %i.fp, %i.dk
  %i.fr = add nuw nsw i32 %i.fq, %i.fo
  %i.fs = lshr i32 %i.fr, 2
  %i.ft = trunc nuw i32 %i.fs to i16
  store i16 %i.ft, ptr %i.bq, align 2, !tbaa !87
  %i.fu = shl nuw nsw i32 %i.dk, 1
  %i.fv = add nuw nsw i32 %i.dd, 2
  %i.fw = add nuw nsw i32 %i.fv, %i.fu
  %i.fx = add nuw nsw i32 %i.fw, %i.do
  %i.fy = lshr i32 %i.fx, 2
  %i.fz = trunc nuw i32 %i.fy to i16
  store i16 %i.fz, ptr %i.bx, align 2, !tbaa !87
  br label %bb.ar

bb.w:                                             ; preds = %.thread241
  %i.ga = lshr i32 %i.cv, 2
  %i.gb = add nuw nsw i32 %i.ga, 2
  %i.gc = icmp samesign ult i32 %i.en, %i.gb
  %i.gd = zext i1 %i.gc to i32                    ; 2 uses
  %i.ge = and i32 %i.fh, %i.gd                    ; 2 uses
  %i.gf = and i32 %i.fl, %i.gd                    ; 2 uses
  %.not235 = icmp eq i32 %i.ge, 0                 ; 3 uses
end_hunk_0
