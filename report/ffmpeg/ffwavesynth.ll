Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffwavesynth?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.2 = private unnamed_addr constant [48 x i8] c"This implementation is limited to %d channels.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid intervals definitions.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @wavesynth_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef 32) #8
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = icmp slt i32 %i.g, 4
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.j, align 1, !tbaa !30   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 3 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.p = icmp slt i32 %i.m, 0
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.l to i64                 ; 3 uses
  %gepdiff.i = add nsw i32 %i.g, -4
  %i.r = udiv i32 %gepdiff.i, 24
  %i.s = icmp samesign ult i32 %i.r, %i.m
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.m to i64
  %i.u = tail call noalias ptr @av_calloc(i64 noundef %i.t, i64 noundef 96) #8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.w = load i32, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.083119.i = phi i64 [ -9223372036854775808, %.lr.ph.i ], [ %i.ad, %bb.s ]
  %.086118.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.1.i, %bb.s ] ; 13 uses
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %indvars.iv.i ; 10 uses
  %i.aa = ptrtoint ptr %.086118.i to i64
  %i.ab = sub i64 %i.q, %i.aa
  %i.ac = icmp slt i64 %i.ab, 24
  br i1 %i.ac, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %.086118.i, align 1, !tbaa !30 ; 6 uses
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %.086118.i, i64 8
  %i.af = load i64, ptr %i.ae, align 1, !tbaa !30 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %.086118.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !30 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %.086118.i, i64 20
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store i32 %i.al, ptr %i.am, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %.086118.i, i64 24 ; 4 uses
  %i.ao = icmp sge i64 %i.ad, %.083119.i
  %.not97.i = icmp sgt i64 %i.af, %i.ad
  %or.cond.i = select i1 %i.ao, i1 %.not97.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ap = sub i64 %i.af, %i.ad                    ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.ai, label %.loopexit [
    i32 1162758483, label %bb.k
    i32 1397313358, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.q, %i.ar
  %i.at = icmp slt i64 %i.as, 20
  br i1 %i.at, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr %i.y, align 8, !tbaa !63  ; 3 uses
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.an, align 1, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %.086118.i, i64 28
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !30 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.086118.i, i64 32
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !30 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.086118.i, i64 36
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !30 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.086118.i, i64 40
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !30 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.086118.i, i64 44 ; 2 uses
  %i.bg = sext i32 %i.aw to i64                   ; 2 uses
  %i.bh = zext nneg i32 %i.au to i64              ; 6 uses
  %i.bi = shl nuw nsw i64 %i.bh, 16               ; 14 uses
  %i.bj = icmp samesign ult i32 %i.au, 65536
  br i1 %i.bj, label %bb.n, label %.preheader.preheader.i111.i

bb.n:                                             ; preds = %bb.m
  %i.bk = shl nsw i64 %i.bg, 32                   ; 2 uses
  %i.bl = udiv i64 %i.bk, %i.bi
  %i.bm = shl i64 %i.bl, 32
  %i.bn = urem i64 %i.bk, %i.bi
  %i.bo = shl nuw i64 %i.bn, 32
  %i.bp = udiv i64 %i.bo, %i.bi
  %i.bq = or i64 %i.bp, %i.bm
  %i.br = sext i32 %i.ay to i64
  %i.bs = shl nsw i64 %i.br, 32                   ; 2 uses
  %i.bt = udiv i64 %i.bs, %i.bi
  %i.bu = shl i64 %i.bt, 32
  %i.bv = urem i64 %i.bs, %i.bi
  %i.bw = shl nuw i64 %i.bv, 32
  br label %frac64.exit115.i

.preheader.preheader.i111.i:                      ; preds = %bb.m
  %i.bx = shl nsw i64 %i.bg, 16                   ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bi
  %i.bz = urem i64 %i.bx, %i.bi                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 16
  %i.cb = udiv i64 %i.bz, %i.bh
  %i.cc = urem i64 %i.ca, %i.bi                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 16
  %i.ce = shl nuw i64 %i.by, 32
  %i.cf = shl nuw nsw i64 %i.cb, 16
  %i.cg = or i64 %i.cf, %i.ce
  %i.ch = udiv i64 %i.cc, %i.bh
  %i.ci = or i64 %i.cg, %i.ch
  %i.cj = urem i64 %i.cd, %i.bi
  %i.ck = shl i64 %i.ci, 16
  %i.cl = udiv i64 %i.cj, %i.bh
  %i.cm = or i64 %i.cl, %i.ck
  %i.cn = sext i32 %i.ay to i64
  %i.co = shl nsw i64 %i.cn, 16                   ; 2 uses
  %i.cp = udiv i64 %i.co, %i.bi
  %i.cq = urem i64 %i.co, %i.bi                   ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 16
  %i.cs = udiv i64 %i.cq, %i.bh
  %i.ct = urem i64 %i.cr, %i.bi                   ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 16
  %i.cv = shl nuw i64 %i.cp, 32
  %i.cw = shl nuw nsw i64 %i.cs, 16
  %i.cx = or i64 %i.cw, %i.cv
  %i.cy = udiv i64 %i.ct, %i.bh
  %i.cz = or i64 %i.cx, %i.cy
  %i.da = urem i64 %i.cu, %i.bi
  %i.db = shl nuw nsw i64 %i.da, 16
  %i.dc = shl i64 %i.cz, 16
  br label %frac64.exit115.i

frac64.exit115.i:                                 ; preds = %.preheader.preheader.i111.i, %bb.n
  %i.dd = phi i64 [ %i.cm, %.preheader.preheader.i111.i ], [ %i.bq, %bb.n ] ; 2 uses
  %.sink50.i113.i = phi i64 [ %i.db, %.preheader.preheader.i111.i ], [ %i.bw, %bb.n ]
  %.sink49.i114.i = phi i64 [ %i.dc, %.preheader.preheader.i111.i ], [ %i.bu, %bb.n ]
  %i.de = udiv i64 %.sink50.i113.i, %i.bi
  %i.df = or i64 %i.de, %.sink49.i114.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.dd, ptr %i.dg, align 8, !tbaa !40
  %i.dh = sub i64 %i.df, %i.dd
  %i.di = sdiv i64 %i.dh, %i.ap
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !41
  %.not98.i = icmp sgt i32 %i.be, -1
  br i1 %.not98.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %frac64.exit115.i
  %i.dk = and i32 %i.be, 2147483647
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %.not99.i = icmp samesign ugt i64 %indvars.iv.i, %i.dl
  br i1 %.not99.i, label %1, label %.loopexit

1:                                                ; preds = %bb.o
  %2 = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.dl ; 4 uses
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = sub i64 %i.ad, %3                          ; 6 uses
  %5 = and i64 %4, 1
  %.not.i116.i = icmp eq i64 %5, 0
  br i1 %.not.i116.i, label %10, label %6

6:                                                ; preds = %1
  %7 = add nsw i64 %4, -1
  %8 = lshr exact i64 %7, 1
  %9 = mul i64 %8, %4
  br label %phi_at.exit.i

10:                                               ; preds = %1
  %11 = lshr exact i64 %4, 1
  %12 = add i64 %4, -1
  %13 = mul i64 %11, %12
  br label %phi_at.exit.i

phi_at.exit.i:                                    ; preds = %10, %6
  %14 = phi i64 [ %9, %6 ], [ %13, %10 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !40
  %i.dq = mul i64 %i.dp, %4
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !41
  %i.du = mul i64 %i.dt, %14
  %i.dv = add i64 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !42
  br label %bb.s

bb.p:                                             ; preds = %frac64.exit115.i
  %i.dx = zext nneg i32 %i.be to i64
  %i.dy = shl nuw i64 %i.dx, 33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !42
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.ea = ptrtoint ptr %i.an to i64
  %i.eb = sub i64 %i.q, %i.ea
  %i.ec = icmp slt i64 %i.eb, 8
  br i1 %i.ec, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = load i32, ptr %i.an, align 1, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.086118.i, i64 28
  %i.ef = load i32, ptr %i.ee, align 1, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %.086118.i, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %phi_at.exit.i
  %.1.i = phi ptr [ %i.bf, %phi_at.exit.i ], [ %i.bf, %bb.p ], [ %i.eg, %bb.r ] ; 2 uses
  %.085.i = phi i32 [ %i.ba, %phi_at.exit.i ], [ %i.ba, %bb.p ], [ %i.ed, %bb.r ]
  %.084.i = phi i32 [ %i.bc, %phi_at.exit.i ], [ %i.bc, %bb.p ], [ %i.ef, %bb.r ]
  %i.eh = sext i32 %.085.i to i64                 ; 2 uses
  %i.ei = shl nsw i64 %i.eh, 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !43
  %i.ek = zext i32 %.084.i to i64
  %i.el = sub nsw i64 %i.ek, %i.eh
  %i.em = shl i64 %i.el, 32
  %i.en = sdiv i64 %i.em, %i.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !58

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %.086.lcssa.i = phi ptr [ %i.o, %.preheader.i ], [ %.1.i, %bb.s ]
  %.not96.i = icmp eq ptr %.086.lcssa.i, %i.l
  br i1 %.not96.i, label %wavesynth_parse_extradata.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i, %bb.h, %bb.l, %bb.k, %bb.o, %bb.q, %bb.j, %bb.d, %bb.c, %bb.f, %bb.e, %._crit_edge.i
  %.087.i.ph = phi i32 [ -12, %bb.f ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %._crit_edge.i ], [ -22, %bb.e ], [ -22, %bb.j ], [ -22, %bb.q ], [ -22, %bb.o ], [ -22, %bb.k ], [ -22, %bb.l ], [ -22, %bb.h ], [ -22, %bb.i ], [ -22, %bb.g ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #8
  br label %bb.v

wavesynth_parse_extradata.exit:                   ; preds = %._crit_edge.i
  %i.ep = tail call noalias ptr @av_malloc(i64 noundef 65536) #8 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !46
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %bb.v, label %vector.body

vector.body:                                      ; preds = %wavesynth_parse_extradata.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %wavesynth_parse_extradata.exit ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %wavesynth_parse_extradata.exit ] ; 2 uses
  %i.er = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.es = fmul nnan nsz <4 x double> %i.er, splat (double f0x401921FB54442D18)
  %i.et = fmul nnan nsz <4 x double> %i.es, splat (double f0x3F10000000000000)
  %i.eu = tail call nsz <4 x double> @llvm.sin.v4f64(<4 x double> %i.et)
  %i.ev = fmul nsz <4 x double> %i.eu, splat (double 3.276700e+04)
  %i.ew = tail call nsz <4 x double> @llvm.floor.v4f64(<4 x double> %i.ev)
  %i.ex = fptosi <4 x double> %i.ew to <4 x i32>
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index
  store <4 x i32> %i.ex, ptr %i.ey, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ez = icmp eq i64 %index.next, 16384
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 1213483332, ptr %i.fa, align 8, !tbaa !64
  %i.fb = load i32, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %middle.block
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 552 ; 2 uses
  %.promoted = load i32, ptr %i.fe, align 8, !tbaa !50
  %wide.trip.count = zext nneg i32 %i.fb to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv32 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next33, %bb.t ] ; 2 uses
  %i.ff = phi i32 [ %.promoted, %.lr.ph ], [ %i.fl, %bb.t ]
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.fd, i64 %indvars.iv32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 84
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !38
  %i.fj = icmp eq i32 %i.fi, 1397313358
  %i.fk = zext i1 %i.fj to i32
  %i.fl = add i32 %i.ff, %i.fk                    ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond35.not, label %._crit_edge, label %bb.t, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.t
  store i32 %i.fl, ptr %i.fe, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %middle.block
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 1263421776, ptr %i.fm, align 4, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 556
  store i32 128, ptr %i.fn, align 4, !tbaa !51
  tail call fastcc void @wavesynth_seek(ptr noundef nonnull %i.b, i64 noundef 0)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.fo, align 4, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %wavesynth_parse_extradata.exit, %bb.u, %.loopexit, %bb.b
  %.025 = phi i32 [ -22, %bb.b ], [ %.087.i.ph, %.loopexit ], [ 0, %bb.u ], [ -12, %wavesynth_parse_extradata.exit ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal i32 @wavesynth_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %2, align 4, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76
  %.not = icmp eq i32 %i.e, 12
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = load i64, ptr %i.g, align 1, !tbaa !30   ; 3 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !52
  %.not44 = icmp eq i64 %i.h, %i.i
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @wavesynth_seek(ptr noundef nonnull %i.c, i64 noundef %i.h)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 1, !tbaa !30   ; 4 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.l, ptr %i.n, align 8, !tbaa !82
  %i.o = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.ab, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 564 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 556 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre86 = load i32, ptr %i.r, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph70, %._crit_edge
  %i.ab = phi i32 [ %.pre86, %.lr.ph70 ], [ %i.dw, %._crit_edge ]
  %.068 = phi ptr [ %i.q, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %.03867 = phi i32 [ 0, %.lr.ph70 ], [ %i.eo, %._crit_edge ]
  %.03965 = phi i64 [ %i.h, %.lr.ph70 ], [ %i.ep, %._crit_edge ] ; 5 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ad, i1 false)
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !53
  %.not45 = icmp slt i64 %.03965, %i.ae
  %.pre88 = load i32, ptr %i.t, align 4, !tbaa !47 ; 3 uses
  br i1 %.not45, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp sgt i32 %.pre88, -1
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
end_hunk_0
begin_hunk_1_@wavesynth_decode:bb.a
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = mul i32 %i.cw, %i.cl
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !57 ; 2 uses
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !41
  %i.dd = add i64 %i.dc, %i.cz
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !57
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.de = mul i32 %i.bt, %i.cl
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.049.i = phi i32 [ %i.de, %bb.u ], [ %i.cx, %bb.t ], [ 0, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !39 ; 3 uses
  %i.dh = or i32 %i.dg, %.0.ph68.i                ; 2 uses
  %.not5461.i = icmp eq i32 %i.dg, 0
  br i1 %.not5461.i, label %.loopexit.i, label %.lr.ph65.i, !llvm.loop !69

.lr.ph65.i:                                       ; preds = %bb.v
  br label %bb.w, !llvm.loop !69

bb.w:                                             ; preds = %bb.y, %.lr.ph65.i
  %.04663.i = phi i32 [ %i.dg, %.lr.ph65.i ], [ %i.dl, %bb.y ] ; 2 uses
  %.05062.i = phi ptr [ %i.a, %.lr.ph65.i ], [ %i.dm, %bb.y ] ; 3 uses
  %i.di = and i32 %.04663.i, 1
  %.not55.i = icmp eq i32 %i.di, 0
  br i1 %.not55.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = load i32, ptr %.05062.i, align 4, !tbaa !47
  %i.dk = add i32 %i.dj, %.049.i
  store i32 %i.dk, ptr %.05062.i, align 4, !tbaa !47
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dl = lshr i32 %.04663.i, 1                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05062.i, i64 4
  %.not54.i = icmp eq i32 %i.dl, 0
  br i1 %.not54.i, label %..loopexit_crit_edge.i, label %bb.w, !llvm.loop !70

.outer._crit_edge.i:                              ; preds = %.loopexit.i, %bb.r
  %.0.ph.lcssa.i = phi i32 [ %.0.ph68.i, %bb.r ], [ %i.dh, %.loopexit.i ] ; 2 uses
  %i.dn = load i32, ptr %i.z, align 8, !tbaa !47
  %i.do = mul i32 %i.dn, 1284865837
  %i.dp = add i32 %i.do, -144211633               ; 2 uses
  store i32 %i.dp, ptr %i.z, align 8, !tbaa !47
  %i.dq = ashr i32 %i.dp, 16
  %.not70.i = icmp eq i32 %.0.ph.lcssa.i, 0
  br i1 %.not70.i, label %wavesynth_synth_sample.exit, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.outer._crit_edge.i, %bb.aa
  %.172.i = phi i32 [ %i.du, %bb.aa ], [ %.0.ph.lcssa.i, %.outer._crit_edge.i ] ; 2 uses
  %.15171.i = phi ptr [ %i.dv, %bb.aa ], [ %i.a, %.outer._crit_edge.i ] ; 3 uses
  %i.dr = and i32 %.172.i, 1
  %.not52.i = icmp eq i32 %i.dr, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph74.i
  %i.ds = load i32, ptr %.15171.i, align 4, !tbaa !47
  %i.dt = add i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %.15171.i, align 4, !tbaa !47
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph74.i
  %i.du = lshr i32 %.172.i, 1                     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.15171.i, i64 4
  %.not.i47 = icmp eq i32 %i.du, 0
  br i1 %.not.i47, label %wavesynth_synth_sample.exit, label %.lr.ph74.i, !llvm.loop !71

wavesynth_synth_sample.exit:                      ; preds = %bb.aa, %.outer._crit_edge.thread.i, %.outer._crit_edge.i
  %i.dw = load i32, ptr %i.r, align 4, !tbaa !29  ; 4 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %wavesynth_synth_sample.exit
  %wide.trip.count = zext nneg i32 %i.dw to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.dy = shl nuw nsw i64 %n.vec, 1
  %i.dz = getelementptr i8, ptr %.068, i64 %i.dy  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.068, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <4 x i32>, ptr %i.eb, align 16, !tbaa !47
  %wide.load130 = load <4 x i32>, ptr %i.ec, align 16, !tbaa !47
  %i.ed = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.ee = lshr <4 x i32> %wide.load130, splat (i32 16)
  %i.ef = trunc nuw <4 x i32> %i.ed to <4 x i16>
  %i.eg = trunc nuw <4 x i32> %i.ee to <4 x i16>
  %i.eh = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ef, ptr %next.gep, align 2, !tbaa !88
  store <4 x i16> %i.eg, ptr %i.eh, align 2, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.164.ph = phi ptr [ %.068, %.lr.ph.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader132, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader132 ] ; 2 uses
  %.164 = phi ptr [ %i.en, %.lr.ph ], [ %.164.ph, %.lr.ph.preheader132 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !47
  %i.el = lshr i32 %i.ek, 16
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %.164, i64 2 ; 2 uses
  store i16 %i.em, ptr %.164, align 2, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %wavesynth_synth_sample.exit
  %.1.lcssa = phi ptr [ %.068, %wavesynth_synth_sample.exit ], [ %i.dz, %middle.block ], [ %i.en, %.lr.ph ]
  %i.eo = add nuw nsw i32 %.03867, 1              ; 2 uses
  %i.ep = add i64 %.03965, 1
  %exitcond85.not = icmp eq i32 %i.eo, %i.l
  br i1 %exitcond85.not, label %._crit_edge71, label %bb.f, !llvm.loop !74

._crit_edge71:                                    ; preds = %._crit_edge
  %i.eq = zext nneg i32 %i.l to i64
  %i.er = load i64, ptr %i.c, align 8, !tbaa !52
  %i.es = add i64 %i.er, %i.eq
  store i64 %i.es, ptr %i.c, align 8, !tbaa !52
  store i32 1, ptr %2, align 4, !tbaa !47
  %i.et = load i32, ptr %i.d, align 8, !tbaa !76
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.d, %bb.a, %._crit_edge71
  %.040 = phi i32 [ %i.et, %._crit_edge71 ], [ -1094995529, %bb.a ], [ -22, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.040
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @wavesynth_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @wavesynth_seek(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi i32 [ %i.c, %.lr.ph ], [ %i.ah, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.05070 = phi ptr [ %i.a, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %indvars.iv ; 11 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %.not = icmp slt i64 %1, %i.l
  br i1 %.not, label %2, label %bb.d

2:                                                ; preds = %bb.c
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %3, ptr %.05070, align 4, !tbaa !47
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %5 = sub i64 %1, %i.i                           ; 8 uses
  %6 = and i64 %5, 1
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %11, label %7

7:                                                ; preds = %2
  %8 = add nsw i64 %5, -1
  %9 = lshr exact i64 %8, 1
  %10 = mul i64 %9, %5
  br label %phi_at.exit

11:                                               ; preds = %2
  %12 = lshr exact i64 %5, 1
  %13 = add i64 %5, -1
  %14 = mul i64 %12, %13
  br label %phi_at.exit

phi_at.exit:                                      ; preds = %7, %11
  %15 = phi i64 [ %10, %7 ], [ %14, %11 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = mul i64 %i.p, %5
  %i.r = add i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = mul i64 %i.t, %15
  %i.v = add i64 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.v, ptr %i.w, align 8, !tbaa !56
  %i.x = mul i64 %i.t, %5
  %i.y = add i64 %i.x, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.y, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ae = mul i64 %i.ad, %5
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !55
  %.pre = load i32, ptr %i.b, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %phi_at.exit
  %i.ah = phi i32 [ %i.g, %bb.c ], [ %.pre, %phi_at.exit ] ; 2 uses
  %.1 = phi ptr [ %.05070, %bb.c ], [ %4, %phi_at.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !89

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %bb.e
  %.0.lcssa.sink = phi i32 [ %i.al, %bb.e ], [ 0, %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %.05069 = phi ptr [ %.05070, %bb.e ], [ %i.a, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  %i.am = phi i64 [ %i.i, %bb.e ], [ 9223372036854775807, %bb.a ], [ 9223372036854775807, %._crit_edge.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %.0.lcssa.sink, ptr %i.an, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !53
  store i32 -1, ptr %.05069, align 4, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = trunc i64 %1 to i32                     ; 2 uses
  %i.ar = load i64, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = sub i32 %i.aq, %i.as                    ; 2 uses
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  %.not16.i = icmp eq i32 %i.at, 0
  br i1 %.not16.i, label %lcg_seek.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.020.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %i.au, %._crit_edge ] ; 2 uses
  %.01219.i = phi i32 [ %i.az, %.lr.ph.i ], [ -144211633, %._crit_edge ] ; 2 uses
  %.01318.i = phi i32 [ %i.ba, %.lr.ph.i ], [ 1284865837, %._crit_edge ] ; 4 uses
  %.01417.i = phi i32 [ %i.bb, %.lr.ph.i ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.av = and i32 %.01417.i, 1
  %.not15.i = icmp eq i32 %i.av, 0
  %i.aw = mul i32 %.01318.i, %.020.i
  %i.ax = add i32 %i.aw, %.01219.i
  %.1.i = select i1 %.not15.i, i32 %.020.i, i32 %i.ax ; 2 uses
  %i.ay = add i32 %.01318.i, 1
  %i.az = mul i32 %i.ay, %.01219.i
  %i.ba = mul i32 %.01318.i, %.01318.i
  %i.bb = lshr i32 %.01417.i, 1                   ; 2 uses
  %.not.i55 = icmp eq i32 %i.bb, 0
  br i1 %.not.i55, label %lcg_seek.exit, label %.lr.ph.i, !llvm.loop !90

lcg_seek.exit:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.au, %._crit_edge ], [ %.1.i, %.lr.ph.i ]
  store i32 %.0.lcssa.i, ptr %i.ap, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !50
  %.not53 = icmp eq i32 %i.bd, 0
  br i1 %.not53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %lcg_seek.exit
  %i.be = add i64 %i.ar, 127
  %i.bf = and i64 %i.be, 2147483520
  %i.bg = and i64 %1, 2147483520
  %i.bh = and i32 %i.aq, 127                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = sub nsw i64 %i.bg, %i.bf
  %i.bk = trunc nsw i64 %i.bj to i32
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !47 ; 2 uses
  %.not16.i56 = icmp eq i32 %i.bl, 0
  br i1 %.not16.i56, label %lcg_seek.exit66, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.f, %.lr.ph.i57
  %.020.i58 = phi i32 [ %.1.i63, %.lr.ph.i57 ], [ %i.bm, %bb.f ] ; 2 uses
  %.01219.i59 = phi i32 [ %i.br, %.lr.ph.i57 ], [ -144211633, %bb.f ] ; 2 uses
  %.01318.i60 = phi i32 [ %i.bs, %.lr.ph.i57 ], [ 1284865837, %bb.f ] ; 4 uses
  %.01417.i61 = phi i32 [ %i.bt, %.lr.ph.i57 ], [ %i.bl, %bb.f ] ; 2 uses
  %i.bn = and i32 %.01417.i61, 1
  %.not15.i62 = icmp eq i32 %i.bn, 0
  %i.bo = mul i32 %.01318.i60, %.020.i58
  %i.bp = add i32 %i.bo, %.01219.i59
  %.1.i63 = select i1 %.not15.i62, i32 %.020.i58, i32 %i.bp ; 2 uses
  %i.bq = add i32 %.01318.i60, 1
  %i.br = mul i32 %i.bq, %.01219.i59
  %i.bs = mul i32 %.01318.i60, %.01318.i60
  %i.bt = lshr i32 %.01417.i61, 1                 ; 2 uses
  %.not.i64 = icmp eq i32 %i.bt, 0
  br i1 %.not.i64, label %lcg_seek.exit66, label %.lr.ph.i57, !llvm.loop !90

lcg_seek.exit66:                                  ; preds = %.lr.ph.i57, %bb.f
  %.0.lcssa.i65 = phi i32 [ %i.bm, %bb.f ], [ %.1.i63, %.lr.ph.i57 ]
  store i32 %.0.lcssa.i65, ptr %i.bi, align 4, !tbaa !47
  %.not54 = icmp eq i32 %i.bh, 0
  br i1 %.not54, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %lcg_seek.exit66
  tail call fastcc void @pink_fill(ptr noundef nonnull %0)
  br label %.sink.split

.sink.split:                                      ; preds = %lcg_seek.exit66, %bb.g
  %.sink = phi i32 [ %i.bh, %bb.g ], [ 128, %lcg_seek.exit66 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %.sink, ptr %i.bu, align 4, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %lcg_seek.exit
  store i64 %1, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @pink_fill(ptr nofree noundef captures(none) initializes((556, 560)) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 0, ptr %i.a, align 4, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %.preheader21

.preheader21:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.promoted = load i32, ptr %i.d, align 4, !tbaa !47
  br label %.preheader

.preheader:                                       ; preds = %.preheader21, %bb.i
  %.sroa.0.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.0.0, %bb.i ] ; 2 uses
  %.sroa.5.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.5.0, %bb.i ] ; 3 uses
  %.sroa.7.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.7.0, %bb.i ] ; 4 uses
  %.sroa.9.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.9.0, %bb.i ] ; 5 uses
  %.sroa.11.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.11.0, %bb.i ] ; 6 uses
  %.sroa.13.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.13.0, %bb.i ] ; 7 uses
  %.sroa.15.1 = phi i32 [ 0, %.preheader21 ], [ %.sroa.15.0, %bb.i ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader21 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01924 = phi i32 [ 0, %.preheader21 ], [ %.1.lcssa, %bb.i ] ; 2 uses
  %i.f = phi i32 [ %.promoted, %.preheader21 ], [ %i.az, %bb.i ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 7 uses
  %i.h = and i32 %i.g, 1
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.preheader
  %i.i = sub i32 %.01924, %.sroa.0.1
  %i.j = mul i32 %i.f, 1284865837
  %i.k = add i32 %i.j, -144211633                 ; 3 uses
  %i.l = ashr i32 %i.k, 3                         ; 8 uses
  %i.m = add nsw i32 %i.i, %i.l                   ; 2 uses
  %i.n = and i32 %i.g, 2
  %.not20.1 = icmp eq i32 %i.n, 0
  br i1 %.not20.1, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = sub i32 %i.m, %.sroa.5.1
  %i.p = mul i32 %i.k, 1284865837
  %i.q = add i32 %i.p, -144211633                 ; 3 uses
  %i.r = ashr i32 %i.q, 3                         ; 7 uses
  %i.s = add nsw i32 %i.o, %i.r                   ; 2 uses
  %i.t = and i32 %i.g, 4
  %.not20.2 = icmp eq i32 %i.t, 0
  br i1 %.not20.2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.u = sub i32 %i.s, %.sroa.7.1
  %i.v = mul i32 %i.q, 1284865837
  %i.w = add i32 %i.v, -144211633                 ; 3 uses
  %i.x = ashr i32 %i.w, 3                         ; 6 uses
  %i.y = add nsw i32 %i.u, %i.x                   ; 2 uses
  %i.z = and i32 %i.g, 8
  %.not20.3 = icmp eq i32 %i.z, 0
  br i1 %.not20.3, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.aa = sub i32 %i.y, %.sroa.9.1
  %i.ab = mul i32 %i.w, 1284865837
  %i.ac = add i32 %i.ab, -144211633               ; 3 uses
  %i.ad = ashr i32 %i.ac, 3                       ; 5 uses
  %i.ae = add nsw i32 %i.aa, %i.ad                ; 2 uses
  %i.af = and i32 %i.g, 16
  %.not20.4 = icmp eq i32 %i.af, 0
  br i1 %.not20.4, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = sub i32 %i.ae, %.sroa.11.1
  %i.ah = mul i32 %i.ac, 1284865837
  %i.ai = add i32 %i.ah, -144211633               ; 3 uses
  %i.aj = ashr i32 %i.ai, 3                       ; 4 uses
  %i.ak = add nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = and i32 %i.g, 32
  %.not20.5 = icmp eq i32 %i.al, 0
  br i1 %.not20.5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = sub i32 %i.ak, %.sroa.13.1
  %i.an = mul i32 %i.ai, 1284865837
  %i.ao = add i32 %i.an, -144211633               ; 3 uses
  %i.ap = ashr i32 %i.ao, 3                       ; 3 uses
  %i.aq = add nsw i32 %i.am, %i.ap                ; 2 uses
end_hunk_1
