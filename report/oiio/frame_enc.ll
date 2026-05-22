inline.NumInlined: 54
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8Residual = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.VP8EncIterator = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [37 x i8], ptr, i32, [9 x i32], [9 x i32], [4 x [3 x i64]], i64, i64, ptr, i32, i32, i32, i32, [2 x [2 x i8]], ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], [3359 x i8] }
%struct.VP8ModeScore = type { i64, i64, i64, i64, i64, [16 x i16], [16 x [16 x i16]], [8 x [16 x i16]], i32, [16 x i8], i32, i32, [2 x [3 x i8]] }

@VP8Cat3 = hidden local_unnamed_addr constant [3 x i8] c"\AD\94\8C", align 1
@VP8Cat4 = hidden local_unnamed_addr constant [4 x i8] c"\B0\9B\8C\87", align 1
@VP8Cat5 = hidden local_unnamed_addr constant [5 x i8] c"\B4\9D\8D\86\82", align 1
@VP8Cat6 = hidden local_unnamed_addr constant [11 x i8] c"\FE\FE\F3\E6\C4\B1\99\8C\85\82\81", align 1
@kAverageBytesPerMB = internal unnamed_addr constant [8 x i8] c"2\18\10\09\07\05\03\02", align 1
@VP8SetResidualCoeffs = external local_unnamed_addr global ptr, align 8
@VP8EntropyCost = external local_unnamed_addr constant [256 x i16], align 16
@VP8EncBands = external local_unnamed_addr constant [17 x i8], align 16
@VP8SSE16x16 = external local_unnamed_addr global ptr, align 8
@VP8SSE8x8 = external local_unnamed_addr global ptr, align 8
@VP8CoeffsUpdateProba = external local_unnamed_addr constant [4 x [8 x [3 x [11 x i8]]]], align 16
@VP8CoeffsProba0 = external local_unnamed_addr constant [4 x [8 x [3 x [11 x i8]]]], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncLoop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.VP8Residual, align 8        ; 56 uses
  %2 = alloca %struct.VP8Residual, align 8        ; 56 uses
  %3 = alloca %struct.VP8EncIterator, align 8     ; 31 uses
  %4 = alloca %struct.VP8ModeScore, align 8       ; 32 uses
  %5 = alloca %struct.VP8EncIterator, align 8     ; 40 uses
  %6 = alloca %struct.VP8ModeScore, align 8       ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = ashr i32 %i.b, 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr @kAverageBytesPerMB, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = mul i32 %i.i, %i.g
  %i.m = mul i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = sdiv i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = sext i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.s = load i32, ptr %i.n, align 4, !tbaa !29
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.i, %i.t
  br i1 %i.u, label %bb.c, label %PreLoopInitialize.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = tail call i32 @VP8BitWriterInit(ptr noundef nonnull %i.v, i64 noundef %i.r) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %PreLoopInitialize.exit, label %bb.b, !llvm.loop !30

PreLoopInitialize.exit:                           ; preds = %bb.c
  tail call void @VP8EncFreeBitWriters(ptr noundef nonnull %0) #9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = tail call i32 @WebPEncodingSetError(ptr noundef %i.y, i32 noundef 1) #9
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.as, label %PreLoopInitialize.exit.thread

