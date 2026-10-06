Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DLASQ2\00", align 1
@c__1 = internal global i32 1, align 4
@c__2 = internal global i32 2, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@c__10 = internal global i32 10, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__3 = internal global i32 3, align 4
@c__4 = internal global i32 4, align 4
@c__11 = internal global i32 11, align 4

; Function Attrs: nounwind uwtable
define void @dlasq2_(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca double, align 8                   ; 11 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca double, align 8                   ; 8 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 9 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca double, align 8                   ; 4 uses
  %i.q = alloca i32, align 4                      ; 9 uses
  %i.r = alloca double, align 8                   ; 4 uses
  %i.s = alloca double, align 8                   ; 4 uses
  %i.t = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #7
  %i.u = getelementptr inbounds i8, ptr %1, i64 -8 ; 102 uses
  store i32 0, ptr %2, align 4, !tbaa !33
  %i.v = tail call double @dlamch_(ptr noundef nonnull @.str) #7
  %i.w = tail call double @dlamch_(ptr noundef nonnull @.str.1) #7 ; 4 uses
  %i.x = fmul double %i.v, 1.000000e+02           ; 2 uses
  %i.y = fmul double %i.x, %i.x                   ; 11 uses
  %i.z = load i32, ptr %0, align 4, !tbaa !33     ; 6 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %2, align 4, !tbaa !33
  %i.ab = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__1, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  switch i32 %i.z, label %.lr.ph.preheader [
    i32 0, label %.loopexit
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = load double, ptr %1, align 8, !tbaa !35
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 -201, ptr %2, align 4, !tbaa !33
  %i.ae = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.af = load double, ptr %1, align 8, !tbaa !35 ; 5 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -201, ptr %2, align 4, !tbaa !33
  %i.ah = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !35 ; 7 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -202, ptr %2, align 4, !tbaa !33
  %i.al = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !35 ; 5 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -203, ptr %2, align 4, !tbaa !33
  %i.ap = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.aq = fcmp ogt double %i.an, %i.af
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.af, ptr %i.am, align 8, !tbaa !35
  store double %i.an, ptr %1, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = phi double [ %i.an, %bb.l ], [ %i.af, %bb.m ] ; 7 uses
  %i.as = phi double [ %i.af, %bb.l ], [ %i.an, %bb.m ] ; 5 uses
  %i.at = fadd double %i.aj, %i.as
  %i.au = fadd double %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = fmul double %i.y, %i.ar
  %i.ax = fcmp ogt double %i.aj, %i.aw
  br i1 %i.ax, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ay = fsub double %i.as, %i.ar
  %i.az = fadd double %i.aj, %i.ay
  %i.ba = fmul double %i.az, 5.000000e-01         ; 7 uses
  %i.bb = fdiv double %i.aj, %i.ba
  %i.bc = fmul double %i.ar, %i.bb                ; 3 uses
  %i.bd = fcmp ugt double %i.bc, %i.ba
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = fdiv double %i.bc, %i.ba
  %i.bf = fadd double %i.be, 1.000000e+00
  %i.bg = tail call double @sqrt(double noundef %i.bf) #7
  %i.bh = fadd double %i.bg, 1.000000e+00
  %i.bi = fmul double %i.ba, %i.bh
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = tail call double @sqrt(double noundef %i.ba) #7
  %i.bk = fadd double %i.ba, %i.bc
  %i.bl = tail call double @sqrt(double noundef %i.bk) #7
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bl, double %i.ba)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn607 = phi double [ %i.bi, %bb.p ], [ %i.bm, %bb.q ]
  %.pn = fdiv double %i.aj, %.pn607
  %.0543 = fmul double %i.ar, %.pn
  %i.bn = fadd double %i.aj, %.0543
  %i.bo = fadd double %i.as, %i.bn                ; 3 uses
  %i.bp = fdiv double %i.as, %i.bo
  %i.bq = fmul double %i.ar, %i.bp                ; 2 uses
  store double %i.bq, ptr %i.am, align 8, !tbaa !35
  store double %i.bo, ptr %1, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.br = phi double [ %i.bo, %bb.r ], [ %i.as, %bb.n ]
  %i.bs = phi double [ %i.bq, %bb.r ], [ %i.ar, %bb.n ] ; 2 uses
  store double %i.bs, ptr %i.ai, align 8, !tbaa !35
  %i.bt = fadd double %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.bt, ptr %i.bu, align 8, !tbaa !35
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bv = shl nuw nsw i32 %i.z, 1                 ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr [8 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !35
  %i.by = add nsw i32 %i.bv, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.0552625 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cn, %bb.w ]
  %.0554624 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cm, %bb.w ]
  %i.bz = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cp, %bb.w ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !35 ; 4 uses
  %i.cc = fcmp olt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  %i.ce = sub nuw nsw i32 -200, %i.cd
  store i32 %i.ce, ptr %2, align 4, !tbaa !33
  %i.cf = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !35 ; 2 uses
  %i.ci = fcmp olt double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = sub nuw nsw i32 -201, %i.cj
  store i32 %i.ck, ptr %2, align 4, !tbaa !33
  %i.cl = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cm = fadd double %.0554624, %i.cb            ; 2 uses
  %i.cn = fadd double %.0552625, %i.ch            ; 3 uses
  %i.co = fcmp oge double %i.bz, %i.cb
  %i.cp = select i1 %i.co, double %i.bz, double %i.cb ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %i.by, %i.cq
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %i.bx, i64 -8     ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !35 ; 4 uses
  %i.ct = fcmp olt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.cu = sub nuw nsw i32 -199, %i.bv
  store i32 %i.cu, ptr %2, align 4, !tbaa !33
  %i.cv = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %._crit_edge
  %i.cw = fadd double %i.cm, %i.cs                ; 2 uses
  %i.cx = fcmp oge double %i.cp, %i.cs
  %i.cy = select i1 %i.cx, double %i.cp, double %i.cs
  store double %i.cy, ptr %i.e, align 8, !tbaa !35
  %i.cz = fcmp oeq double %i.cn, 0.000000e+00
  br i1 %i.cz, label %.preheader, label %bb.z

