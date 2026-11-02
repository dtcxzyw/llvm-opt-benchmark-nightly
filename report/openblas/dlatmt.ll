Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatmt?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"DLATMT\00", align 1
@c__1 = internal global i32 1, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b22 = internal global double 0.000000e+00, align 8
@c_true = internal global i32 1, align 4
@c_false = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @dlatmt_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr nofree noundef captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %13 to i64                 ; 2 uses
  %i.b = alloca i32, align 4                      ; 25 uses
  %i.c = alloca i32, align 4                      ; 24 uses
  %i.d = alloca i32, align 4                      ; 24 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 15 uses
  %i.g = alloca double, align 8                   ; 16 uses
  %i.h = alloca i32, align 4                      ; 26 uses
  %i.i = alloca i32, align 4                      ; 27 uses
  %i.j = alloca double, align 8                   ; 32 uses
  %i.k = alloca double, align 8                   ; 38 uses
  %i.l = alloca double, align 8                   ; 38 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca double, align 8                   ; 38 uses
  %i.r = alloca double, align 8                   ; 18 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 30 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 14 uses
  %i.x = alloca i32, align 4                      ; 6 uses
  %i.y = alloca i32, align 4                      ; 12 uses
  %i.z = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #8
  %i.aa = getelementptr inbounds i8, ptr %5, i64 -8 ; 5 uses
  %i.ab = load i32, ptr %14, align 4, !tbaa !56   ; 67 uses
  %narrow = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow to i64                 ; 8 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %13, i64 %i.ac ; 71 uses
  store i32 0, ptr %16, align 4, !tbaa !56
  %i.ae = load i32, ptr %0, align 4, !tbaa !56
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread1201, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %1, align 4, !tbaa !56
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.thread1201, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %.not1067 = icmp eq i32 %i.aj, 0
  br i1 %.not1067, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %.not1068 = icmp eq i32 %i.ak, 0                ; 2 uses
  %. = select i1 %.not1068, i32 -1, i32 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 2, %bb.d ], [ %., %bb.e ]
  %i.al = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ %.not1068, %bb.e ] ; 3 uses
  store i32 %.sink, ptr %i.o, align 4, !tbaa !56
  %i.am = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %.not1069 = icmp ne i32 %i.am, 0                ; 12 uses
  br i1 %.not1069, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  %.not1070 = icmp eq i32 %i.an, 0
  br i1 %.not1070, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  %.not1071 = icmp eq i32 %i.ao, 0
  br i1 %.not1071, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %.not1072 = icmp eq i32 %i.ap, 0
  br i1 %.not1072, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sink1860 = phi i32 [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %bb.i ]
  store i32 %.sink1860, ptr %i.v, align 4, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %i.aq = phi i1 [ true, %bb.i ], [ false, %.sink.split ]
  %i.ar = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.2) #8
  %.not1073 = icmp eq i32 %i.ar, 0
  br i1 %.not1073, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.as = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str) #8
  %.not1074 = icmp eq i32 %i.as, 0
  br i1 %.not1074, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.at = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.5) #8
  %.not1075 = icmp eq i32 %i.at, 0
  br i1 %.not1075, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.au = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.6) #8
  %.not1076 = icmp eq i32 %i.au, 0
  br i1 %.not1076, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.av = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.7) #8
  %.not1077 = icmp eq i32 %i.av, 0
  br i1 %.not1077, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.8) #8
  %.not1078 = icmp eq i32 %i.aw, 0
  br i1 %.not1078, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ax = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.9) #8
  %.not1079 = icmp eq i32 %i.ax, 0
  br i1 %.not1079, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call i32 @lsame_(ptr noundef %12, ptr noundef nonnull @.str.10) #8
  %.not1080 = icmp eq i32 %i.ay, 0                ; 3 uses
  %not..not1080 = xor i1 %.not1080, true          ; 3 uses
  %.1174 = select i1 %.not1080, i32 -1, i32 7     ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.az = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.q ] ; 3 uses
  %i.ba = phi i1 [ true, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ] ; 4 uses
  %i.bb = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ %not..not1080, %bb.q ]
  %brmerge = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ %.not1069, %bb.k ], [ %.not1069, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ %.not1080, %bb.q ]
  %i.bc = phi i1 [ true, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ %not..not1080, %bb.q ] ; 10 uses
  %i.bd = phi i1 [ true, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ %not..not1080, %bb.q ]
  %i.be = phi i1 [ true, %bb.p ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ true, %bb.q ]
  %i.bf = phi i1 [ true, %bb.p ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.q ]
  %or.cond13 = phi i32 [ 6, %bb.p ], [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 5, %bb.o ], [ %.1174, %bb.q ]
  %i.bg = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ]
  %i.bh = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ]
  %i.bi = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ] ; 2 uses
  %i.bj = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ true, %bb.n ], [ false, %bb.o ], [ false, %bb.q ] ; 2 uses
  %.0983 = phi i32 [ 6, %bb.p ], [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ %.1174, %bb.q ] ; 6 uses
  %or.cond7 = phi i1 [ %.not1069, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ %.not1069, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ]
  %or.cond9 = phi i1 [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ %.not1069, %bb.n ], [ %.not1069, %bb.o ], [ false, %bb.q ]
  %.not1092 = phi i1 [ false, %bb.p ], [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ true, %bb.q ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !56    ; 9 uses
  %i.bl = load i32, ptr %1, align 4, !tbaa !56    ; 6 uses
  %.1175 = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bl)
  store i32 %.1175, ptr %i.p, align 4, !tbaa !56
  %i.bm = load i32, ptr %10, align 4, !tbaa !56   ; 5 uses
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !56
  %i.bn = add nsw i32 %i.bk, -1
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bn) ; 5 uses
  store i32 %i.bo, ptr %i.y, align 4, !tbaa !56
  %i.bp = load i32, ptr %11, align 4, !tbaa !56   ; 4 uses
  %i.bq = add nsw i32 %i.bl, -1
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bq) ; 5 uses
  store i32 %i.br, ptr %i.z, align 4, !tbaa !56
  %i.bs = add nsw i32 %i.bo, %i.bl
  %i.bt = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bs) ; 2 uses
  store i32 %i.bt, ptr %i.u, align 4, !tbaa !56
  %i.bu = add nsw i32 %i.br, %i.bk                ; 2 uses
  store i32 %i.bu, ptr %i.c, align 4, !tbaa !56
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bu) ; 2 uses
  store i32 %i.bv, ptr %i.s, align 4, !tbaa !56
  %or.cond = or i1 %i.az, %i.ba
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = add nsw i32 %i.br, 1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %i.bb, label %bb.u, label %bb.v

end_hunk_0
begin_hunk_1_@dlatmt_:bb.a
  br i1 %.not10991299, label %bb.ao, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.dy = zext nneg i32 %i.dq to i64
  %i.dz = add nsw i64 %i.dy, -1                   ; 2 uses
  %xtraiter = and i64 %i.dz, 3                    ; 3 uses
  %i.ea = add nsw i32 %i.dq, -2
  %i.eb = icmp ult i32 %i.ea, 3
  br i1 %i.eb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.dz, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %i.ec = phi double [ %i.dp, %.lr.ph.preheader.new ], [ %i.fg, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !58 ; 3 uses
  %i.ef = fcmp oge double %i.ee, 0.000000e+00
  %i.eg = fneg double %i.ee
  %i.eh = select i1 %i.ef, double %i.ee, double %i.eg ; 2 uses
  %i.ei = fcmp oge double %i.ec, %i.eh
  %i.ej = select i1 %i.ei, double %i.ec, double %i.eh ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.el = load double, ptr %i.ek, align 8, !tbaa !58 ; 3 uses
  %i.em = fcmp oge double %i.el, 0.000000e+00
  %i.en = fneg double %i.el
  %i.eo = select i1 %i.em, double %i.el, double %i.en ; 2 uses
  %i.ep = fcmp oge double %i.ej, %i.eo
  %i.eq = select i1 %i.ep, double %i.ej, double %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load double, ptr %i.es, align 8, !tbaa !58 ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev ; 2 uses
  %i.ex = fcmp oge double %i.eq, %i.ew
  %i.ey = select i1 %i.ex, double %i.eq, double %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !58 ; 4 uses
  %i.fc = fcmp oge double %i.fb, 0.000000e+00
  %i.fd = fneg double %i.fb
  %i.fe = select i1 %i.fc, double %i.fb, double %i.fd ; 2 uses
  %i.ff = fcmp oge double %i.ey, %i.fe
  %i.fg = select i1 %i.ff, double %i.ey, double %i.fe ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.epil.init = phi double [ %i.dp, %.lr.ph.preheader ], [ %i.fg, %._crit_edge.unr-lcssa ]
  %lcmp.mod1959 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1959)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %i.fh = phi double [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.fo, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !58 ; 4 uses
  %i.fk = fcmp oge double %i.fj, 0.000000e+00
  %i.fl = fneg double %i.fj
  %i.fm = select i1 %i.fk, double %i.fj, double %i.fl ; 2 uses
  %i.fn = fcmp oge double %i.fh, %i.fm
  %i.fo = select i1 %i.fn, double %i.fh, double %i.fm ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa1956 = phi double [ %i.fb, %._crit_edge.unr-lcssa ], [ %i.fj, %.lr.ph.epil ]
  %.lcssa1955 = phi double [ %i.fg, %._crit_edge.unr-lcssa ], [ %i.fo, %.lr.ph.epil ] ; 2 uses
  store double %.lcssa1956, ptr %i.g, align 8, !tbaa !58
  store double %.lcssa1955, ptr %i.j, align 8, !tbaa !58
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.an
  %i.fp = phi double [ %.lcssa1955, %._crit_edge ], [ %i.dp, %bb.an ] ; 2 uses
  %i.fq = fcmp ogt double %i.fp, 0.000000e+00
  br i1 %i.fq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load double, ptr %8, align 8, !tbaa !58
  %i.fs = fdiv double %i.fr, %i.fp
  store double %i.fs, ptr %i.m, align 8, !tbaa !58
  call void @dscal_(ptr noundef nonnull %9, ptr noundef nonnull %i.m, ptr noundef nonnull %5, ptr noundef nonnull @c__1) #8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  store i32 2, ptr %16, align 4, !tbaa !56
  br label %.thread1201

bb.ar:                                            ; preds = %bb.ap, %bb.am
  %i.ft = load i32, ptr %14, align 4, !tbaa !56   ; 2 uses
  br i1 %i.bc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fu = add nsw i32 %i.ft, -1
  store i32 %i.fu, ptr %i.i, align 4, !tbaa !56
  br i1 %i.bd, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fv = load i32, ptr %i.z, align 4, !tbaa !56
  %i.fw = add nsw i32 %i.fv, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  store i32 %i.ft, ptr %i.i, align 4, !tbaa !56
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.0980 = phi i32 [ 1, %bb.at ], [ 0, %bb.au ], [ 1, %bb.as ] ; 19 uses
  %.0947 = phi i32 [ %i.fw, %bb.at ], [ 0, %bb.au ], [ 1, %bb.as ] ; 22 uses
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef nonnull @c_b22, ptr noundef nonnull @c_b22, ptr noundef %13, ptr noundef nonnull %14) #8
  %i.fx = load i32, ptr %i.y, align 4, !tbaa !56
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  %or.cond11 = select i1 %i.fy, i1 %i.ga, i1 false
  br i1 %or.cond11, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gb = load i32, ptr %i.i, align 4, !tbaa !56
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.b, align 4, !tbaa !56
  %i.gd = xor i32 %.0980, 1
  %i.ge = add i32 %.0947, %i.ab
  %i.gf = add i32 %i.ge, %i.gd
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.gg
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.gh, ptr noundef nonnull %i.b) #8
  br label %.loopexit1290

bb.ax:                                            ; preds = %bb.av
  br i1 %narrow1209, label %bb.ay, label %bb.cy

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not1069, label %bb.az, label %bb.cg

bb.az:                                            ; preds = %bb.ay
  %.0983. = select i1 %i.bc, i32 %.0983, i32 0    ; 4 uses
  %i.gi = load i32, ptr %i.i, align 4, !tbaa !56
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.b, align 4, !tbaa !56
  %i.gk = xor i32 %.0980, 1                       ; 2 uses
  %i.gl = add i32 %.0947, %i.ab
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.gn
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.go, ptr noundef nonnull %i.b) #8
  %i.gp = load i32, ptr %i.z, align 4, !tbaa !56  ; 6 uses
  store i32 %i.gp, ptr %i.b, align 4, !tbaa !56
  %.not11211463 = icmp slt i32 %i.gp, 1           ; 2 uses
  br i1 %i.dv, label %bb.bq, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not11211463, label %._crit_edge1416, label %.lr.ph1415

