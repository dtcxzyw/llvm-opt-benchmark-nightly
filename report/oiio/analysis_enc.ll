Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/analysis_enc?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SegmentJob = type { %struct.WebPWorker, [256 x i32], i32, i32, %struct.VP8EncIterator, i32 }
%struct.WebPWorker = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.VP8EncIterator = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [37 x i8], ptr, i32, [9 x i32], [9 x i32], [4 x [3 x i64]], i64, i64, ptr, i32, i32, i32, i32, [2 x [2 x i8]], ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], [3359 x i8] }
%struct.VP8Histogram = type { i32, i32 }

@VP8Mean16x4 = external local_unnamed_addr global ptr, align 8
@VP8CollectHistogram = external local_unnamed_addr global ptr, align 8
@VP8I16ModeOffsets = external local_unnamed_addr constant [4 x i16], align 2
@VP8UVModeOffsets = external local_unnamed_addr constant [4 x i16], align 2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncAnalyze(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 15 uses
  %i.b = alloca [4 x i32], align 16               ; 24 uses
  %i.c = alloca [256 x i32], align 16             ; 5 uses
  %i.d = alloca [4 x i32], align 16               ; 6 uses
  %i.e = alloca [4 x i32], align 16               ; 6 uses
  %1 = alloca %struct.SegmentJob, align 8         ; 28 uses
  %2 = alloca %struct.SegmentJob, align 8         ; 16 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30
  %i.n = icmp slt i32 %i.m, 2
  br i1 %i.n, label %.critedge, label %.critedge52

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = mul nsw i32 %i.r, %i.p                   ; 2 uses
  %i.t = mul nsw i32 %i.p, 9
  %i.u = add nsw i32 %i.t, 15
  %i.v = ashr i32 %i.u, 4                         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.x = load i32, ptr %i.w, align 8, !tbaa !33
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp sgt i32 %i.v, 1
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = tail call ptr @WebPGetWorkerInterface() #7 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.ac = tail call ptr @WebPGetWorkerInterface() #7
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  call void %i.ad(ptr noundef nonnull %1) #7, !inline_history !36
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @DoSegmentsJob, ptr %i.ah, align 8, !tbaa !43
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #7
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.af, i32 noundef 0) #7
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !32
  %i.aj = mul nsw i32 %i.ai, %i.v
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.af, i32 noundef %i.aj) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false)
  store i32 20, ptr %i.al, align 8, !tbaa !44
  %i.am = call ptr @WebPGetWorkerInterface() #7
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  call void %i.an(ptr noundef nonnull %2) #7, !inline_history !36
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %2, ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1080 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @DoSegmentsJob, ptr %i.ar, align 8, !tbaa !43
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.ap) #7
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.ap, i32 noundef range(i32 0, 134217728) %i.v) #7
  %i.as = sub nsw i32 %i.p, %i.v
  %i.at = load i32, ptr %i.q, align 8, !tbaa !32
  %i.au = mul nsw i32 %i.at, %i.as
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.ap, i32 noundef %i.au) #7
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false)
  store i32 0, ptr %i.aw, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.az = call i32 %i.ay(ptr noundef nonnull %2) #7
  %i.ba = and i32 %i.az, 1
  %.not47 = icmp eq i32 %i.ba, 0
  br i1 %.not47, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  call void %i.bc(ptr noundef nonnull %2) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  call void %i.be(ptr noundef nonnull %2) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48
  call void %i.bg(ptr noundef nonnull %1) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bj = call i32 %i.bi(ptr noundef nonnull %2) #7
  %i.bk = and i32 %i.bj, 1
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bm = call i32 %i.bl(ptr noundef nonnull %1) #7
  %i.bn = and i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46
  call void %i.bp(ptr noundef nonnull %2) #7
  %.not48 = icmp eq i32 %i.bn, 0
  br i1 %.not48, label %bb.f, label %vector.body

