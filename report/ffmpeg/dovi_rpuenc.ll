Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpuenc?download=true
inline.NumInlined: 130
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_dovi_configure:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_dovi_rpu_generate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.PutBitContext, align 8      ; 151 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !111   ; 2 uses
  %i.c = zext i8 %i.b to i32
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !112
  store i32 0, ptr %4, align 4, !tbaa !113
  br label %bb.aai

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 92 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 43 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !116
  %.not481 = icmp eq i8 %i.m, 0
  br i1 %.not481, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 666) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %2, 4
  %.not482 = icmp eq i32 %i.n, 0
  br i1 %.not482, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i8 %i.b, 2
  br i1 %i.o, label %bb.aai, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %spec.select = phi i32 [ %i.c, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = load i8, ptr %i.e, align 2, !tbaa !117   ; 2 uses
  %.not483 = icmp eq i8 %i.p, 2
  br i1 %.not483, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = zext i8 %i.p to i32
  %i.r = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.r, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.q) #13
  br label %bb.aai

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 5028 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !119
  %i.u = add i32 %i.t, -65536
  %or.cond.i = icmp ult i32 %i.u, -65535
  br i1 %or.cond.i, label %.loopexit818, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 5032 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120
  %i.x = add i32 %i.w, -65536
  %or.cond112.i = icmp ult i32 %i.x, -65535
  br i1 %or.cond112.i, label %.loopexit818, label %.preheader168.i

.preheader168.i:                                  ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.z = getelementptr i8, ptr %i.e, i64 8        ; 26 uses
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !122  ; 9 uses
  %i.ab = add i8 %i.aa, -10
  %or.cond113.i = icmp ult i8 %i.ab, -8
  br i1 %or.cond113.i, label %.loopexit818, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader168.i
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !123
  %i.ag = getelementptr i8, ptr %i.h, i64 10
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !123
  %i.ai = icmp ult i16 %i.af, %i.ah
  br i1 %i.ai, label %.loopexit818, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i8 %i.aa, 2
  br i1 %exitcond.not.i, label %.preheader164.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !123
  %i.al = getelementptr i8, ptr %i.h, i64 12
  %i.am = load i16, ptr %i.al, align 4, !tbaa !123
  %i.an = icmp ult i16 %i.ak, %i.am
  br i1 %i.an, label %.loopexit818, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond.not.i.11358 = icmp eq i8 %i.aa, 3
  br i1 %exitcond.not.i.11358, label %.preheader164.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !123
  %i.aq = getelementptr i8, ptr %i.h, i64 14
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !123
  %i.as = icmp ult i16 %i.ap, %i.ar
  br i1 %i.as, label %.loopexit818, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond.not.i.21361 = icmp eq i8 %i.aa, 4
  br i1 %exitcond.not.i.21361, label %.preheader164.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.au = load i16, ptr %i.at, align 2, !tbaa !123
  %i.av = getelementptr i8, ptr %i.h, i64 16
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !123
  %i.ax = icmp ult i16 %i.au, %i.aw
  br i1 %i.ax, label %.loopexit818, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond.not.i.3 = icmp eq i8 %i.aa, 5
  br i1 %exitcond.not.i.3, label %.preheader164.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !123
  %i.ba = getelementptr i8, ptr %i.h, i64 18
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !123
  %i.bc = icmp ult i16 %i.az, %i.bb
  br i1 %i.bc, label %.loopexit818, label %bb.s

bb.s:                                             ; preds = %bb.r
  %exitcond.not.i.4 = icmp eq i8 %i.aa, 6
  br i1 %exitcond.not.i.4, label %.preheader164.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !123
  %i.bf = getelementptr i8, ptr %i.h, i64 20
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !123
  %i.bh = icmp ult i16 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit818, label %bb.u

bb.u:                                             ; preds = %bb.t
  %exitcond.not.i.5 = icmp eq i8 %i.aa, 7
  br i1 %exitcond.not.i.5, label %.preheader164.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !123
  %i.bk = getelementptr i8, ptr %i.h, i64 22
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !123
  %i.bm = icmp ult i16 %i.bj, %i.bl
  br i1 %i.bm, label %.loopexit818, label %bb.w

bb.w:                                             ; preds = %bb.v
  %exitcond.not.i.6 = icmp eq i8 %i.aa, 8
  br i1 %exitcond.not.i.6, label %.preheader164.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !123
  %i.bp = getelementptr i8, ptr %i.h, i64 24
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp ult i16 %i.bo, %i.bq
  br i1 %i.br, label %.loopexit818, label %.preheader164.i

.preheader164.i:                                  ; preds = %bb.x, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %smax.i = add nsw i64 %i.ac, -1                 ; 2 uses
  %exitcond202.not.i826 = icmp eq i64 %smax.i, 0
  br i1 %exitcond202.not.i826, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164.i, %.thread142.i
  %indvars.iv198.i827 = phi i64 [ %indvars.iv.next199.i, %.thread142.i ], [ 0, %.preheader164.i ] ; 7 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv198.i827
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !113
  switch i32 %i.bz, label %.loopexit818 [
    i32 0, label %bb.y
    i32 1, label %bb.aa
  ]

bb.y:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv198.i827
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28  ; 2 uses
  %i.cc = add i8 %i.cb, -3
  %or.cond114.i = icmp ult i8 %i.cc, -2
  br i1 %or.cond114.i, label %.loopexit818, label %.preheader160.i

.preheader160.i:                                  ; preds = %bb.y
  %.val117.i = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.cd = icmp ugt i8 %.val117.i, 62
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv198.i827 ; 3 uses
  %i.cf = zext nneg i8 %.val117.i to i64          ; 3 uses
  br i1 %i.cd, label %.loopexit818, label %validate_se_coef.exit.i

validate_se_coef.exit.i.11383:                    ; preds = %validate_se_coef.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.ci = ashr i64 %i.ch, %i.cf
  %i.cj = add i64 %i.ci, -32768
  %i.ck = icmp ult i64 %i.cj, -65535
  br i1 %i.ck, label %.loopexit818, label %bb.z

bb.z:                                             ; preds = %validate_se_coef.exit.i.11383
  %exitcond197.not.i.11385 = icmp eq i8 %i.cb, 1
  br i1 %exitcond197.not.i.11385, label %.thread142.i, label %validate_se_coef.exit.i.21387

validate_se_coef.exit.i.21387:                    ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.cn = ashr i64 %i.cm, %i.cf
  %i.co = add i64 %i.cn, -32768
  %i.cp = icmp ult i64 %i.co, -65535
  br i1 %i.cp, label %.loopexit818, label %.thread142.i

validate_se_coef.exit.i:                          ; preds = %.preheader160.i
  %i.cq = load i64, ptr %i.ce, align 8, !tbaa !27
  %i.cr = ashr i64 %i.cq, %i.cf
  %i.cs = add i64 %i.cr, -32768
  %i.ct = icmp ult i64 %i.cs, -65535
  br i1 %i.ct, label %.loopexit818, label %validate_se_coef.exit.i.11383

bb.aa:                                            ; preds = %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv198.i827
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28  ; 3 uses
  %i.cw = add i8 %i.cv, -4
  %or.cond115.i = icmp ult i8 %i.cw, -3
  br i1 %or.cond115.i, label %.loopexit818, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val116.i = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.cx = icmp ugt i8 %.val116.i, 62
  br i1 %i.cx, label %.loopexit818, label %validate_se_coef.exit122.i

validate_se_coef.exit122.i:                       ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv198.i827
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.da = zext nneg i8 %.val116.i to i64          ; 22 uses
  %i.db = ashr i64 %i.cz, %i.da
  %i.dc = add i64 %i.db, -32768
  %i.dd = icmp ult i64 %i.dc, -65535
  br i1 %i.dd, label %.loopexit818, label %.preheader158.lr.ph.i

.preheader158.lr.ph.i:                            ; preds = %validate_se_coef.exit122.i
  %i.de = getelementptr inbounds nuw [168 x i8], ptr %i.bv, i64 %indvars.iv198.i827 ; 21 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !27
  %i.dg = ashr i64 %i.df, %i.da
  %i.dh = add i64 %i.dg, -32768
  %i.di = icmp ult i64 %i.dh, -65535
  br i1 %i.di, label %.loopexit818, label %validate_se_coef.exit124.1.i

