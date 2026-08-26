Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/tlayout?download=true
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
  %.0159194.i = phi i32 [ %.1158.i, %bb.m ], [ 0, %init_params.exit ] ; 3 uses
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
  %.1158.i = phi i32 [ %i.bl, %bb.l ], [ %.0159194.i, %.lr.ph.i ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.bj, %bb.l ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.bn = phi <2 x double> [ %i.bk, %bb.l ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.bo = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0157195.i) #6 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i36:                                  ; preds = %bb.m, %init_params.exit
  %.0157.lcssa.i = phi i32 [ 0, %init_params.exit ], [ %.1158.i, %bb.m ] ; 3 uses
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
  %i.by = icmp eq i32 %.0157.lcssa.i, 1
  %2 = extractelement <2 x double> %i.bq, i64 0
  %3 = extractelement <2 x double> %i.bq, i64 1
  br i1 %i.by, label %bb.x, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i36
  %i.bz = icmp sgt i32 %.0157.lcssa.i, 1
  br i1 %i.bz, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %foldExtExtBinop = fadd <2 x double> %i.bp, %i.bq
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %5 = fmul double %4, 5.000000e-01
  %i.ca = fadd <2 x double> %i.bq, %i.bp
  %6 = extractelement <2 x double> %i.ca, i64 1
  %7 = fmul double %6, 5.000000e-01
  %i.cb = fsub <2 x double> %i.bp, %i.bq
  %i.cc = fmul <2 x double> %i.cb, splat (double 1.200000e+00) ; 6 uses
  %i.cd = fmul double %i.bx, 4.000000e+00
  %i.ce = fmul double %i.bx, %i.cd                ; 3 uses
  %i.cf = extractelement <2 x double> %i.cc, i64 0 ; 3 uses
  %i.cg = extractelement <2 x double> %i.cc, i64 1 ; 3 uses
  %i.ch = fmul double %i.cg, %i.cf
  %i.ci = fdiv double %i.ch, %i.ce                ; 3 uses
  %i.cj = fcmp ult double %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = fmul <2 x double> %i.cc, splat (double 5.000000e-01)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.cl = fcmp ogt double %i.ci, 0.000000e+00
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = tail call double @sqrt(double noundef %i.ci) #6
  %i.cn = fmul double %i.cm, 2.000000e+00
  %i.co = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fdiv <2 x double> %i.cc, %i.cp
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cr = fcmp ogt double %i.cf, 0.000000e+00
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = fdiv double %i.ce, %i.cf
  %i.ct = insertelement <2 x double> %i.cc, double %i.cs, i64 1
  %i.cu = fmul <2 x double> %i.ct, splat (double 5.000000e-01)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cv = fcmp ogt double %i.cg, 0.000000e+00
  %i.cw = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = fdiv double %i.ce, %i.cg
  %i.cz = insertelement <2 x double> %i.cc, double %i.cy, i64 0
  %i.da = fmul <2 x double> %i.cz, splat (double 5.000000e-01)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.p
  %i.db = phi <2 x double> [ %i.cq, %bb.r ], [ %i.cx, %bb.u ], [ %i.da, %bb.v ], [ %i.cu, %bb.t ], [ %i.ck, %bb.p ] ; 3 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = extractelement <2 x double> %i.db, i64 1
  %i.de = tail call double @atan2(double noundef %i.dd, double noundef %i.dc) #6 ; 2 uses
  %i.df = tail call double @cos(double noundef %i.de) #6
  %i.dg = tail call double @sin(double noundef %i.de) #6
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.dg, i64 1
  %i.dj = fdiv <2 x double> %i.db, %i.di
  store <2 x double> %i.dj, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n, %._crit_edge.i36
  %.sroa.0147.0.i = phi double [ %2, %._crit_edge.i36 ], [ %5, %bb.w ], [ 0.000000e+00, %bb.n ] ; 5 uses
  %.sroa.8151.0.i = phi double [ %3, %._crit_edge.i36 ], [ %7, %bb.w ], [ 0.000000e+00, %bb.n ] ; 5 uses
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 64), align 8, !tbaa !28
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 8), align 8, !tbaa !27
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dn = tail call i64 @time(ptr noundef null) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0156.i = phi i64 [ %i.dm, %bb.y ], [ %i.dn, %bb.z ]
  tail call void @srand48(i64 noundef %.0156.i) #6
  %.not172.i = icmp eq ptr %i.e, null
  br i1 %.not172.i, label %bb.ao, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !81
  %.not177200.i = icmp eq ptr %i.do, null
  br i1 %.not177200.i, label %._crit_edge203.i, label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.preheader.i, %.lr.ph202.i
  %.0161201.i = phi ptr [ %i.eg, %.lr.ph202.i ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83
  %i.dr = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.ds = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 16 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !84
  %i.du = tail call double @cos(double noundef %i.dt) #6
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.du, double %.sroa.0147.0.i)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 176
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !76 ; 2 uses
  store double %i.dv, ptr %i.dz, align 8, !tbaa !21
  %i.ea = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.eb = load double, ptr %i.ds, align 8, !tbaa !84
  %i.ec = tail call double @sin(double noundef %i.eb) #6
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ec, double %.sroa.8151.0.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store double %i.ed, ptr %i.ee, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 163
  store i8 1, ptr %i.ef, align 1, !tbaa !69
  %i.eg = getelementptr inbounds nuw i8, ptr %.0161201.i, i64 24 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !81
  %.not177.i = icmp eq ptr %i.eh, null
  br i1 %.not177.i, label %._crit_edge203.i, label %.lr.ph202.i, !llvm.loop !85

