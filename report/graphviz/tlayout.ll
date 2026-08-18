inline.NumInlined: 15
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.parms_t = type { i32, i32, i64, i32, i32, i32, double, double, double, double, i32, double, double, double, i32, i32 }

@fdp_parms = external local_unnamed_addr global ptr, align 8
@parms = internal global %struct.parms_t zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"maxiter\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"T0\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"fdp does not support start=self - ignoring\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fdp_initParams(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @fdp_parms, align 8, !tbaa !8 ; 4 uses
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !11
  store <2 x i32> %i.b, ptr @parms, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 16), align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 24), align 8, !tbaa !19
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !21
  store <2 x double> %i.h, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 32), align 8, !tbaa !21
  %i.i = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #6
  %i.j = tail call i32 @late_int(ptr noundef %0, ptr noundef %i.i, i32 noundef 600, i32 noundef 0) #6
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %i.k = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %i.l = tail call double @late_double(ptr noundef %0, ptr noundef %i.k, double noundef 3.000000e-01, double noundef 0.000000e+00) #6 ; 2 uses
  store double %i.l, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23
  %i.m = load ptr, ptr @fdp_parms, align 8, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store double %i.l, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !25 ; 2 uses
  %i.q = fcmp oeq double %i.p, -1.000000e+00
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %i.s = tail call double @late_double(ptr noundef %0, ptr noundef %i.r, double noundef -1.000000e+00, double noundef 0.000000e+00) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi double [ %i.s, %bb.b ], [ %i.p, %bb.a ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !27
  %i.t = tail call i32 @setSeed(ptr noundef %0, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parms, i64 8)) #6 ; 2 uses
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 64), align 8, !tbaa !28
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.3) #6
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 24), align 8, !tbaa !19
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %i.x = mul nsw i32 %i.w, %i.v
  %i.y = sdiv i32 %i.x, 100
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 96), align 8, !tbaa !29
  %i.z = load i32, ptr @parms, align 8, !tbaa !30
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.ac = fcmp ole double %i.ab, 0.000000e+00
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23
  %i.ae = fmul double %i.ad, 3.000000e+00
  store double %i.ae, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare i32 @setSeed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @fdp_tLayout(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 5 uses
  %i.f = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26 ; 2 uses
  %i.g = fcmp oeq double %i.f, -1.000000e+00      ; 2 uses
  br i1 %i.g, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @agnnodes(ptr noundef nonnull %0) #6
  %i.i = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 40), align 8, !tbaa !59
  %i.j = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.k = fmul double %i.i, %i.j
  %i.l = sitofp i32 %i.h to double
  %i.m = tail call double @sqrt(double noundef %i.l) #6
  %i.n = fmul double %i.k, %i.m
  %i.o = fdiv double %i.n, 5.000000e+00           ; 2 uses
  store double %i.o, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.p = phi double [ %i.j, %bb.b ], [ %.pre.i, %._crit_edge.i ]
  %i.q = phi double [ %i.o, %bb.b ], [ %i.f, %._crit_edge.i ]
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 96), align 8, !tbaa !29 ; 5 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22 ; 3 uses
  %i.t = sub nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = fmul double %i.q, %i.u
  %i.w = sitofp i32 %i.s to double
  %i.x = fdiv double %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.p, ptr %i.z, align 8, !tbaa !62
  %i.aa = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 32), align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.aa, ptr %i.ab, align 8, !tbaa !64
  store i32 %i.t, ptr %1, align 8, !tbaa !65
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 16), align 8, !tbaa !15 ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp sgt i32 %i.ac, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.not12.i = icmp sgt i32 %i.ac, %i.s
  br i1 %.not12.i, label %init_params.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  %i.ae = sub nsw i32 %i.ac, %i.r
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.c
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.e
  %.sink.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.g ], [ %i.t, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %.sink.i, ptr %i.af, align 8, !tbaa !67
  br label %init_params.exit

init_params.exit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ag = tail call i32 @agnnodes(ptr noundef nonnull %0) #6
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !68
  %i.am = sub nsw i32 %i.ag, %i.al
  %i.an = tail call ptr @agfstnode(ptr noundef nonnull %0) #6 ; 2 uses
  %.not189.i = icmp eq ptr %i.an, null
  br i1 %.not189.i, label %._crit_edge.i36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %init_params.exit, %bb.m
  %.0157195.i = phi ptr [ %i.bo, %bb.m ], [ %i.an, %init_params.exit ] ; 2 uses
  %.0159194.i = phi i32 [ %.1160.i, %bb.m ], [ 0, %init_params.exit ] ; 3 uses
  %i.ao = phi <2 x double> [ %i.bm, %bb.m ], [ zeroinitializer, %init_params.exit ] ; 3 uses
  %i.ap = phi <2 x double> [ %i.bn, %bb.m ], [ zeroinitializer, %init_params.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0157195.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 163
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %.not185.i = icmp eq i8 %i.at, 0
  br i1 %.not185.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %.not186.i = icmp eq i32 %.0159194.i, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76 ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  br i1 %.not186.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  %i.az = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1 ; 4 uses
  %i.bb = fcmp olt <2 x double> %i.ba, %i.ap
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.ba, <2 x double> %i.ap
  %i.bd = fcmp ogt <2 x double> %i.ba, %i.ao
  %i.be = select <2 x i1> %i.bd, <2 x double> %i.ba, <2 x double> %i.ao
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21
  %i.bh = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = phi <2 x double> [ %i.be, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = phi <2 x double> [ %i.bc, %bb.j ], [ %i.bi, %bb.k ]
  %i.bl = add nsw i32 %.0159194.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.1160.i = phi i32 [ %i.bl, %bb.l ], [ %.0159194.i, %.lr.ph.i ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.bj, %bb.l ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.bn = phi <2 x double> [ %i.bk, %bb.l ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.bo = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0157195.i) #6 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i36:                                  ; preds = %bb.m, %init_params.exit
  %.0159.lcssa.i = phi i32 [ 0, %init_params.exit ], [ %.1160.i, %bb.m ] ; 3 uses
  %i.bp = phi <2 x double> [ zeroinitializer, %init_params.exit ], [ %i.bm, %bb.m ] ; 3 uses
  %i.bq = phi <2 x double> [ zeroinitializer, %init_params.exit ], [ %i.bn, %bb.m ] ; 5 uses
  %i.br = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23
  %i.bs = sitofp i32 %i.am to double
  %i.bt = tail call double @sqrt(double noundef %i.bs) #6
  %i.bu = fadd double %i.bt, 1.000000e+00
  %i.bv = fmul double %i.br, %i.bu
  %i.bw = fmul double %i.bv, 5.000000e-01
  %i.bx = fmul double %i.bw, 1.200000e+00         ; 5 uses
  store double %i.bx, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  store double %i.bx, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.by = icmp eq i32 %.0159.lcssa.i, 1
  %2 = extractelement <2 x double> %i.bq, i64 0
  %3 = extractelement <2 x double> %i.bq, i64 1
  br i1 %i.by, label %bb.x, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i36
  %i.bz = icmp sgt i32 %.0159.lcssa.i, 1
  br i1 %i.bz, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %foldExtExtBinop = fadd <2 x double> %i.bp, %i.bq
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %5 = fmul double %4, 5.000000e-01
  %foldExtExtBinop187.a = fadd <2 x double> %i.bq, %i.bp
  %6 = extractelement <2 x double> %foldExtExtBinop187.a, i64 1
  %7 = fmul double %6, 5.000000e-01
  %i.ca = fsub <2 x double> %i.bp, %i.bq
  %i.cb = fmul <2 x double> %i.ca, splat (double 1.200000e+00) ; 6 uses
  %i.cc = fmul double %i.bx, 4.000000e+00
  %i.cd = fmul double %i.bx, %i.cc                ; 3 uses
  %i.ce = extractelement <2 x double> %i.cb, i64 0 ; 3 uses
  %i.cf = extractelement <2 x double> %i.cb, i64 1 ; 3 uses
  %i.cg = fmul double %i.cf, %i.ce
  %i.ch = fdiv double %i.cg, %i.cd                ; 3 uses
  %i.ci = fcmp ult double %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = fmul <2 x double> %i.cb, splat (double 5.000000e-01)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.ck = fcmp ogt double %i.ch, 0.000000e+00
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = tail call double @sqrt(double noundef %i.ch) #6
  %i.cm = fmul double %i.cl, 2.000000e+00
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv <2 x double> %i.cb, %i.co
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cq = fcmp ogt double %i.ce, 0.000000e+00
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = fdiv double %i.cd, %i.ce
  %i.cs = insertelement <2 x double> %i.cb, double %i.cr, i64 1
  %i.ct = fmul <2 x double> %i.cs, splat (double 5.000000e-01)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cu = fcmp ogt double %i.cf, 0.000000e+00
  %i.cv = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = fdiv double %i.cd, %i.cf
  %i.cy = insertelement <2 x double> %i.cb, double %i.cx, i64 0
  %i.cz = fmul <2 x double> %i.cy, splat (double 5.000000e-01)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.p
  %i.da = phi <2 x double> [ %i.cp, %bb.r ], [ %i.cw, %bb.u ], [ %i.cz, %bb.v ], [ %i.ct, %bb.t ], [ %i.cj, %bb.p ] ; 3 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = tail call double @atan2(double noundef %i.dc, double noundef %i.db) #6 ; 2 uses
  %i.de = tail call double @cos(double noundef %i.dd) #6
  %i.df = tail call double @sin(double noundef %i.dd) #6
  %i.dg = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.df, i64 1
  %i.di = fdiv <2 x double> %i.da, %i.dh
  store <2 x double> %i.di, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n, %._crit_edge.i36
  %.sroa.0147.0.i = phi double [ %2, %._crit_edge.i36 ], [ %5, %bb.w ], [ 0.000000e+00, %bb.n ] ; 5 uses
  %.sroa.8151.0.i = phi double [ %3, %._crit_edge.i36 ], [ %7, %bb.w ], [ 0.000000e+00, %bb.n ] ; 5 uses
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 64), align 8, !tbaa !28
  %i.dk = icmp eq i32 %i.dj, 2
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !27
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dm = tail call i64 @time(ptr noundef null) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0161.i = phi i64 [ %i.dl, %bb.y ], [ %i.dm, %bb.z ]
  tail call void @srand48(i64 noundef %.0161.i) #6
  %.not172.i = icmp eq ptr %i.e, null
  br i1 %.not172.i, label %bb.ao, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !81
  %.not177200.i = icmp eq ptr %i.dn, null
  br i1 %.not177200.i, label %._crit_edge203.i, label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.preheader.i, %.lr.ph202.i
  %.0155201.i = phi ptr [ %i.ef, %.lr.ph202.i ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0155201.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !83
  %i.dq = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %.0155201.i, i64 16 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !84
  %i.dt = tail call double @cos(double noundef %i.ds) #6
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dt, double %.sroa.0147.0.i)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 176
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !76 ; 2 uses
  store double %i.du, ptr %i.dy, align 8, !tbaa !21
  %i.dz = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.ea = load double, ptr %i.dr, align 8, !tbaa !84
  %i.eb = tail call double @sin(double noundef %i.ea) #6
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.eb, double %.sroa.8151.0.i)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store double %i.ec, ptr %i.ed, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 163
  store i8 1, ptr %i.ee, align 1, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %.0155201.i, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !81
  %.not177.i = icmp eq ptr %i.eg, null
  br i1 %.not177.i, label %._crit_edge203.i, label %.lr.ph202.i, !llvm.loop !85

._crit_edge203.i:                                 ; preds = %.lr.ph202.i, %.preheader.i
  %i.eh = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not178215.i = icmp eq ptr %i.eh, null
  br i1 %.not178215.i, label %initPositions.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %._crit_edge203.i
  %8 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %9 = insertelement <2 x double> %8, double %.sroa.8151.0.i, i64 1 ; 2 uses
  %i.ei = fmul <2 x double> %9, splat (double 1.000000e-01)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %.lr.ph219.i
  %.1158216.i = phi ptr [ %i.eh, %.lr.ph219.i ], [ %i.hn, %bb.an ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1158216.i, i64 16 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !31 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 152
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !86
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !87
  %.not179.i = icmp eq ptr %i.eo, null
  br i1 %.not179.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 336
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !89
  %.not180.i = icmp eq ptr %i.eq, null
  br i1 %.not180.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 163
  %i.es = load i8, ptr %i.er, align 1, !tbaa !69
  %.not181.i = icmp eq i8 %i.es, 0
  br i1 %.not181.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !76 ; 2 uses
  %i.ev = load <2 x double>, ptr %i.eu, align 8, !tbaa !21
  %i.ew = fsub <2 x double> %i.ev, %9
  store <2 x double> %i.ew, ptr %i.eu, align 8, !tbaa !21
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.ex = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.1158216.i) #6 ; 2 uses
  %.not182204.i = icmp eq ptr %i.ex, null
  br i1 %.not182204.i, label %.thread.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %bb.af, %.lr.ph210.i.backedge
  %.0208.i = phi ptr [ %.0208.i.be, %.lr.ph210.i.backedge ], [ %i.ex, %bb.af ] ; 5 uses
  %.0156207.i = phi i32 [ %.0156207.i.be, %.lr.ph210.i.backedge ], [ 0, %bb.af ] ; 5 uses
  %i.ey = phi <2 x double> [ %.be, %.lr.ph210.i.backedge ], [ zeroinitializer, %bb.af ] ; 3 uses
  %i.ez = load i32, ptr %.0208.i, align 8
  %i.fa = and i32 %i.ez, 3                        ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 2
  %i.fc = select i1 %i.fb, i64 56, i64 -8
  %i.fd = getelementptr inbounds i8, ptr %.0208.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !90 ; 3 uses
  %i.ff = icmp eq i32 %i.fa, 3
  %i.fg = select i1 %i.ff, i64 56, i64 120
  %i.fh = getelementptr inbounds nuw i8, ptr %.0208.i, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !90 ; 2 uses
  %i.fj = icmp eq ptr %i.fe, %i.fi
  br i1 %i.fj, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph210.i
  %i.fk = icmp eq ptr %i.fe, %.1158216.i
  %..i = select i1 %i.fk, ptr %i.fi, ptr %i.fe
  %i.fl = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 163
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !69
  %.not183.i = icmp eq i8 %i.fo, 0
  br i1 %.not183.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not184.i = icmp eq i32 %.0156207.i, 0
  br i1 %.not184.i, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = sitofp i32 %.0156207.i to double
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 176
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !76
  %i.fs = add nsw i32 %.0156207.i, 1              ; 2 uses
  %i.ft = sitofp i32 %i.fs to double
  %i.fu = load <2 x double>, ptr %i.fr, align 8, !tbaa !21
  %i.fv = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fw, <2 x double> %i.fu)
  %i.fy = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fdiv <2 x double> %i.fx, %i.fz
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %.lr.ph210.i
  %.1.i = phi i32 [ %.0156207.i, %.lr.ph210.i ], [ %.0156207.i, %bb.ag ], [ %i.fs, %bb.ai ] ; 3 uses
  %i.gb = phi <2 x double> [ %i.ey, %.lr.ph210.i ], [ %i.ey, %bb.ag ], [ %i.ga, %bb.ai ] ; 4 uses
  %i.gc = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1158216.i) #6 ; 2 uses
  %.not182.i = icmp eq ptr %i.gc, null
  br i1 %.not182.i, label %._crit_edge211.i, label %.lr.ph210.i.backedge