vector.body:                                      ; preds = %bb.e, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.e ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 8, !tbaa !3
  %wide.load107 = load <4 x i32>, ptr %i.br, align 8, !tbaa !3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load108 = load <4 x i32>, ptr %i.bs, align 8, !tbaa !3
  %wide.load109 = load <4 x i32>, ptr %i.bt, align 8, !tbaa !3
  %i.bu = add nsw <4 x i32> %wide.load108, %wide.load
  %i.bv = add nsw <4 x i32> %wide.load109, %wide.load107
  store <4 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !3
  store <4 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !3
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bw, align 8, !tbaa !3
  %wide.load107.1 = load <4 x i32>, ptr %i.bx, align 8, !tbaa !3
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index.next ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load108.1 = load <4 x i32>, ptr %i.by, align 8, !tbaa !3
  %wide.load109.1 = load <4 x i32>, ptr %i.bz, align 8, !tbaa !3
  %i.ca = add nsw <4 x i32> %wide.load108.1, %wide.load.1
  %i.cb = add nsw <4 x i32> %wide.load109.1, %wide.load107.1
  store <4 x i32> %i.ca, ptr %i.by, align 8, !tbaa !3
  store <4 x i32> %i.cb, ptr %i.bz, align 8, !tbaa !3
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next.1, 256
  br i1 %i.cc, label %MergeJobs.exit, label %vector.body, !llvm.loop !50

MergeJobs.exit:                                   ; preds = %vector.body
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.cd, align 8, !tbaa !3
  %i.cg = load <2 x i32>, ptr %i.ce, align 8, !tbaa !3
  %i.ch = add nsw <2 x i32> %i.cg, %i.cf
  store <2 x i32> %i.ch, ptr %i.ce, align 8, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %.thread, %MergeJobs.exit, %bb.e
  %.062 = phi i32 [ 0, %.thread ], [ 1, %MergeJobs.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ci = tail call ptr @WebPGetWorkerInterface() #7
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34
  call void %i.cj(ptr noundef nonnull %1) #7, !inline_history !36
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.ck, align 8, !tbaa !37
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @DoSegmentsJob, ptr %i.cn, align 8, !tbaa !43
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.cl) #7
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.cl, i32 noundef 0) #7
  %i.co = load i32, ptr %i.q, align 8, !tbaa !32
  %i.cp = mul nsw i32 %i.co, %i.p
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.cl, i32 noundef %i.cp) #7
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cq, i8 0, i64 1032, i1 false)
  store i32 20, ptr %i.cr, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !48
  call void %i.ct(ptr noundef nonnull %1) #7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !49
  %i.cw = call i32 %i.cv(ptr noundef nonnull %1) #7
  %i.cx = and i32 %i.cw, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.062, %bb.f ], [ %i.cx, %bb.g ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46
  call void %i.cz(ptr noundef nonnull %1) #7
  %.not49 = icmp eq i32 %.1, 0
  br i1 %.not49, label %.thread63, label %vector.ph110

.thread63:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !54
  %i.dc = call i32 @WebPEncodingSetError(ptr noundef %i.db, i32 noundef 1) #7
  br label %bb.aa

vector.ph110:                                     ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  %i.df = sdiv i32 %i.de, %i.s
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3588
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !57
  %i.dj = sdiv i32 %i.di, %i.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3592
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !58
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !29 ; 6 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.dn, i32 4) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body.interim.3, %vector.ph110
  %index112 = phi i64 [ 0, %vector.ph110 ], [ %index.next114.3, %vector.body.interim.3 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index112
  %wide.load113 = load <4 x i32>, ptr %i.do, align 8, !tbaa !3
  %wide.load113.fr = freeze <4 x i32> %wide.load113
  %i.dp = icmp ne <4 x i32> %wide.load113.fr, zeroinitializer ; 2 uses
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %.not128 = icmp eq i4 %i.dq, 0
  br i1 %.not128, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body111
  %index.next114 = or disjoint i64 %index112, 4   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next114
  %wide.load113.1 = load <4 x i32>, ptr %i.dr, align 8, !tbaa !3
  %wide.load113.fr.1 = freeze <4 x i32> %wide.load113.1
  %i.ds = icmp ne <4 x i32> %wide.load113.fr.1, zeroinitializer ; 2 uses
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %.not128.1 = icmp eq i4 %i.dt, 0
  br i1 %.not128.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next114.1 = or disjoint i64 %index112, 8 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next114.1
  %wide.load113.2 = load <4 x i32>, ptr %i.du, align 8, !tbaa !3
  %wide.load113.fr.2 = freeze <4 x i32> %wide.load113.2
  %i.dv = icmp ne <4 x i32> %wide.load113.fr.2, zeroinitializer ; 2 uses
  %i.dw = bitcast <4 x i1> %i.dv to i4
  %.not128.2 = icmp eq i4 %i.dw, 0
  br i1 %.not128.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %index.next114.2 = or disjoint i64 %index112, 12 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next114.2
  %wide.load113.3 = load <4 x i32>, ptr %i.dx, align 8, !tbaa !3
  %wide.load113.fr.3 = freeze <4 x i32> %wide.load113.3
  %i.dy = icmp ne <4 x i32> %wide.load113.fr.3, zeroinitializer ; 2 uses
  %i.dz = bitcast <4 x i1> %i.dy to i4
  %.not128.3 = icmp eq i4 %i.dz, 0
  br i1 %.not128.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %index.next114.3 = add nuw nsw i64 %index112, 16 ; 2 uses
  %i.ea = icmp eq i64 %index.next114.3, 256
  br i1 %i.ea, label %.critedge2.i, label %vector.body111, !llvm.loop !59

vector.early.exit:                                ; preds = %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body111
  %index112.lcssa = phi i64 [ %index112, %vector.body111 ], [ %index.next114, %vector.body.interim ], [ %index.next114.1, %vector.body.interim.1 ], [ %index.next114.2, %vector.body.interim.2 ]
  %.lcssa139 = phi <4 x i1> [ %i.dp, %vector.body111 ], [ %i.ds, %vector.body.interim ], [ %i.dv, %vector.body.interim.1 ], [ %i.dy, %vector.body.interim.2 ]
  %i.eb = call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa139, i1 false)
  %i.ec = add i64 %index112.lcssa, %i.eb          ; 3 uses
  %i.ed = trunc nuw nsw i64 %i.ec to i32          ; 4 uses
  %i.ee = icmp samesign ult i64 %i.ec, 255
  br i1 %i.ee, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %vector.early.exit, %bb.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.i ], [ 255, %vector.early.exit ] ; 3 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv163.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.i, label %.critedge2.loopexit.split.loop.exit211.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 2 uses
  %i.ei = icmp samesign ugt i64 %indvars.iv.next164.i, %i.ec
  br i1 %i.ei, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !60