validate_se_coef.exit124.1.i:                     ; preds = %.preheader158.lr.ph.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !27
  %i.dl = ashr i64 %i.dk, %i.da
  %i.dm = add i64 %i.dl, -32768
  %i.dn = icmp ult i64 %i.dm, -65535
  br i1 %i.dn, label %.loopexit818, label %validate_se_coef.exit124.2.i

validate_se_coef.exit124.2.i:                     ; preds = %validate_se_coef.exit124.1.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !27
  %i.dq = ashr i64 %i.dp, %i.da
  %i.dr = add i64 %i.dq, -32768
  %i.ds = icmp ult i64 %i.dr, -65535
  br i1 %i.ds, label %.loopexit818, label %validate_se_coef.exit124.3.i

validate_se_coef.exit124.3.i:                     ; preds = %validate_se_coef.exit124.2.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !27
  %i.dv = ashr i64 %i.du, %i.da
  %i.dw = add i64 %i.dv, -32768
  %i.dx = icmp ult i64 %i.dw, -65535
  br i1 %i.dx, label %.loopexit818, label %validate_se_coef.exit124.4.i

validate_se_coef.exit124.4.i:                     ; preds = %validate_se_coef.exit124.3.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !27
  %i.ea = ashr i64 %i.dz, %i.da
  %i.eb = add i64 %i.ea, -32768
  %i.ec = icmp ult i64 %i.eb, -65535
  br i1 %i.ec, label %.loopexit818, label %validate_se_coef.exit124.5.i

validate_se_coef.exit124.5.i:                     ; preds = %validate_se_coef.exit124.4.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !27
  %i.ef = ashr i64 %i.ee, %i.da
  %i.eg = add i64 %i.ef, -32768
  %i.eh = icmp ult i64 %i.eg, -65535
  br i1 %i.eh, label %.loopexit818, label %validate_se_coef.exit124.6.i

validate_se_coef.exit124.6.i:                     ; preds = %validate_se_coef.exit124.5.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !27
  %i.ek = ashr i64 %i.ej, %i.da
  %i.el = add i64 %i.ek, -32768
  %i.em = icmp ult i64 %i.el, -65535
  br i1 %i.em, label %.loopexit818, label %bb.ac

bb.ac:                                            ; preds = %validate_se_coef.exit124.6.i
  %exitcond192.not.i = icmp eq i8 %i.cv, 1
  br i1 %exitcond192.not.i, label %.thread142.i, label %.preheader158.i.11363

.preheader158.i.11363:                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !27
  %i.ep = ashr i64 %i.eo, %i.da
  %i.eq = add i64 %i.ep, -32768
  %i.er = icmp ult i64 %i.eq, -65535
  br i1 %i.er, label %.loopexit818, label %validate_se_coef.exit124.1.i.11364

validate_se_coef.exit124.1.i.11364:               ; preds = %.preheader158.i.11363
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.et = load i64, ptr %i.es, align 8, !tbaa !27
  %i.eu = ashr i64 %i.et, %i.da
  %i.ev = add i64 %i.eu, -32768
  %i.ew = icmp ult i64 %i.ev, -65535
  br i1 %i.ew, label %.loopexit818, label %validate_se_coef.exit124.2.i.11365

validate_se_coef.exit124.2.i.11365:               ; preds = %validate_se_coef.exit124.1.i.11364
  %i.ex = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !27
  %i.ez = ashr i64 %i.ey, %i.da
  %i.fa = add i64 %i.ez, -32768
  %i.fb = icmp ult i64 %i.fa, -65535
  br i1 %i.fb, label %.loopexit818, label %validate_se_coef.exit124.3.i.11366

validate_se_coef.exit124.3.i.11366:               ; preds = %validate_se_coef.exit124.2.i.11365
  %i.fc = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !27
  %i.fe = ashr i64 %i.fd, %i.da
  %i.ff = add i64 %i.fe, -32768
  %i.fg = icmp ult i64 %i.ff, -65535
  br i1 %i.fg, label %.loopexit818, label %validate_se_coef.exit124.4.i.11367

validate_se_coef.exit124.4.i.11367:               ; preds = %validate_se_coef.exit124.3.i.11366
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !27
  %i.fj = ashr i64 %i.fi, %i.da
  %i.fk = add i64 %i.fj, -32768
  %i.fl = icmp ult i64 %i.fk, -65535
  br i1 %i.fl, label %.loopexit818, label %validate_se_coef.exit124.5.i.11368

validate_se_coef.exit124.5.i.11368:               ; preds = %validate_se_coef.exit124.4.i.11367
  %i.fm = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !27
  %i.fo = ashr i64 %i.fn, %i.da
  %i.fp = add i64 %i.fo, -32768
  %i.fq = icmp ult i64 %i.fp, -65535
  br i1 %i.fq, label %.loopexit818, label %validate_se_coef.exit124.6.i.11369

validate_se_coef.exit124.6.i.11369:               ; preds = %validate_se_coef.exit124.5.i.11368
  %i.fr = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !27
  %i.ft = ashr i64 %i.fs, %i.da
  %i.fu = add i64 %i.ft, -32768
  %i.fv = icmp ult i64 %i.fu, -65535
  br i1 %i.fv, label %.loopexit818, label %bb.ad

bb.ad:                                            ; preds = %validate_se_coef.exit124.6.i.11369
  %exitcond192.not.i.11371 = icmp eq i8 %i.cv, 2
  br i1 %exitcond192.not.i.11371, label %.thread142.i, label %.preheader158.i.21373

.preheader158.i.21373:                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !27
  %i.fy = ashr i64 %i.fx, %i.da
  %i.fz = add i64 %i.fy, -32768
  %i.ga = icmp ult i64 %i.fz, -65535
  br i1 %i.ga, label %.loopexit818, label %validate_se_coef.exit124.1.i.21374

validate_se_coef.exit124.1.i.21374:               ; preds = %.preheader158.i.21373
  %i.gb = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !27
  %i.gd = ashr i64 %i.gc, %i.da
  %i.ge = add i64 %i.gd, -32768
  %i.gf = icmp ult i64 %i.ge, -65535
  br i1 %i.gf, label %.loopexit818, label %validate_se_coef.exit124.2.i.21375

validate_se_coef.exit124.2.i.21375:               ; preds = %validate_se_coef.exit124.1.i.21374
  %i.gg = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !27
  %i.gi = ashr i64 %i.gh, %i.da
  %i.gj = add i64 %i.gi, -32768
  %i.gk = icmp ult i64 %i.gj, -65535
  br i1 %i.gk, label %.loopexit818, label %validate_se_coef.exit124.3.i.21376

validate_se_coef.exit124.3.i.21376:               ; preds = %validate_se_coef.exit124.2.i.21375
  %i.gl = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !27
  %i.gn = ashr i64 %i.gm, %i.da
  %i.go = add i64 %i.gn, -32768
  %i.gp = icmp ult i64 %i.go, -65535
  br i1 %i.gp, label %.loopexit818, label %validate_se_coef.exit124.4.i.21377

validate_se_coef.exit124.4.i.21377:               ; preds = %validate_se_coef.exit124.3.i.21376
  %i.gq = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !27
  %i.gs = ashr i64 %i.gr, %i.da
  %i.gt = add i64 %i.gs, -32768
  %i.gu = icmp ult i64 %i.gt, -65535
  br i1 %i.gu, label %.loopexit818, label %validate_se_coef.exit124.5.i.21378

validate_se_coef.exit124.5.i.21378:               ; preds = %validate_se_coef.exit124.4.i.21377
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !27
  %i.gx = ashr i64 %i.gw, %i.da
  %i.gy = add i64 %i.gx, -32768
  %i.gz = icmp ult i64 %i.gy, -65535
  br i1 %i.gz, label %.loopexit818, label %validate_se_coef.exit124.6.i.21379