.lr.ph210.i.backedge:                             ; preds = %bb.aj, %.thread
  %.0208.i.be = phi ptr [ %i.gg, %.thread ], [ %i.gc, %bb.aj ]
  %.0156207.i.be = phi i32 [ 1, %.thread ], [ %.1.i, %bb.aj ]
  %.be = phi <2 x double> [ %i.gf, %.thread ], [ %i.gb, %bb.aj ]
  br label %.lr.ph210.i, !llvm.loop !94

.thread:                                          ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 176
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !76
  %i.gf = load <2 x double>, ptr %i.ge, align 8, !tbaa !21 ; 2 uses
  %i.gg = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1158216.i) #6 ; 2 uses
  %.not182.i59 = icmp eq ptr %i.gg, null
  br i1 %.not182.i59, label %.thread69, label %.lr.ph210.i.backedge

._crit_edge211.i:                                 ; preds = %bb.aj
  %i.gh = icmp sgt i32 %.1.i, 1
  br i1 %i.gh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge211.i
  %i.gi = load ptr, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !76 ; 2 uses
  %i.gl = extractelement <2 x double> %i.gb, i64 0
  store double %i.gl, ptr %i.gk, align 8, !tbaa !21
  %i.gm = extractelement <2 x double> %i.gb, i64 1
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge211.i
  %i.gn = icmp eq i32 %.1.i, 1
  br i1 %i.gn, label %.thread69, label %.thread.i

