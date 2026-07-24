inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@best_huffman_divide:bb.a
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  %i.bb = call fastcc i32 @choose_table(ptr noundef %i.ba, ptr noundef %i.m, ptr noundef %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !4 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.f
  br i1 %i.be, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.bf, align 16, !tbaa !4
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bg
  %i.bi = call fastcc i32 @choose_table(ptr noundef %i.bh, ptr noundef %i.m, ptr noundef %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.bi, ptr %i.bj, align 16, !tbaa !4
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 36), align 4, !tbaa !4 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %i.f
  br i1 %i.bl, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %i.k, ptr %i.bm, align 4, !tbaa !4
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bn
  %i.bp = call fastcc i32 @choose_table(ptr noundef %i.bo, ptr noundef %i.m, ptr noundef %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !4
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 40), align 4, !tbaa !4 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, %i.f
  br i1 %i.bs, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.k, ptr %i.bt, align 8, !tbaa !4
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = call fastcc i32 @choose_table(ptr noundef %i.bv, ptr noundef %i.m, ptr noundef %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !4
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 44), align 4, !tbaa !4 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, %i.f
  br i1 %i.bz, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  store i32 %i.k, ptr %i.ca, align 4, !tbaa !4
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cb
  %i.cd = call fastcc i32 @choose_table(ptr noundef %i.cc, ptr noundef %i.m, ptr noundef %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 48), align 4, !tbaa !4 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %i.f
  br i1 %i.cg, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i32 %i.k, ptr %i.ch, align 16, !tbaa !4
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ci
  %i.ck = call fastcc i32 @choose_table(ptr noundef %i.cj, ptr noundef %i.m, ptr noundef %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !4
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 52), align 4, !tbaa !4 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, %i.f
  br i1 %i.cn, label %.lr.ph.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.k, ptr %i.co, align 4, !tbaa !4
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp
  %i.cr = call fastcc i32 @choose_table(ptr noundef %i.cq, ptr noundef %i.m, ptr noundef %i.co)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !4
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 56), align 4, !tbaa !4 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, %i.f
  br i1 %i.cu, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store i32 %i.k, ptr %i.cv, align 8, !tbaa !4
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cw
  %i.cy = call fastcc i32 @choose_table(ptr noundef %i.cx, ptr noundef %i.m, ptr noundef %i.cv)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !4
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 60), align 4, !tbaa !4 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.f
  br i1 %i.db, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  store i32 %i.k, ptr %i.dc, align 4, !tbaa !4
  %i.dd = sext i32 %i.da to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dd
  %i.df = call fastcc i32 @choose_table(ptr noundef %i.de, ptr noundef %i.m, ptr noundef %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !4
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 64), align 4, !tbaa !4 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, %i.f
  br i1 %i.di, label %.lr.ph.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i32 %i.k, ptr %i.dj, align 16, !tbaa !4
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dk
  %i.dm = call fastcc i32 @choose_table(ptr noundef %i.dl, ptr noundef %i.m, ptr noundef %i.dj)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.dm, ptr %i.dn, align 16, !tbaa !4
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 68), align 4, !tbaa !4 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, %i.f
  br i1 %i.dp, label %.lr.ph.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i32 %i.k, ptr %i.dq, align 4, !tbaa !4
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dr
  %i.dt = call fastcc i32 @choose_table(ptr noundef %i.ds, ptr noundef %i.m, ptr noundef %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 72), align 4, !tbaa !4 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, %i.f
  br i1 %i.dw, label %.lr.ph.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store i32 %i.k, ptr %i.dx, align 8, !tbaa !4
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dy
  %i.ea = call fastcc i32 @choose_table(ptr noundef %i.dz, ptr noundef %i.m, ptr noundef %i.dx)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !4
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 76), align 4, !tbaa !4 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, %i.f
  br i1 %i.ed, label %.lr.ph.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  store i32 %i.k, ptr %i.ee, align 4, !tbaa !4
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ef
  %i.eh = call fastcc i32 @choose_table(ptr noundef %i.eg, ptr noundef %i.m, ptr noundef %i.ee)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !4
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 80), align 4, !tbaa !4 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, %i.f
  br i1 %i.ek, label %.lr.ph.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store i32 %i.k, ptr %i.el, align 16, !tbaa !4
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %3, i64 %i.em
  %i.eo = call fastcc i32 @choose_table(ptr noundef %i.en, ptr noundef %i.m, ptr noundef %i.el)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.eo, ptr %i.ep, align 16, !tbaa !4
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 84), align 4, !tbaa !4 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, %i.f
  br i1 %i.er, label %.lr.ph.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  store i32 %i.k, ptr %i.es, align 4, !tbaa !4
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.et
  %i.ev = call fastcc i32 @choose_table(ptr noundef %i.eu, ptr noundef %i.m, ptr noundef %i.es)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !4
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 88), align 4, !tbaa !4 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, %i.f
  br i1 %i.ey, label %.lr.ph.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store i32 %i.k, ptr %i.ez, align 8, !tbaa !4
  %i.fa = sext i32 %i.ex to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fa
  %i.fc = call fastcc i32 @choose_table(ptr noundef %i.fb, ptr noundef %i.m, ptr noundef %i.ez)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !4
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.lcssa.sroa.phi = phi ptr [ %.0.lcssa.sroa.gep, %bb.a ], [ %.0.lcssa.sroa.gep108, %bb.v ], [ %.0.lcssa.sroa.gep109, %bb.b ], [ %.0.lcssa.sroa.gep110, %bb.u ], [ %.0.lcssa.sroa.gep111, %bb.c ], [ %.0.lcssa.sroa.gep112, %bb.l ], [ %.0.lcssa.sroa.gep113, %bb.d ], [ %.0.lcssa.sroa.gep114, %bb.t ], [ %.0.lcssa.sroa.gep115, %bb.e ], [ %.0.lcssa.sroa.gep116, %bb.p ], [ %.0.lcssa.sroa.gep117, %bb.f ], [ %.0.lcssa.sroa.gep118, %bb.s ], [ %.0.lcssa.sroa.gep119, %bb.g ], [ %.0.lcssa.sroa.gep120, %bb.m ], [ %.0.lcssa.sroa.gep121, %bb.h ], [ %.0.lcssa.sroa.gep122, %bb.r ], [ %.0.lcssa.sroa.gep123, %bb.i ], [ %.0.lcssa.sroa.gep124, %bb.o ], [ %.0.lcssa.sroa.gep125, %bb.j ], [ %.0.lcssa.sroa.gep126, %bb.q ], [ %.0.lcssa.sroa.gep127, %bb.k ], [ %.0.lcssa.sroa.gep128, %bb.n ]
  %.0.lcssa = phi i64 [ 2, %bb.a ], [ 23, %bb.v ], [ 3, %bb.b ], [ 22, %bb.u ], [ 4, %bb.c ], [ 13, %bb.l ], [ 5, %bb.d ], [ 21, %bb.t ], [ 6, %bb.e ], [ 17, %bb.p ], [ 7, %bb.f ], [ 20, %bb.s ], [ 8, %bb.g ], [ 14, %bb.m ], [ 9, %bb.h ], [ 19, %bb.r ], [ 10, %bb.i ], [ 16, %bb.o ], [ 11, %bb.j ], [ 18, %bb.q ], [ 12, %bb.k ], [ 15, %bb.n ] ; 3 uses
  %i.fe = sub nsw i64 25, %.0.lcssa               ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add nsw i64 %.0.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.sroa.phi, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> splat (i32 100000), ptr %i.fg, align 4, !tbaa !4
  store <4 x i32> splat (i32 100000), ptr %i.fh, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.preheader49, label %.lr.ph.preheader107

