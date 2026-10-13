Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/analysis_enc?download=true
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
  %i.b = alloca [4 x i32], align 16               ; 21 uses
  %i.c = alloca [256 x i32], align 16             ; 5 uses
  %i.d = alloca [4 x i32], align 16               ; 9 uses
  %i.e = alloca [4 x i32], align 16               ; 9 uses
  %1 = alloca %struct.SegmentJob, align 8         ; 27 uses
  %2 = alloca %struct.SegmentJob, align 8         ; 16 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  %i.n = icmp slt i32 %i.m, 2
  br i1 %i.n, label %.critedge, label %.critedge52

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !58   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !59
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = mul nsw i32 %i.p, 9
  %i.u = add nsw i32 %i.t, 15
  %i.v = ashr i32 %i.u, 4                         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.x = load i32, ptr %i.w, align 8, !tbaa !60
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp sgt i32 %i.v, 1
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = tail call ptr @WebPGetWorkerInterface() #8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ac = tail call ptr @WebPGetWorkerInterface() #8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  call void %i.ad(ptr noundef nonnull %1) #8, !inline_history !39
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @DoSegmentsJob, ptr %i.ah, align 8, !tbaa !65
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #8
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.af, i32 noundef 0) #8
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !59
  %i.aj = mul nsw i32 %i.ai, %i.v
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.af, i32 noundef %i.aj) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ak, i8 0, i64 1032, i1 false)
  store i32 20, ptr %i.al, align 8, !tbaa !34
  %i.am = call ptr @WebPGetWorkerInterface() #8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !62
  call void %i.an(ptr noundef nonnull %2) #8, !inline_history !39
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %2, ptr %i.ao, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1080 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @DoSegmentsJob, ptr %i.ar, align 8, !tbaa !65
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.ap) #8
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.ap, i32 noundef range(i32 0, 134217728) %i.v) #8
  %i.as = sub nsw i32 %i.p, %i.v
  %i.at = load i32, ptr %i.q, align 8, !tbaa !59
  %i.au = mul nsw i32 %i.at, %i.as
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.ap, i32 noundef %i.au) #8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false)
  store i32 0, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = call i32 %i.ay(ptr noundef nonnull %2) #8
  %i.ba = and i32 %i.az, 1
  %.not47 = icmp eq i32 %i.ba, 0
  br i1 %.not47, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  call void %i.bc(ptr noundef nonnull %2) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !68
  call void %i.be(ptr noundef nonnull %2) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69
  call void %i.bg(ptr noundef nonnull %1) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = call i32 %i.bi(ptr noundef nonnull %2) #8
  %i.bk = and i32 %i.bj, 1
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bm = call i32 %i.bl(ptr noundef nonnull %1) #8
  %i.bn = and i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67
  call void %i.bp(ptr noundef nonnull %2) #8
  %.not48 = icmp eq i32 %i.bn, 0
  br i1 %.not48, label %bb.f, label %vector.body

vector.body:                                      ; preds = %bb.e, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.e ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 8, !tbaa !35
  %wide.load107.a = load <4 x i32>, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load108 = load <4 x i32>, ptr %i.bs, align 8, !tbaa !35
  %wide.load109 = load <4 x i32>, ptr %i.bt, align 8, !tbaa !35
  %i.bu = add nsw <4 x i32> %wide.load108, %wide.load
  %i.bv = add nsw <4 x i32> %wide.load109, %wide.load107.a
  store <4 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !35
  store <4 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !35
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bw, align 8, !tbaa !35
  %wide.load107.1.a = load <4 x i32>, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index.next ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load108.1 = load <4 x i32>, ptr %i.by, align 8, !tbaa !35
  %wide.load109.1 = load <4 x i32>, ptr %i.bz, align 8, !tbaa !35
  %i.ca = add nsw <4 x i32> %wide.load108.1, %wide.load.1
  %i.cb = add nsw <4 x i32> %wide.load109.1, %wide.load107.1.a
  store <4 x i32> %i.ca, ptr %i.by, align 8, !tbaa !35
  store <4 x i32> %i.cb, ptr %i.bz, align 8, !tbaa !35
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cc = icmp eq i64 %index.next.1, 256
  br i1 %i.cc, label %MergeJobs.exit, label %vector.body, !llvm.loop !40