._crit_edge203.i:                                 ; preds = %.lr.ph202.i, %.preheader.i
  %i.ei = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not178215.i = icmp eq ptr %i.ei, null
  br i1 %.not178215.i, label %initPositions.exit, label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %._crit_edge203.i
  %8 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %9 = insertelement <2 x double> %8, double %.sroa.8151.0.i, i64 1 ; 2 uses
  %i.ej = fmul <2 x double> %9, splat (double 1.000000e-01)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %.lr.ph219.i
  %.1160216.i = phi ptr [ %i.ei, %.lr.ph219.i ], [ %i.ho, %bb.an ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1160216.i, i64 16 ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !87
  %.not179.i = icmp eq ptr %i.ep, null
  br i1 %.not179.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 336
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  %.not180.i = icmp eq ptr %i.er, null
  br i1 %.not180.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 163
  %i.et = load i8, ptr %i.es, align 1, !tbaa !69
  %.not181.i = icmp eq i8 %i.et, 0
  br i1 %.not181.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 176
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !76 ; 2 uses
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !21
  %i.ex = fsub <2 x double> %i.ew, %9
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !21
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.ey = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182204.i = icmp eq ptr %i.ey, null
  br i1 %.not182204.i, label %.thread.i, label %.lr.ph210.i

.lr.ph210.i:                                      ; preds = %bb.af, %.lr.ph210.i.backedge
  %.0208.i = phi ptr [ %.0208.i.be, %.lr.ph210.i.backedge ], [ %i.ey, %bb.af ] ; 5 uses
  %.0155207.i = phi i32 [ %.0155207.i.be, %.lr.ph210.i.backedge ], [ 0, %bb.af ] ; 5 uses
  %i.ez = phi <2 x double> [ %.be, %.lr.ph210.i.backedge ], [ zeroinitializer, %bb.af ] ; 3 uses
  %i.fa = load i32, ptr %.0208.i, align 8
  %i.fb = and i32 %i.fa, 3                        ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 2
  %i.fd = select i1 %i.fc, i64 56, i64 -8
  %i.fe = getelementptr inbounds i8, ptr %.0208.i, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !90 ; 3 uses
  %i.fg = icmp eq i32 %i.fb, 3
  %i.fh = select i1 %i.fg, i64 56, i64 120
  %i.fi = getelementptr inbounds nuw i8, ptr %.0208.i, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90 ; 2 uses
  %i.fk = icmp eq ptr %i.ff, %i.fj
  br i1 %i.fk, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph210.i
  %i.fl = icmp eq ptr %i.ff, %.1160216.i
  %..i = select i1 %i.fl, ptr %i.fj, ptr %i.ff
  %i.fm = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 163
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !69
  %.not183.i = icmp eq i8 %i.fp, 0
  br i1 %.not183.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not184.i = icmp eq i32 %.0155207.i, 0
  br i1 %.not184.i, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = sitofp i32 %.0155207.i to double
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 176
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !76
  %i.ft = add nsw i32 %.0155207.i, 1              ; 2 uses
  %i.fu = sitofp i32 %i.ft to double
  %i.fv = load <2 x double>, ptr %i.fs, align 8, !tbaa !21
  %i.fw = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fx, <2 x double> %i.fv)
  %i.fz = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fdiv <2 x double> %i.fy, %i.ga
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %.lr.ph210.i
  %.1.i = phi i32 [ %.0155207.i, %.lr.ph210.i ], [ %.0155207.i, %bb.ag ], [ %i.ft, %bb.ai ] ; 3 uses
  %i.gc = phi <2 x double> [ %i.ez, %.lr.ph210.i ], [ %i.ez, %bb.ag ], [ %i.gb, %bb.ai ] ; 4 uses
  %i.gd = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i = icmp eq ptr %i.gd, null
  br i1 %.not182.i, label %._crit_edge211.i, label %.lr.ph210.i.backedge

