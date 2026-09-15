Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsy?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
@window_grouping = internal unnamed_addr constant [9 x i8] c"\B6l\D8\B2f\C6\9666", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @psy_3gpp_init(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = sitofp nsz i64 %i.c to float             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38   ; 2 uses
  %i.j = sitofp nsz i32 %i.i to float
  %i.k = fdiv nsz float %i.d, %i.j
  %i.l = fptosi float %i.k to i32                 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39   ; 2 uses
  %.not364 = icmp eq i32 %i.n, 0
  br i1 %.not364, label %bb.d, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.o = fmul nnan nsz float %i.d, 5.000000e-01
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39   ; 2 uses
  %.not364387 = icmp eq i32 %i.r, 0
  br i1 %.not364387, label %.thread388, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.s = phi i32 [ %i.r, %.thread ], [ %i.n, %bb.b ]
  %i.t = phi i32 [ %i.p, %.thread ], [ %i.l, %bb.b ]
  %i.u = zext i32 %i.s to i64
  br label %bb.m

.thread388:                                       ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40
  %i.x = sdiv i32 %i.w, 2
  %i.y = zext i32 %i.x to i64
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %.not366 = icmp eq i64 %i.c, 0
  br i1 %.not366, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = sext i32 %i.i to i64
  %i.aa = sdiv i64 %i.c, %i.z                     ; 4 uses
  %i.ab = sdiv i64 %i.aa, 5
  %i.ac = mul nsw i64 %i.aa, 15
  %i.ad = sdiv i64 %i.ac, 32
  %i.ae = add nsw i64 %i.ad, -5500
  %. = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 %i.ae) ; 5 uses
  %i.af = sdiv i64 %i.aa, 4
  %i.ag = add nsw i64 %i.af, 3000                 ; 5 uses
  %i.ah = icmp sgt i64 %., %i.ag                  ; 2 uses
  %i.ai = sdiv i64 %i.aa, 16
  %i.aj = add nsw i64 %i.ai, 12000                ; 7 uses
  br i1 %i.ah, label %bb.f, label %.thread448

bb.f:                                             ; preds = %bb.e
  %spec.select397 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aj)
  %i.ak = icmp sgt i64 %spec.select397, 22000
  br i1 %i.ak, label %bb.h, label %bb.g

.thread448:                                       ; preds = %bb.e
  %spec.select398 = tail call i64 @llvm.smin.i64(i64 %., i64 %i.aj)
  %i.al = icmp sgt i64 %spec.select398, 22000
  br i1 %i.al, label %bb.h, label %.thread391

bb.g:                                             ; preds = %bb.f
  %spec.select399 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aj)
  br label %bb.h

.thread391:                                       ; preds = %.thread448
  %spec.select400 = tail call i64 @llvm.smin.i64(i64 %., i64 %i.aj)
  br label %bb.h

bb.h:                                             ; preds = %.thread448, %.thread391, %bb.g, %bb.f
  %i.am = phi i64 [ 22000, %bb.f ], [ %spec.select399, %bb.g ], [ %spec.select400, %.thread391 ], [ 22000, %.thread448 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !40
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp sgt i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %minmaxop = tail call i64 @llvm.smin.i64(i64 %., i64 %i.ag)
  %i.as = tail call i64 @llvm.smin.i64(i64 %minmaxop, i64 %i.aj)
  %i.at = icmp sgt i64 %i.as, 22000
  br i1 %i.at, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %.thread395

bb.k:                                             ; preds = %bb.j
  %spec.select403 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aj)
  br label %bb.m

.thread395:                                       ; preds = %bb.j
  %spec.select404 = tail call i64 @llvm.smin.i64(i64 %., i64 %i.aj)
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.av = load i32, ptr %i.au, align 8, !tbaa !40
  %i.aw = sdiv i32 %i.av, 2
  %i.ax = zext i32 %i.aw to i64
  br label %bb.m