MergeJobs.exit:                                   ; preds = %vector.body
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.cd, align 8, !tbaa !35
  %i.cg = load <2 x i32>, ptr %i.ce, align 8, !tbaa !35
  %i.ch = add nsw <2 x i32> %i.cg, %i.cf
  store <2 x i32> %i.ch, ptr %i.ce, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.thread, %MergeJobs.exit, %bb.e
  %.062 = phi i32 [ 0, %.thread ], [ 1, %MergeJobs.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ci = tail call ptr @WebPGetWorkerInterface() #8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
  call void %i.cj(ptr noundef nonnull %1) #8, !inline_history !39
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %i.ck, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @DoSegmentsJob, ptr %i.cn, align 8, !tbaa !65
  call void @VP8IteratorInit(ptr noundef nonnull %0, ptr noundef nonnull %i.cl) #8
  call void @VP8IteratorSetRow(ptr noundef nonnull %i.cl, i32 noundef 0) #8
  %i.co = load i32, ptr %i.q, align 8, !tbaa !59
  %i.cp = mul nsw i32 %i.co, %i.p
  call void @VP8IteratorSetCountDown(ptr noundef nonnull %i.cl, i32 noundef %i.cp) #8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cq, i8 0, i64 1032, i1 false)
  store i32 20, ptr %i.cr, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !69
  call void %i.ct(ptr noundef nonnull %1) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.cw = call i32 %i.cv(ptr noundef nonnull %1) #8
  %i.cx = and i32 %i.cw, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.062, %bb.f ], [ %i.cx, %bb.g ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !67
  call void %i.cz(ptr noundef nonnull %1) #8
  %.not49 = icmp eq i32 %.1, 0
  br i1 %.not49, label %.thread63, label %vector.ph110

.thread63:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !73
  %i.dc = call i32 @WebPEncodingSetError(ptr noundef %i.db, i32 noundef 1) #8
  br label %bb.ab

vector.ph110:                                     ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.df = load <2 x i32>, ptr %i.dd, align 8, !tbaa !35
  %i.dg = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.dh = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.di = sdiv <2 x i32> %i.df, %i.dh
  store <2 x i32> %i.di, ptr %i.de, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !57 ; 6 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.dl, i32 4) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body.interim.3, %vector.ph110
  %index112 = phi i64 [ 0, %vector.ph110 ], [ %index.next114.3, %vector.body.interim.3 ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index112
  %wide.load113 = load <4 x i32>, ptr %i.dm, align 8, !tbaa !35
  %wide.load113.fr = freeze <4 x i32> %wide.load113
  %i.dn = icmp ne <4 x i32> %wide.load113.fr, zeroinitializer ; 2 uses
  %i.do = bitcast <4 x i1> %i.dn to i4
  %.not167 = icmp eq i4 %i.do, 0
  br i1 %.not167, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body111
  %index.next114 = or disjoint i64 %index112, 4   ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114
  %wide.load113.1 = load <4 x i32>, ptr %i.dp, align 8, !tbaa !35
  %wide.load113.fr.1 = freeze <4 x i32> %wide.load113.1
  %i.dq = icmp ne <4 x i32> %wide.load113.fr.1, zeroinitializer ; 2 uses
  %i.dr = bitcast <4 x i1> %i.dq to i4
  %.not167.1 = icmp eq i4 %i.dr, 0
  br i1 %.not167.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %index.next114.1 = or disjoint i64 %index112, 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114.1
  %wide.load113.2 = load <4 x i32>, ptr %i.ds, align 8, !tbaa !35
  %wide.load113.fr.2 = freeze <4 x i32> %wide.load113.2
  %i.dt = icmp ne <4 x i32> %wide.load113.fr.2, zeroinitializer ; 2 uses
  %i.du = bitcast <4 x i1> %i.dt to i4
  %.not167.2 = icmp eq i4 %i.du, 0
  br i1 %.not167.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %index.next114.2 = or disjoint i64 %index112, 12 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index.next114.2
  %wide.load113.3 = load <4 x i32>, ptr %i.dv, align 8, !tbaa !35
  %wide.load113.fr.3 = freeze <4 x i32> %wide.load113.3
  %i.dw = icmp ne <4 x i32> %wide.load113.fr.3, zeroinitializer ; 2 uses
  %i.dx = bitcast <4 x i1> %i.dw to i4
  %.not167.3 = icmp eq i4 %i.dx, 0
  br i1 %.not167.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %index.next114.3 = add nuw nsw i64 %index112, 16 ; 2 uses
  %i.dy = icmp eq i64 %index.next114.3, 256
  br i1 %i.dy, label %.critedge2.i, label %vector.body111, !llvm.loop !41

vector.early.exit:                                ; preds = %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body111
  %index112.lcssa = phi i64 [ %index112, %vector.body111 ], [ %index.next114, %vector.body.interim ], [ %index.next114.1, %vector.body.interim.1 ], [ %index.next114.2, %vector.body.interim.2 ]
  %.lcssa178 = phi <4 x i1> [ %i.dn, %vector.body111 ], [ %i.dq, %vector.body.interim ], [ %i.dt, %vector.body.interim.1 ], [ %i.dw, %vector.body.interim.2 ]
  %i.dz = call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa178, i1 false)
  %i.ea = add i64 %index112.lcssa, %i.dz          ; 3 uses
  %i.eb = trunc nuw nsw i64 %i.ea to i32          ; 4 uses
  %i.ec = icmp samesign ult i64 %i.ea, 255
  br i1 %i.ec, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %vector.early.exit, %bb.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.i ], [ 255, %vector.early.exit ] ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv163.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.i, label %.critedge2.loopexit.split.loop.exit211.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 2 uses
  %i.eg = icmp samesign ugt i64 %indvars.iv.next164.i, %i.ea
  br i1 %i.eg, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !42