.critedge2.loopexit.split.loop.exit211.i:         ; preds = %.lr.ph.i
  %i.ej = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %vector.body.interim.3, %bb.i, %.critedge2.loopexit.split.loop.exit211.i, %vector.early.exit
  %.0103.lcssa198.i = phi i32 [ %i.ed, %vector.early.exit ], [ %i.ed, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.ed, %bb.i ], [ 256, %vector.body.interim.3 ] ; 8 uses
  %.1104.lcssa.i = phi i32 [ 255, %vector.early.exit ], [ %i.ej, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.ed, %bb.i ], [ 255, %vector.body.interim.3 ] ; 3 uses
  %i.ek = sub nsw i32 %.1104.lcssa.i, %.0103.lcssa198.i ; 4 uses
  %i.el = icmp sgt i32 %i.dn, 0                   ; 2 uses
  br i1 %i.el, label %.lr.ph135.i, label %.preheader126.i

.lr.ph135.i:                                      ; preds = %.critedge2.i
  %i.em = shl nuw nsw i32 %spec.select.i, 1       ; 4 uses
  %i.en = sdiv i32 %i.ek, %i.em
  %i.eo = add nsw i32 %i.en, %.0103.lcssa198.i
  store i32 %i.eo, ptr %i.b, align 16, !tbaa !3
  %exitcond169.not.i = icmp eq i32 %i.dn, 1
  br i1 %exitcond169.not.i, label %.preheader126.i, label %bb.m

.preheader126.i:                                  ; preds = %.lr.ph135.i, %bb.m, %bb.n, %bb.o, %.critedge2.i
  %wide.trip.count185.i.pre-phi = zext i32 %spec.select.i to i64
  %.not138.i.a = icmp sgt i32 %.0103.lcssa198.i, %.1104.lcssa.i ; 2 uses
  %i.ep = add i32 %spec.select.i, -1
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 4                ; 2 uses
  %3 = sext i32 %spec.select.i to i64             ; 6 uses
  %i.et = zext nneg i32 %.0103.lcssa198.i to i64  ; 2 uses
  %smax179.i = call i32 @llvm.smax.i32(i32 %.1104.lcssa.i, i32 %.0103.lcssa198.i)
  %i.eu = add nuw nsw i32 %smax179.i, 1
  %wide.trip.count180.i = zext i32 %i.eu to i64   ; 2 uses
  br i1 %i.el, label %.preheader125.i.us, label %.preheader124.i