bb.m:                                             ; preds = %.thread395, %bb.k, %bb.h, %.thread388, %bb.i, %bb.l, %bb.c
  %i.ay = phi i32 [ %i.t, %bb.c ], [ %i.p, %.thread388 ], [ %i.l, %bb.l ], [ %i.l, %bb.k ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %.thread395 ] ; 2 uses
  %i.az = phi i64 [ %i.u, %bb.c ], [ %i.y, %.thread388 ], [ %i.ax, %bb.l ], [ %spec.select403, %bb.k ], [ 22000, %bb.i ], [ %i.aq, %bb.h ], [ %spec.select404, %.thread395 ]
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = sitofp nsz i32 %i.ba to float           ; 3 uses
  %i.bc = fmul nnan nsz float %i.bb, 7.600000e-04
  %i.bd = tail call nsz float @llvm.atan.f32(float %i.bc)
  %i.be = fdiv nsz float %i.bb, 7.500000e+03      ; 2 uses
  %i.bf = fmul nsz float %i.be, %i.be
  %i.bg = tail call nsz float @llvm.atan.f32(float %i.bf)
  %i.bh = fmul nnan nsz float %i.bg, 3.500000e+00
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %i.bd, float 1.330000e+01, float %i.bh)
  %i.bj = icmp slt i32 %i.ba, 1
  br i1 %i.bj, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call noalias ptr @av_mallocz(i64 noundef 3632) #11 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !41
  %.not367 = icmp eq ptr %i.bk, null
  br i1 %.not367, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 420
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42 ; 3 uses
  %.not368 = icmp eq i32 %i.bo, 0                 ; 2 uses
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = fmul nnan nsz float %i.bp, f0x3C23D70A
  %i.br = select i1 %.not368, float f0x3F999999, float %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3624
  store float %i.br, ptr %i.bs, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !37
  %i.bv = and i32 %i.bu, 2
  %.not369 = icmp eq i32 %i.bv, 0
  br i1 %.not369, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = sitofp nsz i32 %i.ay to double
  %i.bx = fdiv nnan nsz double %i.bw, 1.200000e+02
  %i.by = sitofp nsz i32 %i.bo to double
  %i.bz = select i1 %.not368, double 1.200000e+02, double %i.by
  %i.ca = fmul nsz double %i.bx, %i.bz
  %i.cb = fptosi double %i.ca to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0305 = phi i32 [ %i.cb, %bb.p ], [ %i.ay, %bb.o ] ; 4 uses
  store i32 %.0305, ptr %i.bk, align 8, !tbaa !46
  %i.cc = shl nsw i32 %.0305, 10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 344
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.cf = sdiv i32 %i.cc, %i.ce
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 2560) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %spec.select, ptr %i.cg, align 4, !tbaa !47
  %i.ch = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul nnan nsz <2 x float> %i.ci, <float 8.192000e+03, float 1.228800e+04>
  %i.ck = sitofp nsz i32 %i.ce to float           ; 3 uses
  %i.cl = fmul nnan nsz float %i.ck, 2.000000e+00
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv nsz <2 x float> %i.cj, %i.co
  store <2 x float> %i.cp, ptr %i.cm, align 4, !tbaa !48
  %i.cq = sub nsw i32 6144, %spec.select
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cs = and i32 %i.cq, -8                       ; 2 uses
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.cx = sitofp nsz i32 %.0305 to float
  %i.cy = icmp slt i32 %.0305, 23
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge423
  %i.db = phi i1 [ false, %bb.q ], [ true, %._crit_edge423 ] ; 5 uses
  %indvars.iv437 = phi i64 [ 0, %bb.q ], [ 1, %._crit_edge423 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [1792 x i8], ptr %i.cu, i64 %indvars.iv437 ; 5 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv437
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !53 ; 3 uses
  %i.df = select nsz i1 %i.db, float 2.560000e+02, float 2.048000e+03
  %i.dg = fdiv nsz float %i.ck, %i.df             ; 3 uses
  %i.dh = select nsz i1 %i.db, float 1.280000e+02, float 1.024000e+03
  %i.di = fmul nnan nsz float %i.dh, %i.cx
  %i.dj = fdiv nsz float %i.di, %i.ck
  %i.dk = fmul nsz float %i.dj, 1.180000e+00
  %i.dl = fmul nsz float %i.dk, 2.400000e-02
  %i.dm = fdiv nsz float %i.dl, %i.bi
  %i.dn = or i1 %i.cy, %i.db
  %i.do = insertelement <2 x i1> poison, i1 %i.db, i64 0
  %i.dp = insertelement <2 x i1> %i.do, i1 %i.dn, i64 1
  %i.dq = select <2 x i1> %i.dp, <2 x float> <float 2.000000e+00, float 1.500000e+00>, <2 x float> <float 3.000000e+00, float 2.000000e+00>
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv437
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !54 ; 5 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.preheader, label %._crit_edge423

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %i.ds to i64
  br label %.lr.ph

.preheader405:                                    ; preds = %.lr.ph
  %.not450 = icmp eq i32 %i.ds, 1
  br i1 %.not450, label %.lr.ph422.preheader, label %.lr.ph412

.lr.ph412:                                        ; preds = %.preheader405
  %i.du = add nsw i32 %i.ds, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %wide.trip.count429 = zext nneg i32 %i.du to i64
  %.pre = load float, ptr %i.dv, align 4, !tbaa !73
  %i.dw = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0307410 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ek, %.lr.ph ]
  %.0311408 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ea, %.lr.ph ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !56
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nuw nsw i32 %.0311408, %i.dz        ; 2 uses
  %i.eb = add nsw i32 %i.ea, -1
  %i.ec = sitofp nsz i32 %i.eb to float
  %i.ed = fmul nsz float %i.dg, %i.ec             ; 2 uses
  %i.ee = fmul nsz float %i.ed, 7.600000e-04
  %i.ef = tail call nsz float @llvm.atan.f32(float %i.ee)
  %i.eg = fdiv nsz float %i.ed, 7.500000e+03      ; 2 uses
  %i.eh = fmul nsz float %i.eg, %i.eg
  %i.ei = tail call nsz float @llvm.atan.f32(float %i.eh)
  %i.ej = fmul nsz float %i.ei, 3.500000e+00
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.ef, float 1.330000e+01, float %i.ej) ; 2 uses
  %i.el = fadd nsz float %.0307410, %i.ek
  %i.em = fmul nsz float %i.el, 5.000000e-01
  %i.en = getelementptr inbounds nuw [28 x i8], ptr %i.dc, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store float %i.em, ptr %i.eo, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader405, label %.lr.ph, !llvm.loop !67

