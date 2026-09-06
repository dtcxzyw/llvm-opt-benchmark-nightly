Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6LibRaw17scale_colors_loopEPf:bb.a
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.k, label %.preheader76

.preheader76:                                     ; preds = %bb.b
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %.loopexit, label %.preheader75.lr.ph

.preheader75.lr.ph:                               ; preds = %.preheader76
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !79
  %wide.trip.count = zext i32 %i.h to i64
  %i.o = load i32, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader75.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !12   ; 2 uses
  %.not69 = icmp eq i16 %i.z, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader75
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %i.e, align 2, !tbaa !103
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.ac
  %i.af = urem i32 %i.ae, %i.k
  %i.ag = mul i32 %i.af, %i.m
  %i.ah = add i32 %i.ag, 6
  %i.ai = urem i32 %i.ad, %i.ac
  %i.aj = urem i32 %i.ai, %i.m
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80
  %i.ao = add i32 %i.an, %i.o
  %i.ap = sub i32 %i.aa, %i.ao
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to float
  %i.ar = load float, ptr %1, align 4, !tbaa !81
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.aq
  %i.at = fptosi float %i.as to i32
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65535)
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.y, align 2, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.preheader75, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !12 ; 2 uses
  %.not69.1 = icmp eq i16 %i.ay, 0
  br i1 %.not69.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = zext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.e, align 2, !tbaa !103
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = urem i32 %i.bd, %i.k
  %i.bf = mul i32 %i.be, %i.m
  %i.bg = add i32 %i.bf, 6
  %i.bh = urem i32 %i.bc, %i.bb
  %i.bi = urem i32 %i.bh, %i.m
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bn = add i32 %i.bm, %i.q
  %i.bo = sub i32 %i.az, %i.bn
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bq = load float, ptr %i.r, align 4, !tbaa !81
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.ax, align 2, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !12 ; 2 uses
  %.not69.2 = icmp eq i16 %i.bx, 0
  br i1 %.not69.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !103
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = udiv i32 %i.cb, %i.ca
  %i.cd = urem i32 %i.cc, %i.k
  %i.ce = mul i32 %i.cd, %i.m
  %i.cf = add i32 %i.ce, 6
  %i.cg = urem i32 %i.cb, %i.ca
  %i.ch = urem i32 %i.cg, %i.m
  %i.ci = add i32 %i.cf, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !80
  %i.cm = add i32 %i.cl, %i.t
  %i.cn = sub i32 %i.by, %i.cm
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = load float, ptr %i.u, align 4, !tbaa !81
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.co
  %i.cr = fptosi float %i.cq to i32
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 65535)
  %i.cu = trunc nuw i32 %i.ct to i16
  store i16 %i.cu, ptr %i.bw, align 2, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !12 ; 2 uses
  %.not69.3 = icmp eq i16 %i.cw, 0
  br i1 %.not69.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i16 %i.cw to i32
  %i.cy = load i16, ptr %i.e, align 2, !tbaa !103
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.db = udiv i32 %i.da, %i.cz
  %i.dc = urem i32 %i.db, %i.k
  %i.dd = mul i32 %i.dc, %i.m
  %i.de = add i32 %i.dd, 6
  %i.df = urem i32 %i.da, %i.cz
  %i.dg = urem i32 %i.df, %i.m
  %i.dh = add i32 %i.de, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !80
  %i.dl = add i32 %i.dk, %i.w
  %i.dm = sub i32 %i.cx, %i.dl
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dm to float
  %i.do = load float, ptr %i.x, align 4, !tbaa !81
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dn
  %i.dq = fptosi float %i.dp to i32
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 65535)
  %i.dt = trunc nuw i32 %i.ds to i16
  store i16 %i.dt, ptr %i.cv, align 2, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader75, !llvm.loop !98

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.du = load <4 x i32>, ptr %i.i, align 8
  %i.dv = load i32, ptr %i.i, align 8, !tbaa !80
  %.fr = freeze <4 x i32> %i.du
  %i.dw = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.dx = bitcast <4 x i1> %i.dw to i4
  %i.dy = icmp eq i4 %i.dx, 0
  %.not86 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.dy, label %.preheader72, label %bb.l