.preheader125.i.us:                               ; preds = %.preheader126.i, %._crit_edge.i.us
  %.1102150.i.us = phi i32 [ %i.gl, %._crit_edge.i.us ], [ 0, %.preheader126.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.es, i1 false), !tbaa !3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.es, i1 false), !tbaa !3
  br i1 %.not138.i.a, label %.lr.ph146.i.us.preheader, label %.lr.ph141.i.us

.lr.ph141.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %indvars.iv176.i.us = phi i64 [ %indvars.iv.next177.i.us, %bb.j ], [ %i.et, %.preheader125.i.us ] ; 4 uses
  %.4139.i.us = phi i32 [ %.6.i.us, %bb.j ], [ 0, %.preheader125.i.us ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv176.i.us
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 3 uses
  %.not114.i.us = icmp eq i32 %i.ew, 0
  br i1 %.not114.i.us, label %bb.j, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %.lr.ph141.i.us
  %i.ex = zext nneg i32 %.4139.i.us to i64        ; 5 uses
  %i.ey = add nuw nsw i32 %.4139.i.us, 1
  %smax.i.us = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.ey)
  %i.ez = add nsw i32 %smax.i.us, -1              ; 4 uses
  %i.fa = trunc nuw nsw i64 %indvars.iv176.i.us to i32 ; 7 uses
  %indvars.iv.next174.i.us103 = add nuw nsw i64 %i.ex, 1 ; 4 uses
  %4 = icmp slt i64 %indvars.iv.next174.i.us103, %3
  br i1 %4, label %.lr.ph106, label %.critedge4.i.us

.preheader.i.us:                                  ; preds = %.lr.ph106
  %indvars.iv.next174.i.us = add nuw nsw i64 %i.ex, 2 ; 4 uses
  %5 = icmp slt i64 %indvars.iv.next174.i.us, %3
  br i1 %5, label %.lr.ph106.1, label %.critedge4.i.us

.lr.ph106.1:                                      ; preds = %.preheader.i.us
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %7 = load i32, ptr %6, align 4, !tbaa !3
  %8 = sub nsw i32 %i.fa, %7
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %11 = load i32, ptr %10, align 4, !tbaa !3
  %12 = sub nsw i32 %i.fa, %11
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp samesign ult i32 %9, %13
  br i1 %14, label %.preheader.i.us.1, label %.critedge4.loopexit.i.us, !llvm.loop !61

.preheader.i.us.1:                                ; preds = %.lr.ph106.1
  %indvars.iv.next174.i.us.1 = add nuw nsw i64 %i.ex, 3 ; 2 uses
  %15 = icmp slt i64 %indvars.iv.next174.i.us.1, %3
  br i1 %15, label %.lr.ph106.2, label %.critedge4.i.us

.lr.ph106.2:                                      ; preds = %.preheader.i.us.1
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us.1
  %17 = load i32, ptr %16, align 4, !tbaa !3
  %18 = sub nsw i32 %i.fa, %17
  %19 = call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %21 = load i32, ptr %20, align 4, !tbaa !3
  %22 = sub nsw i32 %i.fa, %21
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %i.fb = icmp samesign ult i32 %19, %23
  br i1 %i.fb, label %.critedge4.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !61

.lr.ph106:                                        ; preds = %.preheader.preheader.i.us
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = sub nsw i32 %i.fa, %i.fd
  %i.ff = call i32 @llvm.abs.i32(i32 %i.fe, i1 true)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = sub nsw i32 %i.fa, %i.fh
  %i.fj = call i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  %i.fk = icmp samesign ult i32 %i.ff, %i.fj
  br i1 %i.fk, label %.preheader.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !61

.critedge4.loopexit.i.us:                         ; preds = %.lr.ph106.2, %.lr.ph106.1, %.lr.ph106
  %indvars.iv173.i.us104.lcssa = phi i64 [ %i.ex, %.lr.ph106 ], [ %indvars.iv.next174.i.us103, %.lr.ph106.1 ], [ %indvars.iv.next174.i.us, %.lr.ph106.2 ]
  %i.fl = trunc nuw nsw i64 %indvars.iv173.i.us104.lcssa to i32
  br label %.critedge4.i.us