PreLoopInitialize.exit.thread:                    ; preds = %bb.b, %PreLoopInitialize.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 23616
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 23636
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 2 uses
  %i.ae = icmp eq i32 %i.ab, 3
  switch i32 %i.ab, label %bb.e [
    i32 3, label %bb.d
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %PreLoopInitialize.exit.thread, %PreLoopInitialize.exit.thread
  %.not.i19 = icmp eq i32 %i.ad, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %PreLoopInitialize.exit.thread
  %i.af = phi i1 [ false, %PreLoopInitialize.exit.thread ], [ %.not.i19, %bb.d ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !35    ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 4 uses
  %i.aj = sdiv i32 %i.ai, 2
  %i.ak = add nsw i32 %i.aj, 20
  %i.al = sdiv i32 %i.ak, %i.ai                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !39
  %i.ao = add nsw i32 %i.an, 20
  %i.ap = icmp sgt i32 %i.ab, 2
  %i.aq = icmp ne i32 %i.ad, 0                    ; 3 uses
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq
  %i.as = zext i1 %i.ar to i32
  %i.at = load i32, ptr %i.h, align 8, !tbaa !27
  %i.au = load i32, ptr %i.j, align 4, !tbaa !28
  %i.av = mul nsw i32 %i.au, %i.at                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40 ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bb = sitofp i32 %i.ba to float               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !42
  %i.be = sitofp i32 %i.bd to float               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43 ; 3 uses
  %i.bh = fcmp olt float %i.bg, %i.bb
  %i.bi = fcmp ogt float %i.bg, %i.be
  %i.bj = select i1 %i.bi, float %i.be, float %i.bg
  %i.bk = select i1 %i.bh, float %i.bb, float %i.bj ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = sext i32 %i.ax to i64
  %i.bm = uitofp i64 %i.bl to double
  br label %InitPassStats.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !44 ; 2 uses
  %i.bp = fpext float %i.bo to double
  %i.bq = fcmp ogt float %i.bo, 0.000000e+00
  %i.br = select i1 %i.bq, double %i.bp, double 4.000000e+01
  br label %InitPassStats.exit.i

InitPassStats.exit.i:                             ; preds = %bb.g, %bb.f
  %i.bs = phi double [ %i.bm, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4676
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4224) %i.bt, i8 0, i64 4224, i1 false)
  br i1 %i.af, label %bb.h, label %bb.k

bb.h:                                             ; preds = %InitPassStats.exit.i
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %7 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 201)
  %i.bu = lshr i32 %7, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %8 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 203)
  %i.bv = lshr i32 %8, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %InitPassStats.exit.i
  %.054.i = phi i32 [ %i.bu, %bb.i ], [ %i.bv, %bb.j ], [ %i.av, %InitPassStats.exit.i ] ; 3 uses
  %i.bw = icmp sgt i32 %i.ai, 0
  br i1 %i.bw, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 23624 ; 3 uses
  %i.by = sext i32 %.054.i to i64
  %i.bz = mul nsw i64 %i.by, 384
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 23504 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 488
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 520
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 552
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 584
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 188 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 648
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 680
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 744
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 196 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 776
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not35.i.i = icmp eq i32 %i.al, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = icmp ne i32 %.054.i, 0
  %i.dy = uitofp i64 %i.bz to double
  %i.dz = fmul nnan double %i.dy, 6.502500e+04
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 3619 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 23500 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3616
  br label %bb.l