.lr.ph210.i.backedge:                             ; preds = %bb.aj, %.thread
  %.0208.i.be = phi ptr [ %i.gh, %.thread ], [ %i.gd, %bb.aj ]
  %.0155207.i.be = phi i32 [ 1, %.thread ], [ %.1.i, %bb.aj ]
  %.be = phi <2 x double> [ %i.gg, %.thread ], [ %i.gc, %bb.aj ]
  br label %.lr.ph210.i, !llvm.loop !94

.thread:                                          ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 176
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76
  %i.gg = load <2 x double>, ptr %i.gf, align 8, !tbaa !21 ; 2 uses
  %i.gh = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0208.i, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not182.i59 = icmp eq ptr %i.gh, null
  br i1 %.not182.i59, label %.thread69, label %.lr.ph210.i.backedge

._crit_edge211.i:                                 ; preds = %bb.aj
  %i.gi = icmp sgt i32 %.1.i, 1
  br i1 %i.gi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge211.i
  %i.gj = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 176
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !76 ; 2 uses
  %i.gm = extractelement <2 x double> %i.gc, i64 0
  store double %i.gm, ptr %i.gl, align 8, !tbaa !21
  %i.gn = extractelement <2 x double> %i.gc, i64 1
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge211.i
  %i.go = icmp eq i32 %.1.i, 1
  br i1 %i.go, label %.thread69, label %.thread.i

.thread69:                                        ; preds = %.thread, %bb.al
  %i.gp = phi <2 x double> [ %i.gc, %bb.al ], [ %i.gg, %.thread ]
  %i.gq = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 176
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76 ; 2 uses
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> <double f0x3FEF5C28F5C28F5C, double 9.000000e-01>, <2 x double> %i.ej) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  store double %i.gu, ptr %i.gs, align 8, !tbaa !21
  %i.gv = extractelement <2 x double> %i.gt, i64 1
  br label %bb.am

.thread.i:                                        ; preds = %bb.al, %bb.af
  %i.gw = tail call double @drand48() #6
  %i.gx = fmul double %i.gw, f0x401921FB54442D18  ; 2 uses
  %i.gy = tail call double @drand48() #6
  %i.gz = fmul double %i.gy, 9.000000e-01         ; 2 uses
  %i.ha = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.hb = fmul double %i.gz, %i.ha
  %i.hc = tail call double @cos(double noundef %i.gx) #6
  %i.hd = fmul double %i.hb, %i.hc
  %i.he = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 176
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !76 ; 2 uses
  store double %i.hd, ptr %i.hg, align 8, !tbaa !21
  %i.hh = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.hi = fmul double %i.gz, %i.hh
  %i.hj = tail call double @sin(double noundef %i.gx) #6
  %i.hk = fmul double %i.hi, %i.hj
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %.thread69, %bb.ak
  %.sink256.i = phi ptr [ %i.gs, %.thread69 ], [ %i.hg, %.thread.i ], [ %i.gl, %bb.ak ]
  %.sink.i37 = phi double [ %i.gv, %.thread69 ], [ %i.hk, %.thread.i ], [ %i.gn, %bb.ak ]
  %i.hl = phi ptr [ %i.gq, %.thread69 ], [ %i.he, %.thread.i ], [ %i.gj, %bb.ak ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink256.i, i64 8
  store double %.sink.i37, ptr %i.hm, align 8, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 163
  store i8 1, ptr %i.hn, align 1, !tbaa !69
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae, %bb.ac
  %i.ho = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.1160216.i) #6 ; 2 uses
  %.not178.i = icmp eq ptr %i.ho, null
  br i1 %.not178.i, label %initPositions.exit, label %bb.ab, !llvm.loop !95