.lr.ph1415:                                       ; preds = %bb.ba
  %reass.add1233 = add i32 %i.gk, %i.ab           ; 2 uses
  %reass.add1236 = sub i32 %i.ab, %.0980          ; 3 uses
  %i.gq = add i32 %.0947, 1                       ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph1415, %._crit_edge1407
  %i.gr = phi i32 [ %i.gp, %.lr.ph1415 ], [ %i.jb, %._crit_edge1407 ]
  %indvars.iv1670 = phi i64 [ 1, %.lr.ph1415 ], [ %indvars.iv.next1671, %._crit_edge1407 ] ; 6 uses
  %.010011412 = phi i32 [ undef, %.lr.ph1415 ], [ %.11002.lcssa, %._crit_edge1407 ]
  %.010111411 = phi i32 [ undef, %.lr.ph1415 ], [ %.11012.lcssa, %._crit_edge1407 ]
  %i.gs = load i32, ptr %0, align 4, !tbaa !56
  %i.gt = trunc nuw nsw i64 %indvars.iv1670 to i32 ; 2 uses
  %i.gu = add nsw i32 %i.gs, %i.gt                ; 2 uses
  store i32 %i.gu, ptr %i.d, align 4, !tbaa !56
  %i.gv = load i32, ptr %1, align 4, !tbaa !56
  %.1180 = call i32 @llvm.smin.i32(i32 %i.gu, i32 %i.gv) ; 2 uses
  %i.gw = add nsw i32 %.1180, -1
  store i32 %i.gw, ptr %i.c, align 4, !tbaa !56
  %.not11471402 = icmp slt i32 %.1180, 2
  br i1 %.not11471402, label %._crit_edge1407, label %.lr.ph1406

.lr.ph1406:                                       ; preds = %bb.bb
  %i.gx = trunc i64 %indvars.iv1670 to i32
  %i.gy = sub i32 0, %i.gx
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1406, %._crit_edge1399
  %indvars.iv1666.a = phi i64 [ 1, %.lr.ph1406 ], [ %indvars.iv.next1667.a, %._crit_edge1399 ] ; 5 uses
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.gz = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.ha = fmul double %i.gz, f0x401921FB54442D18  ; 2 uses
  %17 = call double @cos(double noundef %i.ha) #8
  store double %17, ptr %i.k, align 8, !tbaa !58
  %18 = call double @sin(double noundef %i.ha) #8
  store double %18, ptr %i.l, align 8, !tbaa !58
  %i.hb = trunc nuw nsw i64 %indvars.iv1666.a to i32 ; 7 uses
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !56
  %i.hc = load i32, ptr %0, align 4, !tbaa !56
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv1666.a, %i.hd
  br i1 %i.he, label %bb.bd, label %.lr.ph1398.preheader

bb.bd:                                            ; preds = %bb.bc
  %i.hf = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  store i32 %i.hf, ptr %i.d, align 4, !tbaa !56
  %i.hg = add nuw nsw i64 %indvars.iv1666.a, %indvars.iv1670
  %i.hh = trunc nsw i64 %i.hg to i32              ; 2 uses
  store i32 %i.hh, ptr %i.e, align 4, !tbaa !56
  %i.hi = call i32 @llvm.smin.i32(i32 %i.hf, i32 %i.hh)
  %reass.sub1582 = sub i32 %i.hi, %i.hb
  %i.hj = add i32 %reass.sub1582, 1
  store i32 %i.hj, ptr %i.t, align 4, !tbaa !56
  store i32 1, ptr %i.h, align 4, !tbaa !56
  %reass.mul1234 = mul i32 %reass.add1233, %i.hb
  %i.hk = add i32 %reass.mul1234, %.0947
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.hl
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull @c_false, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.hm, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #8
  br label %.lr.ph1398.preheader

.lr.ph1398.preheader:                             ; preds = %bb.bc, %bb.bd
  store i32 %i.gy, ptr %i.d, align 4, !tbaa !56
  br label %.lr.ph1398