.thread69:                                        ; preds = %.thread, %bb.al
  %i.go = phi <2 x double> [ %i.gb, %bb.al ], [ %i.gf, %.thread ]
  %i.gp = load ptr, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !76 ; 2 uses
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> <double f0x3FEF5C28F5C28F5C, double 9.000000e-01>, <2 x double> %i.ei) ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  store double %i.gt, ptr %i.gr, align 8, !tbaa !21
  %i.gu = extractelement <2 x double> %i.gs, i64 1
  br label %bb.am

.thread.i:                                        ; preds = %bb.al, %bb.af
  %i.gv = tail call double @drand48() #6
  %i.gw = fmul double %i.gv, f0x401921FB54442D18  ; 2 uses
  %i.gx = tail call double @drand48() #6
  %i.gy = fmul double %i.gx, 9.000000e-01         ; 2 uses
  %i.gz = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = tail call double @cos(double noundef %i.gw) #6
  %i.hc = fmul double %i.ha, %i.hb
  %i.hd = load ptr, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 176
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !76 ; 2 uses
  store double %i.hc, ptr %i.hf, align 8, !tbaa !21
  %i.hg = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.hh = fmul double %i.gy, %i.hg
  %i.hi = tail call double @sin(double noundef %i.gw) #6
  %i.hj = fmul double %i.hh, %i.hi
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %.thread69, %bb.ak
  %.sink256.i = phi ptr [ %i.gr, %.thread69 ], [ %i.hf, %.thread.i ], [ %i.gk, %bb.ak ]
  %.sink.i37 = phi double [ %i.gu, %.thread69 ], [ %i.hj, %.thread.i ], [ %i.gm, %bb.ak ]
  %i.hk = phi ptr [ %i.gp, %.thread69 ], [ %i.hd, %.thread.i ], [ %i.gi, %bb.ak ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sink256.i, i64 8
  store double %.sink.i37, ptr %i.hl, align 8, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 163
  store i8 1, ptr %i.hm, align 1, !tbaa !69
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae, %bb.ac
  %i.hn = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.1158216.i) #6 ; 2 uses
  %.not178.i = icmp eq ptr %i.hn, null
  br i1 %.not178.i, label %initPositions.exit, label %bb.ab, !llvm.loop !95