bb.ao:                                            ; preds = %bb.aa
  %.not173.i = icmp eq i32 %.0157.lcssa.i, 0
  %i.hp = tail call ptr @agfstnode(ptr noundef %0) #6 ; 3 uses
  %.not174224.i = icmp eq ptr %i.hp, null         ; 2 uses
  br i1 %.not173.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph223.i.preheader

.lr.ph223.i.preheader:                            ; preds = %bb.ap
  %10 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %11 = insertelement <2 x double> %10, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.preheader, %bb.as
  %.2221.i = phi ptr [ %i.il, %bb.as ], [ %i.hp, %.lr.ph223.i.preheader ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.2221.i, i64 16 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !31 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 163
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !69
  %.not176.i = icmp eq i8 %i.ht, 0
  br i1 %.not176.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph223.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !76 ; 2 uses
  %12 = load <2 x double>, ptr %i.hv, align 8, !tbaa !21
  %13 = fsub <2 x double> %12, %11
  store <2 x double> %13, ptr %i.hv, align 8, !tbaa !21
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph223.i
  %i.hw = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.hx = tail call double @drand48() #6
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double 2.000000e+00, double -1.000000e+00)
  %i.hz = fmul double %i.hw, %i.hy
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !76
  store double %i.hz, ptr %i.ic, align 8, !tbaa !21
  %i.id = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.ie = tail call double @drand48() #6
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double 2.000000e+00, double -1.000000e+00)
  %i.ig = fmul double %i.id, %i.if
  %i.ih = load ptr, ptr %i.hq, align 8, !tbaa !31
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 176
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !76
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store double %i.ig, ptr %i.ik, align 8, !tbaa !21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.il = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2221.i) #6 ; 2 uses
  %.not175.i = icmp eq ptr %i.il, null
  br i1 %.not175.i, label %initPositions.exit, label %.lr.ph223.i, !llvm.loop !96

bb.at:                                            ; preds = %bb.ao
  br i1 %.not174224.i, label %initPositions.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.at, %.lr.ph227.i
  %.3225.i = phi ptr [ %i.jc, %.lr.ph227.i ], [ %i.hp, %bb.at ] ; 2 uses
  %i.im = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 80), align 8, !tbaa !80
  %i.in = tail call double @drand48() #6
  %i.io = tail call double @llvm.fmuladd.f64(double %i.in, double 2.000000e+00, double -1.000000e+00)
  %i.ip = fmul double %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %.3225.i, i64 16 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !31
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 176
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !76
  store double %i.ip, ptr %i.it, align 8, !tbaa !21
  %i.iu = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 88), align 8, !tbaa !79
  %i.iv = tail call double @drand48() #6
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iv, double 2.000000e+00, double -1.000000e+00)
  %i.ix = fmul double %i.iu, %i.iw
  %i.iy = load ptr, ptr %i.iq, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 176
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !76
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store double %i.ix, ptr %i.jb, align 8, !tbaa !21
  %i.jc = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.3225.i) #6 ; 2 uses
  %.not174.i = icmp eq ptr %i.jc, null
  br i1 %.not174.i, label %initPositions.exit, label %.lr.ph227.i, !llvm.loop !97

initPositions.exit:                               ; preds = %bb.an, %bb.as, %.lr.ph227.i, %._crit_edge203.i, %bb.ap, %bb.at
  %i.jd = load i32, ptr @parms, align 8, !tbaa !30
  %.not = icmp eq i32 %i.jd, 0
  br i1 %.not, label %.preheader, label %bb.au

.preheader:                                       ; preds = %initPositions.exit
  %i.je = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph90.preheader, label %.loopexit75

.lr.ph90.preheader:                               ; preds = %.preheader
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre114 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph90

bb.au:                                            ; preds = %initPositions.exit
  %i.jg = tail call i32 @agnnodes(ptr noundef %0) #6
  %i.jh = tail call ptr @mkGrid(i32 noundef %i.jg) #6 ; 5 uses
  %i.ji = tail call i32 @agnnodes(ptr noundef %0) #6
  tail call void @adjustGrid(ptr noundef %i.jh, i32 noundef %i.ji) #6
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.au
  %.pre107 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre109 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  br label %.lr.ph