validate_se_coef.exit124.6.i.21379:               ; preds = %validate_se_coef.exit124.5.i.21378
  %i.ha = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !27
  %i.hc = ashr i64 %i.hb, %i.da
  %i.hd = add i64 %i.hc, -32768
  %i.he = icmp ult i64 %i.hd, -65535
  br i1 %i.he, label %.loopexit818, label %.thread142.i

.thread142.i:                                     ; preds = %bb.ac, %bb.ad, %validate_se_coef.exit124.6.i.21379, %bb.z, %validate_se_coef.exit.i.21387
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i827, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %smax.i
  br i1 %exitcond202.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.thread142.i, %.preheader164.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 1680 ; 5 uses
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !122 ; 9 uses
  %i.hh = add i8 %i.hg, -10
  %or.cond113.i.1 = icmp ult i8 %i.hh, -8
  br i1 %or.cond113.i.1, label %.loopexit818, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge
  %i.hi = zext nneg i8 %i.hg to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.h, i64 1682
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 1684
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !123
  %i.hm = getelementptr i8, ptr %i.h, i64 1682
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !123
  %i.ho = icmp ult i16 %i.hl, %i.hn
  br i1 %i.ho, label %.loopexit818, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.1
  %exitcond.not.i.1 = icmp eq i8 %i.hg, 2
  br i1 %exitcond.not.i.1, label %.preheader164.i.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 1686
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !123
  %i.hr = getelementptr i8, ptr %i.h, i64 1684
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !123
  %i.ht = icmp ult i16 %i.hq, %i.hs
  br i1 %i.ht, label %.loopexit818, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %exitcond.not.i.1.1 = icmp eq i8 %i.hg, 3
  br i1 %exitcond.not.i.1.1, label %.preheader164.i.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 1688
  %i.hv = load i16, ptr %i.hu, align 8, !tbaa !123
  %i.hw = getelementptr i8, ptr %i.h, i64 1686
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !123
  %i.hy = icmp ult i16 %i.hv, %i.hx
  br i1 %i.hy, label %.loopexit818, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %exitcond.not.i.1.2 = icmp eq i8 %i.hg, 4
  br i1 %exitcond.not.i.1.2, label %.preheader164.i.1, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 1690
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !123
  %i.ib = getelementptr i8, ptr %i.h, i64 1688
  %i.ic = load i16, ptr %i.ib, align 8, !tbaa !123
  %i.id = icmp ult i16 %i.ia, %i.ic
  br i1 %i.id, label %.loopexit818, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %exitcond.not.i.1.3 = icmp eq i8 %i.hg, 5
  br i1 %exitcond.not.i.1.3, label %.preheader164.i.1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 1692
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !123
  %i.ig = getelementptr i8, ptr %i.h, i64 1690
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !123
  %i.ii = icmp ult i16 %i.if, %i.ih
  br i1 %i.ii, label %.loopexit818, label %bb.am

bb.am:                                            ; preds = %bb.al
  %exitcond.not.i.1.4 = icmp eq i8 %i.hg, 6
  br i1 %exitcond.not.i.1.4, label %.preheader164.i.1, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ij = getelementptr inbounds nuw i8, ptr %i.h, i64 1694
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !123
  %i.il = getelementptr i8, ptr %i.h, i64 1692
  %i.im = load i16, ptr %i.il, align 4, !tbaa !123
  %i.in = icmp ult i16 %i.ik, %i.im
  br i1 %i.in, label %.loopexit818, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %exitcond.not.i.1.5 = icmp eq i8 %i.hg, 7
  br i1 %exitcond.not.i.1.5, label %.preheader164.i.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.io = getelementptr inbounds nuw i8, ptr %i.h, i64 1696
  %i.ip = load i16, ptr %i.io, align 8, !tbaa !123
  %i.iq = getelementptr i8, ptr %i.h, i64 1694
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !123
  %i.is = icmp ult i16 %i.ip, %i.ir
  br i1 %i.is, label %.loopexit818, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %exitcond.not.i.1.6 = icmp eq i8 %i.hg, 8
  br i1 %exitcond.not.i.1.6, label %.preheader164.i.1, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.it = getelementptr inbounds nuw i8, ptr %i.h, i64 1698
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !123
  %i.iv = getelementptr i8, ptr %i.h, i64 1696
  %i.iw = load i16, ptr %i.iv, align 8, !tbaa !123
  %i.ix = icmp ult i16 %i.iu, %i.iw
  br i1 %i.ix, label %.loopexit818, label %.preheader164.i.1

.preheader164.i.1:                                ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 1700 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 1936
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 1944
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 2008
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 1732
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 1744
  %smax.i.1 = add nsw i64 %i.hi, -1               ; 2 uses
  %exitcond202.not.i826.1 = icmp eq i64 %smax.i.1, 0
  br i1 %exitcond202.not.i826.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader164.i.1, %.thread142.i.1
  %indvars.iv198.i827.1 = phi i64 [ %indvars.iv.next199.i.1, %.thread142.i.1 ], [ 0, %.preheader164.i.1 ] ; 7 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv198.i827.1
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !113
  switch i32 %i.jf, label %.loopexit818 [
    i32 0, label %bb.aw
    i32 1, label %bb.as
  ]

bb.as:                                            ; preds = %.lr.ph.1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv198.i827.1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !28  ; 3 uses
  %i.ji = add i8 %i.jh, -4
  %or.cond115.i.1 = icmp ult i8 %i.ji, -3
  br i1 %or.cond115.i.1, label %.loopexit818, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val116.i.1 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.jj = icmp ugt i8 %.val116.i.1, 62
  br i1 %i.jj, label %.loopexit818, label %validate_se_coef.exit122.i.1

validate_se_coef.exit122.i.1:                     ; preds = %bb.at
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv198.i827.1
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !27
  %i.jm = zext nneg i8 %.val116.i.1 to i64        ; 22 uses
  %i.jn = ashr i64 %i.jl, %i.jm
  %i.jo = add i64 %i.jn, -32768
  %i.jp = icmp ult i64 %i.jo, -65535
  br i1 %i.jp, label %.loopexit818, label %.preheader158.lr.ph.i.1

.preheader158.lr.ph.i.1:                          ; preds = %validate_se_coef.exit122.i.1
  %i.jq = getelementptr inbounds nuw [168 x i8], ptr %i.jb, i64 %indvars.iv198.i827.1 ; 21 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !27
  %i.js = ashr i64 %i.jr, %i.jm
  %i.jt = add i64 %i.js, -32768
  %i.ju = icmp ult i64 %i.jt, -65535
  br i1 %i.ju, label %.loopexit818, label %validate_se_coef.exit124.1.i.1

validate_se_coef.exit124.1.i.1:                   ; preds = %.preheader158.lr.ph.i.1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !27
  %i.jx = ashr i64 %i.jw, %i.jm
  %i.jy = add i64 %i.jx, -32768
  %i.jz = icmp ult i64 %i.jy, -65535
  br i1 %i.jz, label %.loopexit818, label %validate_se_coef.exit124.2.i.1

validate_se_coef.exit124.2.i.1:                   ; preds = %validate_se_coef.exit124.1.i.1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !27
  %i.kc = ashr i64 %i.kb, %i.jm
  %i.kd = add i64 %i.kc, -32768
  %i.ke = icmp ult i64 %i.kd, -65535
  br i1 %i.ke, label %.loopexit818, label %validate_se_coef.exit124.3.i.1

validate_se_coef.exit124.3.i.1:                   ; preds = %validate_se_coef.exit124.2.i.1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !27
  %i.kh = ashr i64 %i.kg, %i.jm
  %i.ki = add i64 %i.kh, -32768
  %i.kj = icmp ult i64 %i.ki, -65535
  br i1 %i.kj, label %.loopexit818, label %validate_se_coef.exit124.4.i.1

validate_se_coef.exit124.4.i.1:                   ; preds = %validate_se_coef.exit124.3.i.1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !27
  %i.km = ashr i64 %i.kl, %i.jm
  %i.kn = add i64 %i.km, -32768
  %i.ko = icmp ult i64 %i.kn, -65535
  br i1 %i.ko, label %.loopexit818, label %validate_se_coef.exit124.5.i.1