bb.ao:                                            ; preds = %bb.aa
  %.not173.i = icmp eq i32 %.0159.lcssa.i, 0
  %i.ho = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not174224.i = icmp eq ptr %i.ho, null         ; 2 uses
  br i1 %.not173.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph223.i.preheader

.lr.ph223.i.preheader:                            ; preds = %bb.ap
  %10 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %11 = insertelement <2 x double> %10, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.preheader, %bb.as
  %.2221.i = phi ptr [ %i.ik, %bb.as ], [ %i.ho, %.lr.ph223.i.preheader ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.2221.i, i64 16 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !31 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 163
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !69
  %.not176.i = icmp eq i8 %i.hs, 0
  br i1 %.not176.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph223.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 176
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !76 ; 2 uses
  %12 = load <2 x double>, ptr %i.hu, align 8, !tbaa !21
  %13 = fsub <2 x double> %12, %11
  store <2 x double> %13, ptr %i.hu, align 8, !tbaa !21
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.hv = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.hw = tail call double @drand48() #6
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double 2.000000e+00, double -1.000000e+00)
  %i.hy = fmul double %i.hv, %i.hx
  %i.hz = load ptr, ptr %i.hp, align 8, !tbaa !31
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !76
  store double %i.hy, ptr %i.ib, align 8, !tbaa !21
  %i.ic = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.id = tail call double @drand48() #6
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double 2.000000e+00, double -1.000000e+00)
  %i.if = fmul double %i.ic, %i.ie
  %i.ig = load ptr, ptr %i.hp, align 8, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 176
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store double %i.if, ptr %i.ij, align 8, !tbaa !21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ik = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.ik, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !96

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jb, %.lr.ph227.i ], [ %i.ho, %bb.at ] ; 2 uses
  %i.il = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.im = tail call double @drand48() #6
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double 2.000000e+00, double -1.000000e+00)
  %i.io = fmul double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 176
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !76
  store double %i.io, ptr %i.is, align 8, !tbaa !21
  %i.it = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.iu = tail call double @drand48() #6
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double 2.000000e+00, double -1.000000e+00)
  %i.iw = fmul double %i.it, %i.iv
  %i.ix = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 176
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !76
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store double %i.iw, ptr %i.ja, align 8, !tbaa !21
  %i.jb = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jb, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !97

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jc = load i32, ptr @parms, align 8, !tbaa !30
  %.not = icmp eq i32 %i.jc, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph90.preheader, label %.loopexit75