._crit_edge:                                      ; preds = %gAdjust.exit, %bb.au
  tail call void @delGrid(ptr noundef %i.jh) #6
  br label %.loopexit75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %gAdjust.exit
  %i.jl = phi i32 [ %i.nb, %gAdjust.exit ], [ %i.jj, %.lr.ph.preheader ]
  %i.jm = phi i32 [ %i.nc, %gAdjust.exit ], [ %.pre109, %.lr.ph.preheader ] ; 3 uses
  %i.jn = phi double [ %i.nd, %gAdjust.exit ], [ %.pre107, %.lr.ph.preheader ] ; 2 uses
  %.03388 = phi i32 [ %i.ne, %gAdjust.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.jo = sub nsw i32 %i.jm, %.03388
  %i.jp = sitofp i32 %i.jo to double
  %i.jq = fmul double %i.jn, %i.jp
  %i.jr = sitofp i32 %i.jm to double
  %i.js = fdiv double %i.jq, %i.jr                ; 2 uses
  %i.jt = fcmp ugt double %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.av, label %gAdjust.exit

bb.av:                                            ; preds = %.lr.ph
  tail call void @clearGrid(ptr noundef %i.jh) #6
  %i.ju = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not42.i = icmp eq ptr %i.ju, null
  br i1 %.not42.i, label %._crit_edge.i40, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.av, %.lr.ph.i38
  %.03443.i = phi ptr [ %i.km, %.lr.ph.i38 ], [ %i.ju, %bb.av ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.03443.i, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !31 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 152
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !86
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i8 0, i64 16, i1 false)
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !76
  %i.kc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 72), align 8
  %i.kd = load <2 x double>, ptr %i.kb, align 8, !tbaa !21
  %i.ke = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fdiv <2 x double> %i.kd, %i.ke          ; 2 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  %i.kh = tail call double @llvm.floor.f64(double %i.kg)
  %i.ki = fptosi double %i.kh to i32
  %i.kj = extractelement <2 x double> %i.kf, i64 1
  %i.kk = tail call double @llvm.floor.f64(double %i.kj)
  %i.kl = fptosi double %i.kk to i32
  tail call void @addGrid(ptr noundef %i.jh, i32 noundef %i.ki, i32 noundef %i.kl, ptr noundef nonnull %.03443.i) #6
  %i.km = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03443.i) #6 ; 2 uses
  %.not.i39 = icmp eq ptr %i.km, null
  br i1 %.not.i39, label %._crit_edge.i40, label %.lr.ph.i38, !llvm.loop !98