.lr.ph422.preheader:                              ; preds = %bb.s, %.preheader405
  %wide.trip.count435 = zext nneg i32 %i.ds to i64
  br label %.lr.ph422

bb.s:                                             ; preds = %.lr.ph412, %bb.s
  %indvars.iv426 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next427, %bb.s ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [28 x i8], ptr %i.dc, i64 %indvars.iv426 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [28 x i8], ptr %i.dc, i64 %indvars.iv.next427
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !73
  %i.et = fsub nsz float %i.es, %.pre             ; 3 uses
  %i.eu = fneg nsz float %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ew = insertelement <4 x float> %i.dw, float %i.et, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ey = insertelement <4 x float> <float -3.000000e+00, float poison, float -1.500000e+00, float poison>, float %i.eu, i64 1
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fa = fmul nsz <4 x float> %i.ex, %i.ez
  %i.fb = fpext <4 x float> %i.fa to <4 x double>
  %i.fc = fmul nsz <4 x double> %i.fb, splat (double f0x400A934F0979A371)
  %i.fd = tail call nsz <4 x double> @llvm.exp2.v4f64(<4 x double> %i.fc)
  %i.fe = fptrunc <4 x double> %i.fd to <4 x float>
  store <4 x float> %i.fe, ptr %i.ev, align 4, !tbaa !48
  %i.ff = fmul nsz float %i.dm, %i.et
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv426
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !56
  %i.fi = uitofp i8 %i.fh to float
  %i.fj = fdiv nsz float %i.ff, %i.fi
  %i.fk = fpext nsz float %i.fj to double
  %i.fl = tail call nsz double @llvm.exp2.f64(double %i.fk)
  %i.fm = fadd nsz double %i.fl, -1.500000e+00
  %i.fn = fptrunc nsz double %i.fm to float
  %i.fo = fdiv nsz float 1.000000e+00, %i.fn      ; 2 uses
  %i.fp = fcmp nsz ogt float %i.fo, f0x3B4F3E37
  %i.fq = select nsz i1 %i.fp, float %i.fo, float f0x3B4F3E37 ; 2 uses
  %i.fr = fcmp nsz ogt float %i.fq, f0x3F4B5918
  %..i = select nsz i1 %i.fr, float f0x3F4B5918, float %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store float %..i, ptr %i.fs, align 4, !tbaa !58
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %.lr.ph422.preheader, label %bb.s, !llvm.loop !68

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge
  %indvars.iv432 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next433, %._crit_edge ] ; 3 uses
  %.0308421 = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.gl, %._crit_edge ] ; 3 uses
  %i.ft = uitofp nsz nneg i32 %.0308421 to float
  %i.fu = fmul nsz float %i.dg, %i.ft
  %i.fv = tail call fastcc float @ath(float noundef %i.fu) #12 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv432 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !56  ; 2 uses
  %i.fy = zext i8 %i.fx to i32
  %i.fz = icmp ugt i8 %i.fx, 1
  br i1 %i.fz, label %.lr.ph416, label %._crit_edge