validate_se_coef.exit124.5.i.1:                   ; preds = %validate_se_coef.exit124.4.i.1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !27
  %i.kr = ashr i64 %i.kq, %i.jm
  %i.ks = add i64 %i.kr, -32768
  %i.kt = icmp ult i64 %i.ks, -65535
  br i1 %i.kt, label %.loopexit818, label %validate_se_coef.exit124.6.i.1

validate_se_coef.exit124.6.i.1:                   ; preds = %validate_se_coef.exit124.5.i.1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !27
  %i.kw = ashr i64 %i.kv, %i.jm
  %i.kx = add i64 %i.kw, -32768
  %i.ky = icmp ult i64 %i.kx, -65535
  br i1 %i.ky, label %.loopexit818, label %bb.au

bb.au:                                            ; preds = %validate_se_coef.exit124.6.i.1
  %exitcond192.not.i.1 = icmp eq i8 %i.jh, 1
  br i1 %exitcond192.not.i.1, label %.thread142.i.1, label %.preheader158.i.1.1

.preheader158.i.1.1:                              ; preds = %bb.au
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !27
  %i.lb = ashr i64 %i.la, %i.jm
  %i.lc = add i64 %i.lb, -32768
  %i.ld = icmp ult i64 %i.lc, -65535
  br i1 %i.ld, label %.loopexit818, label %validate_se_coef.exit124.1.i.1.1

validate_se_coef.exit124.1.i.1.1:                 ; preds = %.preheader158.i.1.1
  %i.le = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !27
  %i.lg = ashr i64 %i.lf, %i.jm
  %i.lh = add i64 %i.lg, -32768
  %i.li = icmp ult i64 %i.lh, -65535
  br i1 %i.li, label %.loopexit818, label %validate_se_coef.exit124.2.i.1.1

validate_se_coef.exit124.2.i.1.1:                 ; preds = %validate_se_coef.exit124.1.i.1.1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !27
  %i.ll = ashr i64 %i.lk, %i.jm
  %i.lm = add i64 %i.ll, -32768
  %i.ln = icmp ult i64 %i.lm, -65535
  br i1 %i.ln, label %.loopexit818, label %validate_se_coef.exit124.3.i.1.1

validate_se_coef.exit124.3.i.1.1:                 ; preds = %validate_se_coef.exit124.2.i.1.1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !27
  %i.lq = ashr i64 %i.lp, %i.jm
  %i.lr = add i64 %i.lq, -32768
  %i.ls = icmp ult i64 %i.lr, -65535
  br i1 %i.ls, label %.loopexit818, label %validate_se_coef.exit124.4.i.1.1

validate_se_coef.exit124.4.i.1.1:                 ; preds = %validate_se_coef.exit124.3.i.1.1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !27
  %i.lv = ashr i64 %i.lu, %i.jm
  %i.lw = add i64 %i.lv, -32768
  %i.lx = icmp ult i64 %i.lw, -65535
  br i1 %i.lx, label %.loopexit818, label %validate_se_coef.exit124.5.i.1.1

validate_se_coef.exit124.5.i.1.1:                 ; preds = %validate_se_coef.exit124.4.i.1.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jq, i64 96
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !27
  %i.ma = ashr i64 %i.lz, %i.jm
  %i.mb = add i64 %i.ma, -32768
  %i.mc = icmp ult i64 %i.mb, -65535
  br i1 %i.mc, label %.loopexit818, label %validate_se_coef.exit124.6.i.1.1

validate_se_coef.exit124.6.i.1.1:                 ; preds = %validate_se_coef.exit124.5.i.1.1
  %i.md = getelementptr inbounds nuw i8, ptr %i.jq, i64 104
  %i.me = load i64, ptr %i.md, align 8, !tbaa !27
  %i.mf = ashr i64 %i.me, %i.jm
  %i.mg = add i64 %i.mf, -32768
  %i.mh = icmp ult i64 %i.mg, -65535
  br i1 %i.mh, label %.loopexit818, label %bb.av

bb.av:                                            ; preds = %validate_se_coef.exit124.6.i.1.1
  %exitcond192.not.i.1.1 = icmp eq i8 %i.jh, 2
  br i1 %exitcond192.not.i.1.1, label %.thread142.i.1, label %.preheader158.i.1.2

.preheader158.i.1.2:                              ; preds = %bb.av
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jq, i64 112
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !27
  %i.mk = ashr i64 %i.mj, %i.jm
  %i.ml = add i64 %i.mk, -32768
  %i.mm = icmp ult i64 %i.ml, -65535
  br i1 %i.mm, label %.loopexit818, label %validate_se_coef.exit124.1.i.1.2

validate_se_coef.exit124.1.i.1.2:                 ; preds = %.preheader158.i.1.2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jq, i64 120
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !27
  %i.mp = ashr i64 %i.mo, %i.jm
  %i.mq = add i64 %i.mp, -32768
  %i.mr = icmp ult i64 %i.mq, -65535
  br i1 %i.mr, label %.loopexit818, label %validate_se_coef.exit124.2.i.1.2

validate_se_coef.exit124.2.i.1.2:                 ; preds = %validate_se_coef.exit124.1.i.1.2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jq, i64 128
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !27
  %i.mu = ashr i64 %i.mt, %i.jm
  %i.mv = add i64 %i.mu, -32768
  %i.mw = icmp ult i64 %i.mv, -65535
  br i1 %i.mw, label %.loopexit818, label %validate_se_coef.exit124.3.i.1.2

validate_se_coef.exit124.3.i.1.2:                 ; preds = %validate_se_coef.exit124.2.i.1.2
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jq, i64 136
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !27
  %i.mz = ashr i64 %i.my, %i.jm
  %i.na = add i64 %i.mz, -32768
  %i.nb = icmp ult i64 %i.na, -65535
  br i1 %i.nb, label %.loopexit818, label %validate_se_coef.exit124.4.i.1.2

validate_se_coef.exit124.4.i.1.2:                 ; preds = %validate_se_coef.exit124.3.i.1.2
  %i.nc = getelementptr inbounds nuw i8, ptr %i.jq, i64 144
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !27
  %i.ne = ashr i64 %i.nd, %i.jm
  %i.nf = add i64 %i.ne, -32768
  %i.ng = icmp ult i64 %i.nf, -65535
  br i1 %i.ng, label %.loopexit818, label %validate_se_coef.exit124.5.i.1.2

validate_se_coef.exit124.5.i.1.2:                 ; preds = %validate_se_coef.exit124.4.i.1.2
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jq, i64 152
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !27
  %i.nj = ashr i64 %i.ni, %i.jm
  %i.nk = add i64 %i.nj, -32768
  %i.nl = icmp ult i64 %i.nk, -65535
  br i1 %i.nl, label %.loopexit818, label %validate_se_coef.exit124.6.i.1.2

validate_se_coef.exit124.6.i.1.2:                 ; preds = %validate_se_coef.exit124.5.i.1.2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jq, i64 160
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !27
  %i.no = ashr i64 %i.nn, %i.jm
  %i.np = add i64 %i.no, -32768
  %i.nq = icmp ult i64 %i.np, -65535
  br i1 %i.nq, label %.loopexit818, label %.thread142.i.1

bb.aw:                                            ; preds = %.lr.ph.1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv198.i827.1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !28  ; 2 uses
  %i.nt = add i8 %i.ns, -3
  %or.cond114.i.1 = icmp ult i8 %i.nt, -2
  br i1 %or.cond114.i.1, label %.loopexit818, label %.preheader160.i.1

.preheader160.i.1:                                ; preds = %bb.aw
  %.val117.i.1 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.nu = icmp ugt i8 %.val117.i.1, 62
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %indvars.iv198.i827.1 ; 3 uses
  %i.nw = zext nneg i8 %.val117.i.1 to i64        ; 3 uses
  br i1 %i.nu, label %.loopexit818, label %validate_se_coef.exit.i.1