._crit_edge.i40:                                  ; preds = %.lr.ph.i38, %bb.av
  %i.kn = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3749.i = icmp eq ptr %i.kn, null
  br i1 %.not3749.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i40, %._crit_edge48.i
  %.150.i = phi ptr [ %i.na, %._crit_edge48.i ], [ %i.kn, %._crit_edge.i40 ] ; 4 uses
  %i.ko = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.150.i) #6 ; 2 uses
  %.not3844.i = icmp eq ptr %i.ko, null
  br i1 %.not3844.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph52.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.150.i, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph47.i
  %.045.i = phi ptr [ %i.ko, %.lr.ph47.i ], [ %i.mz, %bb.ba ] ; 4 uses
  %i.kq = load i32, ptr %.045.i, align 8
  %i.kr = and i32 %i.kq, 3
  %i.ks = icmp eq i32 %i.kr, 2
  %i.kt = select i1 %i.ks, i64 56, i64 -8
  %i.ku = getelementptr inbounds i8, ptr %.045.i, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !90 ; 2 uses
  %.not39.i = icmp eq ptr %.150.i, %i.kv
  br i1 %.not39.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 176
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !76
  %i.la = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 176
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !76
  %i.ld = load <2 x double>, ptr %i.kz, align 8, !tbaa !21
  %i.le = load <2 x double>, ptr %i.lc, align 8, !tbaa !21
  %i.lf = fsub <2 x double> %i.ld, %i.le          ; 4 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 0 ; 2 uses
  %foldExtExtBinop.a = fmul <2 x double> %i.lf, %i.lf
  %i.lh = extractelement <2 x double> %foldExtExtBinop.a, i64 1
  %i.li = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.lg, double %i.lh) ; 2 uses
  %i.lj = fcmp oeq double %i.li, 0.000000e+00
  br i1 %i.lj, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.lk = tail call i32 @rand() #6
  %i.ll = tail call i32 @rand() #6
  %i.lm = insertelement <2 x i32> poison, i32 %i.lk, i64 0
  %i.ln = insertelement <2 x i32> %i.lm, i32 %i.ll, i64 1
  %i.lo = srem <2 x i32> %i.ln, splat (i32 10)
  %i.lp = sub nsw <2 x i32> splat (i32 5), %i.lo
  %i.lq = sitofp <2 x i32> %i.lp to <2 x double>  ; 4 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0 ; 2 uses
  %foldExtExtBinop187 = fmul nnan <2 x double> %i.lq, %i.lq
  %i.ls = extractelement <2 x double> %foldExtExtBinop187, i64 1
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lr, double %i.ls) ; 2 uses
  %i.lu = fcmp oeq double %i.lt, 0.000000e+00
  br i1 %i.lu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !99

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ax
  %.0.lcssa.i.i = phi double [ %i.li, %bb.ax ], [ %i.lt, %.lr.ph.i.i ]
  %i.lv = phi <2 x double> [ %i.lf, %bb.ax ], [ %i.lq, %.lr.ph.i.i ] ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i) ; 3 uses
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i = icmp eq i32 %i.lw, 0
  %i.lx = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !31 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 176
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !101 ; 2 uses
end_hunk_0
begin_hunk_1_@fdp_tLayout:bb.a
  %i.pe = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 48), align 8, !tbaa !23 ; 2 uses
  %i.pf = fmul double %i.pe, %i.pe                ; 2 uses
  %i.pg = fmul nnan double %.026.lcssa.i.i, %.026.lcssa.i.i ; 2 uses
  br i1 %.not.i44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ph = fmul double %.026.lcssa.i.i, %i.pg
  %i.pi = fdiv double %i.pf, %i.ph
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pj = fdiv double %i.pf, %i.pg
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i43.i
  %.0.i.i = phi double [ %i.pj, %bb.bf ], [ %i.pi, %bb.be ], [ 0.000000e+00, %._crit_edge.i43.i ] ; 5 uses
  %i.pk = load ptr, ptr %i.ny, align 8, !tbaa !31 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 152
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !86 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !87
  %.not29.i.i = icmp eq ptr %i.po, null
  br i1 %.not29.i.i, label %bb.bh, label %.doRep.exit_crit_edge.i

.doRep.exit_crit_edge.i:                          ; preds = %bb.bg
  %.pre.i44 = load ptr, ptr %i.nz, align 8, !tbaa !31
  br label %doRep.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 336
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !89
  %.not30.i.i = icmp eq ptr %i.pq, null
  %.pre73.i = load ptr, ptr %i.nz, align 8, !tbaa !31 ; 6 uses
  br i1 %.not30.i.i, label %bb.bi, label %doRep.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.pr = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 152
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !86
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !87
  %.not31.i.i = icmp eq ptr %i.pu, null
  br i1 %.not31.i.i, label %bb.bj, label %doRep.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.pv = getelementptr inbounds nuw i8, ptr %.pre73.i, i64 336
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !89
  %.not32.i.i = icmp eq ptr %i.pw, null
  br i1 %.not32.i.i, label %bb.bk, label %doRep.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.px = fmul double %.0.i.i, 1.000000e+01
  br label %doRep.exit.i

doRep.exit.i:                                     ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.doRep.exit_crit_edge.i
  %i.py = phi ptr [ %.pre.i44, %.doRep.exit_crit_edge.i ], [ %.pre73.i, %bb.bh ], [ %.pre73.i, %bb.bi ], [ %.pre73.i, %bb.bj ], [ %.pre73.i, %bb.bk ]
  %.1.i.i = phi double [ %.0.i.i, %.doRep.exit_crit_edge.i ], [ %.0.i.i, %bb.bh ], [ %.0.i.i, %bb.bi ], [ %.0.i.i, %bb.bj ], [ %i.px, %bb.bk ]
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 152
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !86
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.qc = load <2 x double>, ptr %i.qb, align 8, !tbaa !21
  %i.qd = insertelement <2 x double> poison, double %.1.i.i, i64 0
  %i.qe = shufflevector <2 x double> %i.qd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.qe, <2 x double> %i.qc)
  store <2 x double> %i.qf, ptr %i.qb, align 8, !tbaa !21
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pm, i64 16 ; 2 uses
  %i.qh = fneg <2 x double> %i.oy
  %i.qi = load <2 x double>, ptr %i.qg, align 8, !tbaa !21
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.qe, <2 x double> %i.qi)
  store <2 x double> %i.qj, ptr %i.qg, align 8, !tbaa !21
  %i.qk = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03554.i) #6 ; 2 uses
  %.not40.i = icmp eq ptr %i.qk, null
  br i1 %.not40.i, label %._crit_edge57.i, label %bb.bc, !llvm.loop !114