.preheader72:                                     ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader72
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %wide.trip.count107 = zext i32 %i.h to i64      ; 3 uses
  %i.ea = load <4 x float>, ptr %1, align 4, !tbaa !81 ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph
  %n.vec = and i64 %wide.trip.count107, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat129 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat131 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat133 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %wide.vec = load <32 x i16>, ptr %i.eb, align 2, !tbaa !12 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec134 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec135 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec136 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ec = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ec
  %i.ee = uitofp <8 x i16> %strided.vec134 to <8 x float>
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat129, %i.ee
  %2 = shufflevector <8 x float> %i.ed, <8 x float> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %3 = fptosi <16 x float> %2 to <16 x i32>
  %4 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %3, <16 x i32> zeroinitializer)
  %i.eg = uitofp <8 x i16> %strided.vec135 to <8 x float>
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat131, %i.eg
  %i.ei = uitofp <8 x i16> %strided.vec136 to <8 x float>
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat133, %i.ei
  %i.ek = shufflevector <8 x float> %i.eh, <8 x float> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = fptosi <16 x float> %i.ek to <16 x i32>
  %i.em = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.el, <16 x i32> zeroinitializer)
  %i.en = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %4, <16 x i32> splat (i32 65535))
  %i.eo = trunc nuw <16 x i32> %i.en to <16 x i16>
  %i.ep = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.em, <16 x i32> splat (i32 65535))
  %i.eq = trunc nuw <16 x i32> %i.ep to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.eo, <16 x i16> %i.eq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.eb, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %bb.l
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !79
  %wide.trip.count98 = zext i32 %i.h to i64
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ez = load i32, ptr %i.et, align 4
  %i.fa = load i32, ptr %i.ev, align 8
  %i.fb = load i32, ptr %i.ex, align 4
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.t
  %indvars.iv95 = phi i64 [ 0, %.preheader73.lr.ph ], [ %indvars.iv.next96, %bb.t ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv95 ; 5 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !12 ; 2 uses
  %.not68 = icmp eq i16 %i.fd, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader73
  %i.fe = zext i16 %i.fd to i32
  %i.ff = sub i32 %i.fe, %i.dv
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %i.ff to float
  %i.fh = load float, ptr %1, align 4, !tbaa !81
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.fg
  %i.fj = fptosi float %i.fi to i32
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 0)
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 65535)
  %i.fm = trunc nuw i32 %i.fl to i16
  store i16 %i.fm, ptr %i.fc, align 2, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %.preheader73, %bb.m
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !12 ; 2 uses
  %.not68.1 = icmp eq i16 %i.fo, 0
  br i1 %.not68.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fp = zext i16 %i.fo to i32
  %i.fq = sub i32 %i.fp, %i.ez
  %i.fr = sitofp reassoc nsz arcp contract afn i32 %i.fq to float
  %i.fs = load float, ptr %i.eu, align 4, !tbaa !81
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fr
  %i.fu = fptosi float %i.ft to i32
  %i.fv = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %i.fw = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 65535)
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %i.fn, align 2, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !12 ; 2 uses
  %.not68.2 = icmp eq i16 %i.fz, 0
  br i1 %.not68.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ga = zext i16 %i.fz to i32
  %i.gb = sub i32 %i.ga, %i.fa
  %i.gc = sitofp reassoc nsz arcp contract afn i32 %i.gb to float
  %i.gd = load float, ptr %i.ew, align 4, !tbaa !81
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.gc
  %i.gf = fptosi float %i.ge to i32
  %i.gg = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 65535)
  %i.gi = trunc nuw i32 %i.gh to i16
  store i16 %i.gi, ptr %i.fy, align 2, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fc, i64 6 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !12 ; 2 uses
  %.not68.3 = icmp eq i16 %i.gk, 0
  br i1 %.not68.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gl = zext i16 %i.gk to i32
  %i.gm = sub i32 %i.gl, %i.fb
  %i.gn = sitofp reassoc nsz arcp contract afn i32 %i.gm to float
  %i.go = load float, ptr %i.ey, align 4, !tbaa !81
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, %i.gn
  %i.gq = fptosi float %i.gp to i32
  %i.gr = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %i.gs = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 65535)
  %i.gt = trunc nuw i32 %i.gs to i16
  store i16 %i.gt, ptr %i.gj, align 2, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader73, !llvm.loop !100

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.preheader ], [ %indvars.iv104.ph, %.preheader.preheader ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv104 ; 2 uses
  %i.gv = load <4 x i16>, ptr %i.gu, align 2, !tbaa !12
  %i.gw = uitofp <4 x i16> %i.gv to <4 x float>
  %i.gx = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.gw
  %i.gy = fptosi <4 x float> %i.gx to <4 x i32>
  %i.gz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gy, <4 x i32> zeroinitializer)
  %i.ha = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gz, <4 x i32> splat (i32 65535))
  %i.hb = trunc nuw <4 x i32> %i.ha to <4 x i16>
  store <4 x i16> %i.hb, ptr %i.gu, align 2, !tbaa !12
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %.preheader, !llvm.loop !101

.loopexit:                                        ; preds = %bb.j, %bb.t, %.preheader, %middle.block, %.preheader76, %bb.l, %.preheader72
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.pow.v16f32(<16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