.critedge2.loopexit.split.loop.exit211.i:         ; preds = %.lr.ph.i
  %i.eh = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %vector.body.interim.3, %bb.i, %.critedge2.loopexit.split.loop.exit211.i, %vector.early.exit
  %.0103.lcssa198.i = phi i32 [ %i.eb, %vector.early.exit ], [ %i.eb, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 256, %vector.body.interim.3 ] ; 5 uses
  %.1104.lcssa.i = phi i32 [ 255, %vector.early.exit ], [ %i.eh, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 255, %vector.body.interim.3 ] ; 3 uses
  %i.ei = icmp sgt i32 %i.dl, 0                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64
  br i1 %i.ei, label %vector.body123, label %.preheader126.i

vector.body123:                                   ; preds = %.critedge2.i
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %.0103.lcssa198.i, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ej = sub nsw i32 %.1104.lcssa.i, %.0103.lcssa198.i
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = shl nuw nsw i32 %spec.select.i, 1
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.el = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  %i.em = mul nsw <4 x i32> %broadcast.splat120, <i32 1, i32 3, i32 5, i32 7>
  %i.en = call <4 x i32> @llvm.masked.sdiv.v4i32(<4 x i32> %i.em, <4 x i32> %broadcast.splat118, <4 x i1> %i.el)
  %i.eo = add nsw <4 x i32> %i.en, %broadcast.splat122 ; 4 uses
  %i.ep = extractelement <4 x i1> %i.el, i64 0
  br i1 %i.ep, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body123
  %i.eq = extractelement <4 x i32> %i.eo, i64 0   ; 2 uses
  store i32 %i.eq, ptr %i.b, align 16, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body123
  %i.er = phi i32 [ %i.eq, %pred.store.if ], [ undef, %vector.body123 ] ; 2 uses
  %i.es = extractelement <4 x i1> %i.el, i64 1
  br i1 %i.es, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eu = extractelement <4 x i32> %i.eo, i64 1   ; 2 uses
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !35
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue
  %i.ev = phi i32 [ %i.eu, %pred.store.if126 ], [ undef, %pred.store.continue ] ; 2 uses
  %i.ew = extractelement <4 x i1> %i.el, i64 2
  br i1 %i.ew, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ey = extractelement <4 x i32> %i.eo, i64 2   ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 8, !tbaa !35
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ez = phi i32 [ %i.ey, %pred.store.if128 ], [ undef, %pred.store.continue127 ] ; 2 uses
  %i.fa = extractelement <4 x i1> %i.el, i64 3
  br i1 %i.fa, label %pred.store.if130, label %.preheader126.i

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fc = extractelement <4 x i32> %i.eo, i64 3   ; 2 uses
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !35
  br label %.preheader126.i

.preheader126.i:                                  ; preds = %pred.store.continue129, %pred.store.if130, %.critedge2.i
  %i.fd = phi i32 [ undef, %.critedge2.i ], [ %i.fc, %pred.store.if130 ], [ undef, %pred.store.continue129 ]
  %i.fe = phi i32 [ undef, %.critedge2.i ], [ %i.ez, %pred.store.if130 ], [ %i.ez, %pred.store.continue129 ]
  %i.ff = phi i32 [ undef, %.critedge2.i ], [ %i.ev, %pred.store.if130 ], [ %i.ev, %pred.store.continue129 ]
  %i.fg = phi i32 [ undef, %.critedge2.i ], [ %i.er, %pred.store.if130 ], [ %i.er, %pred.store.continue129 ] ; 3 uses
  %.not138.i = icmp sgt i32 %.0103.lcssa198.i, %.1104.lcssa.i ; 2 uses
  %i.fh = add i32 %spec.select.i, -1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %i.fl = sext i32 %spec.select.i to i64          ; 3 uses
  %i.fm = zext nneg i32 %.0103.lcssa198.i to i64  ; 2 uses
  %smax179.i = call i32 @llvm.smax.i32(i32 %.1104.lcssa.i, i32 %.0103.lcssa198.i)
  %i.fn = add nuw nsw i32 %smax179.i, 1
  %wide.trip.count180.i = zext i32 %i.fn to i64   ; 2 uses
  br i1 %i.ei, label %.preheader125.i.us.preheader, label %.preheader124.i