._crit_edge57.i:                                  ; preds = %doRep.exit.i, %.lr.ph66.i
  %i.ql = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not4158.i = icmp eq ptr %i.ql, null
  br i1 %.not4158.i, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge57.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.164.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %.lr.ph61.i
  %.059.i = phi ptr [ %i.ql, %.lr.ph61.i ], [ %i.sw, %bb.bp ] ; 4 uses
  %i.qn = load i32, ptr %.059.i, align 8
  %i.qo = and i32 %i.qn, 3
  %i.qp = icmp eq i32 %i.qo, 2
  %i.qq = select i1 %i.qp, i64 56, i64 -8
  %i.qr = getelementptr inbounds i8, ptr %.059.i, i64 %i.qq
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !90 ; 2 uses
  %.not42.i45 = icmp eq ptr %.164.i, %i.qs
  br i1 %.not42.i45, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 176
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !76
  %i.qx = load ptr, ptr %i.qm, align 8, !tbaa !31
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 176
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !76
  %i.ra = load <2 x double>, ptr %i.qw, align 8, !tbaa !21
  %i.rb = load <2 x double>, ptr %i.qz, align 8, !tbaa !21
  %i.rc = fsub <2 x double> %i.ra, %i.rb          ; 4 uses
  %i.rd = extractelement <2 x double> %i.rc, i64 0 ; 2 uses
  %foldExtExtBinop189 = fmul <2 x double> %i.rc, %i.rc
  %i.re = extractelement <2 x double> %foldExtExtBinop189, i64 1
  %i.rf = tail call double @llvm.fmuladd.f64(double %i.rd, double %i.rd, double %i.re) ; 2 uses
  %i.rg = fcmp oeq double %i.rf, 0.000000e+00
  br i1 %i.rg, label %.lr.ph.i.i55, label %._crit_edge.i.i46

.lr.ph.i.i55:                                     ; preds = %bb.bm, %.lr.ph.i.i55
  %i.rh = tail call i32 @rand() #6
  %i.ri = tail call i32 @rand() #6
  %i.rj = insertelement <2 x i32> poison, i32 %i.rh, i64 0
  %i.rk = insertelement <2 x i32> %i.rj, i32 %i.ri, i64 1
  %i.rl = srem <2 x i32> %i.rk, splat (i32 10)
  %i.rm = sub nsw <2 x i32> splat (i32 5), %i.rl
  %i.rn = sitofp <2 x i32> %i.rm to <2 x double>  ; 4 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 0 ; 2 uses
  %foldExtExtBinop191 = fmul nnan <2 x double> %i.rn, %i.rn
  %i.rp = extractelement <2 x double> %foldExtExtBinop191, i64 1
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.ro, double %i.ro, double %i.rp) ; 2 uses
  %i.rr = fcmp oeq double %i.rq, 0.000000e+00
  br i1 %i.rr, label %.lr.ph.i.i55, label %._crit_edge.i.i46, !llvm.loop !99

._crit_edge.i.i46:                                ; preds = %.lr.ph.i.i55, %bb.bm
  %.0.lcssa.i.i49 = phi double [ %i.rf, %bb.bm ], [ %i.rq, %.lr.ph.i.i55 ]
  %i.rs = phi <2 x double> [ %i.rc, %bb.bm ], [ %i.rn, %.lr.ph.i.i55 ] ; 2 uses
  %sqrt.i.i50 = tail call double @llvm.sqrt.f64(double %.0.lcssa.i.i49) ; 3 uses
  %i.rt = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 4), align 4, !tbaa !100
  %.not.i.i51 = icmp eq i32 %i.rt, 0
  %i.ru = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !31 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 176
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !101 ; 2 uses
  br i1 %.not.i.i51, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i46
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 184
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !107
  %i.sa = fsub double %sqrt.i.i50, %i.rz
  %i.sb = fmul double %i.rx, %i.sa
  %i.sc = fdiv double %i.sb, %sqrt.i.i50
  br label %applyAttr.exit.i52