.critedge4.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.1, %.lr.ph106.2, %.preheader.preheader.i.us, %.critedge4.loopexit.i.us
  %.5.lcssa.i.us = phi i32 [ %i.fl, %.critedge4.loopexit.i.us ], [ %i.ez, %.preheader.preheader.i.us ], [ %i.ez, %.lr.ph106.2 ], [ %i.ez, %.preheader.i.us.1 ], [ %i.ez, %.preheader.i.us ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i.us
  store i32 %.5.lcssa.i.us, ptr %i.fm, align 4, !tbaa !3
  %i.fn = mul nsw i32 %i.ew, %i.fa
  %i.fo = zext nneg i32 %.5.lcssa.i.us to i64     ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = add nsw i32 %i.fq, %i.fn
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fo ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = add nsw i32 %i.ft, %i.ew
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.critedge4.i.us, %.lr.ph141.i.us
  %.6.i.us = phi i32 [ %.5.lcssa.i.us, %.critedge4.i.us ], [ %.4139.i.us, %.lr.ph141.i.us ]
  %indvars.iv.next177.i.us = add nuw nsw i64 %indvars.iv176.i.us, 1 ; 2 uses
  %exitcond181.not.i.us = icmp eq i64 %indvars.iv.next177.i.us, %wide.trip.count180.i
  br i1 %exitcond181.not.i.us, label %.lr.ph146.i.us.preheader, label %.lr.ph141.i.us, !llvm.loop !62

.lr.ph146.i.us.preheader:                         ; preds = %bb.j, %.preheader125.i.us
  br label %.lr.ph146.i.us

.lr.ph146.i.us:                                   ; preds = %.lr.ph146.i.us.preheader, %bb.l
  %indvars.iv182.i.us = phi i64 [ %indvars.iv.next183.i.us, %bb.l ], [ 0, %.lr.ph146.i.us.preheader ] ; 4 uses
  %.1145.i.us = phi i32 [ %.2.i.us, %bb.l ], [ 0, %.lr.ph146.i.us.preheader ] ; 2 uses
  %.097144.i.us = phi i32 [ %.198.i.us, %bb.l ], [ 0, %.lr.ph146.i.us.preheader ] ; 2 uses
  %.099143.i.us = phi i32 [ %.1100.i.us, %bb.l ], [ 0, %.lr.ph146.i.us.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv182.i.us
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3  ; 5 uses
  %.not113.i.us = icmp eq i32 %i.fw, 0
  br i1 %.not113.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph146.i.us
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv182.i.us
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = sdiv i32 %i.fw, 2
  %i.ga = add nsw i32 %i.fy, %i.fz
  %i.gb = sdiv i32 %i.ga, %i.fw                   ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv182.i.us ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = sub nsw i32 %i.gd, %i.gb
  %i.gf = call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %i.gg = add nuw nsw i32 %i.gf, %.097144.i.us
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !3
  %i.gh = mul nsw i32 %i.gb, %i.fw
  %i.gi = add nsw i32 %i.gh, %.1145.i.us
  %i.gj = add nsw i32 %i.fw, %.099143.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph146.i.us
  %.1100.i.us = phi i32 [ %i.gj, %bb.k ], [ %.099143.i.us, %.lr.ph146.i.us ] ; 3 uses
  %.198.i.us = phi i32 [ %i.gg, %bb.k ], [ %.097144.i.us, %.lr.ph146.i.us ] ; 2 uses
  %.2.i.us = phi i32 [ %i.gi, %bb.k ], [ %.1145.i.us, %.lr.ph146.i.us ] ; 2 uses
  %indvars.iv.next183.i.us = add nuw nsw i64 %indvars.iv182.i.us, 1 ; 2 uses
  %exitcond186.not.i.us.a = icmp eq i64 %indvars.iv.next183.i.us, %wide.trip.count185.i.pre-phi
  br i1 %exitcond186.not.i.us.a, label %._crit_edge.i.us, label %.lr.ph146.i.us, !llvm.loop !63

._crit_edge.i.us:                                 ; preds = %bb.l
  %i.gk = icmp slt i32 %.198.i.us, 5
  %i.gl = add nuw nsw i32 %.1102150.i.us, 1       ; 2 uses
  %exitcond187.not.i.us = icmp eq i32 %i.gl, 6
  %or.cond.i.us = select i1 %i.gk, i1 true, i1 %exitcond187.not.i.us
  br i1 %or.cond.i.us, label %._crit_edge.thread.sink.split.i, label %.preheader125.i.us, !llvm.loop !64

bb.m:                                             ; preds = %.lr.ph135.i
  %i.gm = mul nsw i32 %i.ek, 3
  %i.gn = sdiv i32 %i.gm, %i.em
  %i.go = add nsw i32 %i.gn, %.0103.lcssa198.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !3
  %exitcond169.not.i.1 = icmp eq i32 %i.dn, 2
  br i1 %exitcond169.not.i.1, label %.preheader126.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gq = mul nsw i32 %i.ek, 5
  %i.gr = sdiv i32 %i.gq, %i.em
  %i.gs = add nsw i32 %i.gr, %.0103.lcssa198.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.gs, ptr %i.gt, align 8, !tbaa !3
  %exitcond169.not.i.2 = icmp eq i32 %i.dn, 3
  br i1 %exitcond169.not.i.2, label %.preheader126.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gu = mul nsw i32 %i.ek, 7
  %i.gv = sdiv i32 %i.gu, %i.em
  %i.gw = add nsw i32 %i.gv, %.0103.lcssa198.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !3
  br label %.preheader126.i

.preheader124.i:                                  ; preds = %.preheader126.i
  br i1 %.not138.i.a, label %._crit_edge.thread.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.preheader124.i, %bb.p
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %bb.p ], [ %i.et, %.preheader124.i ] ; 4 uses
  %.4139.i = phi i32 [ %.6.i, %bb.p ], [ 0, %.preheader124.i ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv176.i
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3  ; 3 uses
  %.not114.i = icmp eq i32 %i.gz, 0
  br i1 %.not114.i, label %bb.p, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph141.i
  %i.ha = zext nneg i32 %.4139.i to i64           ; 5 uses
  %i.hb = add nuw nsw i32 %.4139.i, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.hb)
  %i.hc = add nsw i32 %smax.i, -1                 ; 4 uses
  %i.hd = trunc nuw nsw i64 %indvars.iv176.i to i32 ; 7 uses
  %indvars.iv.next174.i100 = add nuw nsw i64 %i.ha, 1 ; 4 uses
  %i.he = icmp slt i64 %indvars.iv.next174.i100, %3
  br i1 %i.he, label %.lr.ph, label %.critedge4.i

.preheader.i:                                     ; preds = %.lr.ph
  %indvars.iv.next174.i = add nuw nsw i64 %i.ha, 2 ; 4 uses
  %i.hf = icmp slt i64 %indvars.iv.next174.i, %3
  br i1 %i.hf, label %.lr.ph.1, label %.critedge4.i

.lr.ph.1:                                         ; preds = %.preheader.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hi = sub nsw i32 %i.hd, %i.hh
  %i.hj = call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sub nsw i32 %i.hd, %i.hl
  %i.hn = call i32 @llvm.abs.i32(i32 %i.hm, i1 true)
  %i.ho = icmp samesign ult i32 %i.hj, %i.hn
  br i1 %i.ho, label %.preheader.i.1, label %.critedge4.loopexit.i, !llvm.loop !61

.preheader.i.1:                                   ; preds = %.lr.ph.1
  %indvars.iv.next174.i.1 = add nuw nsw i64 %i.ha, 3 ; 2 uses
  %i.hp = icmp slt i64 %indvars.iv.next174.i.1, %3
  br i1 %i.hp, label %.lr.ph.2, label %.critedge4.i

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.1
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = sub nsw i32 %i.hd, %i.hr
  %i.ht = call i32 @llvm.abs.i32(i32 %i.hs, i1 true)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = sub nsw i32 %i.hd, %i.hv
  %i.hx = call i32 @llvm.abs.i32(i32 %i.hw, i1 true)
  %i.hy = icmp samesign ult i32 %i.ht, %i.hx
  br i1 %i.hy, label %.critedge4.i, label %.critedge4.loopexit.i, !llvm.loop !61

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = sub nsw i32 %i.hd, %i.ia
  %i.ic = call i32 @llvm.abs.i32(i32 %i.ib, i1 true)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ha
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = sub nsw i32 %i.hd, %i.ie
  %i.ig = call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = icmp samesign ult i32 %i.ic, %i.ig
  br i1 %i.ih, label %.preheader.i, label %.critedge4.loopexit.i, !llvm.loop !61

.critedge4.loopexit.i:                            ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv173.i101.lcssa = phi i64 [ %i.ha, %.lr.ph ], [ %indvars.iv.next174.i100, %.lr.ph.1 ], [ %indvars.iv.next174.i, %.lr.ph.2 ]
  %i.ii = trunc nuw nsw i64 %indvars.iv173.i101.lcssa to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.preheader.i, %.preheader.i.1, %.lr.ph.2, %.preheader.preheader.i, %.critedge4.loopexit.i
  %.5.lcssa.i = phi i32 [ %i.ii, %.critedge4.loopexit.i ], [ %i.hc, %.preheader.preheader.i ], [ %i.hc, %.lr.ph.2 ], [ %i.hc, %.preheader.i.1 ], [ %i.hc, %.preheader.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i
  store i32 %.5.lcssa.i, ptr %i.ij, align 4, !tbaa !3
  %i.ik = mul nsw i32 %i.gz, %i.hd
  %i.il = zext nneg i32 %.5.lcssa.i to i64        ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = add nsw i32 %i.in, %i.ik
  store i32 %i.io, ptr %i.im, align 4, !tbaa !3
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.il ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = add nsw i32 %i.iq, %i.gz
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %.critedge4.i, %.lr.ph141.i
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge4.i ], [ %.4139.i, %.lr.ph141.i ]
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.thread.i, label %.lr.ph141.i, !llvm.loop !62

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i.us
  %i.is = sdiv i32 %.1100.i.us, 2
  %i.it = add nsw i32 %.2.i.us, %i.is
  %i.iu = sdiv i32 %i.it, %.1100.i.us
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.p, %.preheader124.i, %._crit_edge.thread.sink.split.i
  %i.iv = phi i32 [ %i.iu, %._crit_edge.thread.sink.split.i ], [ poison, %.preheader124.i ], [ poison, %bb.p ]
  %i.iw = load i32, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.ix = load i32, ptr %i.o, align 4, !tbaa !31  ; 2 uses
  %i.iy = mul nsw i32 %i.ix, %i.iw                ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %._crit_edge.thread.i
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next189.i, %bb.q ] ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !65
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv188.i ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !66
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !3  ; 2 uses
  %i.ji = trunc i32 %i.jh to i8
  %i.jj = load i8, ptr %i.jc, align 4
  %i.jk = shl i8 %i.ji, 5
  %i.jl = and i8 %i.jk, 96
  %i.jm = and i8 %i.jj, -97
  %i.jn = or disjoint i8 %i.jl, %i.jm
  store i8 %i.jn, ptr %i.jc, align 4
  %i.jo = sext i32 %i.jh to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = trunc i32 %i.jq to i8
  store i8 %i.jr, ptr %i.jd, align 1, !tbaa !66
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.js = load i32, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.jt = load i32, ptr %i.o, align 4, !tbaa !31  ; 2 uses
  %i.ju = mul nsw i32 %i.jt, %i.js                ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next189.i, %i.jv
  br i1 %i.jw, label %bb.q, label %._crit_edge154.i, !llvm.loop !68