.lr.ph1398:                                       ; preds = %.lr.ph1398.preheader, %bb.bh
  %.09411396 = phi i32 [ %i.iv, %bb.bh ], [ %i.hb, %.lr.ph1398.preheader ] ; 3 uses
  %.09591395 = phi i32 [ %.1960, %bb.bh ], [ %i.hb, %.lr.ph1398.preheader ] ; 4 uses
  %.09741394 = phi i32 [ %.1975, %bb.bh ], [ %i.hb, %.lr.ph1398.preheader ] ; 5 uses
  %.210131393 = phi i32 [ %.31014, %bb.bh ], [ %i.hb, %.lr.ph1398.preheader ]
  %i.hn = load i32, ptr %0, align 4, !tbaa !56
  %i.ho = icmp slt i32 %.09591395, %i.hn
  br i1 %i.ho, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph1398
  %i.hp = add nuw nsw i32 %.09741394, 1
  %reass.mul1237.a = mul i32 %reass.add1236, %i.hp
  %i.hq = add i32 %i.gq, %.09591395
  %i.hr = add i32 %i.hq, %reass.mul1237.a
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.hs
  call void @dlartg_(ptr noundef %i.ht, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph1398
  store i32 1, ptr %i.e, align 4, !tbaa !56
  %i.hu = sub nsw i32 %.09411396, %i.gt           ; 3 uses
  store i32 %i.hu, ptr %i.f, align 4, !tbaa !56
  %i.hv = call i32 @llvm.smax.i32(i32 %i.hu, i32 1) ; 9 uses
  %i.hw = add nuw nsw i32 %.09591395, 2
  %i.hx = sub nsw i32 %i.hw, %i.hv
  store i32 %i.hx, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !58
  %i.hy = sext i32 %.09411396 to i64
  %i.hz = icmp slt i64 %indvars.iv1670, %i.hy
  %i.ia = zext i1 %i.hz to i32                    ; 2 uses
  store i32 %i.ia, ptr %i.w, align 4, !tbaa !56
  %i.ib = load double, ptr %i.l, align 8, !tbaa !58
  %i.ic = fneg double %i.ib
  store double %i.ic, ptr %i.g, align 8, !tbaa !58
  %reass.mul1241 = mul i32 %reass.add1236, %.09741394
  %i.id = add i32 %i.hv, %.0947
  %i.ie = add i32 %i.id, %reass.mul1241
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.if
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.w, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.ig, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.ih = load i32, ptr %i.w, align 4, !tbaa !56
  %.not1150 = icmp eq i32 %i.ih, 0
  br i1 %.not1150, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = add nuw nsw i32 %.09741394, 1
  %reass.mul1246.a = mul i32 %reass.add1236, %i.ii
  %i.ij = add i32 %i.gq, %i.hv
  %i.ik = add i32 %i.ij, %reass.mul1246.a
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.il
  call void @dlartg_(ptr noundef %i.im, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  store i32 1, ptr %i.e, align 4, !tbaa !56
  store i32 %i.hu, ptr %i.f, align 4, !tbaa !56
  %i.in = add nuw nsw i32 %.09741394, 2
  %i.io = sub nsw i32 %i.in, %i.hv
  store i32 %i.io, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  store i32 %i.ia, ptr %i.h, align 4, !tbaa !56
  %i.ip = load double, ptr %i.l, align 8, !tbaa !58
  %i.iq = fneg double %i.ip
  store double %i.iq, ptr %i.g, align 8, !tbaa !58
  %reass.mul1244 = mul i32 %i.hv, %reass.add1233
  %i.ir = add i32 %reass.mul1244, %.0947
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.is
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.it, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.31014 = phi i32 [ %i.hv, %bb.bg ], [ %.210131393, %bb.bf ] ; 2 uses
  %.1975 = phi i32 [ %i.hv, %bb.bg ], [ %.09741394, %bb.bf ]
  %.1960 = phi i32 [ %i.hv, %bb.bg ], [ %.09591395, %bb.bf ]
  %i.iu = load i32, ptr %i.d, align 4, !tbaa !56  ; 2 uses
  %i.iv = add nsw i32 %i.iu, %.09411396           ; 3 uses
  %i.iw = icmp slt i32 %i.iu, 0
  %i.ix = icmp sgt i32 %i.iv, 0
  %i.iy = icmp slt i32 %i.iv, 2
  %.in1149 = select i1 %i.iw, i1 %i.ix, i1 %i.iy
  br i1 %.in1149, label %.lr.ph1398, label %._crit_edge1399, !llvm.loop !10

._crit_edge1399:                                  ; preds = %bb.bh
  %indvars.iv.next1667.a = add nuw nsw i64 %indvars.iv1666.a, 1
  %i.iz = load i32, ptr %i.c, align 4, !tbaa !56
  %i.ja = sext i32 %i.iz to i64
  %.not1147.not = icmp slt i64 %indvars.iv1666.a, %i.ja
  br i1 %.not1147.not, label %bb.bc, label %._crit_edge1407.loopexit, !llvm.loop !11

._crit_edge1407.loopexit:                         ; preds = %._crit_edge1399
  %.pre1786 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1407

._crit_edge1407:                                  ; preds = %._crit_edge1407.loopexit, %bb.bb
  %i.jb = phi i32 [ %i.gr, %bb.bb ], [ %.pre1786, %._crit_edge1407.loopexit ] ; 2 uses
  %.11012.lcssa = phi i32 [ %.010111411, %bb.bb ], [ %.31014, %._crit_edge1407.loopexit ] ; 2 uses
  %.11002.lcssa = phi i32 [ %.010011412, %bb.bb ], [ %i.hv, %._crit_edge1407.loopexit ] ; 2 uses
  %indvars.iv.next1671 = add nuw nsw i64 %indvars.iv1670, 1
  %i.jc = sext i32 %i.jb to i64
  %.not1139.not = icmp slt i64 %indvars.iv1670, %i.jc
  br i1 %.not1139.not, label %bb.bb, label %._crit_edge1416.loopexit, !llvm.loop !12

._crit_edge1416.loopexit:                         ; preds = %._crit_edge1407
  %.pre1787 = load i32, ptr %i.z, align 4, !tbaa !56
  br label %._crit_edge1416

._crit_edge1416:                                  ; preds = %._crit_edge1416.loopexit, %bb.ba
  %i.jd = phi i32 [ %i.gp, %bb.ba ], [ %.pre1787, %._crit_edge1416.loopexit ] ; 5 uses
  %.01011.lcssa = phi i32 [ undef, %bb.ba ], [ %.11012.lcssa, %._crit_edge1416.loopexit ] ; 2 uses
  %.01001.lcssa = phi i32 [ undef, %bb.ba ], [ %.11002.lcssa, %._crit_edge1416.loopexit ] ; 2 uses
  %i.je = load i32, ptr %i.y, align 4, !tbaa !56  ; 3 uses
  store i32 %i.je, ptr %i.b, align 4, !tbaa !56
  %.not11401437 = icmp slt i32 %i.je, 1
  br i1 %.not11401437, label %.loopexit1290, label %.lr.ph1442

.lr.ph1442:                                       ; preds = %._crit_edge1416
  %i.jf = add i32 %i.jd, -1
  %reass.add1249 = sub i32 %i.ab, %.0980          ; 3 uses
  %i.jg = add i32 %.0947, 1                       ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1442, %._crit_edge1434
  %i.jh = phi i32 [ %i.je, %.lr.ph1442 ], [ %i.md, %._crit_edge1434 ]
  %.09391440 = phi i32 [ 1, %.lr.ph1442 ], [ %i.me, %._crit_edge1434 ] ; 7 uses
  %.310041439 = phi i32 [ %.01001.lcssa, %.lr.ph1442 ], [ %.41005.lcssa, %._crit_edge1434 ]
  %.410151438 = phi i32 [ %.01011.lcssa, %.lr.ph1442 ], [ %.51016.lcssa, %._crit_edge1434 ] ; 2 uses
  %i.ji = load i32, ptr %1, align 4, !tbaa !56
  %i.jj = add nsw i32 %i.ji, %.09391440           ; 2 uses
  store i32 %i.jj, ptr %i.d, align 4, !tbaa !56
  %i.jk = load i32, ptr %0, align 4, !tbaa !56
  %.1181 = call i32 @llvm.smin.i32(i32 %i.jj, i32 %i.jk)
  %i.jl = add i32 %i.jf, %.1181                   ; 2 uses
  store i32 %i.jl, ptr %i.c, align 4, !tbaa !56
  %.not11421429 = icmp slt i32 %i.jl, 1
  br i1 %.not11421429, label %._crit_edge1434, label %.lr.ph1433

.lr.ph1433:                                       ; preds = %bb.bi
  %i.jm = add i32 %.09391440, %i.jd               ; 2 uses
  %i.jn = sub i32 0, %i.jm                        ; 2 uses
  %i.jo = icmp slt i32 %i.jn, 0
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph1433, %._crit_edge1426
  %.09651431 = phi i32 [ 1, %.lr.ph1433 ], [ %i.mb, %._crit_edge1426 ] ; 8 uses
  %.510161430 = phi i32 [ %.410151438, %.lr.ph1433 ], [ %.61017.lcssa, %._crit_edge1426 ]
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.jp = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.jq = fmul double %i.jp, f0x401921FB54442D18  ; 2 uses
  %19 = call double @cos(double noundef %i.jq) #8
  store double %19, ptr %i.k, align 8, !tbaa !58
  %20 = call double @sin(double noundef %i.jq) #8
  store double %20, ptr %i.l, align 8, !tbaa !58
  %i.jr = sub nsw i32 %.09651431, %i.jd           ; 5 uses
  store i32 %i.jr, ptr %i.e, align 4, !tbaa !56
  %i.js = call i32 @llvm.smax.i32(i32 %i.jr, i32 1) ; 5 uses
  %i.jt = load i32, ptr %1, align 4, !tbaa !56
  %i.ju = icmp slt i32 %.09651431, %i.jt
  br i1 %i.ju, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jv = load i32, ptr %0, align 4, !tbaa !56    ; 2 uses
  store i32 %i.jv, ptr %i.d, align 4, !tbaa !56
  %i.jw = add nuw nsw i32 %.09651431, %.09391440  ; 2 uses
  store i32 %i.jw, ptr %i.e, align 4, !tbaa !56
  %i.jx = call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.jw)
  %reass.sub1583 = sub i32 %i.jx, %i.js
  %i.jy = add i32 %reass.sub1583, 1
  store i32 %i.jy, ptr %i.t, align 4, !tbaa !56
  %i.jz = icmp sgt i32 %.09651431, %i.jd
  %i.ka = zext i1 %i.jz to i32
  store i32 %i.ka, ptr %i.h, align 4, !tbaa !56
  %reass.mul1250 = mul i32 %reass.add1249, %.09651431
  %i.kb = add i32 %i.js, %.0947
  %i.kc = add i32 %i.kb, %reass.mul1250
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.kd
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_false, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.ke, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i32 %i.jn, ptr %i.d, align 4, !tbaa !56
  %i.kf = icmp sgt i32 %i.jr, 0
  %i.kg = icmp slt i32 %i.jr, 2
  %.in11441419 = select i1 %i.jo, i1 %i.kf, i1 %i.kg
  br i1 %.in11441419, label %.lr.ph1425, label %._crit_edge1426

.lr.ph1425:                                       ; preds = %bb.bl, %bb.bp
  %.19421423 = phi i32 [ %i.lx, %bb.bp ], [ %i.jr, %bb.bl ] ; 4 uses
  %.29611422 = phi i32 [ %.3962, %bb.bp ], [ %i.js, %bb.bl ] ; 5 uses
  %.29761421 = phi i32 [ %.3977, %bb.bp ], [ %.09651431, %bb.bl ] ; 4 uses
  %.510061420 = phi i32 [ %.61007, %bb.bp ], [ %i.js, %bb.bl ]
  %i.kh = load i32, ptr %1, align 4, !tbaa !56
  %i.ki = icmp slt i32 %.29761421, %i.kh
  br i1 %i.ki, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph1425
  %i.kj = add nuw nsw i32 %.29761421, 1
  %reass.mul1253 = mul i32 %reass.add1249, %i.kj
  %i.kk = add i32 %i.jg, %.29611422
  %i.kl = add i32 %i.kk, %reass.mul1253
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.km
  call void @dlartg_(ptr noundef %i.kn, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph1425
  store i32 1, ptr %i.e, align 4, !tbaa !56
  %i.ko = sub nsw i32 %.19421423, %.09391440      ; 3 uses
  store i32 %i.ko, ptr %i.f, align 4, !tbaa !56
  %i.kp = call i32 @llvm.smax.i32(i32 %i.ko, i32 1) ; 6 uses
  %i.kq = add nuw nsw i32 %.29761421, 2
  %i.kr = sub nsw i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !58
  %i.ks = icmp sgt i32 %.19421423, %.09391440
  %i.kt = zext i1 %i.ks to i32
  store i32 %i.kt, ptr %i.w, align 4, !tbaa !56
  %i.ku = load double, ptr %i.l, align 8, !tbaa !58
  %i.kv = fneg double %i.ku
  store double %i.kv, ptr %i.g, align 8, !tbaa !58
  %i.kw = mul nuw nsw i32 %.0980, %i.kp           ; 2 uses
  %i.kx = mul nsw i32 %i.kp, %i.ab                ; 2 uses
  %i.ky = add i32 %.29611422, %.0947
  %i.kz = add i32 %i.ky, %i.kx
  %i.la = sub i32 %i.kz, %i.kw
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.lb
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.w, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.lc, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.ld = load i32, ptr %i.w, align 4, !tbaa !56
  %.not1145 = icmp eq i32 %i.ld, 0
  br i1 %.not1145, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.le = add nuw nsw i32 %i.kp, 1
  %reass.mul1259 = mul i32 %reass.add1249, %i.le
  %i.lf = add i32 %i.jg, %.29611422
  %i.lg = add i32 %i.lf, %reass.mul1259
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.lh
  call void @dlartg_(ptr noundef %i.li, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  store i32 1, ptr %i.e, align 4, !tbaa !56
  %i.lj = sub nsw i32 %i.ko, %i.jd                ; 2 uses
  store i32 %i.lj, ptr %i.f, align 4, !tbaa !56
  %i.lk = call i32 @llvm.smax.i32(i32 %i.lj, i32 1) ; 4 uses
  %i.ll = add nuw nsw i32 %.29611422, 2
  %i.lm = sub nsw i32 %i.ll, %i.lk
  store i32 %i.lm, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.ln = icmp sgt i32 %.19421423, %i.jm
  %i.lo = zext i1 %i.ln to i32
  store i32 %i.lo, ptr %i.h, align 4, !tbaa !56
  %i.lp = load double, ptr %i.l, align 8, !tbaa !58
  %i.lq = fneg double %i.lp
  store double %i.lq, ptr %i.g, align 8, !tbaa !58
  %i.lr = add i32 %i.lk, %.0947
  %i.ls = add i32 %i.lr, %i.kx
  %i.lt = sub i32 %i.ls, %i.kw
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.lu
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.lv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.61007 = phi i32 [ %i.lk, %bb.bo ], [ %.510061420, %bb.bn ] ; 2 uses
  %.3977 = phi i32 [ %i.kp, %bb.bo ], [ %.29761421, %bb.bn ]
  %.3962 = phi i32 [ %i.lk, %bb.bo ], [ %.29611422, %bb.bn ]
  %i.lw = load i32, ptr %i.d, align 4, !tbaa !56  ; 2 uses
  %i.lx = add nsw i32 %i.lw, %.19421423           ; 3 uses
  %i.ly = icmp slt i32 %i.lw, 0
  %i.lz = icmp sgt i32 %i.lx, 0
  %i.ma = icmp slt i32 %i.lx, 2
  %.in1144 = select i1 %i.ly, i1 %i.lz, i1 %i.ma
  br i1 %.in1144, label %.lr.ph1425, label %._crit_edge1426, !llvm.loop !13

._crit_edge1426:                                  ; preds = %bb.bp, %bb.bl
  %.61017.lcssa = phi i32 [ %.510161430, %bb.bl ], [ %i.kp, %bb.bp ] ; 2 uses
  %.51006.lcssa = phi i32 [ %i.js, %bb.bl ], [ %.61007, %bb.bp ]
  %i.mb = add nuw nsw i32 %.09651431, 1
  %i.mc = load i32, ptr %i.c, align 4, !tbaa !56
  %.not1142.not = icmp slt i32 %.09651431, %i.mc
  br i1 %.not1142.not, label %bb.bj, label %._crit_edge1434.loopexit, !llvm.loop !14

._crit_edge1434.loopexit:                         ; preds = %._crit_edge1426
  %.pre1788 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1434

._crit_edge1434:                                  ; preds = %._crit_edge1434.loopexit, %bb.bi
  %i.md = phi i32 [ %i.jh, %bb.bi ], [ %.pre1788, %._crit_edge1434.loopexit ] ; 2 uses
  %.51016.lcssa = phi i32 [ %.410151438, %bb.bi ], [ %.61017.lcssa, %._crit_edge1434.loopexit ] ; 2 uses
  %.41005.lcssa = phi i32 [ %.310041439, %bb.bi ], [ %.51006.lcssa, %._crit_edge1434.loopexit ] ; 2 uses
  %i.me = add nuw nsw i32 %.09391440, 1
  %.not1140.not = icmp slt i32 %.09391440, %i.md
  br i1 %.not1140.not, label %bb.bi, label %.loopexit1290, !llvm.loop !15

bb.bq:                                            ; preds = %bb.az
  br i1 %.not11211463, label %._crit_edge1469, label %.lr.ph1468

.lr.ph1468:                                       ; preds = %bb.bq
  %reass.add1262 = sub i32 %i.ab, %.0980          ; 4 uses
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1468, %._crit_edge1460
  %i.mf = phi i32 [ %i.gp, %.lr.ph1468 ], [ %i.of, %._crit_edge1460 ]
  %.11466 = phi i32 [ 1, %.lr.ph1468 ], [ %i.og, %._crit_edge1460 ] ; 6 uses
  %.710081465 = phi i32 [ undef, %.lr.ph1468 ], [ %.81009.lcssa, %._crit_edge1460 ]
  %.710181464 = phi i32 [ undef, %.lr.ph1468 ], [ %.81019.lcssa, %._crit_edge1460 ] ; 2 uses
  %i.mg = load i32, ptr %0, align 4, !tbaa !56    ; 2 uses
  %i.mh = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.mi = call i32 @llvm.smin.i32(i32 %i.mg, i32 %i.mh) ; 3 uses
  %i.mj = add nsw i32 %i.mi, -1                   ; 3 uses
  %i.mk = add nsw i32 %i.mg, %.11466              ; 2 uses
  store i32 %i.mk, ptr %i.c, align 4, !tbaa !56
  store i32 1, ptr %i.d, align 4, !tbaa !56
  %.1182 = call i32 @llvm.smin.i32(i32 %i.mk, i32 %i.mh) ; 2 uses
  %.not1133.not1454 = icmp sgt i32 %.1182, 1
  br i1 %.not1133.not1454, label %.lr.ph1459, label %._crit_edge1460

.loopexit1291:                                    ; preds = %bb.bx, %bb.bt
  %.91020.lcssa = phi i32 [ %.810191455, %bb.bt ], [ %i.nk, %bb.bx ] ; 2 uses
  %i.ml = load i32, ptr %i.d, align 4, !tbaa !56
  %.not1133.not = icmp sgt i32 %.19661457, %i.ml
  br i1 %.not1133.not, label %.lr.ph1459, label %._crit_edge1460.loopexit, !llvm.loop !16

.lr.ph1459:                                       ; preds = %bb.br, %.loopexit1291
  %.1966.in1456 = phi i32 [ %.19661457, %.loopexit1291 ], [ %.1182, %bb.br ] ; 7 uses
  %.810191455 = phi i32 [ %.91020.lcssa, %.loopexit1291 ], [ %.710181464, %bb.br ]
  %.19661457 = add nsw i32 %.1966.in1456, -1      ; 5 uses
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.mm = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.mn = fmul double %i.mm, f0x401921FB54442D18  ; 2 uses
  %21 = call double @cos(double noundef %i.mn) #8
  store double %21, ptr %i.k, align 8, !tbaa !58
  %22 = call double @sin(double noundef %i.mn) #8
  store double %22, ptr %i.l, align 8, !tbaa !58
  %i.mo = sub i32 %.1966.in1456, %.11466
  %i.mp = call i32 @llvm.smax.i32(i32 %i.mo, i32 1) ; 3 uses
  %i.mq = icmp sgt i32 %.1966.in1456, 1
  br i1 %i.mq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph1459
  %i.mr = load i32, ptr %0, align 4, !tbaa !56    ; 3 uses
  store i32 %i.mr, ptr %i.c, align 4, !tbaa !56
  store i32 %.1966.in1456, ptr %i.e, align 4, !tbaa !56
  %i.ms = call i32 @llvm.smin.i32(i32 %i.mr, i32 %.1966.in1456)
  %reass.sub1584 = sub i32 %i.ms, %i.mp
  %i.mt = add i32 %reass.sub1584, 1
  store i32 %i.mt, ptr %i.t, align 4, !tbaa !56
  %i.mu = icmp sle i32 %.1966.in1456, %i.mr
  %i.mv = zext i1 %i.mu to i32
  store i32 %i.mv, ptr %i.h, align 4, !tbaa !56
  %reass.mul1263 = mul i32 %reass.add1262, %.19661457
  %i.mw = add i32 %i.mp, %.0947
  %i.mx = add i32 %i.mw, %reass.mul1263
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.my
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.mz, ptr noundef nonnull %i.i, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q) #8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph1459
  store i32 %i.mj, ptr %i.c, align 4, !tbaa !56
  store i32 %.11466, ptr %i.e, align 4, !tbaa !56
  %.not1585 = icmp sgt i32 %.1966.in1456, %i.mi
  br i1 %.not1585, label %.loopexit1291, label %.lr.ph1449

.lr.ph1449:                                       ; preds = %bb.bt, %bb.bx
  %.21447 = phi i32 [ %i.oa, %bb.bx ], [ %.19661457, %bb.bt ] ; 5 uses
  %.49781446 = phi i32 [ %.5979, %bb.bx ], [ %.19661457, %bb.bt ] ; 3 uses
  %i.na = icmp sgt i32 %.49781446, 0              ; 2 uses
  %i.nb = zext i1 %i.na to i32
  store i32 %i.nb, ptr %i.x, align 4, !tbaa !56
  br i1 %i.na, label %bb.bu, label %.lr.ph1449._crit_edge

.lr.ph1449._crit_edge:                            ; preds = %.lr.ph1449
  %.pre1794 = add i32 %.21447, %.0947
  br label %bb.bv

bb.bu:                                            ; preds = %.lr.ph1449
  %reass.mul1266 = mul i32 %reass.add1262, %.49781446
  %i.nc = add i32 %.21447, %.0947                 ; 2 uses
  %i.nd = add i32 %i.nc, %reass.mul1266
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ne
  call void @dlartg_(ptr noundef %i.nf, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1449._crit_edge, %bb.bu
  %.pre-phi1795 = phi i32 [ %.pre1794, %.lr.ph1449._crit_edge ], [ %i.nc, %bb.bu ] ; 2 uses
  %i.ng = call i32 @llvm.smax.i32(i32 %.49781446, i32 1) ; 3 uses
  %i.nh = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.ni = add nsw i32 %i.nh, -1
  %i.nj = add nsw i32 %.21447, %.11466            ; 4 uses
  %i.nk = call i32 @llvm.smin.i32(i32 %i.ni, i32 %i.nj) ; 4 uses
  %i.nl = icmp slt i32 %i.nj, %i.nh
  %i.nm = zext i1 %i.nl to i32
  store i32 %i.nm, ptr %i.w, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !58
  %reass.sub1586 = sub i32 %i.nk, %i.ng
  %i.nn = add i32 %reass.sub1586, 2
  store i32 %i.nn, ptr %i.f, align 4, !tbaa !56
  %reass.mul1270 = mul i32 %reass.add1262, %i.ng
  %i.no = add i32 %.pre-phi1795, %reass.mul1270
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.np
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.nq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.nr = load i32, ptr %i.w, align 4, !tbaa !56
  %.not1137.a = icmp eq i32 %i.nr, 0
  br i1 %.not1137.a, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %reass.mul1273 = mul i32 %reass.add1262, %i.nk
  %i.ns = add i32 %.pre-phi1795, %reass.mul1273
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.nt ; 2 uses
  call void @dlartg_(ptr noundef %i.nu, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  store i32 %i.mj, ptr %i.f, align 4, !tbaa !56
  %i.nv = call i32 @llvm.smin.i32(i32 %i.mj, i32 %i.nj)
  %reass.sub1587 = sub i32 %i.nv, %.21447
  %i.nw = add i32 %reass.sub1587, 2
  store i32 %i.nw, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.nx = icmp slt i32 %i.nj, %i.mi
  %i.ny = zext i1 %i.nx to i32
  store i32 %i.ny, ptr %i.h, align 4, !tbaa !56
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.nu, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.5979 = phi i32 [ %i.nk, %bb.bw ], [ %i.ng, %bb.bv ]
  %i.nz = load i32, ptr %i.e, align 4, !tbaa !56  ; 2 uses
  %i.oa = add nsw i32 %i.nz, %.21447              ; 3 uses
  %i.ob = icmp slt i32 %i.nz, 0
  %i.oc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.od = icmp sge i32 %i.oa, %i.oc
  %i.oe = icmp sle i32 %i.oa, %i.oc
  %.in1135.a = select i1 %i.ob, i1 %i.od, i1 %i.oe
  br i1 %.in1135.a, label %.lr.ph1449, label %.loopexit1291, !llvm.loop !17

._crit_edge1460.loopexit:                         ; preds = %.loopexit1291
  %.pre1789 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1460

._crit_edge1460:                                  ; preds = %._crit_edge1460.loopexit, %bb.br
  %i.of = phi i32 [ %i.mf, %bb.br ], [ %.pre1789, %._crit_edge1460.loopexit ] ; 2 uses
  %.81019.lcssa = phi i32 [ %.710181464, %bb.br ], [ %.91020.lcssa, %._crit_edge1460.loopexit ] ; 2 uses
  %.81009.lcssa = phi i32 [ %.710081465, %bb.br ], [ %i.mp, %._crit_edge1460.loopexit ] ; 2 uses
  %i.og = add nuw nsw i32 %.11466, 1
  %.not1121.not = icmp slt i32 %.11466, %i.of
  br i1 %.not1121.not, label %bb.br, label %._crit_edge1469.loopexit, !llvm.loop !18

._crit_edge1469.loopexit:                         ; preds = %._crit_edge1460
  %.pre1790 = load i32, ptr %i.z, align 4, !tbaa !56
  br label %._crit_edge1469

._crit_edge1469:                                  ; preds = %._crit_edge1469.loopexit, %bb.bq
  %i.oh = phi i32 [ %i.gp, %bb.bq ], [ %.pre1790, %._crit_edge1469.loopexit ] ; 7 uses
  %.71018.lcssa = phi i32 [ undef, %bb.bq ], [ %.81019.lcssa, %._crit_edge1469.loopexit ] ; 2 uses
  %.71008.lcssa = phi i32 [ undef, %bb.bq ], [ %.81009.lcssa, %._crit_edge1469.loopexit ] ; 2 uses
  %i.oi = load i32, ptr %i.y, align 4, !tbaa !56  ; 3 uses
  store i32 %i.oi, ptr %i.b, align 4, !tbaa !56
  %.not11221490 = icmp slt i32 %i.oi, 1
  br i1 %.not11221490, label %.loopexit1290, label %.lr.ph1495

.lr.ph1495:                                       ; preds = %._crit_edge1469
  %i.oj = sub nsw i32 1, %i.oh                    ; 2 uses
  %reass.add1276 = sub i32 %i.ab, %.0980          ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph1495, %._crit_edge1487
  %i.ok = phi i32 [ %i.oi, %.lr.ph1495 ], [ %i.qx, %._crit_edge1487 ]
  %.19401493 = phi i32 [ 1, %.lr.ph1495 ], [ %i.qy, %._crit_edge1487 ] ; 6 uses
  %.910101492 = phi i32 [ %.71008.lcssa, %.lr.ph1495 ], [ %.10.lcssa, %._crit_edge1487 ] ; 2 uses
  %.1010211491 = phi i32 [ %.71018.lcssa, %.lr.ph1495 ], [ %.111022.lcssa, %._crit_edge1487 ]
  %i.ol = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.om = load i32, ptr %0, align 4, !tbaa !56    ; 2 uses
  %i.on = add nsw i32 %i.om, %i.oh
  %i.oo = call i32 @llvm.smin.i32(i32 %i.ol, i32 %i.on) ; 3 uses
  %i.op = add nsw i32 %i.oo, -1                   ; 4 uses
  %i.oq = add nsw i32 %i.ol, %.19401493           ; 2 uses
  store i32 %i.oq, ptr %i.d, align 4, !tbaa !56
  store i32 %i.oj, ptr %i.e, align 4, !tbaa !56
  %.1183 = call i32 @llvm.smin.i32(i32 %i.oq, i32 %i.om) ; 2 uses
  %.not1125.not1481 = icmp sgt i32 %.1183, %i.oj
  br i1 %.not1125.not1481, label %.lr.ph1486, label %._crit_edge1487

.lr.ph1486:                                       ; preds = %bb.by
  %i.or = add nsw i32 %.19401493, %i.oh           ; 2 uses
  %i.os = icmp slt i32 %i.or, 0
  br label %bb.bz

.loopexit1289:                                    ; preds = %bb.cf, %bb.cb
  %.11.lcssa = phi i32 [ %.101482, %bb.cb ], [ %i.pw, %bb.cf ] ; 2 uses
  %i.ot = load i32, ptr %i.e, align 4, !tbaa !56
  %.not1125.not = icmp sgt i32 %.19541484, %i.ot
  br i1 %.not1125.not, label %bb.bz, label %._crit_edge1487.loopexit, !llvm.loop !19

bb.bz:                                            ; preds = %.lr.ph1486, %.loopexit1289
  %.1954.in1483 = phi i32 [ %.1183, %.lr.ph1486 ], [ %.19541484, %.loopexit1289 ] ; 4 uses
  %.101482 = phi i32 [ %.910101492, %.lr.ph1486 ], [ %.11.lcssa, %.loopexit1289 ]
  %.19541484 = add nsw i32 %.1954.in1483, -1      ; 6 uses
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.ou = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.ov = fmul double %i.ou, f0x401921FB54442D18  ; 2 uses
  %23 = call double @cos(double noundef %i.ov) #8
  store double %23, ptr %i.k, align 8, !tbaa !58
  %24 = call double @sin(double noundef %i.ov) #8
  store double %24, ptr %i.l, align 8, !tbaa !58
  %i.ow = sub i32 %.1954.in1483, %.19401493
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ow, i32 1) ; 3 uses
  %i.oy = icmp sgt i32 %.1954.in1483, 1
  br i1 %i.oy, label %bb.ca, label %._crit_edge1792

._crit_edge1792:                                  ; preds = %bb.bz
  %.pre1793 = add nsw i32 %.19541484, %i.oh
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.oz = load i32, ptr %1, align 4, !tbaa !56    ; 3 uses
  store i32 %i.oz, ptr %i.d, align 4, !tbaa !56
  %i.pa = add nsw i32 %.19541484, %i.oh           ; 2 uses
  %i.pb = add i32 %.1954.in1483, %i.oh            ; 2 uses
  store i32 %i.pb, ptr %i.c, align 4, !tbaa !56
  %i.pc = call i32 @llvm.smin.i32(i32 %i.oz, i32 %i.pb)
  %reass.sub1588 = sub i32 %i.pc, %i.ox
  %i.pd = add i32 %reass.sub1588, 1
  store i32 %i.pd, ptr %i.t, align 4, !tbaa !56
  %i.pe = icmp slt i32 %i.pa, %i.oz
  %i.pf = zext i1 %i.pe to i32
  store i32 %i.pf, ptr %i.h, align 4, !tbaa !56
  %reass.mul1277 = mul i32 %reass.add1276, %i.ox
  %i.pg = add i32 %.19541484, %.0947
  %i.ph = add i32 %i.pg, %reass.mul1277
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.pi
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.pj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q) #8
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1792, %bb.ca
  %.pre-phi = phi i32 [ %.pre1793, %._crit_edge1792 ], [ %i.pa, %bb.ca ] ; 3 uses
  store i32 %i.op, ptr %i.d, align 4, !tbaa !56
  store i32 %i.or, ptr %i.c, align 4, !tbaa !56
  %i.pk = icmp sge i32 %.pre-phi, %i.op
  %i.pl = icmp slt i32 %.pre-phi, %i.oo
  %.in11271472 = select i1 %i.os, i1 %i.pk, i1 %i.pl
  br i1 %.in11271472, label %.lr.ph1476, label %.loopexit1289

.lr.ph1476:                                       ; preds = %bb.cb, %bb.cf
  %.31474 = phi i32 [ %i.qs, %bb.cf ], [ %.pre-phi, %bb.cb ] ; 6 uses
  %.49631473 = phi i32 [ %.5964, %bb.cf ], [ %.19541484, %bb.cb ] ; 3 uses
  %i.pm = icmp sgt i32 %.49631473, 0              ; 2 uses
  %i.pn = zext i1 %i.pm to i32
  store i32 %i.pn, ptr %i.x, align 4, !tbaa !56
  br i1 %i.pm, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph1476
  %reass.mul1280 = mul i32 %reass.add1276, %.31474
  %i.po = add i32 %.49631473, %.0947
  %i.pp = add i32 %i.po, %reass.mul1280
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.pq
  call void @dlartg_(ptr noundef %i.pr, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph1476
  %i.ps = call i32 @llvm.smax.i32(i32 %.49631473, i32 1) ; 3 uses
  %i.pt = load i32, ptr %0, align 4, !tbaa !56    ; 2 uses
  %i.pu = add nsw i32 %i.pt, -1
  %i.pv = add nsw i32 %.31474, %.19401493         ; 3 uses
  %i.pw = call i32 @llvm.smin.i32(i32 %i.pu, i32 %i.pv) ; 4 uses
  %i.px = icmp slt i32 %i.pv, %i.pt
  %i.py = zext i1 %i.px to i32
  store i32 %i.py, ptr %i.w, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !58
  %reass.sub1589 = sub i32 %i.pw, %i.ps
  %i.pz = add i32 %reass.sub1589, 2
  store i32 %i.pz, ptr %i.f, align 4, !tbaa !56
  %i.qa = mul nuw nsw i32 %.0980, %.31474         ; 2 uses
  %i.qb = mul nsw i32 %.31474, %i.ab
  %i.qc = add i32 %i.qb, %.0947                   ; 2 uses
  %i.qd = add i32 %i.qc, %i.ps
  %i.qe = sub i32 %i.qd, %i.qa
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.qf
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.qg, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.qh = load i32, ptr %i.w, align 4, !tbaa !56
  %.not1129 = icmp eq i32 %i.qh, 0
  br i1 %.not1129, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qi = sub i32 %i.qc, %i.qa
  %i.qj = add i32 %i.qi, %i.pw
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.qk ; 2 uses
  call void @dlartg_(ptr noundef %i.ql, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  store i32 %i.op, ptr %i.f, align 4, !tbaa !56
  %i.qm = add nsw i32 %i.pv, %i.oh                ; 2 uses
  %i.qn = call i32 @llvm.smin.i32(i32 %i.op, i32 %i.qm)
  %reass.sub1590 = sub i32 %i.qn, %.31474
  %i.qo = add i32 %reass.sub1590, 2
  store i32 %i.qo, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.qp = icmp slt i32 %i.qm, %i.oo
  %i.qq = zext i1 %i.qp to i32
  store i32 %i.qq, ptr %i.h, align 4, !tbaa !56
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.ql, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.5964 = phi i32 [ %i.pw, %bb.ce ], [ %i.ps, %bb.cd ]
  %i.qr = load i32, ptr %i.c, align 4, !tbaa !56  ; 2 uses
  %i.qs = add nsw i32 %i.qr, %.31474              ; 3 uses
  %i.qt = icmp slt i32 %i.qr, 0
  %i.qu = load i32, ptr %i.d, align 4             ; 2 uses
  %i.qv = icmp sge i32 %i.qs, %i.qu
  %i.qw = icmp sle i32 %i.qs, %i.qu
  %.in1127 = select i1 %i.qt, i1 %i.qv, i1 %i.qw
  br i1 %.in1127, label %.lr.ph1476, label %.loopexit1289, !llvm.loop !20

._crit_edge1487.loopexit:                         ; preds = %.loopexit1289
  %.pre1791 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1487

._crit_edge1487:                                  ; preds = %._crit_edge1487.loopexit, %bb.by
  %i.qx = phi i32 [ %i.ok, %bb.by ], [ %.pre1791, %._crit_edge1487.loopexit ] ; 2 uses
  %.111022.lcssa = phi i32 [ %.1010211491, %bb.by ], [ %i.ox, %._crit_edge1487.loopexit ] ; 2 uses
  %.10.lcssa = phi i32 [ %.910101492, %bb.by ], [ %.11.lcssa, %._crit_edge1487.loopexit ] ; 2 uses
  %i.qy = add nuw nsw i32 %.19401493, 1
  %.not1122.not = icmp slt i32 %.19401493, %i.qx
  br i1 %.not1122.not, label %bb.by, label %.loopexit1290, !llvm.loop !21

bb.cg:                                            ; preds = %bb.ay
  %i.qz = load i32, ptr %i.i, align 4, !tbaa !56
  %i.ra = add nsw i32 %i.qz, 1
  store i32 %i.ra, ptr %i.b, align 4, !tbaa !56
  %i.rb = xor i32 %.0980, 1                       ; 5 uses
  %i.rc = add i32 %i.rb, %i.ab                    ; 2 uses
  br i1 %i.dv, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rd = add nsw i32 %i.fz, 1
  %.0981 = select i1 %i.bc, i32 %i.rd, i32 %.0947 ; 7 uses
  %.1950 = select i1 %i.bc, i32 6, i32 1          ; 2 uses
  %i.re = add i32 %i.rc, %.0981
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.rf
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.rg, ptr noundef nonnull %i.b) #8
  %i.rh = load i32, ptr %i.z, align 4, !tbaa !56  ; 3 uses
  store i32 %i.rh, ptr %i.b, align 4, !tbaa !56
  %.not11091318 = icmp slt i32 %i.rh, 1
  br i1 %.not11091318, label %._crit_edge1324, label %.lr.ph1323

.lr.ph1323:                                       ; preds = %bb.ch
  %reass.add = sub i32 %i.ab, %.0980              ; 3 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1323, %._crit_edge1315
  %i.ri = phi i32 [ %i.rh, %.lr.ph1323 ], [ %i.ul, %._crit_edge1315 ]
  %indvars.iv1619 = phi i64 [ 1, %.lr.ph1323 ], [ %indvars.iv.next1620, %._crit_edge1315 ] ; 8 uses
  %.121320 = phi i32 [ undef, %.lr.ph1323 ], [ %.13.lcssa, %._crit_edge1315 ]
  %.1210231319 = phi i32 [ undef, %.lr.ph1323 ], [ %.131024.lcssa, %._crit_edge1315 ]
  %i.rj = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.rk = add nsw i32 %i.rj, -1
  store i32 %i.rk, ptr %i.e, align 4, !tbaa !56
  %.not11151311 = icmp slt i32 %i.rj, 2
  br i1 %.not11151311, label %._crit_edge1315, label %.lr.ph1314

.lr.ph1314:                                       ; preds = %bb.ci
  %i.rl = trunc i64 %indvars.iv1619 to i32
  %i.rm = add i32 %i.rl, 2                        ; 5 uses
  %i.rn = trunc nuw nsw i64 %indvars.iv1619 to i32 ; 3 uses
  %i.ro = trunc i64 %indvars.iv1619 to i32
  %i.rp = sub i32 0, %i.ro
  br label %bb.cj

.loopexit1297:                                    ; preds = %.lr.ph1307, %bb.cj
  %.141025.lcssa = phi i32 [ %i.rx, %bb.cj ], [ %.41305, %.lr.ph1307 ]
  %.14.lcssa = phi i32 [ %i.ru, %bb.cj ], [ %i.tu, %.lr.ph1307 ]
  %i.rq = load i32, ptr %i.e, align 4, !tbaa !56
  %i.rr = sext i32 %i.rq to i64
  %.not1115.not = icmp slt i64 %indvars.iv1616, %i.rr
  br i1 %.not1115.not, label %bb.cj, label %._crit_edge1315.loopexit, !llvm.loop !22

bb.cj:                                            ; preds = %.lr.ph1314, %.loopexit1297
  %indvars.iv1616 = phi i64 [ 1, %.lr.ph1314 ], [ %indvars.iv.next1617, %.loopexit1297 ] ; 8 uses
  %i.rs = sub nsw i64 %indvars.iv1616, %indvars.iv1619 ; 2 uses
  %i.rt = trunc nsw i64 %i.rs to i32              ; 2 uses
  %i.ru = call i32 @llvm.smax.i32(i32 %i.rt, i32 1) ; 2 uses
  %indvars.iv.next1617 = add nuw nsw i64 %indvars.iv1616, 1 ; 2 uses
  %i.rv = trunc nuw nsw i64 %indvars.iv.next1617 to i32 ; 3 uses
  store i32 %i.rv, ptr %i.c, align 4, !tbaa !56
  store i32 %i.rm, ptr %i.d, align 4, !tbaa !56
  %i.rw = call i32 @llvm.umin.i32(i32 %i.rv, i32 %i.rm)
  store i32 %i.rw, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %reass.mul = mul i32 %reass.add, %i.rv
  %i.rx = trunc nuw nsw i64 %indvars.iv1616 to i32 ; 4 uses
  %i.ry = add i32 %.0981, %i.rx
  %i.rz = add i32 %i.ry, %reass.mul
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.sa
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !58
  store double %i.sc, ptr %i.j, align 8, !tbaa !58
  %i.sd = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.se = fmul double %i.sd, f0x401921FB54442D18  ; 2 uses
  %25 = call double @cos(double noundef %i.se) #8
  store double %25, ptr %i.k, align 8, !tbaa !58
  %26 = call double @sin(double noundef %i.se) #8
  store double %26, ptr %i.l, align 8, !tbaa !58
  %i.sf = icmp samesign ugt i64 %indvars.iv1616, %indvars.iv1619
  %i.sg = zext i1 %i.sf to i32
  store i32 %i.sg, ptr %i.h, align 4, !tbaa !56
  %i.sh = trunc i64 %indvars.iv1616 to i32
  %i.si = mul i32 %i.ab, %i.sh
  %i.sj = add i32 %i.si, %.0981                   ; 2 uses
  %i.sk = trunc i64 %indvars.iv1616 to i32
  %i.sl = mul nuw i32 %.0980, %i.sk
  %i.sm = sub i32 %i.sj, %i.sl
  %i.sn = add i32 %i.sm, %i.ru
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.so
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.sp, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  store i32 %i.rn, ptr %i.d, align 4, !tbaa !56
  %i.sq = load i32, ptr %1, align 4, !tbaa !56
  %i.sr = sub nsw i32 %i.sq, %i.rx                ; 2 uses
  store i32 %i.sr, ptr %i.f, align 4, !tbaa !56
  %i.ss = call i32 @llvm.smin.i32(i32 %i.rn, i32 %i.sr)
  %i.st = add nsw i32 %i.ss, 1
  store i32 %i.st, ptr %i.c, align 4, !tbaa !56
  %i.su = trunc i64 %indvars.iv1616 to i32
  %i.sv = mul nuw i32 %i.rb, %i.su
  %i.sw = add i32 %i.sj, %i.sv
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.sx
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_false, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.sy, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.r) #8
  store i32 %i.rp, ptr %i.c, align 4, !tbaa !56
  %i.sz = icmp sgt i64 %i.rs, 0
  br i1 %i.sz, label %.lr.ph1307, label %.loopexit1297

.lr.ph1307:                                       ; preds = %bb.cj, %.lr.ph1307
  %.41305 = phi i32 [ %i.uh, %.lr.ph1307 ], [ %i.rt, %bb.cj ] ; 10 uses
  %.1410251304 = phi i32 [ %.41305, %.lr.ph1307 ], [ %i.rx, %bb.cj ]
  %i.ta = add nsw i32 %.41305, 1                  ; 4 uses
  %i.tb = add nsw i32 %.1410251304, 1
  %reass.mul1217 = mul i32 %reass.add, %i.tb
  %i.tc = add i32 %i.ta, %.0981
  %i.td = add i32 %i.tc, %reass.mul1217
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.te
  call void @dlartg_(ptr noundef %i.tf, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  %reass.mul1219 = mul i32 %reass.add, %i.ta
  %i.tg = add i32 %.41305, %.0981
  %i.th = add i32 %i.tg, %reass.mul1219
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ti
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !58
  store double %i.tk, ptr %i.j, align 8, !tbaa !58
  store i32 %i.rm, ptr %i.d, align 4, !tbaa !56
  %i.tl = load double, ptr %i.l, align 8, !tbaa !58
  %i.tm = fneg double %i.tl
  store double %i.tm, ptr %i.g, align 8, !tbaa !58
  %i.tn = mul nuw nsw i32 %.41305, %i.rb
  %i.to = mul nsw i32 %.41305, %i.ab
  %i.tp = add i32 %i.to, %.0981                   ; 2 uses
  %i.tq = add i32 %i.tp, %i.tn
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.tr
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.ts, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.tt = sub nsw i32 %.41305, %i.rn
  %i.tu = call i32 @llvm.smax.i32(i32 %i.tt, i32 1) ; 2 uses
  store i32 %i.ta, ptr %i.d, align 4, !tbaa !56
  store i32 %i.rm, ptr %i.f, align 4, !tbaa !56
  %i.tv = call i32 @llvm.smin.i32(i32 %i.ta, i32 %i.rm)
  store i32 %i.tv, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.tw = sext i32 %.41305 to i64
  %i.tx = icmp slt i64 %indvars.iv1619, %i.tw
  %i.ty = zext i1 %i.tx to i32
  store i32 %i.ty, ptr %i.h, align 4, !tbaa !56
  %i.tz = load double, ptr %i.l, align 8, !tbaa !58
  %i.ua = fneg double %i.tz
  store double %i.ua, ptr %i.g, align 8, !tbaa !58
  %i.ub = mul nuw nsw i32 %.0980, %.41305
  %i.uc = sub i32 %i.tp, %i.ub
  %i.ud = add i32 %i.uc, %i.tu
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ue
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.uf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.ug = load i32, ptr %i.c, align 4, !tbaa !56  ; 2 uses
  %i.uh = add nsw i32 %i.ug, %.41305              ; 3 uses
  %i.ui = icmp slt i32 %i.ug, 0
  %i.uj = icmp sgt i32 %i.uh, 0
  %i.uk = icmp slt i32 %i.uh, 2
  %.in1118 = select i1 %i.ui, i1 %i.uj, i1 %i.uk
  br i1 %.in1118, label %.lr.ph1307, label %.loopexit1297, !llvm.loop !23

._crit_edge1315.loopexit:                         ; preds = %.loopexit1297
  %.pre = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1315

._crit_edge1315:                                  ; preds = %._crit_edge1315.loopexit, %bb.ci
  %i.ul = phi i32 [ %i.ri, %bb.ci ], [ %.pre, %._crit_edge1315.loopexit ] ; 2 uses
  %.131024.lcssa = phi i32 [ %.1210231319, %bb.ci ], [ %.141025.lcssa, %._crit_edge1315.loopexit ] ; 2 uses
  %.13.lcssa = phi i32 [ %.121320, %bb.ci ], [ %.14.lcssa, %._crit_edge1315.loopexit ] ; 2 uses
  %indvars.iv.next1620 = add nuw nsw i64 %indvars.iv1619, 1
  %i.um = sext i32 %i.ul to i64
  %.not1109.not = icmp slt i64 %indvars.iv1619, %i.um
  br i1 %.not1109.not, label %bb.ci, label %._crit_edge1324, !llvm.loop !24

._crit_edge1324:                                  ; preds = %._crit_edge1315, %bb.ch
  %.121023.lcssa = phi i32 [ undef, %bb.ch ], [ %.131024.lcssa, %._crit_edge1315 ] ; 2 uses
  %.12.lcssa = phi i32 [ undef, %bb.ch ], [ %.13.lcssa, %._crit_edge1315 ] ; 2 uses
  %i.un = icmp ne i32 %.0983, %.1950
  %or.cond15 = and i1 %i.bf, %i.un
  br i1 %or.cond15, label %bb.ck, label %.loopexit1290

bb.ck:                                            ; preds = %._crit_edge1324
  %i.uo = load i32, ptr %1, align 4, !tbaa !56    ; 8 uses
  %.not11101332 = icmp slt i32 %i.uo, 1
  br i1 %.not11101332, label %._crit_edge1336, label %.lr.ph1335

.lr.ph1335:                                       ; preds = %bb.ck
  %i.up = load i32, ptr %i.z, align 4, !tbaa !56  ; 2 uses
  %reass.add1221 = sub i32 %i.ab, %.0980          ; 5 uses
  %i.uq = add nuw i32 %i.uo, 1
  %wide.trip.count1628 = zext i32 %i.uq to i64
  %i.ur = zext nneg i32 %i.uo to i64
  %i.us = add nsw i32 %i.up, 1
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph1335, %._crit_edge1331
  %indvar1963 = phi i64 [ 0, %.lr.ph1335 ], [ %indvar.next1964, %._crit_edge1331 ] ; 3 uses
  %indvar1960 = phi i32 [ 0, %.lr.ph1335 ], [ %indvar.next1961, %._crit_edge1331 ] ; 2 uses
  %indvars.iv1622 = phi i64 [ 1, %.lr.ph1335 ], [ %indvars.iv.next1623, %._crit_edge1331 ] ; 4 uses
  %i.ut = add i32 %i.us, %indvar1960
  %i.uu = sext i32 %i.ut to i64
  %smin1962 = call i64 @llvm.smin.i64(i64 %i.ur, i64 %i.uu) ; 2 uses
  %indvars1627 = trunc i64 %indvars.iv1622 to i32 ; 5 uses
  %i.uv = mul nuw nsw i32 %.0980, %indvars1627
  %i.uw = sub nsw i32 %.0947, %i.uv               ; 2 uses
  %i.ux = add nsw i32 %i.up, %indvars1627
  %i.uy = call i32 @llvm.smin.i32(i32 %i.uo, i32 %i.ux) ; 2 uses
  %.not11141327 = icmp slt i32 %i.uy, %indvars1627
  br i1 %.not11141327, label %._crit_edge1331, label %.lr.ph1330

.lr.ph1330:                                       ; preds = %bb.cl
  %i.uz = sub i64 %smin1962, %indvar1963
  %i.va = add i32 %.0981, %indvars1627            ; 5 uses
  %i.vb = mul nsw i32 %i.ab, %indvars1627
  %i.vc = add i32 %i.uw, %i.vb                    ; 5 uses
  %i.vd = sext i32 %i.uy to i64
  %xtraiter1965 = and i64 %i.uz, 3                ; 2 uses
  %lcmp.mod1966.not = icmp eq i64 %xtraiter1965, 0
  br i1 %lcmp.mod1966.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1330, %.prol.preheader
  %indvars.iv1624.prol = phi i64 [ %indvars.iv.next1625.prol, %.prol.preheader ], [ %indvars.iv1622, %.lr.ph1330 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1330 ]
  %i.ve = trunc nuw nsw i64 %indvars.iv1624.prol to i32 ; 2 uses
  %reass.mul1222.prol = mul i32 %reass.add1221, %i.ve
  %i.vf = add i32 %i.va, %reass.mul1222.prol
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vg
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !58
  %i.vj = add i32 %i.vc, %i.ve
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vk
  store double %i.vi, ptr %i.vl, align 8, !tbaa !58
  %indvars.iv.next1625.prol = add nuw nsw i64 %indvars.iv1624.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1965
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1330
  %indvars.iv1624.unr = phi i64 [ %indvars.iv1622, %.lr.ph1330 ], [ %indvars.iv.next1625.prol, %.prol.preheader ]
  %i.vm = sub i64 %indvar1963, %smin1962
  %i.vn = icmp ugt i64 %i.vm, -4
  br i1 %i.vn, label %._crit_edge1331, label %.lr.ph1330.new

.lr.ph1330.new:                                   ; preds = %.prol.loopexit, %.lr.ph1330.new
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625.3, %.lr.ph1330.new ], [ %indvars.iv1624.unr, %.prol.loopexit ] ; 5 uses
  %i.vo = trunc nuw nsw i64 %indvars.iv1624 to i32 ; 2 uses
  %reass.mul1222 = mul i32 %reass.add1221, %i.vo
  %i.vp = add i32 %i.va, %reass.mul1222
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vq
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !58
  %i.vt = add i32 %i.vc, %i.vo
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vu
  store double %i.vs, ptr %i.vv, align 8, !tbaa !58
  %i.vw = trunc i64 %indvars.iv1624 to i32
  %i.vx = add i32 %i.vw, 1                        ; 2 uses
  %reass.mul1222.1 = mul i32 %reass.add1221, %i.vx
  %i.vy = add i32 %i.va, %reass.mul1222.1
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vz
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !58
  %i.wc = add i32 %i.vc, %i.vx
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wd
  store double %i.wb, ptr %i.we, align 8, !tbaa !58
  %i.wf = trunc i64 %indvars.iv1624 to i32
  %i.wg = add i32 %i.wf, 2                        ; 2 uses
  %reass.mul1222.2 = mul i32 %reass.add1221, %i.wg
  %i.wh = add i32 %i.va, %reass.mul1222.2
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wi
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !58
  %i.wl = add i32 %i.vc, %i.wg
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wm
  store double %i.wk, ptr %i.wn, align 8, !tbaa !58
  %indvars.iv.next1625.2 = add nuw nsw i64 %indvars.iv1624, 3 ; 2 uses
  %i.wo = trunc nuw nsw i64 %indvars.iv.next1625.2 to i32 ; 2 uses
  %reass.mul1222.3 = mul i32 %reass.add1221, %i.wo
  %i.wp = add i32 %i.va, %reass.mul1222.3
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wq
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !58
  %i.wt = add i32 %i.vc, %i.wo
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wu
  store double %i.ws, ptr %i.wv, align 8, !tbaa !58
  %indvars.iv.next1625.3 = add nuw nsw i64 %indvars.iv1624, 4
  %.not1114.not.3 = icmp slt i64 %indvars.iv.next1625.2, %i.vd
  br i1 %.not1114.not.3, label %.lr.ph1330.new, label %._crit_edge1331, !llvm.loop !26

._crit_edge1331:                                  ; preds = %.prol.loopexit, %.lr.ph1330.new, %bb.cl
  %indvars.iv.next1623 = add nuw nsw i64 %indvars.iv1622, 1 ; 2 uses
  %exitcond1629.not = icmp eq i64 %indvars.iv.next1623, %wide.trip.count1628
  %indvar.next1961 = add i32 %indvar1960, 1
  %indvar.next1964 = add i64 %indvar1963, 1
  br i1 %exitcond1629.not, label %._crit_edge1336, label %bb.cl, !llvm.loop !27

._crit_edge1336:                                  ; preds = %._crit_edge1331, %bb.ck
  %.15.lcssa = phi i32 [ %.12.lcssa, %bb.ck ], [ %i.uw, %._crit_edge1331 ]
  br i1 %i.az, label %bb.cm, label %.loopexit1296

bb.cm:                                            ; preds = %._crit_edge1336
  %i.ww = load i32, ptr %i.z, align 4, !tbaa !56  ; 5 uses
  %.not1111.not1345 = icmp sgt i32 %i.ww, 0
  br i1 %.not1111.not1345, label %.lr.ph1348, label %.loopexit1296

.lr.ph1348:                                       ; preds = %bb.cm
  %i.wx = sub nsw i32 %i.uo, %i.ww
  %i.wy = add nuw nsw i32 %i.ww, 1
  %i.wz = shl nsw i64 %i.ac, 3
  %scevgep = getelementptr i8, ptr %13, i64 %i.wz
  %i.xa = add i32 %i.uo, 1
  %i.xb = sub i32 %i.xa, %i.ww
  %i.xc = mul i32 %i.ab, %i.xb
  %i.xd = add i32 %i.ww, %i.xc
  %i.xe = add i32 %i.xd, 1
  %i.xf = add i32 %i.ab, -1
  br label %bb.cn

.loopexit1295:                                    ; preds = %.lr.ph1343, %bb.cn
  %.not1111.not = icmp slt i32 %.49691346, %i.uo
  %indvar.next1632 = add nuw nsw i64 %indvar1631, 1
  br i1 %.not1111.not, label %bb.cn, label %.loopexit1296, !llvm.loop !28

bb.cn:                                            ; preds = %.lr.ph1348, %.loopexit1295
  %indvar1631 = phi i64 [ 0, %.lr.ph1348 ], [ %indvar.next1632, %.loopexit1295 ] ; 3 uses
  %.49691346.in = phi i32 [ %i.wx, %.lr.ph1348 ], [ %.49691346, %.loopexit1295 ] ; 2 uses
  %.49691346 = add nsw i32 %.49691346.in, 1       ; 2 uses
  %i.xg = sub i32 %i.uo, %.49691346.in
  %i.xh = add i32 %i.xg, 1
  %.not11121340 = icmp sgt i32 %i.xh, %i.wy
  br i1 %.not11121340, label %.loopexit1295, label %.lr.ph1343

.lr.ph1343:                                       ; preds = %bb.cn
  %i.xi = shl nuw nsw i64 %indvar1631, 3
  %i.xj = add nuw nsw i64 %i.xi, 8
  %indvars1638 = trunc i64 %indvar1631 to i32
  %i.xk = mul i32 %i.xf, %indvars1638
  %i.xl = add i32 %i.xe, %i.xk
  %i.xm = sext i32 %i.xl to i64
  %i.xn = shl nsw i64 %i.xm, 3
  %scevgep1630 = getelementptr i8, ptr %scevgep, i64 %i.xn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1630, i8 0, i64 %i.xj, i1 false), !tbaa !58
  br label %.loopexit1295

.loopexit1296:                                    ; preds = %.loopexit1295, %bb.cm, %._crit_edge1336
  %.0983.1184 = select i1 %i.bc, i32 %.0983, i32 0
  br label %.loopexit1290

bb.co:                                            ; preds = %bb.cg
  %i.xo = and i1 %i.ba, %i.bc
  %.1982 = select i1 %i.xo, i32 1, i32 %.0947     ; 9 uses
  %.2951 = select i1 %i.bc, i32 5, i32 2          ; 2 uses
  %i.xp = add i32 %i.rc, %.1982
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.xq
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.xr, ptr noundef nonnull %i.b) #8
  %i.xs = load i32, ptr %i.z, align 4, !tbaa !56  ; 3 uses
  store i32 %i.xs, ptr %i.b, align 4, !tbaa !56
  %.not11031363 = icmp slt i32 %i.xs, 1
  br i1 %.not11031363, label %._crit_edge1368, label %.lr.ph1367