.preheader:                                       ; preds = %bb.y
  %.not606738 = icmp slt i32 %i.z, 2
  br i1 %.not606738, label %._crit_edge741, label %iter.check946

iter.check946:                                    ; preds = %.preheader
  %i.da = add nuw i32 %i.z, 1
  %wide.trip.count801 = zext i32 %i.da to i64     ; 4 uses
  %i.db = add nsw i64 %wide.trip.count801, -2     ; 6 uses
  %min.iters.check929 = icmp ult i64 %i.db, 5
end_hunk_0
begin_hunk_1_@dlasq2_:bb.a
  store double %i.fb, ptr %i.fc, align 8, !tbaa !35
  %indvars.iv.next799.prol = add nuw nsw i64 %indvars.iv798.prol, 1 ; 2 uses
  %prol.iter1000.next = add i64 %prol.iter1000, 1 ; 2 uses
  %prol.iter1000.cmp.not = icmp eq i64 %prol.iter1000.next, %xtraiter998
  br i1 %prol.iter1000.cmp.not, label %.lr.ph740.prol.loopexit, label %.lr.ph740.prol, !llvm.loop !11

.lr.ph740.prol.loopexit:                          ; preds = %.lr.ph740.prol, %.lr.ph740.preheader
  %indvars.iv798.unr = phi i64 [ %indvars.iv798.ph, %.lr.ph740.preheader ], [ %indvars.iv.next799.prol, %.lr.ph740.prol ]
  %i.fd = icmp ult i64 %i.ew, 7
  br i1 %i.fd, label %._crit_edge741, label %.lr.ph740