validate_se_coef.exit.i.1:                        ; preds = %.preheader160.i.1
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !27
  %i.ny = ashr i64 %i.nx, %i.nw
  %i.nz = add i64 %i.ny, -32768
  %i.oa = icmp ult i64 %i.nz, -65535
  br i1 %i.oa, label %.loopexit818, label %validate_se_coef.exit.i.1.1

validate_se_coef.exit.i.1.1:                      ; preds = %validate_se_coef.exit.i.1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !27
  %i.od = ashr i64 %i.oc, %i.nw
  %i.oe = add i64 %i.od, -32768
  %i.of = icmp ult i64 %i.oe, -65535
  br i1 %i.of, label %.loopexit818, label %bb.ax

bb.ax:                                            ; preds = %validate_se_coef.exit.i.1.1
  %exitcond197.not.i.1.1 = icmp eq i8 %i.ns, 1
  br i1 %exitcond197.not.i.1.1, label %.thread142.i.1, label %validate_se_coef.exit.i.1.2

validate_se_coef.exit.i.1.2:                      ; preds = %bb.ax
  %i.og = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !27
  %i.oi = ashr i64 %i.oh, %i.nw
  %i.oj = add i64 %i.oi, -32768
  %i.ok = icmp ult i64 %i.oj, -65535
  br i1 %i.ok, label %.loopexit818, label %.thread142.i.1

.thread142.i.1:                                   ; preds = %bb.au, %bb.av, %validate_se_coef.exit124.6.i.1.2, %bb.ax, %validate_se_coef.exit.i.1.2
  %indvars.iv.next199.i.1 = add nuw nsw i64 %indvars.iv198.i827.1, 1 ; 2 uses
  %exitcond202.not.i.1 = icmp eq i64 %indvars.iv.next199.i.1, %smax.i.1
  br i1 %exitcond202.not.i.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !90

._crit_edge.1:                                    ; preds = %.thread142.i.1, %.preheader164.i.1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.h, i64 3352 ; 5 uses
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !122 ; 9 uses
  %i.on = add i8 %i.om, -10
  %or.cond113.i.2 = icmp ult i8 %i.on, -8
  br i1 %or.cond113.i.2, label %.loopexit818, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %._crit_edge.1
  %i.oo = zext nneg i8 %i.om to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.h, i64 3354
  %i.oq = getelementptr inbounds nuw i8, ptr %i.h, i64 3356
  %i.or = load i16, ptr %i.oq, align 4, !tbaa !123
  %i.os = getelementptr i8, ptr %i.h, i64 3354
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !123
  %i.ou = icmp ult i16 %i.or, %i.ot
  br i1 %i.ou, label %.loopexit818, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.2
  %exitcond.not.i.2 = icmp eq i8 %i.om, 2
  br i1 %exitcond.not.i.2, label %.preheader164.i.2, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 3358
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !123
  %i.ox = getelementptr i8, ptr %i.h, i64 3356
  %i.oy = load i16, ptr %i.ox, align 4, !tbaa !123
  %i.oz = icmp ult i16 %i.ow, %i.oy
  br i1 %i.oz, label %.loopexit818, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %exitcond.not.i.2.1 = icmp eq i8 %i.om, 3
  br i1 %exitcond.not.i.2.1, label %.preheader164.i.2, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pa = getelementptr inbounds nuw i8, ptr %i.h, i64 3360
  %i.pb = load i16, ptr %i.pa, align 8, !tbaa !123
  %i.pc = getelementptr i8, ptr %i.h, i64 3358
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !123
  %i.pe = icmp ult i16 %i.pb, %i.pd
  br i1 %i.pe, label %.loopexit818, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %exitcond.not.i.2.2 = icmp eq i8 %i.om, 4
  br i1 %exitcond.not.i.2.2, label %.preheader164.i.2, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 3362
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !123
  %i.ph = getelementptr i8, ptr %i.h, i64 3360
  %i.pi = load i16, ptr %i.ph, align 8, !tbaa !123
  %i.pj = icmp ult i16 %i.pg, %i.pi
  br i1 %i.pj, label %.loopexit818, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %exitcond.not.i.2.3 = icmp eq i8 %i.om, 5
  br i1 %exitcond.not.i.2.3, label %.preheader164.i.2, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pk = getelementptr inbounds nuw i8, ptr %i.h, i64 3364
  %i.pl = load i16, ptr %i.pk, align 4, !tbaa !123
  %i.pm = getelementptr i8, ptr %i.h, i64 3362
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !123
  %i.po = icmp ult i16 %i.pl, %i.pn
  br i1 %i.po, label %.loopexit818, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %exitcond.not.i.2.4 = icmp eq i8 %i.om, 6
  br i1 %exitcond.not.i.2.4, label %.preheader164.i.2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pp = getelementptr inbounds nuw i8, ptr %i.h, i64 3366
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !123
  %i.pr = getelementptr i8, ptr %i.h, i64 3364
  %i.ps = load i16, ptr %i.pr, align 4, !tbaa !123
  %i.pt = icmp ult i16 %i.pq, %i.ps
  br i1 %i.pt, label %.loopexit818, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %exitcond.not.i.2.5 = icmp eq i8 %i.om, 7
  br i1 %exitcond.not.i.2.5, label %.preheader164.i.2, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %i.h, i64 3368
  %i.pv = load i16, ptr %i.pu, align 8, !tbaa !123
  %i.pw = getelementptr i8, ptr %i.h, i64 3366
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !123
  %i.py = icmp ult i16 %i.pv, %i.px
  br i1 %i.py, label %.loopexit818, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %exitcond.not.i.2.6 = icmp eq i8 %i.om, 8
  br i1 %exitcond.not.i.2.6, label %.preheader164.i.2, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pz = getelementptr inbounds nuw i8, ptr %i.h, i64 3370
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !123
  %i.qb = getelementptr i8, ptr %i.h, i64 3368
  %i.qc = load i16, ptr %i.qb, align 8, !tbaa !123
  %i.qd = icmp ult i16 %i.qa, %i.qc
  br i1 %i.qd, label %.loopexit818, label %.preheader164.i.2