.lr.ph416:                                        ; preds = %.lr.ph422, %.lr.ph416
  %.0306415 = phi float [ %i.gf, %.lr.ph416 ], [ %i.fv, %.lr.ph422 ] ; 2 uses
  %.1312414 = phi i32 [ %i.gg, %.lr.ph416 ], [ 1, %.lr.ph422 ] ; 2 uses
  %i.ga = add nuw nsw i32 %.1312414, %.0308421
  %i.gb = uitofp nsz nneg i32 %i.ga to float
  %i.gc = fmul nsz float %i.dg, %i.gb
  %i.gd = tail call fastcc float @ath(float noundef %i.gc) #12 ; 2 uses
  %i.ge = fcmp nsz ogt float %.0306415, %i.gd
  %i.gf = select nsz i1 %i.ge, float %i.gd, float %.0306415 ; 2 uses
  %i.gg = add nuw nsw i32 %.1312414, 1            ; 2 uses
  %exitcond431.not = icmp eq i32 %i.gg, %i.fy
  br i1 %exitcond431.not, label %._crit_edge, label %.lr.ph416, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph416, %.lr.ph422
  %.0306.lcssa = phi float [ %i.fv, %.lr.ph422 ], [ %i.gf, %.lr.ph416 ]
  %i.gh = fadd nsz float %.0306.lcssa, f0x40A7C1E0
  %i.gi = getelementptr inbounds nuw [28 x i8], ptr %i.dc, i64 %indvars.iv432
  store float %i.gh, ptr %i.gi, align 4, !tbaa !59
  %i.gj = load i8, ptr %i.fw, align 1, !tbaa !56
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %.0308421, %i.gk
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %._crit_edge423, label %.lr.ph422, !llvm.loop !70

._crit_edge423:                                   ; preds = %._crit_edge, %bb.r
  br i1 %i.db, label %bb.t, label %bb.r, !llvm.loop !71