.preheader125.i.us.preheader:                     ; preds = %.preheader126.i
  %exitcond186.not.i.us = icmp eq i32 %i.dl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %exitcond186.not.i.us.1 = icmp eq i32 %i.dl, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %exitcond186.not.i.us.2 = icmp eq i32 %i.dl, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %.preheader125.i.us

.preheader125.i.us:                               ; preds = %.preheader125.i.us.preheader, %._crit_edge.i.us
  %i.fx = phi i32 [ %i.jn, %._crit_edge.i.us ], [ %i.fd, %.preheader125.i.us.preheader ] ; 5 uses
  %i.fy = phi i32 [ %i.jo, %._crit_edge.i.us ], [ %i.fe, %.preheader125.i.us.preheader ] ; 4 uses
  %i.fz = phi i32 [ %i.jp, %._crit_edge.i.us ], [ %i.ff, %.preheader125.i.us.preheader ] ; 3 uses
  %i.ga = phi i32 [ %i.id, %._crit_edge.i.us ], [ %i.fg, %.preheader125.i.us.preheader ] ; 2 uses
  %.1102150.i.us = phi i32 [ %i.jr, %._crit_edge.i.us ], [ 0, %.preheader125.i.us.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.fk, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.fk, i1 false), !tbaa !35
  br i1 %.not138.i, label %.lr.ph146.i.us, label %.lr.ph141.i.us

.lr.ph141.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %indvars.iv176.i.us = phi i64 [ %indvars.iv.next177.i.us, %bb.j ], [ %i.fm, %.preheader125.i.us ] ; 4 uses
  %.4139.i.us = phi i32 [ %.6.i.us, %bb.j ], [ 0, %.preheader125.i.us ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i.us
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !35 ; 3 uses
  %.not114.i.us = icmp eq i32 %i.gc, 0
  br i1 %.not114.i.us, label %bb.j, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %.lr.ph141.i.us
  %i.gd = zext nneg i32 %.4139.i.us to i64        ; 5 uses
  %i.ge = add nuw nsw i32 %.4139.i.us, 1
  %smax.i.us = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.ge)
  %i.gf = add nsw i32 %smax.i.us, -1              ; 4 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv176.i.us to i32 ; 7 uses
  %indvars.iv.next174.i.us103 = add nuw nsw i64 %i.gd, 1 ; 4 uses
  %i.gh = icmp slt i64 %indvars.iv.next174.i.us103, %i.fl
  br i1 %i.gh, label %.lr.ph106, label %.critedge4.i.us

.preheader.i.us:                                  ; preds = %.lr.ph106
  %indvars.iv.next174.i.us = add nuw nsw i64 %i.gd, 2 ; 4 uses
  %i.gi = icmp slt i64 %indvars.iv.next174.i.us, %i.fl
  br i1 %i.gi, label %.lr.ph106.1, label %.critedge4.i.us

.lr.ph106.1:                                      ; preds = %.preheader.i.us
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35
  %i.gl = sub nsw i32 %i.gg, %i.gk
  %i.gm = call i32 @llvm.abs.i32(i32 %i.gl, i1 true)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !35
  %i.gp = sub nsw i32 %i.gg, %i.go
  %i.gq = call i32 @llvm.abs.i32(i32 %i.gp, i1 true)
  %i.gr = icmp samesign ult i32 %i.gm, %i.gq
  br i1 %i.gr, label %.preheader.i.us.1, label %.critedge4.loopexit.i.us, !llvm.loop !43

.preheader.i.us.1:                                ; preds = %.lr.ph106.1
  %indvars.iv.next174.i.us.1 = add nuw nsw i64 %i.gd, 3 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv.next174.i.us.1, %i.fl
  br i1 %i.gs, label %.lr.ph106.2, label %.critedge4.i.us

.lr.ph106.2:                                      ; preds = %.preheader.i.us.1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !35
  %i.gv = sub nsw i32 %i.gg, %i.gu
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !35
  %i.gz = sub nsw i32 %i.gg, %i.gy
  %i.ha = call i32 @llvm.abs.i32(i32 %i.gz, i1 true)
  %i.hb = icmp samesign ult i32 %i.gw, %i.ha
  br i1 %i.hb, label %.critedge4.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.lr.ph106:                                        ; preds = %.preheader.preheader.i.us
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !35
  %i.he = sub nsw i32 %i.gg, %i.hd
  %i.hf = call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gd
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.hi = sub nsw i32 %i.gg, %i.hh
  %i.hj = call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = icmp samesign ult i32 %i.hf, %i.hj
  br i1 %i.hk, label %.preheader.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.critedge4.loopexit.i.us:                         ; preds = %.lr.ph106.2, %.lr.ph106.1, %.lr.ph106
  %indvars.iv173.i.us104.lcssa = phi i64 [ %i.gd, %.lr.ph106 ], [ %indvars.iv.next174.i.us103, %.lr.ph106.1 ], [ %indvars.iv.next174.i.us, %.lr.ph106.2 ]
  %i.hl = trunc nuw nsw i64 %indvars.iv173.i.us104.lcssa to i32
  br label %.critedge4.i.us