.preheader164.i.2:                                ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay
  %i.qe = getelementptr inbounds nuw i8, ptr %i.h, i64 3372 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.h, i64 3608
  %i.qg = getelementptr inbounds nuw i8, ptr %i.h, i64 3616
  %i.qh = getelementptr inbounds nuw i8, ptr %i.h, i64 3680
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 3404
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 3416
  %smax.i.2 = add nsw i64 %i.oo, -1               ; 2 uses
  %exitcond202.not.i826.2 = icmp eq i64 %smax.i.2, 0
  br i1 %exitcond202.not.i826.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader164.i.2, %.thread142.i.2
  %indvars.iv198.i827.2 = phi i64 [ %indvars.iv.next199.i.2, %.thread142.i.2 ], [ 0, %.preheader164.i.2 ] ; 7 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %indvars.iv198.i827.2
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !113
  switch i32 %i.ql, label %.loopexit818 [
    i32 0, label %bb.bq
    i32 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %.lr.ph.2
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 %indvars.iv198.i827.2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !28  ; 3 uses
  %i.qo = add i8 %i.qn, -4
  %or.cond115.i.2 = icmp ult i8 %i.qo, -3
  br i1 %or.cond115.i.2, label %.loopexit818, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val116.i.2 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.qp = icmp ugt i8 %.val116.i.2, 62
  br i1 %i.qp, label %.loopexit818, label %validate_se_coef.exit122.i.2

validate_se_coef.exit122.i.2:                     ; preds = %bb.bn
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv198.i827.2
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !27
  %i.qs = zext nneg i8 %.val116.i.2 to i64        ; 22 uses
  %i.qt = ashr i64 %i.qr, %i.qs
  %i.qu = add i64 %i.qt, -32768
  %i.qv = icmp ult i64 %i.qu, -65535
  br i1 %i.qv, label %.loopexit818, label %.preheader158.lr.ph.i.2

.preheader158.lr.ph.i.2:                          ; preds = %validate_se_coef.exit122.i.2
  %i.qw = getelementptr inbounds nuw [168 x i8], ptr %i.qh, i64 %indvars.iv198.i827.2 ; 21 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !27
  %i.qy = ashr i64 %i.qx, %i.qs
  %i.qz = add i64 %i.qy, -32768
  %i.ra = icmp ult i64 %i.qz, -65535
  br i1 %i.ra, label %.loopexit818, label %validate_se_coef.exit124.1.i.2

validate_se_coef.exit124.1.i.2:                   ; preds = %.preheader158.lr.ph.i.2
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !27
  %i.rd = ashr i64 %i.rc, %i.qs
  %i.re = add i64 %i.rd, -32768
  %i.rf = icmp ult i64 %i.re, -65535
  br i1 %i.rf, label %.loopexit818, label %validate_se_coef.exit124.2.i.2

validate_se_coef.exit124.2.i.2:                   ; preds = %validate_se_coef.exit124.1.i.2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !27
  %i.ri = ashr i64 %i.rh, %i.qs
  %i.rj = add i64 %i.ri, -32768
  %i.rk = icmp ult i64 %i.rj, -65535
  br i1 %i.rk, label %.loopexit818, label %validate_se_coef.exit124.3.i.2

validate_se_coef.exit124.3.i.2:                   ; preds = %validate_se_coef.exit124.2.i.2
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !27
  %i.rn = ashr i64 %i.rm, %i.qs
  %i.ro = add i64 %i.rn, -32768
  %i.rp = icmp ult i64 %i.ro, -65535
  br i1 %i.rp, label %.loopexit818, label %validate_se_coef.exit124.4.i.2

validate_se_coef.exit124.4.i.2:                   ; preds = %validate_se_coef.exit124.3.i.2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !27
  %i.rs = ashr i64 %i.rr, %i.qs
  %i.rt = add i64 %i.rs, -32768
  %i.ru = icmp ult i64 %i.rt, -65535
  br i1 %i.ru, label %.loopexit818, label %validate_se_coef.exit124.5.i.2

validate_se_coef.exit124.5.i.2:                   ; preds = %validate_se_coef.exit124.4.i.2
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !27
  %i.rx = ashr i64 %i.rw, %i.qs
  %i.ry = add i64 %i.rx, -32768
  %i.rz = icmp ult i64 %i.ry, -65535
  br i1 %i.rz, label %.loopexit818, label %validate_se_coef.exit124.6.i.2

validate_se_coef.exit124.6.i.2:                   ; preds = %validate_se_coef.exit124.5.i.2
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !27
  %i.sc = ashr i64 %i.sb, %i.qs
  %i.sd = add i64 %i.sc, -32768
  %i.se = icmp ult i64 %i.sd, -65535
  br i1 %i.se, label %.loopexit818, label %bb.bo

bb.bo:                                            ; preds = %validate_se_coef.exit124.6.i.2
  %exitcond192.not.i.2 = icmp eq i8 %i.qn, 1
  br i1 %exitcond192.not.i.2, label %.thread142.i.2, label %.preheader158.i.2.1

.preheader158.i.2.1:                              ; preds = %bb.bo
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qw, i64 56
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !27
  %i.sh = ashr i64 %i.sg, %i.qs
  %i.si = add i64 %i.sh, -32768
  %i.sj = icmp ult i64 %i.si, -65535
  br i1 %i.sj, label %.loopexit818, label %validate_se_coef.exit124.1.i.2.1

validate_se_coef.exit124.1.i.2.1:                 ; preds = %.preheader158.i.2.1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qw, i64 64
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !27
  %i.sm = ashr i64 %i.sl, %i.qs
  %i.sn = add i64 %i.sm, -32768
  %i.so = icmp ult i64 %i.sn, -65535
  br i1 %i.so, label %.loopexit818, label %validate_se_coef.exit124.2.i.2.1

validate_se_coef.exit124.2.i.2.1:                 ; preds = %validate_se_coef.exit124.1.i.2.1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !27
  %i.sr = ashr i64 %i.sq, %i.qs
  %i.ss = add i64 %i.sr, -32768
  %i.st = icmp ult i64 %i.ss, -65535
  br i1 %i.st, label %.loopexit818, label %validate_se_coef.exit124.3.i.2.1

validate_se_coef.exit124.3.i.2.1:                 ; preds = %validate_se_coef.exit124.2.i.2.1
  %i.su = getelementptr inbounds nuw i8, ptr %i.qw, i64 80
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !27
  %i.sw = ashr i64 %i.sv, %i.qs
  %i.sx = add i64 %i.sw, -32768
  %i.sy = icmp ult i64 %i.sx, -65535
  br i1 %i.sy, label %.loopexit818, label %validate_se_coef.exit124.4.i.2.1

validate_se_coef.exit124.4.i.2.1:                 ; preds = %validate_se_coef.exit124.3.i.2.1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qw, i64 88
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !27
  %i.tb = ashr i64 %i.ta, %i.qs
  %i.tc = add i64 %i.tb, -32768
  %i.td = icmp ult i64 %i.tc, -65535
  br i1 %i.td, label %.loopexit818, label %validate_se_coef.exit124.5.i.2.1

validate_se_coef.exit124.5.i.2.1:                 ; preds = %validate_se_coef.exit124.4.i.2.1
  %i.te = getelementptr inbounds nuw i8, ptr %i.qw, i64 96
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !27
  %i.tg = ashr i64 %i.tf, %i.qs
  %i.th = add i64 %i.tg, -32768
  %i.ti = icmp ult i64 %i.th, -65535
  br i1 %i.ti, label %.loopexit818, label %validate_se_coef.exit124.6.i.2.1

validate_se_coef.exit124.6.i.2.1:                 ; preds = %validate_se_coef.exit124.5.i.2.1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.qw, i64 104
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !27
  %i.tl = ashr i64 %i.tk, %i.qs
  %i.tm = add i64 %i.tl, -32768
  %i.tn = icmp ult i64 %i.tm, -65535
  br i1 %i.tn, label %.loopexit818, label %bb.bp

bb.bp:                                            ; preds = %validate_se_coef.exit124.6.i.2.1
  %exitcond192.not.i.2.1 = icmp eq i8 %i.qn, 2
  br i1 %exitcond192.not.i.2.1, label %.thread142.i.2, label %.preheader158.i.2.2

.preheader158.i.2.2:                              ; preds = %bb.bp
  %i.to = getelementptr inbounds nuw i8, ptr %i.qw, i64 112
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !27
  %i.tq = ashr i64 %i.tp, %i.qs
  %i.tr = add i64 %i.tq, -32768
  %i.ts = icmp ult i64 %i.tr, -65535
  br i1 %i.ts, label %.loopexit818, label %validate_se_coef.exit124.1.i.2.2

validate_se_coef.exit124.1.i.2.2:                 ; preds = %.preheader158.i.2.2
  %i.tt = getelementptr inbounds nuw i8, ptr %i.qw, i64 120
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !27
  %i.tv = ashr i64 %i.tu, %i.qs
  %i.tw = add i64 %i.tv, -32768
  %i.tx = icmp ult i64 %i.tw, -65535
  br i1 %i.tx, label %.loopexit818, label %validate_se_coef.exit124.2.i.2.2

validate_se_coef.exit124.2.i.2.2:                 ; preds = %validate_se_coef.exit124.1.i.2.2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qw, i64 128
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !27
  %i.ua = ashr i64 %i.tz, %i.qs
  %i.ub = add i64 %i.ua, -32768
  %i.uc = icmp ult i64 %i.ub, -65535
  br i1 %i.uc, label %.loopexit818, label %validate_se_coef.exit124.3.i.2.2

validate_se_coef.exit124.3.i.2.2:                 ; preds = %validate_se_coef.exit124.2.i.2.2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.qw, i64 136
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !27
  %i.uf = ashr i64 %i.ue, %i.qs
  %i.ug = add i64 %i.uf, -32768
  %i.uh = icmp ult i64 %i.ug, -65535
  br i1 %i.uh, label %.loopexit818, label %validate_se_coef.exit124.4.i.2.2

validate_se_coef.exit124.4.i.2.2:                 ; preds = %validate_se_coef.exit124.3.i.2.2
  %i.ui = getelementptr inbounds nuw i8, ptr %i.qw, i64 144
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !27
  %i.uk = ashr i64 %i.uj, %i.qs
  %i.ul = add i64 %i.uk, -32768
  %i.um = icmp ult i64 %i.ul, -65535
  br i1 %i.um, label %.loopexit818, label %validate_se_coef.exit124.5.i.2.2

validate_se_coef.exit124.5.i.2.2:                 ; preds = %validate_se_coef.exit124.4.i.2.2
  %i.un = getelementptr inbounds nuw i8, ptr %i.qw, i64 152
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !27
  %i.up = ashr i64 %i.uo, %i.qs
  %i.uq = add i64 %i.up, -32768
  %i.ur = icmp ult i64 %i.uq, -65535
  br i1 %i.ur, label %.loopexit818, label %validate_se_coef.exit124.6.i.2.2

validate_se_coef.exit124.6.i.2.2:                 ; preds = %validate_se_coef.exit124.5.i.2.2
  %i.us = getelementptr inbounds nuw i8, ptr %i.qw, i64 160
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !27
  %i.uu = ashr i64 %i.ut, %i.qs
  %i.uv = add i64 %i.uu, -32768
  %i.uw = icmp ult i64 %i.uv, -65535
  br i1 %i.uw, label %.loopexit818, label %.thread142.i.2

bb.bq:                                            ; preds = %.lr.ph.2
  %i.ux = getelementptr inbounds nuw i8, ptr %i.qi, i64 %indvars.iv198.i827.2
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !28  ; 2 uses
  %i.uz = add i8 %i.uy, -3
  %or.cond114.i.2 = icmp ult i8 %i.uz, -2
  br i1 %or.cond114.i.2, label %.loopexit818, label %.preheader160.i.2

.preheader160.i.2:                                ; preds = %bb.bq
  %.val117.i.2 = load i8, ptr %i.z, align 2, !tbaa !124 ; 2 uses
  %i.va = icmp ugt i8 %.val117.i.2, 62
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.qj, i64 %indvars.iv198.i827.2 ; 3 uses
  %i.vc = zext nneg i8 %.val117.i.2 to i64        ; 3 uses
  br i1 %i.va, label %.loopexit818, label %validate_se_coef.exit.i.2

validate_se_coef.exit.i.2:                        ; preds = %.preheader160.i.2
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !27
  %i.ve = ashr i64 %i.vd, %i.vc
  %i.vf = add i64 %i.ve, -32768
  %i.vg = icmp ult i64 %i.vf, -65535
  br i1 %i.vg, label %.loopexit818, label %validate_se_coef.exit.i.2.1

validate_se_coef.exit.i.2.1:                      ; preds = %validate_se_coef.exit.i.2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !27
  %i.vj = ashr i64 %i.vi, %i.vc
  %i.vk = add i64 %i.vj, -32768
  %i.vl = icmp ult i64 %i.vk, -65535
  br i1 %i.vl, label %.loopexit818, label %bb.br

bb.br:                                            ; preds = %validate_se_coef.exit.i.2.1
  %exitcond197.not.i.2.1 = icmp eq i8 %i.uy, 1
  br i1 %exitcond197.not.i.2.1, label %.thread142.i.2, label %validate_se_coef.exit.i.2.2

validate_se_coef.exit.i.2.2:                      ; preds = %bb.br
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !27
  %i.vo = ashr i64 %i.vn, %i.vc
  %i.vp = add i64 %i.vo, -32768
  %i.vq = icmp ult i64 %i.vp, -65535
  br i1 %i.vq, label %.loopexit818, label %.thread142.i.2

.thread142.i.2:                                   ; preds = %bb.bo, %bb.bp, %validate_se_coef.exit124.6.i.2.2, %bb.br, %validate_se_coef.exit.i.2.2
  %indvars.iv.next199.i.2 = add nuw nsw i64 %indvars.iv198.i827.2, 1 ; 2 uses
  %exitcond202.not.i.2 = icmp eq i64 %indvars.iv.next199.i.2, %smax.i.2
  br i1 %exitcond202.not.i.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !90

._crit_edge.2:                                    ; preds = %.thread142.i.2, %.preheader164.i.2
  %i.vr = getelementptr inbounds nuw i8, ptr %i.h, i64 5024 ; 4 uses
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !125
  switch i32 %i.vs, label %.loopexit818 [
    i32 -1, label %validate_mapping_for_generation.exit
    i32 0, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %._crit_edge.2
  %.val120.i = load i8, ptr %i.z, align 2, !tbaa !124
  %.val120.fr.i = freeze i8 %.val120.i            ; 2 uses
  %i.vt = icmp ult i8 %.val120.fr.i, 63
  %i.vu = zext nneg i8 %.val120.fr.i to i64       ; 9 uses
  br i1 %i.vt, label %.preheader.split.preheader.i, label %.loopexit818

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.h, i64 5048
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !127
  %i.vx = lshr i64 %i.vw, %i.vu
  %i.vy = icmp ult i64 %i.vx, 65535
  br i1 %i.vy, label %bb.bu, label %.loopexit818

.preheader.split.1.i:                             ; preds = %.critedge.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.h, i64 5080
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !127
  %i.wb = lshr i64 %i.wa, %i.vu
  %i.wc = icmp ult i64 %i.wb, 65535
  br i1 %i.wc, label %bb.bs, label %.loopexit818

bb.bs:                                            ; preds = %.preheader.split.1.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.h, i64 5088
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !128
  %i.wf = lshr i64 %i.we, %i.vu
  %i.wg = icmp ugt i64 %i.wf, 65534
  br i1 %i.wg, label %.loopexit818, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.bs
  %i.wh = getelementptr inbounds nuw i8, ptr %i.h, i64 5096
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !129
  %i.wj = lshr i64 %i.wi, %i.vu
  %i.wk = icmp ult i64 %i.wj, 65535
  br i1 %i.wk, label %.preheader.split.2.i, label %.loopexit818

.preheader.split.2.i:                             ; preds = %.critedge.1.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.h, i64 5112
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !127
  %i.wn = lshr i64 %i.wm, %i.vu
  %i.wo = icmp ult i64 %i.wn, 65535
  br i1 %i.wo, label %bb.bt, label %.loopexit818

bb.bt:                                            ; preds = %.preheader.split.2.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.h, i64 5120
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !128
  %i.wr = lshr i64 %i.wq, %i.vu
  %i.ws = icmp ugt i64 %i.wr, 65534
  br i1 %i.ws, label %.loopexit818, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %bb.bt
  %i.wt = getelementptr inbounds nuw i8, ptr %i.h, i64 5128
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !129
  %i.wv = lshr i64 %i.wu, %i.vu
  %i.ww = icmp ult i64 %i.wv, 65535
  br i1 %i.ww, label %validate_mapping_for_generation.exit, label %.loopexit818

bb.bu:                                            ; preds = %.preheader.split.preheader.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.h, i64 5056
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !128
  %i.wz = lshr i64 %i.wy, %i.vu
  %i.xa = icmp ugt i64 %i.wz, 65534
  br i1 %i.xa, label %.loopexit818, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bu
  %i.xb = getelementptr inbounds nuw i8, ptr %i.h, i64 5064
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !129
  %i.xd = lshr i64 %i.xc, %i.vu
  %i.xe = icmp ult i64 %i.xd, 65535
  br i1 %i.xe, label %.preheader.split.1.i, label %.loopexit818

.loopexit818:                                     ; preds = %.lr.ph.i, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.ab, %.preheader160.i, %validate_se_coef.exit122.i, %bb.y, %bb.aa, %.lr.ph, %.preheader158.lr.ph.i, %validate_se_coef.exit124.6.i, %validate_se_coef.exit124.5.i, %validate_se_coef.exit124.4.i, %validate_se_coef.exit124.3.i, %validate_se_coef.exit124.2.i, %validate_se_coef.exit124.1.i, %.preheader158.i.11363, %validate_se_coef.exit124.1.i.11364, %validate_se_coef.exit124.2.i.11365, %validate_se_coef.exit124.3.i.11366, %validate_se_coef.exit124.4.i.11367, %validate_se_coef.exit124.5.i.11368, %validate_se_coef.exit124.6.i.11369, %.preheader158.i.21373, %validate_se_coef.exit124.1.i.21374, %validate_se_coef.exit124.2.i.21375, %validate_se_coef.exit124.3.i.21376, %validate_se_coef.exit124.4.i.21377, %validate_se_coef.exit124.5.i.21378, %validate_se_coef.exit124.6.i.21379, %validate_se_coef.exit.i, %validate_se_coef.exit.i.11383, %validate_se_coef.exit.i.21387, %.lr.ph.i.1, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %.lr.ph.1, %bb.as, %bb.at, %validate_se_coef.exit122.i.1, %bb.aw, %.preheader160.i.1, %.preheader158.lr.ph.i.1, %validate_se_coef.exit124.1.i.1, %validate_se_coef.exit124.2.i.1, %validate_se_coef.exit124.3.i.1, %validate_se_coef.exit124.4.i.1, %validate_se_coef.exit124.5.i.1, %validate_se_coef.exit124.6.i.1, %.preheader158.i.1.1, %validate_se_coef.exit124.1.i.1.1, %validate_se_coef.exit124.2.i.1.1, %validate_se_coef.exit124.3.i.1.1, %validate_se_coef.exit124.4.i.1.1, %validate_se_coef.exit124.5.i.1.1, %validate_se_coef.exit124.6.i.1.1, %.preheader158.i.1.2, %validate_se_coef.exit124.1.i.1.2, %validate_se_coef.exit124.2.i.1.2, %validate_se_coef.exit124.3.i.1.2, %validate_se_coef.exit124.4.i.1.2, %validate_se_coef.exit124.5.i.1.2, %validate_se_coef.exit124.6.i.1.2, %validate_se_coef.exit.i.1, %validate_se_coef.exit.i.1.1, %validate_se_coef.exit.i.1.2, %.lr.ph.i.2, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %.lr.ph.2, %bb.bm, %bb.bn, %validate_se_coef.exit122.i.2, %bb.bq, %.preheader160.i.2, %.preheader158.lr.ph.i.2, %validate_se_coef.exit124.1.i.2, %validate_se_coef.exit124.2.i.2, %validate_se_coef.exit124.3.i.2, %validate_se_coef.exit124.4.i.2, %validate_se_coef.exit124.5.i.2, %validate_se_coef.exit124.6.i.2, %.preheader158.i.2.1, %validate_se_coef.exit124.1.i.2.1, %validate_se_coef.exit124.2.i.2.1, %validate_se_coef.exit124.3.i.2.1, %validate_se_coef.exit124.4.i.2.1, %validate_se_coef.exit124.5.i.2.1, %validate_se_coef.exit124.6.i.2.1, %.preheader158.i.2.2, %validate_se_coef.exit124.1.i.2.2, %validate_se_coef.exit124.2.i.2.2, %validate_se_coef.exit124.3.i.2.2, %validate_se_coef.exit124.4.i.2.2, %validate_se_coef.exit124.5.i.2.2, %validate_se_coef.exit124.6.i.2.2, %validate_se_coef.exit.i.2, %validate_se_coef.exit.i.2.1, %validate_se_coef.exit.i.2.2, %.preheader168.i, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %bb.i, %.preheader.i, %bb.j, %.preheader.split.preheader.i, %.critedge.2.i, %bb.bt, %.preheader.split.2.i, %.critedge.1.i, %bb.bs, %.preheader.split.1.i, %.critedge.i, %bb.bu
  %i.xf = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xf, i32 noundef 16, ptr noundef nonnull @.str.4) #13
  br label %bb.aai

validate_mapping_for_generation.exit:             ; preds = %.critedge.2.i, %._crit_edge.2
  %i.xg = load i8, ptr %i.h, align 8, !tbaa !130  ; 19 uses
  %i.xh = zext i8 %i.xg to i32                    ; 2 uses
  %i.xi = icmp ugt i8 %i.xg, 15
  br i1 %i.xi, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %validate_mapping_for_generation.exit
  %i.xj = load ptr, ptr %0, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xj, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.xh) #13
  br label %bb.aai