.lr.ph90.preheader:                               ; preds = %.preheader
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre114 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph90

bb.au:                                            ; preds = %initPositions.exit
  %i.jf = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.jg = tail call ptr @mkGrid(i32 noundef %i.jf) #6 ; 5 uses
  %i.jh = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.jg, i32 noundef %i.jh) #6
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre107 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.jg) #6
  br label %.loopexit75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jk = phi i32 [ %i.na, %gAdjust.exit ], [ %i.ji, %.lr.ph.preheader ]
  %i.jl = phi i32 [ %i.nb, %gAdjust.exit ], [ %.pre109, %.lr.ph.preheader ] ; 3 uses
  %i.jm = phi double [ %i.nc, %gAdjust.exit ], [ %.pre107, %.lr.ph.preheader ] ; 2 uses
  %.03288 = phi i32 [ %i.nd, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jn = sub nsw i32 %i.jl, %.03288
  %i.jo = sitofp i32 %i.jn to double
  %i.jp = fmul double %i.jm, %i.jo
  %i.jq = sitofp i32 %i.jl to double
  %i.jr = fdiv double %i.jp, %i.jq                ; 2 uses
  %i.js = fcmp ugt double %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.av, label %gAdjust.exit

bb.av:                                            ; preds = %.lr.ph
  tail call void @clearGrid(ptr noundef %i.jg) #6
  %i.jt = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.jt, null
  br i1 %.not42.i, label %._crit_edge.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.av, %.lr.ph.i38
  %.03443.i = phi ptr [ %i.kl, %.lr.ph.i38 ], [ %i.jt, %bb.av ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.03443.i, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !31 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 152
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !86
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !76
  %i.kb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.kc = load <2 x double>, ptr %i.ka, align 8, !tbaa !21
  %i.kd = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fdiv <2 x double> %i.kc, %i.kd          ; 2 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0
  %i.kg = tail call double @llvm.floor.f64(double %i.kf)
  %i.kh = fptosi double %i.kg to i32
  %i.ki = extractelement <2 x double> %i.ke, i64 1
  %i.kj = tail call double @llvm.floor.f64(double %i.ki)
  %i.kk = fptosi double %i.kj to i32
  tail call void @addGrid(ptr noundef %i.jg, i32 noundef %i.kh, i32 noundef %i.kk, ptr noundef nonnull %.03443.i) #6
  %i.kl = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03443.i) #6 ; 2 uses
  %.not.i39 = icmp eq ptr %i.kl, null
  br i1 %.not.i39, label %._crit_edge.i40, label %.lr.ph.i38, !llvm.loop !98

._crit_edge.i40:                                  ; preds = %.lr.ph.i38, %bb.av
  %i.km = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3749.i = icmp eq ptr %i.km, null
  br i1 %.not3749.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i40, %._crit_edge48.i
  %.150.i = phi ptr [ %i.mz, %._crit_edge48.i ], [ %i.km, %._crit_edge.i40 ] ; 4 uses
  %i.kn = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not3844.i = icmp eq ptr %i.kn, null
  br i1 %.not3844.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.150.i, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph47.i
  %.045.i = phi ptr [ %i.kn, %.lr.ph47.i ], [ %i.my, %bb.ba ] ; 4 uses
  %i.kp = load i32, ptr %.045.i, align 8
  %i.kq = and i32 %i.kp, 3
  %i.kr = icmp eq i32 %i.kq, 2
  %i.ks = select i1 %i.kr, i64 56, i64 -8
  %i.kt = getelementptr inbounds i8, ptr %.045.i, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !90 ; 2 uses
  %.not39.i = icmp eq ptr %.150.i, %i.ku
  br i1 %.not39.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !31
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 176
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !76
  %i.kz = load ptr, ptr %i.ko, align 8, !tbaa !31
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 176
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !76
  %i.lc = load <2 x double>, ptr %i.ky, align 8, !tbaa !21
  %i.ld = load <2 x double>, ptr %i.lb, align 8, !tbaa !21
  %i.le = fsub <2 x double> %i.lc, %i.ld          ; 4 uses
  %i.lf = extractelement <2 x double> %i.le, i64 0 ; 2 uses
  %foldExtExtBinop189.a = fmul <2 x double> %i.le, %i.le
  %i.lg = extractelement <2 x double> %foldExtExtBinop189.a, i64 1
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double %i.lg) ; 2 uses
  %i.li = fcmp oeq double %i.lh, 0.000000e+00
  br i1 %i.li, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.lj = tail call i32 @rand() #6
  %i.lk = tail call i32 @rand() #6
  %i.ll = insertelement <2 x i32> poison, i32 %i.lj, i64 0
  %i.lm = insertelement <2 x i32> %i.ll, i32 %i.lk, i64 1
  %i.ln = srem <2 x i32> %i.lm, splat (i32 10)
  %i.lo = sub nsw <2 x i32> splat (i32 5), %i.ln
  %i.lp = sitofp <2 x i32> %i.lo to <2 x double>  ; 4 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %foldExtExtBinop191.a = fmul nnan <2 x double> %i.lp, %i.lp
  %i.lr = extractelement <2 x double> %foldExtExtBinop191.a, i64 1
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lq, double %i.lr) ; 2 uses
  %i.lt = fcmp oeq double %i.ls, 0.000000e+00
  br i1 %i.lt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !99

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ax
  %.0.lcssa.i.i = phi double [ %i.lh, %bb.ax ], [ %i.ls, %.lr.ph.i.i ]
  %i.lu = phi <2 x double> [ %i.le, %bb.ax ], [ %i.lp, %.lr.ph.i.i ] ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i) ; 3 uses
  %i.lv = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i = icmp eq i32 %i.lv, 0
  %i.lw = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !31 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 176
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !101 ; 2 uses
end_hunk_0
begin_hunk_1_@fdp_tLayout:bb.a
  %i.pd = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.pe = fmul double %i.pd, %i.pd                ; 2 uses
  %i.pf = fmul nnan double %.026.lcssa.i.i, %.026.lcssa.i.i ; 2 uses
  br i1 %.not.i44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pg = fmul double %.026.lcssa.i.i, %i.pf
  %i.ph = fdiv double %i.pe, %i.pg
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pi = fdiv double %i.pe, %i.pf
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i43.i
  %.0.i.i = phi double [ %i.pi, %bb.bf ], [ %i.ph, %bb.be ], [ 0.000000e+00, %._crit_edge.i43.i ] ; 5 uses
  %i.pj = load ptr, ptr %i.nx, align 8, !tbaa !31 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 152
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !86 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !87
  %.not29.i.i = icmp eq ptr %i.pn, null
  br i1 %.not29.i.i, label %bb.bh, label %.doRep.exit_crit_edge.i