.lr.ph1367:                                       ; preds = %bb.co
  %i.xt = add i32 %.1982, 1                       ; 2 uses
  %reass.add1225 = sub i32 %i.ab, %.0980          ; 2 uses
  %i.xu = zext nneg i32 %i.rb to i64
  %i.xv = sext i32 %.1982 to i64
  %i.xw = sext i32 %i.ab to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ad, i64 %i.xv
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph1367, %._crit_edge1361
  %i.xx = phi i32 [ %i.xs, %.lr.ph1367 ], [ %i.aar, %._crit_edge1361 ]
  %indvars.iv1642 = phi i64 [ 1, %.lr.ph1367 ], [ %indvars.iv.next1643, %._crit_edge1361 ] ; 8 uses
  %.1510261364 = phi i32 [ undef, %.lr.ph1367 ], [ %.161027.lcssa, %._crit_edge1361 ]
  %i.xy = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.xz = icmp sgt i32 %i.xy, 1
  br i1 %i.xz, label %.lr.ph1360, label %._crit_edge1361

.lr.ph1360:                                       ; preds = %bb.cp
  %i.ya = zext nneg i32 %i.xy to i64
  %i.yb = trunc i64 %indvars.iv1642 to i32
  %i.yc = add i32 %i.yb, 2                        ; 5 uses
  %i.yd = trunc nuw nsw i64 %indvars.iv1642 to i32
  br label %bb.cq