.lr.ph740:                                        ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740
  %indvars.iv798 = phi i64 [ %indvars.iv.next799.7, %.lr.ph740 ], [ %indvars.iv798.unr, %.lr.ph740.prol.loopexit ] ; 11 uses
  %indvars.iv798.tr = trunc nuw i64 %indvars.iv798 to i32
  %i.fe = shl nuw i32 %indvars.iv798.tr, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr %i.u, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv798
  store double %i.fi, ptr %i.fj, align 8, !tbaa !35
  %i.fk = trunc i64 %indvars.iv798 to i32
  %indvars.iv798.tr.1 = shl i32 %i.fk, 1
  %i.fl = add i32 %indvars.iv798.tr.1, 2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.u, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !35
  %i.fq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv798
  store double %i.fp, ptr %i.fq, align 8, !tbaa !35
  %indvars.iv.next799.1 = add nuw nsw i64 %indvars.iv798, 2 ; 2 uses
  %indvars.iv798.tr.2 = trunc nuw i64 %indvars.iv.next799.1 to i32
  %i.fr = shl nuw i32 %indvars.iv798.tr.2, 1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.u, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !35
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.1
  store double %i.fv, ptr %i.fw, align 8, !tbaa !35
  %indvars.iv.next799.2 = add nuw nsw i64 %indvars.iv798, 3 ; 2 uses
  %indvars.iv798.tr.3 = trunc nuw i64 %indvars.iv.next799.2 to i32
  %i.fx = shl nuw i32 %indvars.iv798.tr.3, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %i.u, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !35
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.2
  store double %i.gb, ptr %i.gc, align 8, !tbaa !35
  %indvars.iv.next799.3 = add nuw nsw i64 %indvars.iv798, 4 ; 2 uses
  %indvars.iv798.tr.4 = trunc nuw i64 %indvars.iv.next799.3 to i32
  %i.gd = shl nuw i32 %indvars.iv798.tr.4, 1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr [8 x i8], ptr %i.u, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !35
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.3
  store double %i.gh, ptr %i.gi, align 8, !tbaa !35
  %indvars.iv.next799.4 = add nuw nsw i64 %indvars.iv798, 5 ; 2 uses
  %indvars.iv798.tr.5 = trunc nuw i64 %indvars.iv.next799.4 to i32
  %i.gj = shl nuw i32 %indvars.iv798.tr.5, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [8 x i8], ptr %i.u, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 -8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !35
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.4
  store double %i.gn, ptr %i.go, align 8, !tbaa !35
  %indvars.iv.next799.5 = add nuw nsw i64 %indvars.iv798, 6 ; 2 uses
  %indvars.iv798.tr.6 = trunc nuw i64 %indvars.iv.next799.5 to i32
  %i.gp = shl nuw i32 %indvars.iv798.tr.6, 1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.u, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !35
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.5
  store double %i.gt, ptr %i.gu, align 8, !tbaa !35
  %indvars.iv.next799.6 = add nuw nsw i64 %indvars.iv798, 7 ; 2 uses
  %indvars.iv798.tr.7 = trunc nuw i64 %indvars.iv.next799.6 to i32
  %i.gv = shl nuw i32 %indvars.iv798.tr.7, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr %i.u, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !35
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.6
  store double %i.gz, ptr %i.ha, align 8, !tbaa !35
  %indvars.iv.next799.7 = add nuw nsw i64 %indvars.iv798, 8 ; 2 uses
  %exitcond802.not.7 = icmp eq i64 %indvars.iv.next799.7, %wide.trip.count801
  br i1 %exitcond802.not.7, label %._crit_edge741, label %.lr.ph740, !llvm.loop !12