._crit_edge154.i:                                 ; preds = %bb.q, %._crit_edge.thread.i
  %.lcssa128.i = phi i32 [ %i.iw, %._crit_edge.thread.i ], [ %i.js, %bb.q ] ; 7 uses
  %.lcssa127.i = phi i32 [ %i.ix, %._crit_edge.thread.i ], [ %i.jt, %bb.q ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.iy, %._crit_edge.thread.i ], [ %i.ju, %bb.q ]
  %i.jx = icmp sgt i32 %i.dn, 1
  br i1 %i.jx, label %bb.r, label %SmoothSegmentMap.exit.i

bb.r:                                             ; preds = %._crit_edge154.i
  %i.jy = load ptr, ptr %0, align 8, !tbaa !7
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 68
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !69
  %i.kb = and i32 %i.ka, 1
  %.not112.i = icmp eq i32 %i.kb, 0
  br i1 %.not112.i, label %SmoothSegmentMap.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kc = sext i32 %.lcssa.i to i64
  %i.kd = call ptr @WebPSafeMalloc(i64 noundef %i.kc, i64 noundef 1) #7 ; 6 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %SmoothSegmentMap.exit.i, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.s
  %i.kf = add nsw i32 %.lcssa127.i, -1
  %i.kg = icmp sgt i32 %.lcssa127.i, 2
  br i1 %i.kg, label %.preheader62.lr.ph.i.i, label %._crit_edge71.split.i.i