.loopexit1294:                                    ; preds = %.lr.ph1353, %bb.cq
  %.171028.lcssa = phi i32 [ %indvars, %bb.cq ], [ %.51351, %.lr.ph1353 ]
  %i.ye = icmp samesign ugt i64 %indvars.iv1639, 2
  br i1 %i.ye, label %bb.cq, label %._crit_edge1361.loopexit, !llvm.loop !29

bb.cq:                                            ; preds = %.lr.ph1360, %.loopexit1294
  %indvars.iv1639 = phi i64 [ %i.ya, %.lr.ph1360 ], [ %indvars.iv.next1640, %.loopexit1294 ] ; 5 uses
  %indvars.iv.next1640 = add nsw i64 %indvars.iv1639, -1 ; 5 uses
  %indvars = trunc i64 %indvars.iv.next1640 to i32 ; 4 uses
  %i.yf = load i32, ptr %1, align 4, !tbaa !56
  %i.yg = trunc nuw nsw i64 %indvars.iv1639 to i32
  %reass.sub = sub i32 %i.yf, %i.yg
  %i.yh = add i32 %reass.sub, 2                   ; 2 uses
  store i32 %i.yh, ptr %i.e, align 4, !tbaa !56
  store i32 %i.yc, ptr %i.c, align 4, !tbaa !56
  %i.yi = call i32 @llvm.smin.i32(i32 %i.yh, i32 %i.yc)
  store i32 %i.yi, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.yj = mul nuw nsw i64 %indvars.iv.next1640, %i.xu ; 2 uses
  %i.yk = mul nsw i64 %indvars.iv.next1640, %i.xw ; 2 uses
  %i.yl = trunc nsw i64 %i.yj to i32
  %i.ym = add i32 %i.xt, %i.yl
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr [8 x i8], ptr %i.ad, i64 %i.yk
  %i.yp = getelementptr [8 x i8], ptr %i.yo, i64 %i.yn
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !58
  store double %i.yq, ptr %i.j, align 8, !tbaa !58
  %i.yr = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.ys = fmul double %i.yr, f0x401921FB54442D18  ; 2 uses
  %27 = call double @cos(double noundef %i.ys) #8
  store double %27, ptr %i.k, align 8, !tbaa !58
  %28 = call double @sin(double noundef %i.ys) #8
  %i.yt = fneg double %28
  store double %i.yt, ptr %i.l, align 8, !tbaa !58
  %i.yu = load i32, ptr %1, align 4, !tbaa !56
  %i.yv = sub nsw i32 %i.yu, %indvars
  %i.yw = sext i32 %i.yv to i64
  %i.yx = icmp slt i64 %indvars.iv1642, %i.yw
  %i.yy = zext i1 %i.yx to i32
  store i32 %i.yy, ptr %i.h, align 4, !tbaa !56
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.yj
  %i.yz = getelementptr [8 x i8], ptr %gep, i64 %i.yk
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.yz, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.za = sub nsw i64 %indvars.iv1639, %indvars.iv1642
  %i.zb = trunc nsw i64 %i.za to i32              ; 2 uses
  store i32 %i.zb, ptr %i.c, align 4, !tbaa !56
  %i.zc = call i32 @llvm.smax.i32(i32 %i.zb, i32 1) ; 2 uses
  %i.zd = trunc i64 %indvars.iv1639 to i32
  %i.ze = add i32 %i.zd, 1
  %i.zf = sub nsw i32 %i.ze, %i.zc
  store i32 %i.zf, ptr %i.e, align 4, !tbaa !56
  %reass.mul1226 = mul i32 %reass.add1225, %i.zc
  %i.zg = add i32 %.1982, %indvars
  %i.zh = add i32 %i.zg, %reass.mul1226
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.zi
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.zj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.r, ptr noundef nonnull %i.j) #8
  %i.zk = load i32, ptr %1, align 4, !tbaa !56    ; 2 uses
  %i.zl = add nsw i32 %i.zk, -1
  store i32 %i.zl, ptr %i.e, align 4, !tbaa !56
  store i32 %i.yd, ptr %i.c, align 4, !tbaa !56
  %i.zm = add nuw nsw i64 %indvars.iv.next1640, %indvars.iv1642 ; 2 uses
  %i.zn = sext i32 %i.zk to i64
  %i.zo = icmp slt i64 %i.zm, %i.zn
  br i1 %i.zo, label %.lr.ph1353.preheader, label %.loopexit1294