.lr.ph.preheader107:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %.0.lcssa, %.lr.ph.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph

.preheader49:                                     ; preds = %.lr.ph, %middle.block
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 8 uses
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader107, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader107 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 100000, ptr %i.fo, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph, !llvm.loop !51

bb.w:                                             ; preds = %.preheader49, %.loopexit
  %indvars.iv60 = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next61, %.loopexit ] ; 10 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next61
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4  ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, %i.f
  br i1 %i.fr, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = trunc nuw nsw i64 %indvars.iv60 to i32
  store i32 %i.fs, ptr %i.fj, align 8, !tbaa !33
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ft ; 9 uses
  %i.fv = call fastcc i32 @choose_table(ptr noundef %3, ptr noundef %i.fu, ptr noundef %i.a)
  store i32 %i.fv, ptr %i.fk, align 8, !tbaa !4
  %i.fw = load i32, ptr %2, align 8, !tbaa !52    ; 3 uses
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !4   ; 9 uses
  %i.fy = icmp slt i32 %i.fw, %i.fx
  br i1 %i.fy, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.fz = add nuw nsw i64 %indvars.iv60, 2        ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = add nsw i32 %i.gb, %i.fx                ; 2 uses
  store i32 %i.gc, ptr %4, align 8, !tbaa !4
  %i.gd = icmp slt i32 %i.fw, %i.gc
  br i1 %i.gd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.fz
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gg
  %i.gi = call fastcc i32 @choose_table(ptr noundef %i.fu, ptr noundef %i.gh, ptr noundef %4)
  store i32 %i.gi, ptr %i.fl, align 4, !tbaa !4
  %i.gj = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.gk = load i32, ptr %4, align 8, !tbaa !4
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.fm, align 4, !tbaa !36
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fz
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  store i32 %i.gn, ptr %i.fn, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.preheader, %bb.z
  %i.go = phi i32 [ %i.gj, %bb.y ], [ %i.fw, %.preheader ], [ %.pre, %bb.z ] ; 2 uses
  %i.gp = add nuw nsw i64 %indvars.iv60, 3        ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.gs = add nsw i32 %i.gr, %i.fx                ; 2 uses
  store i32 %i.gs, ptr %4, align 8, !tbaa !4
  %i.gt = icmp slt i32 %i.go, %i.gs
  br i1 %i.gt, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.gp
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gw
  %i.gy = call fastcc i32 @choose_table(ptr noundef %i.fu, ptr noundef %i.gx, ptr noundef %4)
  store i32 %i.gy, ptr %i.fl, align 4, !tbaa !4
  %i.gz = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.ha = load i32, ptr %4, align 8, !tbaa !4
  %i.hb = icmp slt i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.fm, align 4, !tbaa !36
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gp
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  store i32 %i.hd, ptr %i.fn, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre64 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.he = phi i32 [ %.pre64, %bb.ac ], [ %i.gz, %bb.ab ], [ %i.go, %bb.aa ] ; 2 uses
  %i.hf = add nuw nsw i64 %indvars.iv60, 4        ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %i.hi = add nsw i32 %i.hh, %i.fx                ; 2 uses
  store i32 %i.hi, ptr %4, align 8, !tbaa !4
  %i.hj = icmp slt i32 %i.he, %i.hi
  br i1 %i.hj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.hf
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hm
  %i.ho = call fastcc i32 @choose_table(ptr noundef %i.fu, ptr noundef %i.hn, ptr noundef %4)
  store i32 %i.ho, ptr %i.fl, align 4, !tbaa !4
  %i.hp = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.hq = load i32, ptr %4, align 8, !tbaa !4
  %i.hr = icmp slt i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.fm, align 4, !tbaa !36
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hf
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  store i32 %i.ht, ptr %i.fn, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre65 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hu = phi i32 [ %.pre65, %bb.af ], [ %i.hp, %bb.ae ], [ %i.he, %bb.ad ] ; 2 uses
  %i.hv = add nuw nsw i64 %indvars.iv60, 5        ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = add nsw i32 %i.hx, %i.fx                ; 2 uses
  store i32 %i.hy, ptr %4, align 8, !tbaa !4
  %i.hz = icmp slt i32 %i.hu, %i.hy
  br i1 %i.hz, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.hv
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ic
  %i.ie = call fastcc i32 @choose_table(ptr noundef %i.fu, ptr noundef %i.id, ptr noundef %4)
  store i32 %i.ie, ptr %i.fl, align 4, !tbaa !4
  %i.if = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.ig = load i32, ptr %4, align 8, !tbaa !4
  %i.ih = icmp slt i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 3, ptr %i.fm, align 4, !tbaa !36
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hv
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !4
  store i32 %i.ij, ptr %i.fn, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre66 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ik = phi i32 [ %.pre66, %bb.ai ], [ %i.if, %bb.ah ], [ %i.hu, %bb.ag ] ; 2 uses
  %i.il = add nuw nsw i64 %indvars.iv60, 6        ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4
  %i.io = add nsw i32 %i.in, %i.fx                ; 2 uses
  store i32 %i.io, ptr %4, align 8, !tbaa !4
  %i.ip = icmp slt i32 %i.ik, %i.io
  br i1 %i.ip, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.il
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %3, i64 %i.is
  %i.iu = call fastcc i32 @choose_table(ptr noundef %i.fu, ptr noundef %i.it, ptr noundef %4)
  store i32 %i.iu, ptr %i.fl, align 4, !tbaa !4
  %i.iv = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.iw = load i32, ptr %4, align 8, !tbaa !4
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 4, ptr %i.fm, align 4, !tbaa !36
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.il
end_hunk_0