.preheader62.lr.ph.i.i:                           ; preds = %.preheader63.i.i
  %i.kh = add i32 %.lcssa128.i, -1                ; 3 uses
  %i.ki = icmp sgt i32 %.lcssa128.i, 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 23648 ; 4 uses
  %i.kk = sub nsw i32 0, %.lcssa128.i
  %i.kl = xor i32 %.lcssa128.i, -1
  %i.km = sext i32 %i.kl to i64
  %i.kn = sext i32 %i.kk to i64
  %i.ko = sub i32 1, %.lcssa128.i
  %i.kp = sext i32 %i.ko to i64
  %i.kq = sext i32 %i.kh to i64
  %i.kr = sext i32 %.lcssa128.i to i64
  br i1 %i.ki, label %.preheader62.preheader.i.i, label %._crit_edge71.split.i.i

.preheader62.preheader.i.i:                       ; preds = %.preheader62.lr.ph.i.i
  %i.ks = zext nneg i32 %.lcssa128.i to i64       ; 2 uses
  %wide.trip.count78.i.i = zext nneg i32 %i.kf to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.kh to i64    ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader62.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 1, %.preheader62.preheader.i.i ], [ %indvars.iv.next76.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.kw = mul nuw nsw i64 %indvars.iv75.i.i, %i.ks
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i, %.preheader62.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.preheader62.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.kx = load ptr, ptr %i.kj, align 8, !tbaa !65
  %i.ky = add nuw nsw i64 %indvars.iv.i.i, %i.kw  ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ky ; 8 uses
  %i.la = load i8, ptr %i.kz, align 4
  %i.lb = lshr i8 %i.la, 5
  %i.lc = and i8 %i.lb, 3
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.km
  %i.le = load i8, ptr %i.ld, align 4
  %i.lf = lshr i8 %i.le, 5
  %i.lg = and i8 %i.lf, 3
  %i.lh = zext nneg i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !3
  %i.lk = add nsw i32 %i.lj, 1
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !3
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.kn
  %i.lm = load i8, ptr %i.ll, align 4
  %i.ln = lshr i8 %i.lm, 5
  %i.lo = and i8 %i.ln, 3
  %i.lp = zext nneg i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !3
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.kp
  %i.lu = load i8, ptr %i.lt, align 4
  %i.lv = lshr i8 %i.lu, 5
  %i.lw = and i8 %i.lv, 3
  %i.lx = zext nneg i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lx ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !3
  %i.mb = getelementptr inbounds i8, ptr %i.kz, i64 -4
  %i.mc = load i8, ptr %i.mb, align 4
  %i.md = lshr i8 %i.mc, 5
  %i.me = and i8 %i.md, 3
  %i.mf = zext nneg i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mf ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !3
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.mk = load i8, ptr %i.mj, align 4
  %i.ml = lshr i8 %i.mk, 5
  %i.mm = and i8 %i.ml, 3
  %i.mn = zext nneg i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !3
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.kq
  %i.ms = load i8, ptr %i.mr, align 4
  %i.mt = lshr i8 %i.ms, 5
  %i.mu = and i8 %i.mt, 3
  %i.mv = zext nneg i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mv ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !3
  %i.my = add nsw i32 %i.mx, 1
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !3
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.kr ; 2 uses
  %i.na = load i8, ptr %i.mz, align 4
  %i.nb = lshr i8 %i.na, 5
  %i.nc = and i8 %i.nb, 3
  %i.nd = zext nneg i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nd ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !3
  %i.nh = getelementptr i8, ptr %i.mz, i64 4
  %i.ni = load i8, ptr %i.nh, align 4
  %i.nj = lshr i8 %i.ni, 5
  %i.nk = and i8 %i.nj, 3
  %i.nl = zext nneg i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nl ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = add nsw i32 %i.nn, 1
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !3
  %i.np = load i32, ptr %i.a, align 16, !tbaa !3
  %i.nq = icmp sgt i32 %i.np, 4
  br i1 %i.nq, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.nr = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.ns = icmp sgt i32 %i.nr, 4
  br i1 %i.ns, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nt = load i32, ptr %i.ku, align 8, !tbaa !3
  %i.nu = icmp sgt i32 %i.nt, 4
  br i1 %i.nu, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