._crit_edge741:                                   ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740, %.preheader
  call void @dlasrt_(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #7
  %i.hb = load i32, ptr %0, align 4, !tbaa !33
  %i.hc = shl i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [8 x i8], ptr %i.u, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  store double %i.cw, ptr %i.hf, align 8, !tbaa !35
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.hg = fadd double %i.cn, %i.cw                ; 2 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !35
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.hi = tail call i32 @ilaenv_(ptr noundef nonnull @c__10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull @c__3, ptr noundef nonnull @c__4, i32 noundef 6, i32 noundef 1) #7
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call i32 @ilaenv_(ptr noundef nonnull @c__11, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull @c__3, ptr noundef nonnull @c__4, i32 noundef 6, i32 noundef 1) #7
  %i.hl = icmp eq i32 %i.hk, 1
  %i.hm = zext i1 %i.hl to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hn = phi i32 [ 0, %bb.ab ], [ %i.hm, %bb.ac ]
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !33
  %i.ho = load i32, ptr %0, align 4, !tbaa !33    ; 6 uses
  %i.hp = shl i32 %i.ho, 1                        ; 5 uses
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %.lr.ph630.preheader, label %._crit_edge631

.lr.ph630.preheader:                              ; preds = %bb.ad
  %i.hr = zext nneg i32 %i.hp to i64
  br label %.lr.ph630

.lr.ph630:                                        ; preds = %.lr.ph630.preheader, %.lr.ph630
  %indvars.iv750 = phi i64 [ %i.hr, %.lr.ph630.preheader ], [ %indvars.iv.next751, %.lr.ph630 ] ; 4 uses
  %.idx = shl i64 %indvars.iv750, 4
  %i.hs = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  store double 0.000000e+00, ptr %i.hs, align 8, !tbaa !35
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv750 ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !35
  %i.hv = getelementptr i8, ptr %i.hs, i64 -8
  store double %i.hu, ptr %i.hv, align 8, !tbaa !35
  %i.hw = getelementptr i8, ptr %i.ht, i64 -8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !35
  %i.hy = getelementptr i8, ptr %i.hs, i64 -24
  %i.hz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hx, i64 0
  store <2 x double> %i.hz, ptr %i.hy, align 8, !tbaa !35
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, -2
  %i.ia = icmp samesign ugt i64 %indvars.iv750, 3
  br i1 %i.ia, label %.lr.ph630, label %._crit_edge631, !llvm.loop !13

._crit_edge631:                                   ; preds = %.lr.ph630, %bb.ad
  store i32 1, ptr %i.m, align 4, !tbaa !33
  store i32 %i.ho, ptr %i.n, align 4, !tbaa !33
  %i.ib = load double, ptr %1, align 8, !tbaa !35
  %i.ic = fmul double %i.ib, 1.500000e+00
  %i.id = shl i32 %i.ho, 2                        ; 9 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.u, i64 %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -24    ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !35 ; 3 uses
  %i.ii = fcmp olt double %i.ic, %i.ih
  br i1 %i.ii, label %bb.ae, label %.loopexit614

bb.ae:                                            ; preds = %._crit_edge631
  %i.ij = add i32 %i.id, 4
  %.not594632 = icmp slt i32 %i.hp, 4
  br i1 %.not594632, label %.loopexit614, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %bb.ae
  %i.ik = zext nneg i32 %i.hp to i64
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.preheader, %.lr.ph635
  %indvars.iv753 = phi i64 [ 4, %.lr.ph635.preheader ], [ %indvars.iv.next754, %.lr.ph635 ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv753 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -24    ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !35
  %i.io = trunc nuw nsw i64 %indvars.iv753 to i32
  %i.ip = sub i32 %i.ij, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [8 x i8], ptr %i.u, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -24    ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !35
  store double %i.it, ptr %i.im, align 8, !tbaa !35
  store double %i.in, ptr %i.is, align 8, !tbaa !35
  %i.iu = getelementptr i8, ptr %i.il, i64 -8     ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !35
  %i.iw = getelementptr i8, ptr %i.ir, i64 -40    ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !35
  store double %i.ix, ptr %i.iu, align 8, !tbaa !35
  store double %i.iv, ptr %i.iw, align 8, !tbaa !35
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 4 ; 2 uses
  %.not594 = icmp samesign ugt i64 %indvars.iv.next754, %i.ik
  br i1 %.not594, label %.loopexit614.loopexit, label %.lr.ph635, !llvm.loop !14

.loopexit614.loopexit:                            ; preds = %.lr.ph635
  %.pre = load double, ptr %i.ig, align 8, !tbaa !35
  br label %.loopexit614

.loopexit614:                                     ; preds = %.loopexit614.loopexit, %bb.ae, %._crit_edge631
  %i.iy = phi double [ %.pre, %.loopexit614.loopexit ], [ %i.ih, %bb.ae ], [ %i.ih, %._crit_edge631 ] ; 4 uses
  store i32 0, ptr %i.q, align 4, !tbaa !33
  %i.iz = add i32 %i.id, -4                       ; 3 uses
  %.not603636 = icmp slt i32 %i.iz, 4             ; 2 uses
  br i1 %.not603636, label %._crit_edge641.thread, label %.lr.ph640.preheader

._crit_edge641.thread:                            ; preds = %.loopexit614
  %i.ja = load double, ptr %1, align 8, !tbaa !35
  br label %._crit_edge648

.lr.ph640.preheader:                              ; preds = %.loopexit614
  %i.jb = zext nneg i32 %i.iz to i64              ; 4 uses
  %i.jc = add nsw i64 %i.jb, -4                   ; 2 uses
  %i.jd = and i64 %i.jc, 4
  %lcmp.mod.not.not = icmp eq i64 %i.jd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph640.prol, label %.lr.ph640.prol.loopexit

.lr.ph640.prol:                                   ; preds = %.lr.ph640.preheader
  %i.je = getelementptr [8 x i8], ptr %i.u, i64 %i.jb ; 3 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 -8     ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !35 ; 2 uses
  %i.jh = fmul double %i.y, %i.iy
  %i.ji = fcmp ugt double %i.jg, %i.jh
  br i1 %i.ji, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph640.prol
  store double 0.000000e+00, ptr %i.jf, align 8, !tbaa !35
  %i.jj = getelementptr i8, ptr %i.je, i64 -24
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !35
  br label %.lr.ph640.prol.loopexit.unr-lcssa

bb.ag:                                            ; preds = %.lr.ph640.prol
  %i.jl = getelementptr i8, ptr %i.je, i64 -24
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !35
  %i.jn = fadd double %i.iy, %i.jg
  %i.jo = fdiv double %i.iy, %i.jn
  %i.jp = fmul double %i.jo, %i.jm
  br label %.lr.ph640.prol.loopexit.unr-lcssa

.lr.ph640.prol.loopexit.unr-lcssa:                ; preds = %bb.ag, %bb.af
  %.2556.prol = phi double [ %i.jk, %bb.af ], [ %i.jp, %bb.ag ]
  %indvars.iv.next757.prol = add nsw i64 %i.jb, -4
  br label %.lr.ph640.prol.loopexit

.lr.ph640.prol.loopexit:                          ; preds = %.lr.ph640.prol.loopexit.unr-lcssa, %.lr.ph640.preheader
  %indvars.iv756.unr = phi i64 [ %i.jb, %.lr.ph640.preheader ], [ %indvars.iv.next757.prol, %.lr.ph640.prol.loopexit.unr-lcssa ]
  %.1555637.unr = phi double [ %i.iy, %.lr.ph640.preheader ], [ %.2556.prol, %.lr.ph640.prol.loopexit.unr-lcssa ]
  %i.jq = icmp eq i64 %i.jc, 0
  br i1 %i.jq, label %.lr.ph647, label %.lr.ph640

.lr.ph640:                                        ; preds = %.lr.ph640.prol.loopexit, %bb.al
  %indvars.iv756 = phi i64 [ %indvars.iv.next757.1986, %bb.al ], [ %indvars.iv756.unr, %.lr.ph640.prol.loopexit ] ; 4 uses
  %.1555637 = phi double [ %.2556.1985, %bb.al ], [ %.1555637.unr, %.lr.ph640.prol.loopexit ] ; 3 uses
  %i.jr = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv756 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8     ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !35 ; 2 uses
  %i.ju = fmul double %i.y, %.1555637
  %i.jv = fcmp ugt double %i.jt, %i.ju
  br i1 %i.jv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph640
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !35
  %i.jw = getelementptr i8, ptr %i.jr, i64 -24
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !35
  br label %.lr.ph640.1984

bb.ai:                                            ; preds = %.lr.ph640
  %i.jy = getelementptr i8, ptr %i.jr, i64 -24
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !35
  %i.ka = fadd double %.1555637, %i.jt
  %i.kb = fdiv double %.1555637, %i.ka
  %i.kc = fmul double %i.kb, %i.jz
  br label %.lr.ph640.1984

.lr.ph640.1984:                                   ; preds = %bb.ah, %bb.ai
  %.2556 = phi double [ %i.jx, %bb.ah ], [ %i.kc, %bb.ai ] ; 3 uses
  %i.kd = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv756 ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 -40    ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !35 ; 2 uses
  %i.kg = fmul double %i.y, %.2556
  %i.kh = fcmp ugt double %i.kf, %i.kg
  br i1 %i.kh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph640.1984
  store double 0.000000e+00, ptr %i.ke, align 8, !tbaa !35
  %i.ki = getelementptr i8, ptr %i.kd, i64 -56
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !35
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph640.1984
  %i.kk = getelementptr i8, ptr %i.kd, i64 -56
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !35
  %i.km = fadd double %.2556, %i.kf
  %i.kn = fdiv double %.2556, %i.km
  %i.ko = fmul double %i.kn, %i.kl
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2556.1985 = phi double [ %i.kj, %bb.aj ], [ %i.ko, %bb.ak ]
  %indvars.iv.next757.1986 = add nsw i64 %indvars.iv756, -8
  %.not603.1987 = icmp slt i64 %indvars.iv756, 9
  br i1 %.not603.1987, label %.lr.ph647, label %.lr.ph640, !llvm.loop !15

.lr.ph647:                                        ; preds = %bb.al, %.lr.ph640.prol.loopexit
  %i.kp = load double, ptr %1, align 8, !tbaa !35
  %i.kq = zext nneg i32 %i.iz to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph647, %bb.ar
  %indvars.iv759 = phi i64 [ 4, %.lr.ph647 ], [ %indvars.iv.next760, %bb.ar ] ; 3 uses
  %.3557644 = phi double [ %i.kp, %.lr.ph647 ], [ %.4558, %bb.ar ] ; 5 uses
  %i.kr = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv759 ; 6 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8     ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !35 ; 4 uses
  %i.ku = fadd double %.3557644, %i.kt            ; 5 uses
  %i.kv = getelementptr i8, ptr %i.kr, i64 -16    ; 2 uses
  store double %i.ku, ptr %i.kv, align 8, !tbaa !35
  %i.kw = fmul double %i.y, %.3557644
  %i.kx = fcmp ugt double %i.kt, %i.kw
  br i1 %i.kx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store double %.3557644, ptr %i.kv, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.ks, align 8, !tbaa !35
  %i.ky = getelementptr i8, ptr %i.kr, i64 8
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !35
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.la = getelementptr i8, ptr %i.kr, i64 8
  %i.lb = load double, ptr %i.la, align 8, !tbaa !35 ; 4 uses
  %i.lc = fmul double %i.w, %i.lb
  %i.ld = fcmp olt double %i.lc, %i.ku
  %i.le = fmul double %i.w, %i.ku
  %i.lf = fcmp olt double %i.le, %i.lb
  %or.cond = and i1 %i.lf, %i.ld
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lg = fdiv double %i.lb, %i.ku                ; 2 uses
  %i.lh = fmul double %i.kt, %i.lg
  store double %i.lh, ptr %i.kr, align 8, !tbaa !35
  %i.li = fmul double %.3557644, %i.lg
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.lj = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %.3557644, i64 1
  %i.ll = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fdiv <2 x double> %i.lk, %i.lm
  %i.lo = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul <2 x double> %i.ln, %i.lp          ; 2 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0
  store double %i.lr, ptr %i.kr, align 8, !tbaa !35
  %i.ls = extractelement <2 x double> %i.lq, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %.4558 = phi double [ %i.kz, %bb.an ], [ %i.li, %bb.ap ], [ %i.ls, %bb.aq ] ; 2 uses
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 4
  %.not604.not = icmp samesign ult i64 %indvars.iv759, %i.kq
  br i1 %.not604.not, label %bb.am, label %._crit_edge648, !llvm.loop !16

._crit_edge648:                                   ; preds = %bb.ar, %._crit_edge641.thread
  %.3557.lcssa = phi double [ %i.ja, %._crit_edge641.thread ], [ %.4558, %bb.ar ]
  %i.lt = getelementptr i8, ptr %i.if, i64 -16
  store double %.3557.lcssa, ptr %i.lt, align 8, !tbaa !35
  %i.lu = add i32 %i.id, -3                       ; 2 uses
  br i1 %.not603636, label %._crit_edge648.1.thread, label %.lr.ph640.preheader.1

.lr.ph640.preheader.1:                            ; preds = %._crit_edge648
  %i.lv = sext i32 %i.id to i64
  %i.lw = getelementptr [8 x i8], ptr %i.u, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 -16
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !35
  %i.lz = sext i32 %i.lu to i64
  br label %.lr.ph640.1

.lr.ph640.1:                                      ; preds = %bb.au, %.lr.ph640.preheader.1
  %indvars.iv756.1 = phi i64 [ %i.lz, %.lr.ph640.preheader.1 ], [ %indvars.iv.next757.1, %bb.au ] ; 3 uses
  %.1555637.1 = phi double [ %i.ly, %.lr.ph640.preheader.1 ], [ %.2556.1.a, %bb.au ] ; 3 uses
  %i.ma = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv756.1 ; 3 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 -8     ; 2 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !35 ; 2 uses
  %i.md = fmul double %i.y, %.1555637.1
  %i.me = fcmp ugt double %i.mc, %i.md
  br i1 %i.me, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph640.1
  store double 0.000000e+00, ptr %i.mb, align 8, !tbaa !35
  %i.mf = getelementptr i8, ptr %i.ma, i64 -24
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !35
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph640.1
  %i.mh = getelementptr i8, ptr %i.ma, i64 -24
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !35
  %i.mj = fadd double %.1555637.1, %i.mc
  %i.mk = fdiv double %.1555637.1, %i.mj
  %i.ml = fmul double %i.mk, %i.mi
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.2556.1.a = phi double [ %i.mg, %bb.as ], [ %i.ml, %bb.at ]
  %indvars.iv.next757.1 = add nsw i64 %indvars.iv756.1, -4
  %.not603.1 = icmp slt i64 %indvars.iv756.1, 9
  br i1 %.not603.1, label %.lr.ph647.1, label %.lr.ph640.1, !llvm.loop !15

.lr.ph647.1:                                      ; preds = %bb.au
  %i.mm = getelementptr i8, ptr %1, i64 8
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !35
  %i.mo = sext i32 %i.lu to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.ba, %.lr.ph647.1
  %indvars.iv759.1 = phi i64 [ 5, %.lr.ph647.1 ], [ %indvars.iv.next760.1, %bb.ba ] ; 3 uses
  %.3557644.1 = phi double [ %i.mn, %.lr.ph647.1 ], [ %.4558.1, %bb.ba ] ; 5 uses
  %i.mp = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv759.1 ; 3 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 -8
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !35 ; 4 uses
  %i.ms = fadd double %.3557644.1, %i.mr          ; 5 uses
  %i.mt = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv759.1 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 -16    ; 3 uses
  %i.mv = getelementptr i8, ptr %i.mt, i64 -32    ; 2 uses
  store double %i.ms, ptr %i.mv, align 8, !tbaa !35
  %i.mw = fmul double %i.y, %.3557644.1
  %i.mx = fcmp ugt double %i.mr, %i.mw
  br i1 %i.mx, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store double %.3557644.1, ptr %i.mv, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.mu, align 8, !tbaa !35
  %i.my = getelementptr i8, ptr %i.mp, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !35
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.na = getelementptr i8, ptr %i.mp, i64 8
  %i.nb = load double, ptr %i.na, align 8, !tbaa !35 ; 4 uses
  %i.nc = fmul double %i.w, %i.nb
  %i.nd = fcmp olt double %i.nc, %i.ms
  %i.ne = fmul double %i.w, %i.ms
  %i.nf = fcmp olt double %i.ne, %i.nb
  %or.cond.1 = and i1 %i.nf, %i.nd
  br i1 %or.cond.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ng = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %.3557644.1, i64 1
  %i.ni = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = fdiv <2 x double> %i.nh, %i.nj
  %i.nl = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = fmul <2 x double> %i.nk, %i.nm          ; 2 uses
  %i.no = extractelement <2 x double> %i.nn, i64 0
  store double %i.no, ptr %i.mu, align 8, !tbaa !35
  %i.np = extractelement <2 x double> %i.nn, i64 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.nq = fdiv double %i.nb, %i.ms                ; 2 uses
  %i.nr = fmul double %i.mr, %i.nq
  store double %i.nr, ptr %i.mu, align 8, !tbaa !35
  %i.ns = fmul double %.3557644.1, %i.nq
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %.4558.1 = phi double [ %i.mz, %bb.aw ], [ %i.ns, %bb.az ], [ %i.np, %bb.ay ] ; 2 uses
  %indvars.iv.next760.1 = add nuw nsw i64 %indvars.iv759.1, 4 ; 2 uses
  %.not604.1 = icmp sgt i64 %indvars.iv.next760.1, %i.mo
  br i1 %.not604.1, label %._crit_edge648.1, label %bb.av, !llvm.loop !16

._crit_edge648.1.thread:                          ; preds = %._crit_edge648
  %i.nt = getelementptr i8, ptr %1, i64 8
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !35
  %i.nv = sext i32 %i.id to i64
  %i.nw = getelementptr [8 x i8], ptr %i.u, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 -24
  store double %i.nu, ptr %i.nx, align 8, !tbaa !35
  %i.ny = load double, ptr %1, align 8, !tbaa !35
  br label %._crit_edge655.1

._crit_edge648.1:                                 ; preds = %bb.ba
  %i.nz = sext i32 %i.id to i64
  %i.oa = getelementptr [8 x i8], ptr %i.u, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.oa, i64 -24
  store double %.4558.1, ptr %i.ob, align 8, !tbaa !35
  %i.oc = load double, ptr %1, align 8, !tbaa !35 ; 2 uses
  %.not605651.1 = icmp slt i32 %i.id, 8
  br i1 %.not605651.1, label %._crit_edge655.1, label %.lr.ph654.preheader.1

.lr.ph654.preheader.1:                            ; preds = %._crit_edge648.1
  %i.od = add nsw i32 %i.id, -3
  %i.oe = zext nneg i32 %i.od to i64
  br label %.lr.ph654.1

.lr.ph654.1:                                      ; preds = %.lr.ph654.1, %.lr.ph654.preheader.1
  %indvars.iv762.1 = phi i64 [ 5, %.lr.ph654.preheader.1 ], [ %indvars.iv.next763.1, %.lr.ph654.1 ] ; 2 uses
  %i.of = phi double [ %i.oc, %.lr.ph654.preheader.1 ], [ %i.oj, %.lr.ph654.1 ] ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv762.1
  %i.oh = load double, ptr %i.og, align 8, !tbaa !35 ; 2 uses
  %i.oi = fcmp oge double %i.of, %i.oh
  %i.oj = select i1 %i.oi, double %i.of, double %i.oh ; 2 uses
  %indvars.iv.next763.1 = add nuw nsw i64 %indvars.iv762.1, 4 ; 2 uses
  %.not605.1 = icmp samesign ugt i64 %indvars.iv.next763.1, %i.oe
  br i1 %.not605.1, label %._crit_edge655.1, label %.lr.ph654.1, !llvm.loop !17

._crit_edge655.1:                                 ; preds = %.lr.ph654.1, %._crit_edge648.1.thread, %._crit_edge648.1
  %.lcssa656661.1 = phi double [ %i.oc, %._crit_edge648.1 ], [ %i.ny, %._crit_edge648.1.thread ], [ %i.oj, %.lr.ph654.1 ]
  store i32 0, ptr %i.q, align 4, !tbaa !33
  store double %.lcssa656661.1, ptr %i.e, align 8
  store i32 0, ptr %i.o, align 4, !tbaa !33
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !35
  store i32 2, ptr %i.d, align 4, !tbaa !33
  store i32 0, ptr %i.i, align 4, !tbaa !33
  %i.ok = add i32 %i.hp, -2
  store i32 %i.ok, ptr %i.c, align 4, !tbaa !33
  %.not595710 = icmp slt i32 %i.ho, 0
  br i1 %.not595710, label %._crit_edge714, label %.lr.ph713.preheader

.lr.ph713.preheader:                              ; preds = %._crit_edge655.1
  %i.ol = add nuw i32 %i.ho, 1
  br label %.lr.ph713

.lr.ph713:                                        ; preds = %.lr.ph713.preheader, %bb.ca
  %i.om = phi i32 [ %i.sc, %bb.ca ], [ %i.ho, %.lr.ph713.preheader ] ; 9 uses
  %.0535711 = phi i32 [ %i.yp, %bb.ca ], [ 1, %.lr.ph713.preheader ] ; 2 uses
  %i.on = icmp slt i32 %i.om, 1
  br i1 %i.on, label %bb.cb, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph713
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !35
  %i.oo = load i32, ptr %0, align 4, !tbaa !33
  %i.op = icmp eq i32 %i.om, %i.oo
  br i1 %i.op, label %.thread, label %bb.bc

.thread:                                          ; preds = %bb.bb
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !35
  br label %._crit_edge808

bb.bc:                                            ; preds = %bb.bb
  %i.oq = shl i32 %i.om, 2
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr [8 x i8], ptr %i.u, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 -8
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !35 ; 2 uses
  %i.ov = fneg double %i.ou                       ; 2 uses
  store double %i.ov, ptr %i.k, align 8, !tbaa !35
  %i.ow = fcmp ogt double %i.ou, 0.000000e+00
  br i1 %i.ow, label %bb.bd, label %._crit_edge808

bb.bd:                                            ; preds = %bb.bc
  store i32 1, ptr %2, align 4, !tbaa !33
  br label %.loopexit

._crit_edge808:                                   ; preds = %bb.bc, %.thread
  %.promoted722806 = phi double [ 0.000000e+00, %.thread ], [ %i.ov, %bb.bc ]
  %.pre-phi810 = shl i32 %i.om, 2                 ; 4 uses
  %.pre-phi812 = sext i32 %.pre-phi810 to i64
  %i.ox = getelementptr [8 x i8], ptr %i.u, i64 %.pre-phi812
  %i.oy = getelementptr i8, ptr %i.ox, i64 -24
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !35 ; 5 uses
  store double %i.oz, ptr %i.e, align 8, !tbaa !35
  %i.pa = icmp sgt i32 %.pre-phi810, 7
  br i1 %i.pa, label %.lr.ph669.preheader, label %._crit_edge670

.lr.ph669.preheader:                              ; preds = %._crit_edge808
  %i.pb = zext nneg i32 %.pre-phi810 to i64
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %bb.bg
  %indvars.iv765 = phi i64 [ %i.pb, %.lr.ph669.preheader ], [ %indvars.iv.next766, %bb.bg ] ; 4 uses
  %.0562666 = phi double [ %i.oz, %.lr.ph669.preheader ], [ %.1563, %bb.bg ] ; 5 uses
  %.0566665 = phi double [ 0.000000e+00, %.lr.ph669.preheader ], [ %.1567, %bb.bg ] ; 5 uses
  %i.pc = phi double [ %i.oz, %.lr.ph669.preheader ], [ %i.pt, %bb.bg ] ; 2 uses
  %i.pd = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv765 ; 3 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 -40
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !35 ; 4 uses
  %i.pg = fcmp ugt double %i.pf, 0.000000e+00
  br i1 %i.pg, label %bb.be, label %._crit_edge670.loopexit.split.loop.exit879

bb.be:                                            ; preds = %.lr.ph669
  %i.ph = fmul double %.0566665, 4.000000e+00
  %i.pi = fcmp ult double %.0562666, %i.ph
  br i1 %i.pi, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pj = getelementptr i8, ptr %i.pd, i64 -24
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !35 ; 2 uses
  %i.pl = fcmp ole double %.0562666, %i.pk
  %i.pm = select i1 %i.pl, double %.0562666, double %i.pk
  %i.pn = fcmp oge double %.0566665, %i.pf
  %i.po = select i1 %i.pn, double %.0566665, double %i.pf
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1567 = phi double [ %i.po, %bb.bf ], [ %.0566665, %bb.be ] ; 2 uses
  %.1563 = phi double [ %i.pm, %bb.bf ], [ %.0562666, %bb.be ] ; 2 uses
  %i.pp = getelementptr i8, ptr %i.pd, i64 -56
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !35
  %i.pr = fadd double %i.pf, %i.pq                ; 2 uses
  %i.ps = fcmp oge double %i.pc, %i.pr
end_hunk_1