.lr.ph1353.preheader:                             ; preds = %bb.cq
  %i.zp = trunc nsw i64 %i.zm to i32
  br label %.lr.ph1353

.lr.ph1353:                                       ; preds = %.lr.ph1353.preheader, %.lr.ph1353
  %.51351 = phi i32 [ %i.aam, %.lr.ph1353 ], [ %i.zp, %.lr.ph1353.preheader ] ; 7 uses
  %.1710281350 = phi i32 [ %.51351, %.lr.ph1353 ], [ %indvars, %.lr.ph1353.preheader ]
  %reass.mul1229 = mul i32 %reass.add1225, %.1710281350
  %i.zq = add i32 %.51351, %.1982
  %i.zr = add i32 %i.zq, %reass.mul1229
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.zs ; 2 uses
  call void @dlartg_(ptr noundef %i.zt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  %i.zu = mul nuw nsw i32 %.51351, %i.rb          ; 2 uses
  %i.zv = mul nsw i32 %.51351, %i.ab              ; 2 uses
  %i.zw = add i32 %i.xt, %i.zu
  %i.zx = add nsw i32 %i.zw, %i.zv
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.zy
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !58
  store double %i.aaa, ptr %i.j, align 8, !tbaa !58
  store i32 %i.yc, ptr %i.d, align 4, !tbaa !56
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.zt, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.aab = load i32, ptr %1, align 4, !tbaa !56
  %reass.sub1581 = sub i32 %i.aab, %.51351        ; 2 uses
  %i.aac = add i32 %reass.sub1581, 1              ; 2 uses
  store i32 %i.aac, ptr %i.d, align 4, !tbaa !56
  store i32 %i.yc, ptr %i.f, align 4, !tbaa !56
  %i.aad = call i32 @llvm.smin.i32(i32 %i.aac, i32 %i.yc)
  store i32 %i.aad, ptr %i.t, align 4, !tbaa !56
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !58
  %i.aae = sext i32 %reass.sub1581 to i64
  %i.aaf = icmp slt i64 %indvars.iv1642, %i.aae
  %i.aag = zext i1 %i.aaf to i32
  store i32 %i.aag, ptr %i.h, align 4, !tbaa !56
  %i.aah = add nsw i32 %i.zu, %.1982
  %i.aai = add nsw i32 %i.aah, %i.zv
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aaj
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.aak, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.aal = load i32, ptr %i.c, align 4, !tbaa !56 ; 2 uses
  %i.aam = add nsw i32 %i.aal, %.51351            ; 3 uses
  %i.aan = icmp slt i32 %i.aal, 0
  %i.aao = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aap = icmp sge i32 %i.aam, %i.aao
  %i.aaq = icmp sle i32 %i.aam, %i.aao
  %.in = select i1 %i.aan, i1 %i.aap, i1 %i.aaq
  br i1 %.in, label %.lr.ph1353, label %.loopexit1294, !llvm.loop !30

._crit_edge1361.loopexit:                         ; preds = %.loopexit1294
  %.pre1785 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %._crit_edge1361

._crit_edge1361:                                  ; preds = %._crit_edge1361.loopexit, %bb.cp
  %i.aar = phi i32 [ %i.xx, %bb.cp ], [ %.pre1785, %._crit_edge1361.loopexit ] ; 2 uses
  %.161027.lcssa = phi i32 [ %.1510261364, %bb.cp ], [ %.171028.lcssa, %._crit_edge1361.loopexit ] ; 2 uses
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1
  %i.aas = sext i32 %i.aar to i64
  %.not1103.not = icmp slt i64 %indvars.iv1642, %i.aas
  br i1 %.not1103.not, label %bb.cp, label %._crit_edge1368, !llvm.loop !31

._crit_edge1368:                                  ; preds = %._crit_edge1361, %bb.co
  %.151026.lcssa = phi i32 [ undef, %bb.co ], [ %.161027.lcssa, %._crit_edge1361 ] ; 2 uses
  %i.aat = icmp ne i32 %.0983, %.2951
  %or.cond17 = and i1 %i.be, %i.aat
  br i1 %or.cond17, label %bb.cr, label %.loopexit1290

bb.cr:                                            ; preds = %._crit_edge1368
  %i.aau = load i32, ptr %1, align 4, !tbaa !56   ; 8 uses
  %i.aav = icmp sgt i32 %i.aau, 0
  br i1 %i.aav, label %.lr.ph1377, label %._crit_edge1378

.lr.ph1377:                                       ; preds = %bb.cr
  %i.aaw = load i32, ptr %i.z, align 4, !tbaa !56 ; 4 uses
  %reass.add1231 = sub i32 %i.ab, %.0980          ; 3 uses
  %i.aax = zext nneg i32 %i.aau to i64            ; 3 uses
  %.not11061370 = icmp slt i32 %i.aaw, 0          ; 3 uses
  %xtraiter1969 = and i32 %i.aau, 1
  %lcmp.mod1970.not = icmp eq i32 %xtraiter1969, 0
  br i1 %lcmp.mod1970.not, label %.prol.loopexit1968, label %.prol.preheader1967

.prol.preheader1967:                              ; preds = %.lr.ph1377
  %i.aay = mul nuw nsw i32 %.0980, %i.aau
  %i.aaz = sub nsw i32 %.0947, %i.aay             ; 2 uses
  br i1 %.not11061370, label %._crit_edge1374.prol, label %.lr.ph1373.prol

.lr.ph1373.prol:                                  ; preds = %.prol.preheader1967
  %i.aba = sub nsw i32 %i.aau, %i.aaw
  %i.abb = call i32 @llvm.smax.i32(i32 %i.aba, i32 1)
  %i.abc = add i32 %.1982, %i.aau
  %i.abd = mul nsw i32 %i.ab, %i.aau
  %i.abe = add i32 %i.aaz, %i.abd
  %i.abf = zext nneg i32 %i.abb to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.lr.ph1373.prol
  %indvars.iv1648.prol = phi i64 [ %i.aax, %.lr.ph1373.prol ], [ %indvars.iv.next1649.prol, %bb.cs ] ; 3 uses
  %i.abg = trunc nsw i64 %indvars.iv1648.prol to i32 ; 2 uses
  %reass.mul1232.prol = mul i32 %reass.add1231, %i.abg
  %i.abh = add i32 %i.abc, %reass.mul1232.prol
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.abi
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !58
  %i.abl = add i32 %i.abe, %i.abg
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.abm
  store double %i.abk, ptr %i.abn, align 8, !tbaa !58
  %indvars.iv.next1649.prol = add nsw i64 %indvars.iv1648.prol, -1
  %.not1106.not.prol = icmp sgt i64 %indvars.iv1648.prol, %i.abf
  br i1 %.not1106.not.prol, label %bb.cs, label %._crit_edge1374.prol, !llvm.loop !32

._crit_edge1374.prol:                             ; preds = %bb.cs, %.prol.preheader1967
  %indvars.iv.next1647.prol = add nsw i64 %i.aax, -1
  br label %.prol.loopexit1968

.prol.loopexit1968:                               ; preds = %._crit_edge1374.prol, %.lr.ph1377
  %indvars.iv1646.unr = phi i64 [ %i.aax, %.lr.ph1377 ], [ %indvars.iv.next1647.prol, %._crit_edge1374.prol ]
  %.lcssa1952.unr = phi i32 [ poison, %.lr.ph1377 ], [ %i.aaz, %._crit_edge1374.prol ]
  %i.abo = icmp eq i32 %i.aau, 1
  br i1 %i.abo, label %._crit_edge1378, label %.lr.ph1377.new

.lr.ph1377.new:                                   ; preds = %.prol.loopexit1968, %._crit_edge1374.1
  %indvars.iv1646 = phi i64 [ %indvars.iv.next1647.1, %._crit_edge1374.1 ], [ %indvars.iv1646.unr, %.prol.loopexit1968 ] ; 4 uses
  br i1 %.not11061370, label %._crit_edge1374, label %.lr.ph1373

.lr.ph1373:                                       ; preds = %.lr.ph1377.new
  %indvars1653 = trunc i64 %indvars.iv1646 to i32 ; 4 uses
  %i.abp = mul nuw nsw i32 %.0980, %indvars1653
  %i.abq = sub nsw i32 %.0947, %i.abp
  %i.abr = sub nsw i32 %indvars1653, %i.aaw
  %i.abs = call i32 @llvm.smax.i32(i32 %i.abr, i32 1)
  %i.abt = add i32 %.1982, %indvars1653
  %i.abu = mul nsw i32 %i.ab, %indvars1653
  %i.abv = add i32 %i.abq, %i.abu
  %i.abw = zext nneg i32 %i.abs to i64
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1373, %bb.ct
  %indvars.iv1648 = phi i64 [ %indvars.iv1646, %.lr.ph1373 ], [ %indvars.iv.next1649, %bb.ct ] ; 3 uses
  %i.abx = trunc nsw i64 %indvars.iv1648 to i32   ; 2 uses
  %reass.mul1232 = mul i32 %reass.add1231, %i.abx
  %i.aby = add i32 %i.abt, %reass.mul1232
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.abz
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !58
  %i.acc = add i32 %i.abv, %i.abx
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.acd
  store double %i.acb, ptr %i.ace, align 8, !tbaa !58
  %indvars.iv.next1649 = add nsw i64 %indvars.iv1648, -1
  %.not1106.not = icmp sgt i64 %indvars.iv1648, %i.abw
  br i1 %.not1106.not, label %bb.ct, label %._crit_edge1374, !llvm.loop !32

._crit_edge1374:                                  ; preds = %bb.ct, %.lr.ph1377.new
  %indvars.iv.next1647 = add nsw i64 %indvars.iv1646, -1 ; 2 uses
  %indvars1653.1 = trunc i64 %indvars.iv.next1647 to i32 ; 5 uses
  %i.acf = mul nuw nsw i32 %.0980, %indvars1653.1
  %i.acg = sub nsw i32 %.0947, %i.acf             ; 2 uses
  br i1 %.not11061370, label %._crit_edge1374.1, label %.lr.ph1373.1

.lr.ph1373.1:                                     ; preds = %._crit_edge1374
  %i.ach = sub nsw i32 %indvars1653.1, %i.aaw
  %i.aci = call i32 @llvm.smax.i32(i32 %i.ach, i32 1)
  %i.acj = add i32 %.1982, %indvars1653.1
  %i.ack = mul nsw i32 %i.ab, %indvars1653.1
  %i.acl = add i32 %i.acg, %i.ack
  %i.acm = zext nneg i32 %i.aci to i64
end_hunk_1
begin_hunk_2_@dlatmt_:bb.a
  %i.asl = add nuw nsw i64 %i.ask, 8              ; 5 uses
  %i.asm = sub i32 %i.arw, %.2510361838
  %xtraiter2013 = and i32 %i.asm, 3               ; 2 uses
  %lcmp.mod2014.not = icmp eq i32 %xtraiter2013, 0
  br i1 %lcmp.mod2014.not, label %.prol.loopexit2012, label %.prol.preheader2011

.prol.preheader2011:                              ; preds = %.peel.next, %._crit_edge1575.prol
  %.89731578.in.prol = phi i32 [ %.89731578.prol, %._crit_edge1575.prol ], [ %.2510361838, %.peel.next ]
  %prol.iter2015 = phi i32 [ %prol.iter2015.next, %._crit_edge1575.prol ], [ 0, %.peel.next ]
  %.89731578.prol = add i32 %.89731578.in.prol, 1 ; 3 uses
  br i1 %.not11711571, label %._crit_edge1575.prol, label %.lr.ph1574.prol

.lr.ph1574.prol:                                  ; preds = %.prol.preheader2011
  %i.asn = mul nsw i32 %.89731578.prol, %i.ab
  %i.aso = add i32 %i.asn, 1
  %i.asp = sext i32 %i.aso to i64
  %i.asq = shl nsw i64 %i.asp, 3
  %scevgep1778.prol = getelementptr i8, ptr %scevgep1777, i64 %i.asq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.prol, i8 0, i64 %i.asl, i1 false), !tbaa !58
  br label %._crit_edge1575.prol

