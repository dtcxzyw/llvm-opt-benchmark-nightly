inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rgb_pixelsize = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 3, i32 -1, i32 -1, i32 -1, i32 3, i32 4, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 -1], align 16
@switch.table.jpeg_calc_output_dimensions = private unnamed_addr constant [16 x i8] c"\01\03\03\04\04\03\04\03\04\04\04\04\04\04\04\03", align 4

; Function Attrs: nounwind uwtable
define void @jpeg_core_output_dimensions(ptr nofree noundef initializes((136, 144)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = shl i32 %i.f, 3                          ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35   ; 15 uses
  %.not142 = icmp ugt i32 %i.g, %i.i
  br i1 %.not142, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i64 @jdiv_round_up(i64 noundef %i.l, i64 noundef 8) #5
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.n, ptr %i.o, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i64 @jdiv_round_up(i64 noundef %i.r, i64 noundef 8) #5
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.t, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 1, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 1, ptr %i.w, align 4, !tbaa !41
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.x = shl i32 %i.i, 1
  %.not143 = icmp ugt i32 %i.g, %i.x
  br i1 %.not143, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !36
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = tail call i64 @jdiv_round_up(i64 noundef %i.ab, i64 noundef 8) #5
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = tail call i64 @jdiv_round_up(i64 noundef %i.ai, i64 noundef 8) #5
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 2, ptr %i.am, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 2, ptr %i.an, align 4, !tbaa !41
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.ao = mul i32 %i.i, 3
  %.not144 = icmp ugt i32 %i.g, %i.ao
  br i1 %.not144, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !36
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 3
  %i.at = tail call i64 @jdiv_round_up(i64 noundef %i.as, i64 noundef 8) #5
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.au, ptr %i.av, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, 3
  %i.ba = tail call i64 @jdiv_round_up(i64 noundef %i.az, i64 noundef 8) #5
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 3, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 3, ptr %i.be, align 4, !tbaa !41
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.bf = shl i32 %i.i, 2
  %.not145 = icmp ugt i32 %i.g, %i.bf
  br i1 %.not145, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !36
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call i64 @jdiv_round_up(i64 noundef %i.bj, i64 noundef 8) #5
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !38
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call i64 @jdiv_round_up(i64 noundef %i.bq, i64 noundef 8) #5
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 4, ptr %i.bu, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 4, ptr %i.bv, align 4, !tbaa !41
  br label %bb.ag

bb.j:                                             ; preds = %bb.h
  %i.bw = mul i32 %i.i, 5
  %.not146 = icmp ugt i32 %i.g, %i.bw
  br i1 %.not146, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !36
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bz, 5
  %i.cb = tail call i64 @jdiv_round_up(i64 noundef %i.ca, i64 noundef 8) #5
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, 5
  %i.ci = tail call i64 @jdiv_round_up(i64 noundef %i.ch, i64 noundef 8) #5
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 5, ptr %i.cl, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 5, ptr %i.cm, align 4, !tbaa !41
  br label %bb.ag

bb.l:                                             ; preds = %bb.j
  %i.cn = mul i32 %i.i, 6
  %.not147 = icmp ugt i32 %i.g, %i.cn
  br i1 %.not147, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !36
  %i.cq = zext i32 %i.cp to i64
  %i.cr = mul nuw nsw i64 %i.cq, 6
  %i.cs = tail call i64 @jdiv_round_up(i64 noundef %i.cr, i64 noundef 8) #5
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !38
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw nsw i64 %i.cx, 6
  %i.cz = tail call i64 @jdiv_round_up(i64 noundef %i.cy, i64 noundef 8) #5
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.da, ptr %i.db, align 4, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 6, ptr %i.dc, align 8, !tbaa !40
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 6, ptr %i.dd, align 4, !tbaa !41
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.de = mul i32 %i.i, 7
  %.not148 = icmp ugt i32 %i.g, %i.de
  br i1 %.not148, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !36
  %i.dh = zext i32 %i.dg to i64
  %i.di = mul nuw nsw i64 %i.dh, 7
  %i.dj = tail call i64 @jdiv_round_up(i64 noundef %i.di, i64 noundef 8) #5
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !38
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw nsw i64 %i.do, 7
  %i.dq = tail call i64 @jdiv_round_up(i64 noundef %i.dp, i64 noundef 8) #5
end_hunk_0
begin_hunk_1_@jpeg_core_output_dimensions:bb.a
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.ht = mul i32 %i.i, 14
  %.not155 = icmp ugt i32 %i.g, %i.ht
  br i1 %.not155, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !36
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw nsw i64 %i.hw, 14
  %i.hy = tail call i64 @jdiv_round_up(i64 noundef %i.hx, i64 noundef 8) #5
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !37
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !38
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw nsw i64 %i.id, 14
  %i.if = tail call i64 @jdiv_round_up(i64 noundef %i.ie, i64 noundef 8) #5
  %i.ig = trunc i64 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !39
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 14, ptr %i.ii, align 8, !tbaa !40
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 14, ptr %i.ij, align 4, !tbaa !41
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ik = mul i32 %i.i, 15
  %.not156 = icmp ugt i32 %i.g, %i.ik
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load i32, ptr %i.il, align 8, !tbaa !36
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  br i1 %.not156, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.it = mul nuw nsw i64 %i.in, 15
  %i.iu = tail call i64 @jdiv_round_up(i64 noundef %i.it, i64 noundef 8) #5
  %i.iv = trunc i64 %i.iu to i32
  store i32 %i.iv, ptr %i.io, align 8, !tbaa !37
  %i.iw = load i32, ptr %i.ip, align 4, !tbaa !38
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, 15
  %i.iz = tail call i64 @jdiv_round_up(i64 noundef %i.iy, i64 noundef 8) #5
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %i.iq, align 4, !tbaa !39
  store i32 15, ptr %i.ir, align 8, !tbaa !40
  store i32 15, ptr %i.is, align 4, !tbaa !41
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.jb = shl nuw nsw i64 %i.in, 4
  %i.jc = tail call i64 @jdiv_round_up(i64 noundef %i.jb, i64 noundef 8) #5
  %i.jd = trunc i64 %i.jc to i32
  store i32 %i.jd, ptr %i.io, align 8, !tbaa !37
  %i.je = load i32, ptr %i.ip, align 4, !tbaa !38
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 4
  %i.jh = tail call i64 @jdiv_round_up(i64 noundef %i.jg, i64 noundef 8) #5
  %i.ji = trunc i64 %i.jh to i32
  store i32 %i.ji, ptr %i.iq, align 4, !tbaa !39
  store i32 16, ptr %i.ir, align 8, !tbaa !40
  store i32 16, ptr %i.is, align 4, !tbaa !41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.af, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g, %bb.c
  %i.jj = phi i32 [ 2, %bb.e ], [ 4, %bb.i ], [ 6, %bb.m ], [ 8, %bb.q ], [ 10, %bb.u ], [ 12, %bb.y ], [ 14, %bb.ac ], [ 16, %bb.af ], [ 15, %bb.ae ], [ 13, %bb.aa ], [ 11, %bb.w ], [ 9, %bb.s ], [ 7, %bb.o ], [ 5, %bb.k ], [ 3, %bb.g ], [ 1, %bb.c ] ; 18 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !42 ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !43 ; 2 uses
  %xtraiter = and i32 %i.jl, 7                    ; 3 uses
  %i.jp = icmp ult i32 %i.jl, 8
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.jl, 2147483640
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.new
  %.0158 = phi ptr [ %i.jo, %.lr.ph.new ], [ %i.kg, %bb.ah ] ; 17 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.ah ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0158, i64 36
  store i32 %i.jj, ptr %i.jq, align 4, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %.0158, i64 40
  store i32 %i.jj, ptr %i.jr, align 8, !tbaa !46
  %i.js = getelementptr inbounds nuw i8, ptr %.0158, i64 132
  store i32 %i.jj, ptr %i.js, align 4, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %.0158, i64 136
  store i32 %i.jj, ptr %i.jt, align 8, !tbaa !46
  %i.ju = getelementptr inbounds nuw i8, ptr %.0158, i64 228
  store i32 %i.jj, ptr %i.ju, align 4, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %.0158, i64 232
  store i32 %i.jj, ptr %i.jv, align 8, !tbaa !46
  %i.jw = getelementptr inbounds nuw i8, ptr %.0158, i64 324
  store i32 %i.jj, ptr %i.jw, align 4, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %.0158, i64 328
  store i32 %i.jj, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %.0158, i64 420
  store i32 %i.jj, ptr %i.jy, align 4, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %.0158, i64 424
  store i32 %i.jj, ptr %i.jz, align 8, !tbaa !46
  %i.ka = getelementptr inbounds nuw i8, ptr %.0158, i64 516
  store i32 %i.jj, ptr %i.ka, align 4, !tbaa !44
  %i.kb = getelementptr inbounds nuw i8, ptr %.0158, i64 520
  store i32 %i.jj, ptr %i.kb, align 8, !tbaa !46
  %i.kc = getelementptr inbounds nuw i8, ptr %.0158, i64 612
  store i32 %i.jj, ptr %i.kc, align 4, !tbaa !44
  %i.kd = getelementptr inbounds nuw i8, ptr %.0158, i64 616
  store i32 %i.jj, ptr %i.kd, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw i8, ptr %.0158, i64 708
  store i32 %i.jj, ptr %i.ke, align 4, !tbaa !44
  %i.kf = getelementptr inbounds nuw i8, ptr %.0158, i64 712
  store i32 %i.jj, ptr %i.kf, align 8, !tbaa !46
  %i.kg = getelementptr inbounds nuw i8, ptr %.0158, i64 768 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !47

bb.ai:                                            ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kj = load <2 x i32>, ptr %i.kh, align 8, !tbaa !3
  store <2 x i32> %i.kj, ptr %i.ki, align 8, !tbaa !3
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.0158.epil.init = phi ptr [ %i.jo, %.lr.ph ], [ %i.kg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %.0158.epil = phi ptr [ %.0158.epil.init, %.epil.preheader ], [ %i.km, %bb.aj ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 36
  store i32 %i.jj, ptr %i.kk, align 4, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 40
  store i32 %i.jj, ptr %i.kl, align 8, !tbaa !46
  %i.km = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.aj, !llvm.loop !49

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.aj, %bb.ag, %bb.ai
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @jpeg_calc_output_dimensions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not = icmp eq i32 %i.b, 202
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 21, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !56
  %i.f = load ptr, ptr %0, align 8, !tbaa !52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @jpeg_core_output_dimensions(ptr noundef nonnull %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not63 = icmp eq i32 %i.k, 0
  br i1 %.not63, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 22 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.t = icmp slt i32 %i.r, 8
  br i1 %i.t, label %.lr.ph75.split.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph75
  %xtraiter = and i32 %i.o, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.o, 8
  br i1 %i.u, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i32 %i.o, 2147483640
  br label %.critedge

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58
  %i.x = mul nsw i32 %i.w, %i.r
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.critedge.us, %.lr.ph75.split.us
  %.06074.us = phi ptr [ %i.m, %.lr.ph75.split.us ], [ %i.an, %.critedge.us ] ; 5 uses
  %.06173.us = phi i32 [ 0, %.lr.ph75.split.us ], [ %i.am, %.critedge.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %.06074.us, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %factor.op.mul.us = shl i32 %i.z, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.06074.us, i64 12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.g
  %.068.us = phi i32 [ %i.r, %.lr.ph.us ], [ %i.ag, %bb.g ] ; 5 uses
  %.reass.us = mul i32 %.068.us, %factor.op.mul.us
  %i.ab = srem i32 %i.x, %.reass.us
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !60
  %i.ae = mul nsw i32 %i.ad, %i.r
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.ag = shl i32 %.068.us, 1                     ; 3 uses
  %i.ah = mul i32 %i.ag, %i.af
  %i.ai = srem i32 %i.ae, %i.ah
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.critedge.us

.critedge.us:                                     ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.us = phi i32 [ %i.ag, %bb.g ], [ %.068.us, %bb.e ], [ %.068.us, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06074.us, i64 40
  store i32 %.0.lcssa.us, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %.06074.us, i64 36
  store i32 %.0.lcssa.us, ptr %i.al, align 4, !tbaa !44
  %i.am = add nuw nsw i32 %.06173.us, 1           ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06074.us, i64 96
  %exitcond79.not = icmp eq i32 %i.am, %i.o
  br i1 %exitcond79.not, label %.lr.ph, label %.lr.ph.us, !llvm.loop !62

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp slt i32 %.068.us, 4
  br i1 %i.ao, label %bb.e, label %.critedge.us, !llvm.loop !63

.lr.ph.loopexit88.unr-lcssa:                      ; preds = %.critedge
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.preheader
  %.06074.epil.init = phi ptr [ %i.m, %.critedge.preheader ], [ %i.bm, %.lr.ph.loopexit88.unr-lcssa ]
  %lcmp.mod89 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.critedge.epil

.critedge.epil:                                   ; preds = %.critedge.epil, %.critedge.epil.preheader
  %.06074.epil = phi ptr [ %i.ar, %.critedge.epil ], [ %.06074.epil.init, %.critedge.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.critedge.epil ], [ 0, %.critedge.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 40
  store i32 %i.r, ptr %i.ap, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 36
  store i32 %i.r, ptr %i.aq, align 4, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.critedge.epil, !llvm.loop !64

.lr.ph:                                           ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.epil, %.critedge.us
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 412
  br label %bb.h

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %.06074 = phi ptr [ %i.m, %.critedge.preheader.new ], [ %i.bm, %.critedge ] ; 17 uses
  %niter = phi i32 [ 0, %.critedge.preheader.new ], [ %niter.next.7, %.critedge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.06074, i64 40
  store i32 %i.r, ptr %i.aw, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %.06074, i64 36
  store i32 %i.r, ptr %i.ax, align 4, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %.06074, i64 136
  store i32 %i.r, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %.06074, i64 132
  store i32 %i.r, ptr %i.az, align 4, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.06074, i64 232
  store i32 %i.r, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.06074, i64 228
  store i32 %i.r, ptr %i.bb, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.06074, i64 328
  store i32 %i.r, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %.06074, i64 324
  store i32 %i.r, ptr %i.bd, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %.06074, i64 424
  store i32 %i.r, ptr %i.be, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %.06074, i64 420
  store i32 %i.r, ptr %i.bf, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.06074, i64 520
  store i32 %i.r, ptr %i.bg, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %.06074, i64 516
  store i32 %i.r, ptr %i.bh, align 4, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %.06074, i64 616
  store i32 %i.r, ptr %i.bi, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %.06074, i64 612
  store i32 %i.r, ptr %i.bj, align 4, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %.06074, i64 712
  store i32 %i.r, ptr %i.bk, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %.06074, i64 708
  store i32 %i.r, ptr %i.bl, align 4, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %.06074, i64 768 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit88.unr-lcssa, label %.critedge, !llvm.loop !62

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.177 = phi ptr [ %i.m, %.lr.ph ], [ %i.cr, %bb.h ] ; 6 uses
  %.16276 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %bb.h ]
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !36
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.177, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !59
  %i.br = getelementptr inbounds nuw i8, ptr %.177, i64 36 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = mul nsw i32 %i.bs, %i.bq
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.bo
  %i.bw = load i32, ptr %i.at, align 8, !tbaa !58
  %i.bx = shl nsw i32 %i.bw, 3
  %i.by = sext i32 %i.bx to i64
  %i.bz = tail call i64 @jdiv_round_up(i64 noundef %i.bv, i64 noundef %i.by) #5
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.177, i64 44
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !65
  %i.cc = load i32, ptr %i.au, align 4, !tbaa !38
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.177, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !61
  %i.cg = load i32, ptr %i.br, align 4, !tbaa !44
  %i.ch = mul nsw i32 %i.cg, %i.cf
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cd
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !60
  %i.cl = shl nsw i32 %i.ck, 3
  %i.cm = sext i32 %i.cl to i64
  %i.cn = tail call i64 @jdiv_round_up(i64 noundef %i.cj, i64 noundef %i.cm) #5
  %i.co = trunc i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.177, i64 48
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !66
  %i.cq = add nuw nsw i32 %.16276, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.177, i64 96
  %i.cs = load i32, ptr %i.n, align 8, !tbaa !42
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.h, label %.loopexit, !llvm.loop !67

bb.i:                                             ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cw = load <2 x i32>, ptr %i.cu, align 8, !tbaa !3
  store <2 x i32> %i.cw, ptr %i.cv, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.i
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %2 = load i32, ptr %1, align 8, !tbaa !68       ; 3 uses
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %3 = icmp ult i32 %switch.tableidx, 16
  br i1 %3, label %switch.lookup, label %4

4:                                                ; preds = %.loopexit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load i32, ptr %5, align 8, !tbaa !42
  br label %.loopexit.a

switch.lookup:                                    ; preds = %.loopexit
  %7 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.jpeg_calc_output_dimensions, i64 %7
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %switch.lookup, %4
  %.sink = phi i32 [ %6, %4 ], [ %switch.ext, %switch.lookup ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sink, ptr %i.cx, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !70
  %.not64 = icmp eq i32 %i.cz, 0
  %i.da = select i1 %.not64, i32 %.sink, i32 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.da, ptr %i.db, align 4, !tbaa !71
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.de, 0
  br i1 %.not.i, label %bb.j, label %use_merged_upsample.exit.thread

bb.j:                                             ; preds = %.loopexit.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !72
  %.not37.i = icmp eq i32 %i.dg, 0
  br i1 %.not37.i, label %bb.k, label %use_merged_upsample.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !73
  %.not38.i = icmp eq i32 %i.di, 0
  br i1 %.not38.i, label %bb.l, label %use_merged_upsample.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !74
  %.not39.i = icmp eq i32 %i.dk, 3
  br i1 %.not39.i, label %bb.m, label %use_merged_upsample.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !42
  %.not40.i = icmp eq i32 %i.dm, 3
  br i1 %.not40.i, label %bb.n, label %use_merged_upsample.exit.thread

bb.n:                                             ; preds = %bb.m
  switch i32 %2, label %use_merged_upsample.exit.thread [
    i32 16, label %bb.o
    i32 2, label %bb.p
    i32 6, label %bb.p
    i32 7, label %bb.p
    i32 8, label %bb.p
    i32 9, label %bb.p
    i32 10, label %bb.p
    i32 11, label %bb.p
    i32 12, label %bb.p
    i32 13, label %bb.p
    i32 14, label %bb.p
    i32 15, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %.not53.i = icmp eq i32 %.sink, 3
  br i1 %.not53.i, label %.thread.i, label %use_merged_upsample.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.dn = zext nneg i32 %2 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %.not55.i = icmp eq i32 %.sink, %i.dp
  br i1 %.not55.i, label %.thread.i, label %use_merged_upsample.exit.thread

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !43 ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !59
  %.not56.i = icmp eq i32 %i.dt, 2
  br i1 %.not56.i, label %bb.q, label %use_merged_upsample.exit.thread

bb.q:                                             ; preds = %.thread.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !59
  %.not57.i = icmp eq i32 %i.dv, 1
  br i1 %.not57.i, label %bb.r, label %use_merged_upsample.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !59
  %.not58.i = icmp eq i32 %i.dx, 1
  br i1 %.not58.i, label %bb.s, label %use_merged_upsample.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !61
  %i.ea = icmp sgt i32 %i.dz, 2
  br i1 %i.ea, label %use_merged_upsample.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 108
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !61
  %.not59.i = icmp eq i32 %i.ec, 1
  br i1 %.not59.i, label %bb.u, label %use_merged_upsample.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 204
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !61
  %.not60.i = icmp eq i32 %i.ee, 1
  br i1 %.not60.i, label %bb.v, label %use_merged_upsample.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !44 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !40
  %.not61.i = icmp eq i32 %i.eg, %i.ei
  br i1 %.not61.i, label %bb.w, label %use_merged_upsample.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 132
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %.not62.i = icmp eq i32 %i.ek, %i.eg
  br i1 %.not62.i, label %use_merged_upsample.exit, label %use_merged_upsample.exit.thread

use_merged_upsample.exit:                         ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 228
  %i.em = load i32, ptr %i.el, align 4, !tbaa !44
  %.not63.i.not = icmp eq i32 %i.em, %i.eg
  br i1 %.not63.i.not, label %bb.x, label %use_merged_upsample.exit.thread

bb.x:                                             ; preds = %use_merged_upsample.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !60
  br label %use_merged_upsample.exit.thread

use_merged_upsample.exit.thread:                  ; preds = %use_merged_upsample.exit, %bb.v, %.loopexit.a, %bb.j, %bb.l, %bb.o, %.thread.i, %bb.k, %bb.n, %bb.m, %bb.p, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.w, %bb.x
  %.sink86 = phi i32 [ %i.eo, %bb.x ], [ 1, %bb.w ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.k ], [ 1, %.thread.i ], [ 1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %.loopexit.a ], [ 1, %bb.v ], [ 1, %use_merged_upsample.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sink86, ptr %i.ep, align 8, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_new_colormap(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51   ; 2 uses
  %.not = icmp eq i32 %i.d, 207
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 21, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %i.d, ptr %i.g, align 4, !tbaa !56
  %i.h = load ptr, ptr %0, align 8, !tbaa !52
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  tail call void %i.i(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %.not20 = icmp eq ptr %i.o, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr %i.q, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  tail call void %i.t(ptr noundef nonnull %0) #5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !83
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 47, ptr %i.w, align 8, !tbaa !53
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !57
  tail call void %i.x(ptr noundef nonnull %0) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @jinit_master_decompress(ptr noundef %0) local_unnamed_addr #0 {
end_hunk_1