bb.l:                                             ; preds = %bb.ag, %.lr.ph.i
  %.05296.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.153.i, %bb.ag ] ; 2 uses
  %.sroa.0.095.i = phi i32 [ 1, %.lr.ph.i ], [ %.sroa.0.2.i, %bb.ag ] ; 3 uses
  %.sroa.5.094.i = phi float [ 1.000000e+01, %.lr.ph.i ], [ %.sroa.5.2.i, %bb.ag ] ; 5 uses
  %.sroa.10.093.i = phi float [ %i.bk, %.lr.ph.i ], [ %.sroa.10.2.i, %bb.ag ] ; 6 uses
  %.sroa.15.092.i = phi float [ %i.bk, %.lr.ph.i ], [ %.sroa.15.2.i, %bb.ag ] ; 3 uses
  %.sroa.26.091.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.26.2.i, %bb.ag ] ; 4 uses
  %i.ed = add nsw i32 %.05296.i, -1               ; 3 uses
  %i.ee = call float @llvm.fabs.f32(float %.sroa.5.094.i)
  %i.ef = fpext float %i.ee to double
  %i.eg = fcmp ole double %i.ef, 4.000000e-01
  %i.eh = icmp eq i32 %i.ed, 0
  %or.cond3.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = load i32, ptr %i.bx, align 8, !tbaa !45
  %i.ej = icmp eq i32 %i.ei, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ek = phi i1 [ %i.ej, %bb.m ], [ true, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  call fastcc void @SetLoopParams(ptr noundef nonnull %0, float noundef %.sroa.10.093.i)
  br label %bb.o

bb.o:                                             ; preds = %.critedge40.i.i, %bb.n
  %.032.i.i = phi i32 [ %.054.i, %bb.n ], [ %i.jh, %.critedge40.i.i ] ; 2 uses
  %.031.i.i = phi i64 [ 0, %bb.n ], [ %i.jb, %.critedge40.i.i ]
  %.030.i.i = phi i64 [ 0, %bb.n ], [ %i.jc, %.critedge40.i.i ]
  %.029.i.i = phi i64 [ 0, %bb.n ], [ %i.je, %.critedge40.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @VP8IteratorImport(ptr noundef nonnull %3, ptr noundef null) #9
  %i.el = call i32 @VP8Decimate(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef range(i32 0, 2) %i.as) #9
  %.not.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.em = load i32, ptr %i.ca, align 8, !tbaa !46
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ca, align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 4 uses
  call void @VP8IteratorNzToBytes(ptr noundef nonnull %3) #9
  %i.ep = load ptr, ptr %i.cc, align 8, !tbaa !51
  %i.eq = load i8, ptr %i.ep, align 4
  %i.er = and i8 %i.eq, 3
  %i.es = icmp eq i8 %i.er, 1
  br i1 %i.es, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @VP8InitResidual(i32 noundef 0, i32 noundef 1, ptr noundef %i.eo, ptr noundef nonnull %2) #9
  %i.et = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.et(ptr noundef nonnull %i.cd, ptr noundef nonnull %2) #9, !inline_history !53
  %i.eu = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.ev = load i32, ptr %i.cf, align 8, !tbaa !3
  %i.ew = add nsw i32 %i.ev, %i.eu
  %i.ex = call i32 @VP8RecordCoeffs(i32 noundef %i.ew, ptr noundef nonnull %2) #9 ; 2 uses
  store i32 %i.ex, ptr %i.cf, align 8, !tbaa !3
  store i32 %i.ex, ptr %i.ce, align 4, !tbaa !3
  call void @VP8InitResidual(i32 noundef 1, i32 noundef 0, ptr noundef %i.eo, ptr noundef nonnull %2) #9
  br label %RecordResiduals.exit.i.i

bb.s:                                             ; preds = %bb.q
  call void @VP8InitResidual(i32 noundef 0, i32 noundef 3, ptr noundef %i.eo, ptr noundef nonnull %2) #9
  br label %RecordResiduals.exit.i.i

RecordResiduals.exit.i.i:                         ; preds = %bb.s, %bb.r
  %i.ey = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ez = load i32, ptr %i.ch, align 8, !tbaa !3
  %i.fa = add nsw i32 %i.ez, %i.ey
  %i.fb = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.fb(ptr noundef nonnull %i.ci, ptr noundef nonnull %2) #9, !inline_history !53
  %i.fc = call i32 @VP8RecordCoeffs(i32 noundef %i.fa, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.fc, ptr %i.ch, align 8, !tbaa !3
  store i32 %i.fc, ptr %i.cg, align 4, !tbaa !3
  %i.fd = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.fe = add nsw i32 %i.fd, %i.fc
  %i.ff = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.ff(ptr noundef nonnull %i.ck, ptr noundef nonnull %2) #9, !inline_history !53
  %i.fg = call i32 @VP8RecordCoeffs(i32 noundef %i.fe, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.fg, ptr %i.ch, align 8, !tbaa !3
  store i32 %i.fg, ptr %i.cj, align 8, !tbaa !3
  %i.fh = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.fi = add nsw i32 %i.fh, %i.fg
  %i.fj = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.fj(ptr noundef nonnull %i.cm, ptr noundef nonnull %2) #9, !inline_history !53
  %i.fk = call i32 @VP8RecordCoeffs(i32 noundef %i.fi, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.fk, ptr %i.ch, align 8, !tbaa !3
  store i32 %i.fk, ptr %i.cl, align 4, !tbaa !3
  %i.fl = load i32, ptr %i.cn, align 8, !tbaa !3
  %i.fm = add nsw i32 %i.fl, %i.fk
  %i.fn = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.fn(ptr noundef nonnull %i.co, ptr noundef nonnull %2) #9, !inline_history !53
  %i.fo = call i32 @VP8RecordCoeffs(i32 noundef %i.fm, ptr noundef nonnull %2) #9 ; 2 uses
  store i32 %i.fo, ptr %i.ch, align 8, !tbaa !3
  store i32 %i.fo, ptr %i.cn, align 8, !tbaa !3
  %i.fp = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.fq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, %i.fp
  %i.fs = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.fs(ptr noundef nonnull %i.cq, ptr noundef nonnull %2) #9, !inline_history !53
  %i.ft = call i32 @VP8RecordCoeffs(i32 noundef %i.fr, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.ft, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.ft, ptr %i.cg, align 4, !tbaa !3
  %i.fu = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.fv = add nsw i32 %i.fu, %i.ft
  %i.fw = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.fw(ptr noundef nonnull %i.cr, ptr noundef nonnull %2) #9, !inline_history !53
  %i.fx = call i32 @VP8RecordCoeffs(i32 noundef %i.fv, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.fx, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.fx, ptr %i.cj, align 8, !tbaa !3
  %i.fy = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.fz = add nsw i32 %i.fy, %i.fx
  %i.ga = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.ga(ptr noundef nonnull %i.cs, ptr noundef nonnull %2) #9, !inline_history !53
  %i.gb = call i32 @VP8RecordCoeffs(i32 noundef %i.fz, ptr noundef nonnull %2) #9 ; 3 uses
  store i32 %i.gb, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.gb, ptr %i.cl, align 4, !tbaa !3
  %i.gc = load i32, ptr %i.cn, align 8, !tbaa !3
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = load ptr, ptr @VP8SetResidualCoeffs, align 8, !tbaa !52
  call void %i.ge(ptr noundef nonnull %i.ct, ptr noundef nonnull %2) #9, !inline_history !53
  %i.gf = call i32 @VP8RecordCoeffs(i32 noundef %i.gd, ptr noundef nonnull %2) #9 ; 2 uses
  store i32 %i.gf, ptr %i.cp, align 4, !tbaa !3
  store i32 %i.gf, ptr %i.cn, align 8, !tbaa !3
  %i.gg = load i32, ptr %i.cg, align 4, !tbaa !3
end_hunk_0