bb.bw:                                            ; preds = %validate_mapping_for_generation.exit
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xl = zext nneg i8 %i.xg to i64
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xl ; 4 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !131 ; 2 uses
  %.not485 = icmp eq ptr %i.xn, null
  br i1 %.not485, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.xo = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 196, 5145) 5144, i32 noundef 0, ptr null, ptr noundef null) #13 ; 3 uses
  store ptr %i.xo, ptr %i.xm, align 8, !tbaa !131
  %.not486 = icmp eq ptr %i.xo, null
  br i1 %.not486, label %bb.aai, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.xp = phi ptr [ %i.xo, %bb.bx ], [ %i.xn, %bb.bw ]
  %trunc = trunc nuw i32 %spec.select to i8
  switch i8 %trunc, label %bb.cb [
    i8 1, label %bb.bz
    i8 3, label %bb.ca
    i8 2, label %bb.aai
  ]

bb.bz:                                            ; preds = %bb.by
  %.not487 = icmp eq i8 %i.xg, 0
  br i1 %.not487, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5144) %i.xp, ptr noundef nonnull dereferenceable(5144) %i.h, i64 5144)
  %.not489 = icmp eq i32 %bcmp, 0
  %i.xq = zext i1 %.not489 to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.0465 = phi i32 [ 0, %bb.by ], [ 0, %bb.bz ], [ %i.xq, %bb.ca ] ; 2 uses
  %i.xr = load i8, ptr %i.a, align 4, !tbaa !111
  %.not490 = icmp eq i8 %i.xr, 3
  br i1 %.not490, label %.loopexit817, label %.preheader816.preheader