._crit_edge1575.prol:                             ; preds = %.lr.ph1574.prol, %.prol.preheader2011
  %prol.iter2015.next = add i32 %prol.iter2015, 1 ; 2 uses
  %prol.iter2015.cmp.not = icmp eq i32 %prol.iter2015.next, %xtraiter2013
  br i1 %prol.iter2015.cmp.not, label %.prol.loopexit2012, label %.prol.preheader2011, !llvm.loop !53

.prol.loopexit2012:                               ; preds = %._crit_edge1575.prol, %.peel.next
  %.89731578.in.unr = phi i32 [ %.2510361838, %.peel.next ], [ %.89731578.prol, %._crit_edge1575.prol ]
  %i.asr = sub i32 %.2510361838, %i.arw
  %i.ass = icmp ugt i32 %i.asr, -4
  br i1 %i.ass, label %.thread1201, label %.peel.next.new

.peel.next.new:                                   ; preds = %.prol.loopexit2012, %._crit_edge1575.3
  %.89731578.in = phi i32 [ %.89731578.3, %._crit_edge1575.3 ], [ %.89731578.in.unr, %.prol.loopexit2012 ] ; 4 uses
  br i1 %.not11711571, label %._crit_edge1575.2, label %.lr.ph1574

.lr.ph1574:                                       ; preds = %.peel.next.new
  %.89731578 = add i32 %.89731578.in, 1
  %i.ast = mul nsw i32 %.89731578, %i.ab
  %i.asu = add i32 %i.ast, 1
  %i.asv = sext i32 %i.asu to i64
  %i.asw = shl nsw i64 %i.asv, 3
  %scevgep1778 = getelementptr i8, ptr %scevgep1777, i64 %i.asw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778, i8 0, i64 %i.asl, i1 false), !tbaa !58
  %.89731578.1 = add i32 %.89731578.in, 2
  %i.asx = mul nsw i32 %.89731578.1, %i.ab
  %i.asy = add i32 %i.asx, 1
  %i.asz = sext i32 %i.asy to i64
  %i.ata = shl nsw i64 %i.asz, 3
  %scevgep1778.1 = getelementptr i8, ptr %scevgep1777, i64 %i.ata
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.1, i8 0, i64 %i.asl, i1 false), !tbaa !58
  %.89731578.2 = add i32 %.89731578.in, 3
  %i.atb = mul nsw i32 %.89731578.2, %i.ab
  %i.atc = add i32 %i.atb, 1
  %i.atd = sext i32 %i.atc to i64
  %i.ate = shl nsw i64 %i.atd, 3
  %scevgep1778.2 = getelementptr i8, ptr %scevgep1777, i64 %i.ate
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.2, i8 0, i64 %i.asl, i1 false), !tbaa !58
  br label %._crit_edge1575.2