.critedge4.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.1, %.lr.ph106.2, %.preheader.preheader.i.us, %.critedge4.loopexit.i.us
  %.5.lcssa.i.us = phi i32 [ %i.hl, %.critedge4.loopexit.i.us ], [ %i.gf, %.preheader.preheader.i.us ], [ %i.gf, %.lr.ph106.2 ], [ %i.gf, %.preheader.i.us.1 ], [ %i.gf, %.preheader.i.us ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i.us
  store i32 %.5.lcssa.i.us, ptr %i.hm, align 4, !tbaa !35
  %i.hn = mul nsw i32 %i.gc, %i.gg
  %i.ho = zext nneg i32 %.5.lcssa.i.us to i64     ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !35
  %i.hr = add nsw i32 %i.hq, %i.hn
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !35
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ho ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !35
  %i.hu = add nsw i32 %i.ht, %i.gc
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %.critedge4.i.us, %.lr.ph141.i.us
  %.6.i.us = phi i32 [ %.5.lcssa.i.us, %.critedge4.i.us ], [ %.4139.i.us, %.lr.ph141.i.us ]
  %indvars.iv.next177.i.us = add nuw nsw i64 %indvars.iv176.i.us, 1 ; 2 uses
  %exitcond181.not.i.us = icmp eq i64 %indvars.iv.next177.i.us, %wide.trip.count180.i
  br i1 %exitcond181.not.i.us, label %.lr.ph146.i.us, label %.lr.ph141.i.us, !llvm.loop !44

.lr.ph146.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %i.hv = load i32, ptr %i.d, align 16, !tbaa !35 ; 5 uses
  %.not113.i.us = icmp eq i32 %i.hv, 0
  br i1 %.not113.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph146.i.us
  %i.hw = load i32, ptr %i.e, align 16, !tbaa !35
  %i.hx = sdiv i32 %i.hv, 2
  %i.hy = add nsw i32 %i.hw, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hv                   ; 4 uses
  %i.ia = sub nsw i32 %i.ga, %i.hz
  %i.ib = call i32 @llvm.abs.i32(i32 %i.ia, i1 true)
  store i32 %i.hz, ptr %i.b, align 16, !tbaa !35
  %i.ic = mul nsw i32 %i.hz, %i.hv
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph146.i.us
  %i.id = phi i32 [ %i.hz, %bb.k ], [ %i.ga, %.lr.ph146.i.us ] ; 2 uses
  %.1100.i.us = phi i32 [ %i.hv, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.198.i.us = phi i32 [ %i.ib, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.2.i.us = phi i32 [ %i.ic, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  br i1 %exitcond186.not.i.us, label %._crit_edge.i.us, label %.lr.ph146.i.us.1

.lr.ph146.i.us.1:                                 ; preds = %bb.l
  %i.ie = load i32, ptr %i.fo, align 4, !tbaa !35 ; 5 uses
  %.not113.i.us.1 = icmp eq i32 %i.ie, 0
  br i1 %.not113.i.us.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph146.i.us.1
  %i.if = load i32, ptr %i.fp, align 4, !tbaa !35
  %i.ig = sdiv i32 %i.ie, 2
  %i.ih = add nsw i32 %i.if, %i.ig
  %i.ii = sdiv i32 %i.ih, %i.ie                   ; 4 uses
  %i.ij = sub nsw i32 %i.fz, %i.ii
  %i.ik = call i32 @llvm.abs.i32(i32 %i.ij, i1 true)
  %i.il = add nuw nsw i32 %i.ik, %.198.i.us
  store i32 %i.ii, ptr %i.fq, align 4, !tbaa !35
  %i.im = mul nsw i32 %i.ii, %i.ie
  %i.in = add nsw i32 %i.im, %.2.i.us
  %i.io = add nsw i32 %i.ie, %.1100.i.us
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph146.i.us.1
  %i.ip = phi i32 [ %i.ii, %bb.m ], [ %i.fz, %.lr.ph146.i.us.1 ] ; 4 uses
  %.1100.i.us.1 = phi i32 [ %i.io, %bb.m ], [ %.1100.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  %.198.i.us.1 = phi i32 [ %i.il, %bb.m ], [ %.198.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  %.2.i.us.1 = phi i32 [ %i.in, %bb.m ], [ %.2.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  br i1 %exitcond186.not.i.us.1, label %._crit_edge.i.us, label %.lr.ph146.i.us.2

.lr.ph146.i.us.2:                                 ; preds = %bb.n
  %i.iq = load i32, ptr %i.fr, align 8, !tbaa !35 ; 5 uses
  %.not113.i.us.2 = icmp eq i32 %i.iq, 0
  br i1 %.not113.i.us.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph146.i.us.2
  %i.ir = load i32, ptr %i.fs, align 8, !tbaa !35
  %i.is = sdiv i32 %i.iq, 2
  %i.it = add nsw i32 %i.ir, %i.is
  %i.iu = sdiv i32 %i.it, %i.iq                   ; 4 uses
  %i.iv = sub nsw i32 %i.fy, %i.iu
  %i.iw = call i32 @llvm.abs.i32(i32 %i.iv, i1 true)
  %i.ix = add nuw nsw i32 %i.iw, %.198.i.us.1
  store i32 %i.iu, ptr %i.ft, align 8, !tbaa !35
  %i.iy = mul nsw i32 %i.iu, %i.iq
  %i.iz = add nsw i32 %i.iy, %.2.i.us.1
  %i.ja = add nsw i32 %i.iq, %.1100.i.us.1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph146.i.us.2
  %i.jb = phi i32 [ %i.iu, %bb.o ], [ %i.fy, %.lr.ph146.i.us.2 ] ; 3 uses
  %.1100.i.us.2 = phi i32 [ %i.ja, %bb.o ], [ %.1100.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  %.198.i.us.2 = phi i32 [ %i.ix, %bb.o ], [ %.198.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  %.2.i.us.2 = phi i32 [ %i.iz, %bb.o ], [ %.2.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  br i1 %exitcond186.not.i.us.2, label %._crit_edge.i.us, label %.lr.ph146.i.us.3

.lr.ph146.i.us.3:                                 ; preds = %bb.p
  %i.jc = load i32, ptr %i.fu, align 4, !tbaa !35 ; 5 uses
  %.not113.i.us.3 = icmp eq i32 %i.jc, 0
  br i1 %.not113.i.us.3, label %._crit_edge.i.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph146.i.us.3
  %i.jd = load i32, ptr %i.fv, align 4, !tbaa !35
  %i.je = sdiv i32 %i.jc, 2
  %i.jf = add nsw i32 %i.jd, %i.je
  %i.jg = sdiv i32 %i.jf, %i.jc                   ; 4 uses
  %i.jh = sub nsw i32 %i.fx, %i.jg
  %i.ji = call i32 @llvm.abs.i32(i32 %i.jh, i1 true)
  %i.jj = add nuw nsw i32 %i.ji, %.198.i.us.2
  store i32 %i.jg, ptr %i.fw, align 4, !tbaa !35
  %i.jk = mul nsw i32 %i.jg, %i.jc
  %i.jl = add nsw i32 %i.jk, %.2.i.us.2
  %i.jm = add nsw i32 %i.jc, %.1100.i.us.2
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph146.i.us.3, %bb.q, %bb.p, %bb.n, %bb.l
  %i.jn = phi i32 [ %i.fx, %bb.l ], [ %i.fx, %bb.n ], [ %i.fx, %bb.p ], [ %i.jg, %bb.q ], [ %i.fx, %.lr.ph146.i.us.3 ]
  %i.jo = phi i32 [ %i.fy, %bb.l ], [ %i.fy, %bb.n ], [ %i.jb, %bb.p ], [ %i.jb, %bb.q ], [ %i.jb, %.lr.ph146.i.us.3 ]
  %i.jp = phi i32 [ %i.fz, %bb.l ], [ %i.ip, %bb.n ], [ %i.ip, %bb.p ], [ %i.ip, %bb.q ], [ %i.ip, %.lr.ph146.i.us.3 ]
  %.1100.i.us.lcssa = phi i32 [ %.1100.i.us, %bb.l ], [ %.1100.i.us.1, %bb.n ], [ %.1100.i.us.2, %bb.p ], [ %i.jm, %bb.q ], [ %.1100.i.us.2, %.lr.ph146.i.us.3 ] ; 2 uses
  %.198.i.us.lcssa = phi i32 [ %.198.i.us, %bb.l ], [ %.198.i.us.1, %bb.n ], [ %.198.i.us.2, %bb.p ], [ %i.jj, %bb.q ], [ %.198.i.us.2, %.lr.ph146.i.us.3 ]
  %.2.i.us.lcssa = phi i32 [ %.2.i.us, %bb.l ], [ %.2.i.us.1, %bb.n ], [ %.2.i.us.2, %bb.p ], [ %i.jl, %bb.q ], [ %.2.i.us.2, %.lr.ph146.i.us.3 ]
  %i.jq = icmp slt i32 %.198.i.us.lcssa, 5
  %i.jr = add nuw nsw i32 %.1102150.i.us, 1       ; 2 uses
  %exitcond187.not.i.us = icmp eq i32 %i.jr, 6
  %or.cond.i.us = select i1 %i.jq, i1 true, i1 %exitcond187.not.i.us
  br i1 %or.cond.i.us, label %._crit_edge.thread.sink.split.i, label %.preheader125.i.us, !llvm.loop !45

.preheader124.i:                                  ; preds = %.preheader126.i
  br i1 %.not138.i, label %._crit_edge.thread.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.preheader124.i, %bb.r
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %bb.r ], [ %i.fm, %.preheader124.i ] ; 4 uses
  %.4139.i = phi i32 [ %.6.i, %bb.r ], [ 0, %.preheader124.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !35 ; 3 uses
  %.not114.i = icmp eq i32 %i.jt, 0
  br i1 %.not114.i, label %bb.r, label %.critedge4.i

.critedge4.i:                                     ; preds = %.lr.ph141.i
  %3 = add nuw nsw i32 %.4139.i, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %3)
  %4 = add nsw i32 %smax.i, -1                    ; 3 uses
  %5 = trunc nuw nsw i64 %indvars.iv176.i to i32
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i
  store i32 %4, ptr %i.ju, align 4, !tbaa !35
  %i.jv = mul nsw i32 %i.jt, %5
  %i.jw = zext nneg i32 %4 to i64                 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !35
  %i.jz = add nsw i32 %i.jy, %i.jv
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !35
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jw ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !35
  %i.kc = add nsw i32 %i.kb, %i.jt
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i, %.lr.ph141.i
  %.6.i = phi i32 [ %4, %.critedge4.i ], [ %.4139.i, %.lr.ph141.i ]
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.thread.i, label %.lr.ph141.i, !llvm.loop !44

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i.us
  %i.kd = sdiv i32 %.1100.i.us.lcssa, 2
  %i.ke = add nsw i32 %.2.i.us.lcssa, %i.kd
  %i.kf = sdiv i32 %i.ke, %.1100.i.us.lcssa
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.r, %.preheader124.i, %._crit_edge.thread.sink.split.i
  %i.kg = phi i32 [ %i.id, %._crit_edge.thread.sink.split.i ], [ %i.fg, %.preheader124.i ], [ %i.fg, %bb.r ] ; 5 uses
  %i.kh = phi i32 [ %i.kf, %._crit_edge.thread.sink.split.i ], [ poison, %.preheader124.i ], [ poison, %bb.r ] ; 2 uses
  %i.ki = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.kj = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.ki                ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %._crit_edge.thread.i
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next189.i, %bb.s ] ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !74
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv188.i ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !38
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !35 ; 2 uses
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = load i8, ptr %i.ko, align 4
  %i.kw = shl i8 %i.ku, 5
  %i.kx = and i8 %i.kw, 96
  %i.ky = and i8 %i.kv, -97
  %i.kz = or disjoint i8 %i.kx, %i.ky
  store i8 %i.kz, ptr %i.ko, align 4
  %i.la = sext i32 %i.kt to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !35
  %i.ld = trunc i32 %i.lc to i8
  store i8 %i.ld, ptr %i.kp, align 1, !tbaa !38
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.le = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.lf = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.lg = mul nsw i32 %i.lf, %i.le                ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next189.i, %i.lh
  br i1 %i.li, label %bb.s, label %._crit_edge154.i, !llvm.loop !46

._crit_edge154.i:                                 ; preds = %bb.s, %._crit_edge.thread.i
  %.lcssa128.i = phi i32 [ %i.ki, %._crit_edge.thread.i ], [ %i.le, %bb.s ] ; 7 uses
  %.lcssa127.i = phi i32 [ %i.kj, %._crit_edge.thread.i ], [ %i.lf, %bb.s ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.kk, %._crit_edge.thread.i ], [ %i.lg, %bb.s ]
  %i.lj = icmp sgt i32 %i.dl, 1
  br i1 %i.lj, label %bb.t, label %SmoothSegmentMap.exit.i

bb.t:                                             ; preds = %._crit_edge154.i
  %i.lk = load ptr, ptr %0, align 8, !tbaa !26
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 68
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !75
  %i.ln = and i32 %i.lm, 1
  %.not112.i = icmp eq i32 %i.ln, 0
  br i1 %.not112.i, label %SmoothSegmentMap.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lo = sext i32 %.lcssa.i to i64
  %i.lp = call ptr @WebPSafeMalloc(i64 noundef %i.lo, i64 noundef 1) #8 ; 6 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %SmoothSegmentMap.exit.i, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.u
  %i.lr = add nsw i32 %.lcssa127.i, -1
  %i.ls = icmp sgt i32 %.lcssa127.i, 2
  br i1 %i.ls, label %.preheader62.lr.ph.i.i, label %._crit_edge71.split.i.i

.preheader62.lr.ph.i.i:                           ; preds = %.preheader63.i.i
  %i.lt = add i32 %.lcssa128.i, -1                ; 3 uses
  %i.lu = icmp sgt i32 %.lcssa128.i, 2
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 23648 ; 4 uses
  %i.lw = sub nsw i32 0, %.lcssa128.i
  %i.lx = xor i32 %.lcssa128.i, -1
  %i.ly = sext i32 %i.lx to i64
  %i.lz = sext i32 %i.lw to i64
  %i.ma = sub i32 1, %.lcssa128.i
  %i.mb = sext i32 %i.ma to i64
  %i.mc = sext i32 %i.lt to i64
  %i.md = sext i32 %.lcssa128.i to i64
  br i1 %i.lu, label %.preheader62.preheader.i.i, label %._crit_edge71.split.i.i

.preheader62.preheader.i.i:                       ; preds = %.preheader62.lr.ph.i.i
  %i.me = zext nneg i32 %.lcssa128.i to i64       ; 2 uses
  %wide.trip.count78.i.i = zext nneg i32 %i.lr to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.lt to i64    ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader62.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 1, %.preheader62.preheader.i.i ], [ %indvars.iv.next76.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.mi = mul nuw nsw i64 %indvars.iv75.i.i, %i.me
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i, %.preheader62.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.preheader62.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.mj = load ptr, ptr %i.lv, align 8, !tbaa !74
  %i.mk = add nuw nsw i64 %indvars.iv.i.i, %i.mi  ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mk ; 8 uses
  %i.mm = load i8, ptr %i.ml, align 4
  %i.mn = lshr i8 %i.mm, 5
  %i.mo = and i8 %i.mn, 3
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.ly
  %i.mq = load i8, ptr %i.mp, align 4
  %i.mr = lshr i8 %i.mq, 5
  %i.ms = and i8 %i.mr, 3
  %i.mt = zext nneg i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mt ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !35
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !35
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.lz
  %i.my = load i8, ptr %i.mx, align 4
  %i.mz = lshr i8 %i.my, 5
  %i.na = and i8 %i.mz, 3
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nb ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !35
  %i.ne = add nsw i32 %i.nd, 1
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !35
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mb
  %i.ng = load i8, ptr %i.nf, align 4
  %i.nh = lshr i8 %i.ng, 5
  %i.ni = and i8 %i.nh, 3
  %i.nj = zext nneg i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nj ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !35
  %i.nm = add nsw i32 %i.nl, 1
  store i32 %i.nm, ptr %i.nk, align 4, !tbaa !35
  %i.nn = getelementptr inbounds i8, ptr %i.ml, i64 -4
  %i.no = load i8, ptr %i.nn, align 4
  %i.np = lshr i8 %i.no, 5
  %i.nq = and i8 %i.np, 3
  %i.nr = zext nneg i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nr ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !35
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !35
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.nw = load i8, ptr %i.nv, align 4
  %i.nx = lshr i8 %i.nw, 5
  %i.ny = and i8 %i.nx, 3
  %i.nz = zext nneg i8 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nz ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !35
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !35
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mc
  %i.oe = load i8, ptr %i.od, align 4
  %i.of = lshr i8 %i.oe, 5
  %i.og = and i8 %i.of, 3
  %i.oh = zext nneg i8 %i.og to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oh ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !35
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.oi, align 4, !tbaa !35
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.md ; 2 uses
  %i.om = load i8, ptr %i.ol, align 4
  %i.on = lshr i8 %i.om, 5
  %i.oo = and i8 %i.on, 3
  %i.op = zext nneg i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.op ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !35
  %i.os = add nsw i32 %i.or, 1
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !35
  %i.ot = getelementptr i8, ptr %i.ol, i64 4
  %i.ou = load i8, ptr %i.ot, align 4
  %i.ov = lshr i8 %i.ou, 5
  %i.ow = and i8 %i.ov, 3
  %i.ox = zext nneg i8 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ox ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !35
  %i.pa = add nsw i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !35
  %i.pb = load i32, ptr %i.a, align 16, !tbaa !35
  %i.pc = icmp sgt i32 %i.pb, 4
  br i1 %i.pc, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pd = load i32, ptr %i.mf, align 4, !tbaa !35
  %i.pe = icmp sgt i32 %i.pd, 4
  br i1 %i.pe, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pf = load i32, ptr %i.mg, align 8, !tbaa !35
  %i.pg = icmp sgt i32 %i.pf, 4
end_hunk_0