bb.bo:                                            ; preds = %._crit_edge.i.i46
  %i.sd = fmul double %sqrt.i.i50, %i.rx
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 184
  %i.sf = load double, ptr %i.se, align 8, !tbaa !107
  %i.sg = fdiv double %i.sd, %i.sf
  br label %applyAttr.exit.i52

applyAttr.exit.i52:                               ; preds = %bb.bo, %bb.bn
  %.033.i.i53 = phi double [ %i.sc, %bb.bn ], [ %i.sg, %bb.bo ]
  %i.sh = load ptr, ptr %i.qt, align 8, !tbaa !31
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 152
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !86
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %i.sl = fneg <2 x double> %i.rs
  %i.sm = load <2 x double>, ptr %i.sk, align 8, !tbaa !21
  %i.sn = insertelement <2 x double> poison, double %.033.i.i53, i64 0
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> %i.so, <2 x double> %i.sm)
  store <2 x double> %i.sp, ptr %i.sk, align 8, !tbaa !21
  %i.sq = load ptr, ptr %i.qm, align 8, !tbaa !31
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 152
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !86
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16 ; 2 uses
  %i.su = load <2 x double>, ptr %i.st, align 8, !tbaa !21
  %i.sv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.so, <2 x double> %i.su)
  store <2 x double> %i.sv, ptr %i.st, align 8, !tbaa !21
  br label %bb.bp

bb.bp:                                            ; preds = %applyAttr.exit.i52, %bb.bl
  %i.sw = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.059.i) #6 ; 2 uses
  %.not41.i = icmp eq ptr %i.sw, null
  br i1 %.not41.i, label %._crit_edge62.i, label %bb.bl, !llvm.loop !115

._crit_edge62.i:                                  ; preds = %bb.bp, %._crit_edge57.i
  %i.sx = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.164.i) #6 ; 2 uses
  %.not39.i54 = icmp eq ptr %i.sx, null
  br i1 %.not39.i54, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !116

._crit_edge67.i:                                  ; preds = %._crit_edge62.i, %._crit_edge.i43
  tail call fastcc void @updatePos(ptr noundef %0, double noundef %i.nn, ptr noundef readnone %i.e)
  %.pre111 = load double, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 56), align 8, !tbaa !26
  %.pre113 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 20), align 4, !tbaa !22
  %.pre115 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parms, i64 100), align 4, !tbaa !66
  br label %adjust.exit

adjust.exit:                                      ; preds = %.lr.ph90, %._crit_edge67.i
  %i.sy = phi i32 [ %i.ng, %.lr.ph90 ], [ %.pre115, %._crit_edge67.i ] ; 2 uses
  %i.sz = phi i32 [ %i.nh, %.lr.ph90 ], [ %.pre113, %._crit_edge67.i ]
  %i.ta = phi double [ %i.ni, %.lr.ph90 ], [ %.pre111, %._crit_edge67.i ]
  %i.tb = add nuw nsw i32 %.03289, 1              ; 2 uses
  %i.tc = icmp slt i32 %i.tb, %i.sy
  br i1 %i.tc, label %.lr.ph90, label %.loopexit75, !llvm.loop !117

.loopexit75:                                      ; preds = %adjust.exit, %.preheader, %._crit_edge
  %i.td = fcmp une double %.sroa.0147.0.i, 0.000000e+00
  %i.te = fcmp une double %.sroa.8151.0.i, 0.000000e+00
  %or.cond = select i1 %i.td, i1 true, i1 %i.te
  br i1 %or.cond, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %.loopexit75
  %i.tf = tail call ptr @agfstnode(ptr noundef %0) #6 ; 2 uses
  %.not3491 = icmp eq ptr %i.tf, null
  br i1 %.not3491, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %bb.bq
  %14 = insertelement <2 x double> poison, double %.sroa.0147.0.i, i64 0
  %15 = insertelement <2 x double> %14, double %.sroa.8151.0.i, i64 1
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %.092 = phi ptr [ %i.tk, %.lr.ph94 ], [ %i.tf, %.lr.ph94.preheader ] ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !31
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 176
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !76 ; 2 uses
  %16 = load <2 x double>, ptr %i.tj, align 8, !tbaa !21
  %17 = fadd <2 x double> %15, %16
  store <2 x double> %17, ptr %i.tj, align 8, !tbaa !21
  %i.tk = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.092) #6 ; 2 uses
  %.not34 = icmp eq ptr %i.tk, null
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