.doRep.exit_crit_edge.i:                          ; preds = %bb.bg
  %.pre.i44 = load ptr, ptr %i.ny, align 8, !tbaa !31
  br label %doRep.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 336
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !89
  %.not30.i.i = icmp eq ptr %i.pp, null
  %.pre73.i = load ptr, ptr %i.ny, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i.i, label %bb.bi, label %doRep.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 152
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !86
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !87
  %.not31.i.i = icmp eq ptr %i.pt, null
  br i1 %.not31.i.i, label %bb.bj, label %doRep.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 336
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !89
  %.not32.i.i = icmp eq ptr %i.pv, null
  br i1 %.not32.i.i, label %bb.bk, label %doRep.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.pw = fmul double %.0.i.i, 1.000000e+01
  br label %doRep.exit.i

doRep.exit.i:                                     ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.doRep.exit_crit_edge.i
  %i.px = phi ptr [ %.pre.i44, %.doRep.exit_crit_edge.i ], [ %.pre73.i, %bb.bh ], [ %.pre73.i, %bb.bi ], [ %.pre73.i, %bb.bj ], [ %.pre73.i, %bb.bk ]
  %.1.i.i = phi double [ %.0.i.i, %.doRep.exit_crit_edge.i ], [ %.0.i.i, %bb.bh ], [ %.0.i.i, %bb.bi ], [ %.0.i.i, %bb.bj ], [ %i.pw, %bb.bk ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 152
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !86
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load <2 x double>, ptr %i.qa, align 8, !tbaa !21
  %i.qc = insertelement <2 x double> poison, double %.1.i.i, i64 0
  %i.qd = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.qd, <2 x double> %i.qb)
  store <2 x double> %i.qe, ptr %i.qa, align 8, !tbaa !21
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %i.qg = fneg <2 x double> %i.ox
  %i.qh = load <2 x double>, ptr %i.qf, align 8, !tbaa !21
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qd, <2 x double> %i.qh)
  store <2 x double> %i.qi, ptr %i.qf, align 8, !tbaa !21
  %i.qj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03554.i) #6 ; 2 uses
  %.not40.i = icmp eq ptr %i.qj, null
  br i1 %.not40.i, label %._crit_edge57.i, label %bb.bc, !llvm.loop !114

._crit_edge57.i:                                  ; preds = %doRep.exit.i, %.lr.ph66.i
  %i.qk = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4158.i = icmp eq ptr %i.qk, null
  br i1 %.not4158.i, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge57.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph61.i
  %.059.i = phi ptr [ %i.qk, %.lr.ph61.i ], [ %i.sv, %bb.bp ] ; 4 uses
  %i.qm = load i32, ptr %.059.i, align 8
  %i.qn = and i32 %i.qm, 3
  %i.qo = icmp eq i32 %i.qn, 2
  %i.qp = select i1 %i.qo, i64 56, i64 -8
  %i.qq = getelementptr inbounds i8, ptr %.059.i, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !90 ; 2 uses
  %.not42.i45 = icmp eq ptr %.164.i, %i.qr
  br i1 %.not42.i45, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !31
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !76
  %i.qw = load ptr, ptr %i.ql, align 8, !tbaa !31
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 176
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !76
  %i.qz = load <2 x double>, ptr %i.qv, align 8, !tbaa !21
  %i.ra = load <2 x double>, ptr %i.qy, align 8, !tbaa !21
  %i.rb = fsub <2 x double> %i.qz, %i.ra          ; 4 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0 ; 2 uses
  %foldExtExtBinop193 = fmul <2 x double> %i.rb, %i.rb
  %i.rd = extractelement <2 x double> %foldExtExtBinop193, i64 1
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double %i.rd) ; 2 uses
  %i.rf = fcmp oeq double %i.re, 0.000000e+00
  br i1 %i.rf, label %.lr.ph.i.i55, label %._crit_edge.i.i46