bb.t:                                             ; preds = %._crit_edge423
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bm, i64 356
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.go = sext i32 %i.gn to i64
  %i.gp = tail call noalias ptr @av_calloc(i64 noundef %i.go, i64 noundef 9312) #11 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bk, i64 3616
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !60
  %.not371 = icmp eq ptr %i.gp, null
  br i1 %.not371, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @av_freep(ptr noundef nonnull %i.bl) #11
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gr = load ptr, ptr %0, align 8, !tbaa !19
  tail call fastcc void @lame_window_init(ptr noundef %i.bk, ptr noundef %i.gr) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.m, %bb.v, %bb.u
  %.0 = phi i32 [ -22, %bb.m ], [ 0, %bb.v ], [ -12, %bb.u ], [ -12, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @psy_lame_window(ptr dead_on_unwind noalias nofree writable sret(%struct.FFPsyWindowInfo) align 8 captures(none) initializes((0, 96)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca [1024 x float], align 16          ; 4 uses
  %i.b = alloca [18 x float], align 16            ; 19 uses
  %i.c = alloca [18 x float], align 16            ; 5 uses
  %i.d = alloca [9 x float], align 16             ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [9312 x i8], ptr %i.h, i64 %i.i ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !48
  %wide.load387 = load <4 x float>, ptr %i.l, align 4, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %wide.load388 = load <4 x float>, ptr %i.n, align 4, !tbaa !48
  %i.o = fadd nsz <4 x float> %wide.load387, %wide.load388
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> splat (float f0xA39F982B), <4 x float> %wide.load)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load389 = load <4 x float>, ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr i8, ptr %i.l, i64 80
  %wide.load390 = load <4 x float>, ptr %i.r, align 4, !tbaa !48
  %i.s = fadd nsz <4 x float> %wide.load389, %wide.load390
  %i.t = fmul nsz <4 x float> %i.s, splat (float f0xBC8B861B)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load391 = load <4 x float>, ptr %i.u, align 4, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %wide.load392 = load <4 x float>, ptr %i.v, align 4, !tbaa !48
  %i.w = fadd nsz <4 x float> %wide.load391, %wide.load392
  %i.x = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> splat (float f0xA378F1A8), <4 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %wide.load393 = load <4 x float>, ptr %i.y, align 4, !tbaa !48
  %i.z = getelementptr i8, ptr %i.l, i64 72
  %wide.load394 = load <4 x float>, ptr %i.z, align 4, !tbaa !48
  %i.aa = fadd nsz <4 x float> %wide.load393, %wide.load394
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> splat (float 4.180720e-02), <4 x float> %i.t)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load395 = load <4 x float>, ptr %i.ac, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %wide.load396 = load <4 x float>, ptr %i.ad, align 4, !tbaa !48
  %i.ae = fadd nsz <4 x float> %wide.load395, %wide.load396
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> splat (float f0xA49B3F51), <4 x float> %i.x)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %wide.load397 = load <4 x float>, ptr %i.ag, align 4, !tbaa !48
  %i.ah = getelementptr i8, ptr %i.l, i64 64
  %wide.load398 = load <4 x float>, ptr %i.ah, align 4, !tbaa !48
  %i.ai = fadd nsz <4 x float> %wide.load397, %wide.load398
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> splat (float -8.763240e-02), <4 x float> %i.ab)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %wide.load399 = load <4 x float>, ptr %i.ak, align 4, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %wide.load400 = load <4 x float>, ptr %i.al, align 4, !tbaa !48
  %i.am = fadd nsz <4 x float> %wide.load399, %wide.load400
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> splat (float -3.083500e-17), <4 x float> %i.af)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %wide.load401 = load <4 x float>, ptr %i.ao, align 4, !tbaa !48
  %i.ap = getelementptr i8, ptr %i.l, i64 56
  %wide.load402 = load <4 x float>, ptr %i.ap, align 4, !tbaa !48
  %i.aq = fadd nsz <4 x float> %wide.load401, %wide.load402
  %i.ar = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float f0x3E3ED1E8), <4 x float> %i.aj)
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load403 = load <4 x float>, ptr %i.as, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %wide.load404 = load <4 x float>, ptr %i.at, align 4, !tbaa !48
  %i.au = fadd nsz <4 x float> %wide.load403, %wide.load404
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> splat (float f0xA4FEA9B0), <4 x float> %i.an)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %wide.load405 = load <4 x float>, ptr %i.aw, align 4, !tbaa !48
  %i.ax = getelementptr i8, ptr %i.l, i64 48
  %wide.load406 = load <4 x float>, ptr %i.ax, align 4, !tbaa !48
  %i.ay = fadd nsz <4 x float> %wide.load405, %wide.load406
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float -6.276380e-01), <4 x float> %i.ar)
  %i.ba = fadd nsz <4 x float> %i.av, %i.az
  %i.bb = fmul nsz <4 x float> %i.ba, splat (float 3.276800e+04)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.bb, ptr %i.bc, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 1024
  br i1 %i.bd, label %psy_hp_filter.exit.preheader, label %vector.body, !llvm.loop !74