._crit_edge1575.2:                                ; preds = %.peel.next.new, %.lr.ph1574
  %.89731578.3 = add i32 %.89731578.in, 4         ; 3 uses
  br i1 %.not11711571, label %._crit_edge1575.3, label %.lr.ph1574.3

.lr.ph1574.3:                                     ; preds = %._crit_edge1575.2
  %i.atf = mul nsw i32 %.89731578.3, %i.ab
  %i.atg = add i32 %i.atf, 1
  %i.ath = sext i32 %i.atg to i64
  %i.ati = shl nsw i64 %i.ath, 3
  %scevgep1778.3 = getelementptr i8, ptr %scevgep1777, i64 %i.ati
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.3, i8 0, i64 %i.asl, i1 false), !tbaa !58
  br label %._crit_edge1575.3

._crit_edge1575.3:                                ; preds = %.lr.ph1574.3, %._crit_edge1575.2
  %exitcond1783.not.3 = icmp eq i32 %.89731578.3, %i.arw
  br i1 %exitcond1783.not.3, label %.thread1201, label %.peel.next.new, !llvm.loop !54

bb.dy:                                            ; preds = %.loopexit1284
  br i1 %i.bc, label %bb.dz, label %.thread1201

bb.dz:                                            ; preds = %bb.dy
  %i.atj = load i32, ptr %i.z, align 4, !tbaa !56 ; 4 uses
  %i.atk = load i32, ptr %i.y, align 4, !tbaa !56
  %i.atl = add i32 %i.atj, 2                      ; 2 uses
  %i.atm = add i32 %i.atl, %i.atk                 ; 2 uses
  %i.atn = load i32, ptr %1, align 4, !tbaa !56   ; 2 uses
  %.not11661564 = icmp slt i32 %i.atn, 1
  br i1 %.not11661564, label %.thread1201, label %.lr.ph1568

.lr.ph1568:                                       ; preds = %bb.dz
  %i.ato = load i32, ptr %0, align 4, !tbaa !56   ; 2 uses
  %i.atp = add nsw i32 %i.atj, 1
  %i.atq = add i32 %i.atl, %i.ato
  %i.atr = load i32, ptr %14, align 4, !tbaa !56  ; 2 uses
  %i.ats = shl nsw i64 %i.ac, 3
  %scevgep1753 = getelementptr i8, ptr %13, i64 %i.ats ; 2 uses
  %i.att = add i32 %i.ab, 1
  %i.atu = add i32 %i.atj, %i.ato
  %i.atv = add i32 %i.atu, 1
  %wide.trip.count1775 = zext nneg i32 %i.atn to i64
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph1568, %._crit_edge1563
  %indvars.iv1771 = phi i64 [ 0, %.lr.ph1568 ], [ %indvars.iv.next1772, %._crit_edge1563 ] ; 3 uses
  %.9.neg1566 = phi i32 [ -1, %.lr.ph1568 ], [ %.9.neg, %._crit_edge1563 ] ; 2 uses
  %.91565 = phi i32 [ 1, %.lr.ph1568 ], [ %i.aus, %._crit_edge1563 ] ; 2 uses
  %i.atw = trunc i64 %indvars.iv1771 to i32       ; 2 uses
  %i.atx = sub i32 %i.atv, %i.atw
  %smin1760 = call i32 @llvm.smin.i32(i32 %i.atx, i32 %i.atm)
  %smax1761 = call i32 @llvm.smax.i32(i32 %smin1760, i32 1) ; 2 uses
  %i.aty = trunc nuw nsw i64 %indvars.iv1771 to i32
  %i.atz = mul i32 %i.ab, %i.aty                  ; 2 uses
  %i.aua = add i32 %i.ab, %i.atz
  %i.aub = add i32 %smax1761, %i.aua
  %i.auc = sext i32 %i.aub to i64
  %i.aud = shl nsw i64 %i.auc, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1753, i64 %i.aud
  %i.aue = sub i32 %i.atr, %smax1761
  %i.auf = zext i32 %i.aue to i64
  %i.aug = shl nuw nsw i64 %i.auf, 3
  %i.auh = add nuw nsw i64 %i.aug, 8
  %i.aui = add i32 %i.atp, %.9.neg1566
  %.not11671554 = icmp slt i32 %i.aui, 1
  br i1 %.not11671554, label %._crit_edge1558, label %.lr.ph1557

.lr.ph1557:                                       ; preds = %bb.ea
  %i.auj = sub i32 %i.atj, %i.atw
  %i.auk = zext i32 %i.auj to i64
  %i.aul = shl nuw nsw i64 %i.auk, 3
  %i.aum = add i32 %i.att, %i.atz
  %i.aun = sext i32 %i.aum to i64
  %i.auo = shl nsw i64 %i.aun, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep1753, i64 %i.auo
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1754, i8 0, i64 %i.aul, i1 false), !tbaa !58
  br label %._crit_edge1558

._crit_edge1558:                                  ; preds = %.lr.ph1557, %bb.ea
  %i.aup = add i32 %i.atq, %.9.neg1566
  %i.auq = call i32 @llvm.smin.i32(i32 %i.atm, i32 %i.aup)
  %i.aur = call i32 @llvm.smax.i32(i32 %i.auq, i32 1)
  %.not11691559 = icmp sgt i32 %i.aur, %i.atr
  br i1 %.not11691559, label %._crit_edge1563, label %.lr.ph1562

.lr.ph1562:                                       ; preds = %._crit_edge1558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1762, i8 0, i64 %i.auh, i1 false), !tbaa !58
  br label %._crit_edge1563

._crit_edge1563:                                  ; preds = %.lr.ph1562, %._crit_edge1558
  %i.aus = add nuw nsw i32 %.91565, 1
  %.9.neg = xor i32 %.91565, -1
  %indvars.iv.next1772 = add nuw nsw i64 %indvars.iv1771, 1 ; 2 uses
  %exitcond1776.not = icmp eq i64 %indvars.iv.next1772, %wide.trip.count1775
  br i1 %exitcond1776.not, label %.thread1201, label %bb.ea, !llvm.loop !55

.thread1201:                                      ; preds = %._crit_edge1563, %.prol.loopexit2012, %._crit_edge1575.3, %._crit_edge1575.peel, %bb.dz, %.loopexit1284.thread, %bb.dq, %.loopexit1290, %bb.dy, %bb.a, %bb.b, %bb.dc, %bb.aq, %bb.al, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlatm7_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarnd_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare void @dlarot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagge_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagsy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !59}
!9 = distinct !{!9, !60}
!10 = distinct !{!10, !59}
!11 = distinct !{!11, !59}
!12 = distinct !{!12, !59}
!13 = distinct !{!13, !59}
!14 = distinct !{!14, !59}
!15 = distinct !{!15, !59}
!16 = distinct !{!16, !59}
!17 = distinct !{!17, !59}
!18 = distinct !{!18, !59}
!19 = distinct !{!19, !59}
!20 = distinct !{!20, !59}
!21 = distinct !{!21, !59}
!22 = distinct !{!22, !59}
!23 = distinct !{!23, !59}
!24 = distinct !{!24, !59}
!25 = distinct !{!25, !60}
!26 = distinct !{!26, !59}
!27 = distinct !{!27, !59}
!28 = distinct !{!28, !59}
!29 = distinct !{!29, !59}
!30 = distinct !{!30, !59}
!31 = distinct !{!31, !59}
!32 = distinct !{!32, !59}
!33 = distinct !{!33, !59}
!34 = distinct !{!34, !59}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !59}
!37 = distinct !{!37, !59}
!38 = distinct !{!38, !59}
!39 = distinct !{!39, !60}
!40 = distinct !{!40, !59}
!41 = distinct !{!41, !60}
!42 = distinct !{!42, !59}
!43 = distinct !{!43, !59}
!44 = distinct !{!44, !59, !61, !62}
!45 = distinct !{!45, !59, !61, !62}
!46 = distinct !{!46, !59, !61}
!47 = distinct !{!47, !59}
!48 = distinct !{!48, !59, !61, !62}
!49 = distinct !{!49, !59, !61, !62}
!50 = distinct !{!50, !59, !61}
!51 = distinct !{!51, !59}
!52 = distinct !{!52, !60}
!53 = distinct !{!53, !60}
!54 = distinct !{!54, !59, !64}
!55 = distinct !{!55, !59}
!56 = !{!5, !5, i64 0}
!57 = !{!"double", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"branch_weights", i32 4, i32 12}
!64 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_2