.lr.ph.i.i55:                                     ; preds = %bb.bm, %.lr.ph.i.i55
  %i.rg = tail call i32 @rand() #6
  %i.rh = tail call i32 @rand() #6
  %i.ri = insertelement <2 x i32> poison, i32 %i.rg, i64 0
  %i.rj = insertelement <2 x i32> %i.ri, i32 %i.rh, i64 1
  %i.rk = srem <2 x i32> %i.rj, splat (i32 10)
  %i.rl = sub nsw <2 x i32> splat (i32 5), %i.rk
  %i.rm = sitofp <2 x i32> %i.rl to <2 x double>  ; 4 uses
  %i.rn = extractelement <2 x double> %i.rm, i64 0 ; 2 uses
  %foldExtExtBinop195 = fmul nnan <2 x double> %i.rm, %i.rm
  %i.ro = extractelement <2 x double> %foldExtExtBinop195, i64 1
  %i.rp = tail call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %i.ro) ; 2 uses
  %i.rq = fcmp oeq double %i.rp, 0.000000e+00
  br i1 %i.rq, label %.lr.ph.i.i55, label %._crit_edge.i.i46, !llvm.loop !99

._crit_edge.i.i46:                                ; preds = %.lr.ph.i.i55, %bb.bm
  %.0.lcssa.i.i49 = phi double [ %i.re, %bb.bm ], [ %i.rp, %.lr.ph.i.i55 ]
  %i.rr = phi <2 x double> [ %i.rb, %bb.bm ], [ %i.rm, %.lr.ph.i.i55 ] ; 2 uses
  %sqrt.i.i50 = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i49) ; 3 uses
  %i.rs = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i51 = icmp eq i32 %i.rs, 0
  %i.rt = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !31 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 176
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !101 ; 2 uses
  br i1 %.not.i.i51, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i46
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 184
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !107
  %i.rz = fsub double %sqrt.i.i50, %i.ry
  %i.sa = fmul double %i.rw, %i.rz
  %i.sb = fdiv double %i.sa, %sqrt.i.i50
  br label %applyAttr.exit.i52

bb.bo:                                            ; preds = %._crit_edge.i.i46
  %i.sc = fmul double %sqrt.i.i50, %i.rw
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 184
  %i.se = load double, ptr %i.sd, align 8, !tbaa !107
  %i.sf = fdiv double %i.sc, %i.se
  br label %applyAttr.exit.i52

applyAttr.exit.i52:                               ; preds = %bb.bo, %bb.bn
  %.034.i.i53 = phi double [ %i.sb, %bb.bn ], [ %i.sf, %bb.bo ]
  %i.sg = load ptr, ptr %i.qs, align 8, !tbaa !31
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 152
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !86
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 2 uses
  %i.sk = fneg <2 x double> %i.rr
  %i.sl = load <2 x double>, ptr %i.sj, align 8, !tbaa !21
  %i.sm = insertelement <2 x double> poison, double %.034.i.i53, i64 0
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.so = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sn, <2 x double> %i.sl)
  store <2 x double> %i.so, ptr %i.sj, align 8, !tbaa !21
  %i.sp = load ptr, ptr %i.ql, align 8, !tbaa !31
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 152
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !86
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %i.st = load <2 x double>, ptr %i.ss, align 8, !tbaa !21
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rr, <2 x double> %i.sn, <2 x double> %i.st)
  store <2 x double> %i.su, ptr %i.ss, align 8, !tbaa !21
  br label %bb.bp

bb.bp:                                            ; preds = %applyAttr.exit.i52, %bb.bl
  %i.sv = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.059.i) #6 ; 2 uses
  %.not41.i = icmp eq ptr %i.sv, null
  br i1 %.not41.i, label %._crit_edge62.i, label %bb.bl, !llvm.loop !115

._crit_edge62.i:                                  ; preds = %bb.bp, %._crit_edge57.i
  %i.sw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not39.i54 = icmp eq ptr %i.sw, null
  br i1 %.not39.i54, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !116

._crit_edge67.i:                                  ; preds = %._crit_edge62.i, %._crit_edge.i43
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.nm, ptr noundef readnone %i.e)
  %.pre111 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %.pre115 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %adjust.exit

adjust.exit:                                      ; preds = %.lr.ph90, %._crit_edge67.i
  %i.sx = phi i32 [ %i.nf, %.lr.ph90 ], [ %.pre115, %._crit_edge67.i ] ; 2 uses
  %i.sy = phi i32 [ %i.ng, %.lr.ph90 ], [ %.pre113, %._crit_edge67.i ]
  %i.sz = phi double [ %i.nh, %.lr.ph90 ], [ %.pre111, %._crit_edge67.i ]
  %i.ta = add nuw nsw i32 %.03389, 1              ; 2 uses
  %i.tb = icmp slt i32 %i.ta, %i.sx
  br i1 %i.tb, label %.lr.ph90, label %.loopexit75, !llvm.loop !117

