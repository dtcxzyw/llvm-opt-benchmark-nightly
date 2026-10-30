Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsy?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFPsyModel = type { ptr, ptr, ptr, ptr, ptr }
%struct.PsyLamePreset = type { i32, float }
%struct.FFPsyWindowInfo = type { [3 x i32], i32, i32, [8 x i32], [8 x float], ptr }

@.str = private unnamed_addr constant [30 x i8] c"3GPP TS 26.403-inspired model\00", align 1
@ff_aac_psy_model = local_unnamed_addr constant %struct.FFPsyModel { ptr @.str, ptr @psy_3gpp_init, ptr @psy_lame_window, ptr @psy_3gpp_analyze, ptr @psy_3gpp_end }, align 8
@psy_abr_map = internal unnamed_addr constant [13 x %struct.PsyLamePreset] [%struct.PsyLamePreset { i32 8, float 7.600000e+00 }, %struct.PsyLamePreset { i32 16, float 7.600000e+00 }, %struct.PsyLamePreset { i32 24, float 7.600000e+00 }, %struct.PsyLamePreset { i32 32, float 7.600000e+00 }, %struct.PsyLamePreset { i32 40, float 7.600000e+00 }, %struct.PsyLamePreset { i32 48, float 7.600000e+00 }, %struct.PsyLamePreset { i32 56, float 7.600000e+00 }, %struct.PsyLamePreset { i32 64, float 7.400000e+00 }, %struct.PsyLamePreset { i32 80, float 7.000000e+00 }, %struct.PsyLamePreset { i32 96, float 6.600000e+00 }, %struct.PsyLamePreset { i32 112, float f0x40C66666 }, %struct.PsyLamePreset { i32 128, float f0x40C66666 }, %struct.PsyLamePreset { i32 160, float f0x40C66666 }], align 16
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
  br i1 %i.ah, label %bb.f, label %.thread449

bb.f:                                             ; preds = %bb.e
  %spec.select397 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aj)
  %i.ak = icmp sgt i64 %spec.select397, 22000
  br i1 %i.ak, label %bb.h, label %bb.g

.thread449:                                       ; preds = %bb.e
  %spec.select398 = tail call i64 @llvm.smin.i64(i64 %., i64 %i.aj)
  %i.al = icmp sgt i64 %spec.select398, 22000
  br i1 %i.al, label %bb.h, label %.thread391

bb.g:                                             ; preds = %bb.f
  %spec.select399 = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aj)
  br label %bb.h

.thread391:                                       ; preds = %.thread449
  %spec.select400 = tail call i64 @llvm.smin.i64(i64 %., i64 %i.aj)
  br label %bb.h

bb.h:                                             ; preds = %.thread449, %.thread391, %bb.g, %bb.f
  %i.am = phi i64 [ 22000, %bb.f ], [ %spec.select399, %bb.g ], [ %spec.select400, %.thread391 ], [ 22000, %.thread449 ]
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
  %.not451 = icmp eq i32 %i.ds, 1
  br i1 %.not451, label %.lr.ph422.preheader, label %.lr.ph412

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
end_hunk_0