psy_hp_filter.exit.preheader:                     ; preds = %vector.body
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 9240
  %i.bf = mul nsw i64 %i.i, 9312
  %i.bg = getelementptr i8, ptr %i.h, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 9296
  %i.bh = load i64, ptr %scevgep, align 4, !tbaa !48
  store i64 %i.bh, ptr %i.c, align 16, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 9296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 9288
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !48 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !48
  %i.bm = fdiv nsz <2 x float> %i.bk, %i.bl       ; 2 uses
  %shift = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %shift, %i.bk
  %i.bn = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  br label %.preheader134

.preheader134:                                    ; preds = %psy_hp_filter.exit.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %psy_hp_filter.exit.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.098141 = phi ptr [ %i.a, %psy_hp_filter.exit.preheader ], [ %scevgep156, %bb.g ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader134
  %.095138 = phi float [ 1.000000e+00, %.preheader134 ], [ %.095..1, %bb.b ] ; 2 uses
  %.199.idx137 = phi i64 [ 0, %.preheader134 ], [ %.199.add.1, %bb.b ] ; 3 uses
  %.199.ptr139 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.idx137
  %i.bo = load float, ptr %.199.ptr139, align 4, !tbaa !48
  %i.bp = tail call nsz float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp nsz ogt float %.095138, %i.bp
  %.095. = select nsz i1 %i.bq, float %.095138, float %i.bp ; 2 uses
  %.199.add = or disjoint i64 %.199.idx137, 4     ; 2 uses
  %.199.ptr139.1 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.add
  %i.br = load float, ptr %.199.ptr139.1, align 4, !tbaa !48
  %i.bs = tail call nsz float @llvm.fabs.f32(float %i.br) ; 2 uses
  %i.bt = fcmp nsz ogt float %.095., %i.bs
  %.095..1 = select nsz i1 %i.bt, float %.095., float %i.bs ; 7 uses
  %.199.add.1 = add nuw nsw i64 %.199.idx137, 8
  %i.bu = icmp samesign ult i64 %.199.add, 252
  br i1 %i.bu, label %bb.b, label %bb.c, !llvm.loop !75

bb.c:                                             ; preds = %bb.b
  %scevgep156 = getelementptr i8, ptr %.098141, i64 256
  %i.bv = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv
  store float %.095..1, ptr %i.bw, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %.095..1, ptr %i.bx, align 4, !tbaa !48
  %i.by = lshr i64 %indvars.iv, 1
  %i.bz = and i64 %i.by, 2147483647
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !48
  %i.cd = fadd nsz float %.095..1, %i.cc
  store float %i.cd, ptr %i.cb, align 4, !tbaa !48
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !48 ; 4 uses
  %i.cg = fcmp nsz ogt float %.095..1, %i.cf
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ch = fdiv nsz float %.095..1, %i.cf
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ci = fmul nsz float %.095..1, 1.000000e+01   ; 2 uses
  %i.cj = fcmp nsz ogt float %i.cf, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = fdiv nsz float %i.cf, %i.ci
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.196 = phi nsz float [ %i.ch, %bb.d ], [ %i.ck, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  store float %.196, ptr %i.cl, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