.preheader816.preheader:                          ; preds = %bb.cb
  %.not520 = icmp eq i8 %i.xg, 0
  br i1 %.not520, label %.preheader816.2.thread1191, label %.preheader816.1

.preheader816.2.thread1191:                       ; preds = %.preheader816.preheader
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xs) #13
  br label %.preheader816.3.thread1194

.preheader816.1:                                  ; preds = %.preheader816.preheader
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xk) #13
  %.not520.1 = icmp eq i8 %i.xg, 1
  br i1 %.not520.1, label %.preheader816.3.thread1194, label %.preheader816.2

.preheader816.2:                                  ; preds = %.preheader816.1
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xt) #13
  %.not520.2 = icmp eq i8 %i.xg, 2
  br i1 %.not520.2, label %.preheader816.4.thread1197, label %.preheader816.3

.preheader816.3.thread1194:                       ; preds = %.preheader816.2.thread1191, %.preheader816.1
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xu) #13
  br label %.preheader816.4.thread1197

.preheader816.3:                                  ; preds = %.preheader816.2
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xv) #13
  %.not520.3 = icmp eq i8 %i.xg, 3
  br i1 %.not520.3, label %.preheader816.5.thread1200, label %.preheader816.4

.preheader816.4.thread1197:                       ; preds = %.preheader816.3.thread1194, %.preheader816.2
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xw) #13
  br label %.preheader816.5.thread1200

.preheader816.4:                                  ; preds = %.preheader816.3
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xx) #13
  %.not520.4 = icmp eq i8 %i.xg, 4
  br i1 %.not520.4, label %.preheader816.6.thread1203, label %.preheader816.5

.preheader816.5.thread1200:                       ; preds = %.preheader816.4.thread1197, %.preheader816.3
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xy) #13
  br label %.preheader816.6.thread1203

.preheader816.5:                                  ; preds = %.preheader816.4
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.xz) #13
  %.not520.5 = icmp eq i8 %i.xg, 5
  br i1 %.not520.5, label %.preheader816.7.thread1206, label %.preheader816.6

.preheader816.6.thread1203:                       ; preds = %.preheader816.5.thread1200, %.preheader816.4
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ya) #13
  br label %.preheader816.7.thread1206

.preheader816.6:                                  ; preds = %.preheader816.5
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.yb) #13
  %.not520.6 = icmp eq i8 %i.xg, 6
  br i1 %.not520.6, label %.preheader816.8.thread1209, label %.preheader816.7
end_hunk_0