.loopexit75:                                      ; preds = %adjust.exit, %.preheader, %._crit_edge
  %i.tc = fcmp une double %.sroa.0147.0.i, 0.000000e+00
  %i.td = fcmp une double %.sroa.8151.0.i, 0.000000e+00
  %or.cond = select i1 %i.tc, i1 true, i1 %i.td
  br i1 %or.cond, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %.loopexit75
  %i.te = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3491 = icmp eq ptr %i.te, null
  br i1 %.not3491, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %bb.bq
  %14 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %15 = insertelement <2 x double> %14, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %.092 = phi ptr [ %i.tj, %.lr.ph94 ], [ %i.te, %.lr.ph94.preheader ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !31
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 176
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !76 ; 2 uses
  %16 = load <2 x double>, ptr %i.ti, align 8, !tbaa !21
  %17 = fadd <2 x double> %15, %16
  store <2 x double> %17, ptr %i.ti, align 8, !tbaa !21
  %i.tj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.092) #6 ; 2 uses
  %.not34 = icmp eq ptr %i.tj, null
  br i1 %.not34, label %.loopexit, label %.lr.ph94, !llvm.loop !118

.loopexit:                                        ; preds = %.lr.ph94, %bb.bq, %.loopexit75
  br i1 %i.g, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.loopexit
  store double -1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit
  ret void
}

declare ptr @mkGrid(i32 noundef) local_unnamed_addr #1

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #1

declare void @adjustGrid(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @delGrid(ptr noundef) local_unnamed_addr #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #1

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @srand48(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #3

declare void @clearGrid(ptr noundef) local_unnamed_addr #1

declare void @addGrid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @walkGrid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gridRepulse(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 11 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !123    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !124  ; 4 uses
  %.not53 = icmp eq ptr %i.b, null
  br i1 %.not53, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04654 = phi ptr [ %i.bw, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.l
  %.052 = phi ptr [ %i.b, %.preheader ], [ %i.bu, %bb.l ] ; 3 uses
  %.not48 = icmp eq ptr %.04654, %.052
  br i1 %.not48, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.04654, align 8, !tbaa !125
  %i.g = load ptr, ptr %.052, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !21
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !21
  %i.r = fsub <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = tail call double @hypot(double noundef %i.t, double noundef %i.s) #6 ; 2 uses
  %i.v = fcmp ule double %i.u, 0.000000e+00
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = tail call i32 @rand() #6
  %i.x = tail call i32 @rand() #6
  %i.y = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = srem <2 x i32> %i.z, splat (i32 10)
  %i.ab = sub nsw <2 x i32> splat (i32 5), %i.aa
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 1
  %i.ae = extractelement <2 x double> %i.ac, i64 0
  %i.af = tail call double @hypot(double noundef %i.ae, double noundef %i.ad) #6 ; 2 uses
  %i.ag = fcmp ule double %i.af, 0.000000e+00
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.026.lcssa.i = phi double [ %i.u, %bb.c ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %i.ah = phi <2 x double> [ %i.r, %bb.c ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %i.ai = load ptr, ptr @fdp_parms, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !113
  %i.al = fcmp ogt double %.026.lcssa.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i = icmp eq i32 %i.am, 0
  %i.an = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.ao = fmul double %i.an, %i.an                ; 2 uses
  %i.ap = fmul nnan double %.026.lcssa.i, %.026.lcssa.i ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fmul double %.026.lcssa.i, %i.ap
  %i.ar = fdiv double %i.ao, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = fdiv double %i.ao, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.i = phi double [ %i.as, %bb.f ], [ %i.ar, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 5 uses
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !87
  %.not29.i = icmp eq ptr %i.ax, null
  br i1 %.not29.i, label %bb.h, label %.doRep.exit_crit_edge

.doRep.exit_crit_edge:                            ; preds = %bb.g
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !31
  br label %doRep.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  %.not30.i = icmp eq ptr %i.az, null
  %.pre58 = load ptr, ptr %i.h, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i, label %bb.i, label %doRep.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre58, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87
  %.not31.i = icmp eq ptr %i.bd, null
  br i1 %.not31.i, label %bb.j, label %doRep.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.pre58, i64 336
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !89
  %.not32.i = icmp eq ptr %i.bf, null
  br i1 %.not32.i, label %bb.k, label %doRep.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = fmul double %.0.i, 1.000000e+01
  br label %doRep.exit

doRep.exit:                                       ; preds = %.doRep.exit_crit_edge, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bh = phi ptr [ %.pre, %.doRep.exit_crit_edge ], [ %.pre58, %bb.h ], [ %.pre58, %bb.i ], [ %.pre58, %bb.j ], [ %.pre58, %bb.k ]
  %.1.i = phi double [ %.0.i, %.doRep.exit_crit_edge ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %i.bg, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 8, !tbaa !21
  %i.bm = insertelement <2 x double> poison, double %.1.i, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.bn, <2 x double> %i.bl)
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bq = fneg <2 x double> %i.ah
end_hunk_1
