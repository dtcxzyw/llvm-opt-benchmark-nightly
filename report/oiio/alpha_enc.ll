inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FilterTrial = type { i64, %struct.VP8BitWriter, %struct.WebPAuxStats }
%struct.VP8BitWriter = type { i32, i32, i32, i32, ptr, i64, i64, i32 }
%struct.WebPAuxStats = type { i32, [5 x float], [3 x i32], [2 x i32], [3 x [4 x i32]], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.WebPConfig = type { i32, float, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }
%struct.VP8LBitWriter = type { i64, i32, ptr, ptr, ptr, i32 }

@WebPFilters = external local_unnamed_addr global [4 x ptr], align 16
@WebPDispatchAlphaToGreen = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @VP8EncInitAlpha(ptr noundef initializes((540, 556)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @WebPInitAlphaProcessing() #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call i32 @WebPPictureHasTransparency(ptr noundef %i.b) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %i.c, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr null, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = tail call ptr @WebPGetWorkerInterface() #6
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  tail call void %i.l(ptr noundef nonnull %i.j) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %0, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr @CompressAlphaJob, ptr %i.o, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #1

declare i32 @WebPPictureHasTransparency(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @WebPGetWorkerInterface() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CompressAlphaJob(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %2 = alloca %struct.FilterTrial, align 8        ; 15 uses
  %3 = alloca %struct.FilterTrial, align 8        ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %i.g, 1
  %i.j = select i1 %i.i, i32 6, i32 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7    ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 8 uses
  %i.u = mul nsw i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.w = icmp slt i32 %i.l, 100                   ; 2 uses
  %i.x = zext i1 %i.w to i32                      ; 2 uses
  %or.cond.i = icmp ugt i32 %i.l, 100
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 4) #6
  br label %EncodeAlpha.exit

bb.c:                                             ; preds = %bb.a
  %or.cond3.i = icmp ugt i32 %i.n, 1
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 4) #6
  br label %EncodeAlpha.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.n, 0
  %i.ab = select i1 %i.aa, i1 true, i1 %i.h
  %spec.select.i = select i1 %i.ab, i32 0, i32 %i.j
  %i.ac = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.v) #6 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %i.p, i32 noundef 1) #6
  br label %EncodeAlpha.exit

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !48
  tail call void @WebPCopyPlane(ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.r, i32 noundef %i.t) #6
  br i1 %i.w, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp samesign ult i32 %i.l, 71
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc.i = trunc nuw nsw i32 %i.l to i8
  %i.ak = udiv i8 %.lhs.trunc.i, 5
  %narrow.i = add nuw nsw i8 %i.ak, 2
  %i.al = zext nneg i8 %narrow.i to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.l, 3
  %i.an = add nsw i32 %i.am, -544
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi i32 [ %i.al, %bb.i ], [ %i.an, %bb.j ]
  %i.ap = call i32 @QuantizeLevels(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.ao, ptr noundef nonnull %i.b) #6
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.af, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %bb.g
  call void @VP8FiltersInit() #6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  switch i32 %spec.select.i, label %GetFilterMap.exit.thread60.i.i [
    i32 6, label %bb.l
    i32 0, label %GetFilterMap.exit.thread.i.i
  ]

GetFilterMap.exit.thread.i.i:                     ; preds = %.critedge.i
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.at, i64 noundef 0) #6 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %.critedge.i
  %i.av = icmp sgt i32 %i.e, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.aw = icmp sgt i32 %i.t, 0
  %i.ax = icmp sgt i32 %i.r, 0
  %or.cond.i.i.i.i = and i1 %i.ax, %i.aw
  br i1 %or.cond.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %vector.body.preheader

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %i.ay = zext nneg i32 %i.r to i64               ; 3 uses
  %wide.trip.count28.i.i.i.i = zext nneg i32 %i.t to i64
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %4 = icmp ult i32 %i.r, 4
  %unroll_iter.a = and i64 %i.ay, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.a

.lr.ph.i.i.i.i.a:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv25.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next26.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %5 = mul nuw nsw i64 %indvars.iv25.i.i.i.i, %i.ay
  %6 = getelementptr inbounds nuw i8, ptr %i.ac, i64 %5 ; 5 uses
  br i1 %4, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i.a, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i.new ], [ 0, %.lr.ph.i.i.i.i.a ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.new ], [ 0, %.lr.ph.i.i.i.i.a ]
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.i.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !53
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 1, ptr %i.bc, align 1, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !53
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 1, ptr %i.bh, align 1, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !53
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 1, ptr %i.bm, align 1, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !53
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 1, ptr %i.br, align 1, !tbaa !53
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter.a
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.new, !llvm.loop !54

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.lr.ph.i.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.a
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.a ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.i.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.i.i.i.i.epil
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !53
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  store i8 1, ptr %i.bv, align 1, !tbaa !53
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %bb.m, !llvm.loop !56

._crit_edge.i.i.i.i:                              ; preds = %bb.m, %._crit_edge.i.i.i.i.unr-lcssa
  %indvars.iv.next26.i.i.i.i = add nuw nsw i64 %indvars.iv25.i.i.i.i, 1 ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %indvars.iv.next26.i.i.i.i, %wide.trip.count28.i.i.i.i
  br i1 %exitcond29.not.i.i.i.i, label %vector.body.preheader, label %.lr.ph.i.i.i.i.a, !llvm.loop !58

vector.body.preheader:                            ; preds = %._crit_edge.i.i.i.i, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 16, !tbaa !53
  %wide.load30 = load <4 x i8>, ptr %i.bw, align 4, !tbaa !53
  %i.bx = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.by = icmp ne <4 x i8> %wide.load30, zeroinitializer
  %i.bz = zext <4 x i1> %i.bx to <4 x i32>
  %i.ca = zext <4 x i1> %i.by to <4 x i32>
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.cb, align 8, !tbaa !53
  %wide.load30.1 = load <4 x i8>, ptr %i.cc, align 4, !tbaa !53
  %i.cd = icmp ne <4 x i8> %wide.load.1, zeroinitializer
  %i.ce = icmp ne <4 x i8> %wide.load30.1, zeroinitializer
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = zext <4 x i1> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.bz, %i.cf
  %i.ci = add nuw nsw <4 x i32> %i.ca, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %wide.load.2 = load <4 x i8>, ptr %i.cj, align 16, !tbaa !53
  %wide.load30.2 = load <4 x i8>, ptr %i.ck, align 4, !tbaa !53
  %i.cl = icmp ne <4 x i8> %wide.load.2, zeroinitializer
  %i.cm = icmp ne <4 x i8> %wide.load30.2, zeroinitializer
  %i.cn = zext <4 x i1> %i.cl to <4 x i32>
  %i.co = zext <4 x i1> %i.cm to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.ch, %i.cn
  %i.cq = add nuw nsw <4 x i32> %i.ci, %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %wide.load.3 = load <4 x i8>, ptr %i.cr, align 8, !tbaa !53
  %wide.load30.3 = load <4 x i8>, ptr %i.cs, align 4, !tbaa !53
  %i.ct = icmp ne <4 x i8> %wide.load.3, zeroinitializer
  %i.cu = icmp ne <4 x i8> %wide.load30.3, zeroinitializer
  %i.cv = zext <4 x i1> %i.ct to <4 x i32>
  %i.cw = zext <4 x i1> %i.cu to <4 x i32>
  %i.cx = add nuw nsw <4 x i32> %i.cp, %i.cv
  %i.cy = add nuw nsw <4 x i32> %i.cq, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %wide.load.4 = load <4 x i8>, ptr %i.cz, align 16, !tbaa !53
  %wide.load30.4 = load <4 x i8>, ptr %i.da, align 4, !tbaa !53
  %i.db = icmp ne <4 x i8> %wide.load.4, zeroinitializer
  %i.dc = icmp ne <4 x i8> %wide.load30.4, zeroinitializer
  %i.dd = zext <4 x i1> %i.db to <4 x i32>
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = add nuw nsw <4 x i32> %i.cx, %i.dd
  %i.dg = add nuw nsw <4 x i32> %i.cy, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %wide.load.5 = load <4 x i8>, ptr %i.dh, align 8, !tbaa !53
  %wide.load30.5 = load <4 x i8>, ptr %i.di, align 4, !tbaa !53
  %i.dj = icmp ne <4 x i8> %wide.load.5, zeroinitializer
  %i.dk = icmp ne <4 x i8> %wide.load30.5, zeroinitializer
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = add nuw nsw <4 x i32> %i.df, %i.dl
  %i.do = add nuw nsw <4 x i32> %i.dg, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %wide.load.6 = load <4 x i8>, ptr %i.dp, align 16, !tbaa !53
  %wide.load30.6 = load <4 x i8>, ptr %i.dq, align 4, !tbaa !53
  %i.dr = icmp ne <4 x i8> %wide.load.6, zeroinitializer
  %i.ds = icmp ne <4 x i8> %wide.load30.6, zeroinitializer
  %i.dt = zext <4 x i1> %i.dr to <4 x i32>
  %i.du = zext <4 x i1> %i.ds to <4 x i32>
  %i.dv = add nuw nsw <4 x i32> %i.dn, %i.dt
  %i.dw = add nuw nsw <4 x i32> %i.do, %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %wide.load.7 = load <4 x i8>, ptr %i.dx, align 8, !tbaa !53
  %wide.load30.7 = load <4 x i8>, ptr %i.dy, align 4, !tbaa !53
  %i.dz = icmp ne <4 x i8> %wide.load.7, zeroinitializer
  %i.ea = icmp ne <4 x i8> %wide.load30.7, zeroinitializer
  %i.eb = zext <4 x i1> %i.dz to <4 x i32>
  %i.ec = zext <4 x i1> %i.ea to <4 x i32>
  %i.ed = add <4 x i32> %i.dv, %i.eb
  %i.ee = add <4 x i32> %i.dw, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %wide.load.8 = load <4 x i8>, ptr %i.ef, align 16, !tbaa !53
  %wide.load30.8 = load <4 x i8>, ptr %i.eg, align 4, !tbaa !53
  %i.eh = icmp ne <4 x i8> %wide.load.8, zeroinitializer
  %i.ei = icmp ne <4 x i8> %wide.load30.8, zeroinitializer
  %i.ej = zext <4 x i1> %i.eh to <4 x i32>
  %i.ek = zext <4 x i1> %i.ei to <4 x i32>
  %i.el = add <4 x i32> %i.ed, %i.ej
  %i.em = add <4 x i32> %i.ee, %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %wide.load.9 = load <4 x i8>, ptr %i.en, align 8, !tbaa !53
  %wide.load30.9 = load <4 x i8>, ptr %i.eo, align 4, !tbaa !53
  %i.ep = icmp ne <4 x i8> %wide.load.9, zeroinitializer
  %i.eq = icmp ne <4 x i8> %wide.load30.9, zeroinitializer
  %i.er = zext <4 x i1> %i.ep to <4 x i32>
  %i.es = zext <4 x i1> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %i.el, %i.er
  %i.eu = add <4 x i32> %i.em, %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %wide.load.10 = load <4 x i8>, ptr %i.ev, align 16, !tbaa !53
  %wide.load30.10 = load <4 x i8>, ptr %i.ew, align 4, !tbaa !53
  %i.ex = icmp ne <4 x i8> %wide.load.10, zeroinitializer
  %i.ey = icmp ne <4 x i8> %wide.load30.10, zeroinitializer
  %i.ez = zext <4 x i1> %i.ex to <4 x i32>
  %i.fa = zext <4 x i1> %i.ey to <4 x i32>
  %i.fb = add <4 x i32> %i.et, %i.ez
  %i.fc = add <4 x i32> %i.eu, %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %wide.load.11 = load <4 x i8>, ptr %i.fd, align 8, !tbaa !53
  %wide.load30.11 = load <4 x i8>, ptr %i.fe, align 4, !tbaa !53
  %i.ff = icmp ne <4 x i8> %wide.load.11, zeroinitializer
  %i.fg = icmp ne <4 x i8> %wide.load30.11, zeroinitializer
  %i.fh = zext <4 x i1> %i.ff to <4 x i32>
  %i.fi = zext <4 x i1> %i.fg to <4 x i32>
  %i.fj = add <4 x i32> %i.fb, %i.fh
  %i.fk = add <4 x i32> %i.fc, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %wide.load.12 = load <4 x i8>, ptr %i.fl, align 16, !tbaa !53
  %wide.load30.12 = load <4 x i8>, ptr %i.fm, align 4, !tbaa !53
  %i.fn = icmp ne <4 x i8> %wide.load.12, zeroinitializer
  %i.fo = icmp ne <4 x i8> %wide.load30.12, zeroinitializer
  %i.fp = zext <4 x i1> %i.fn to <4 x i32>
  %i.fq = zext <4 x i1> %i.fo to <4 x i32>
  %i.fr = add <4 x i32> %i.fj, %i.fp
  %i.fs = add <4 x i32> %i.fk, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %wide.load.13 = load <4 x i8>, ptr %i.ft, align 8, !tbaa !53
  %wide.load30.13 = load <4 x i8>, ptr %i.fu, align 4, !tbaa !53
  %i.fv = icmp ne <4 x i8> %wide.load.13, zeroinitializer
  %i.fw = icmp ne <4 x i8> %wide.load30.13, zeroinitializer
  %i.fx = zext <4 x i1> %i.fv to <4 x i32>
  %i.fy = zext <4 x i1> %i.fw to <4 x i32>
  %i.fz = add <4 x i32> %i.fr, %i.fx
  %i.ga = add <4 x i32> %i.fs, %i.fy
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %wide.load.14 = load <4 x i8>, ptr %i.gb, align 16, !tbaa !53
  %wide.load30.14 = load <4 x i8>, ptr %i.gc, align 4, !tbaa !53
  %i.gd = icmp ne <4 x i8> %wide.load.14, zeroinitializer
  %i.ge = icmp ne <4 x i8> %wide.load30.14, zeroinitializer
  %i.gf = zext <4 x i1> %i.gd to <4 x i32>
  %i.gg = zext <4 x i1> %i.ge to <4 x i32>
  %i.gh = add <4 x i32> %i.fz, %i.gf
  %i.gi = add <4 x i32> %i.ga, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %wide.load.15 = load <4 x i8>, ptr %i.gj, align 8, !tbaa !53
  %wide.load30.15 = load <4 x i8>, ptr %i.gk, align 4, !tbaa !53
  %i.gl = icmp ne <4 x i8> %wide.load.15, zeroinitializer
  %i.gm = icmp ne <4 x i8> %wide.load30.15, zeroinitializer
  %i.gn = zext <4 x i1> %i.gl to <4 x i32>
  %i.go = zext <4 x i1> %i.gm to <4 x i32>
  %i.gp = add <4 x i32> %i.gh, %i.gn
  %i.gq = add <4 x i32> %i.gi, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %wide.load.16 = load <4 x i8>, ptr %i.gr, align 16, !tbaa !53
  %wide.load30.16 = load <4 x i8>, ptr %i.gs, align 4, !tbaa !53
  %i.gt = icmp ne <4 x i8> %wide.load.16, zeroinitializer
  %i.gu = icmp ne <4 x i8> %wide.load30.16, zeroinitializer
  %i.gv = zext <4 x i1> %i.gt to <4 x i32>
  %i.gw = zext <4 x i1> %i.gu to <4 x i32>
  %i.gx = add <4 x i32> %i.gp, %i.gv
  %i.gy = add <4 x i32> %i.gq, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %wide.load.17 = load <4 x i8>, ptr %i.gz, align 8, !tbaa !53
  %wide.load30.17 = load <4 x i8>, ptr %i.ha, align 4, !tbaa !53
  %i.hb = icmp ne <4 x i8> %wide.load.17, zeroinitializer
  %i.hc = icmp ne <4 x i8> %wide.load30.17, zeroinitializer
  %i.hd = zext <4 x i1> %i.hb to <4 x i32>
  %i.he = zext <4 x i1> %i.hc to <4 x i32>
  %i.hf = add <4 x i32> %i.gx, %i.hd
  %i.hg = add <4 x i32> %i.gy, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %wide.load.18 = load <4 x i8>, ptr %i.hh, align 16, !tbaa !53
  %wide.load30.18 = load <4 x i8>, ptr %i.hi, align 4, !tbaa !53
  %i.hj = icmp ne <4 x i8> %wide.load.18, zeroinitializer
  %i.hk = icmp ne <4 x i8> %wide.load30.18, zeroinitializer
  %i.hl = zext <4 x i1> %i.hj to <4 x i32>
  %i.hm = zext <4 x i1> %i.hk to <4 x i32>
  %i.hn = add <4 x i32> %i.hf, %i.hl
  %i.ho = add <4 x i32> %i.hg, %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %wide.load.19 = load <4 x i8>, ptr %i.hp, align 8, !tbaa !53
  %wide.load30.19 = load <4 x i8>, ptr %i.hq, align 4, !tbaa !53
  %i.hr = icmp ne <4 x i8> %wide.load.19, zeroinitializer
  %i.hs = icmp ne <4 x i8> %wide.load30.19, zeroinitializer
  %i.ht = zext <4 x i1> %i.hr to <4 x i32>
  %i.hu = zext <4 x i1> %i.hs to <4 x i32>
  %i.hv = add <4 x i32> %i.hn, %i.ht
  %i.hw = add <4 x i32> %i.ho, %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %wide.load.20 = load <4 x i8>, ptr %i.hx, align 16, !tbaa !53
  %wide.load30.20 = load <4 x i8>, ptr %i.hy, align 4, !tbaa !53
  %i.hz = icmp ne <4 x i8> %wide.load.20, zeroinitializer
  %i.ia = icmp ne <4 x i8> %wide.load30.20, zeroinitializer
  %i.ib = zext <4 x i1> %i.hz to <4 x i32>
  %i.ic = zext <4 x i1> %i.ia to <4 x i32>
  %i.id = add <4 x i32> %i.hv, %i.ib
  %i.ie = add <4 x i32> %i.hw, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %wide.load.21 = load <4 x i8>, ptr %i.if, align 8, !tbaa !53
  %wide.load30.21 = load <4 x i8>, ptr %i.ig, align 4, !tbaa !53
  %i.ih = icmp ne <4 x i8> %wide.load.21, zeroinitializer
  %i.ii = icmp ne <4 x i8> %wide.load30.21, zeroinitializer
  %i.ij = zext <4 x i1> %i.ih to <4 x i32>
  %i.ik = zext <4 x i1> %i.ii to <4 x i32>
  %i.il = add <4 x i32> %i.id, %i.ij
  %i.im = add <4 x i32> %i.ie, %i.ik
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %wide.load.22 = load <4 x i8>, ptr %i.in, align 16, !tbaa !53
  %wide.load30.22 = load <4 x i8>, ptr %i.io, align 4, !tbaa !53
  %i.ip = icmp ne <4 x i8> %wide.load.22, zeroinitializer
  %i.iq = icmp ne <4 x i8> %wide.load30.22, zeroinitializer
  %i.ir = zext <4 x i1> %i.ip to <4 x i32>
  %i.is = zext <4 x i1> %i.iq to <4 x i32>
  %i.it = add <4 x i32> %i.il, %i.ir
  %i.iu = add <4 x i32> %i.im, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %wide.load.23 = load <4 x i8>, ptr %i.iv, align 8, !tbaa !53
  %wide.load30.23 = load <4 x i8>, ptr %i.iw, align 4, !tbaa !53
  %i.ix = icmp ne <4 x i8> %wide.load.23, zeroinitializer
  %i.iy = icmp ne <4 x i8> %wide.load30.23, zeroinitializer
  %i.iz = zext <4 x i1> %i.ix to <4 x i32>
  %i.ja = zext <4 x i1> %i.iy to <4 x i32>
  %i.jb = add <4 x i32> %i.it, %i.iz
  %i.jc = add <4 x i32> %i.iu, %i.ja
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %wide.load.24 = load <4 x i8>, ptr %i.jd, align 16, !tbaa !53
  %wide.load30.24 = load <4 x i8>, ptr %i.je, align 4, !tbaa !53
  %i.jf = icmp ne <4 x i8> %wide.load.24, zeroinitializer
  %i.jg = icmp ne <4 x i8> %wide.load30.24, zeroinitializer
  %i.jh = zext <4 x i1> %i.jf to <4 x i32>
  %i.ji = zext <4 x i1> %i.jg to <4 x i32>
  %i.jj = add <4 x i32> %i.jb, %i.jh
  %i.jk = add <4 x i32> %i.jc, %i.ji
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %wide.load.25 = load <4 x i8>, ptr %i.jl, align 8, !tbaa !53
  %wide.load30.25 = load <4 x i8>, ptr %i.jm, align 4, !tbaa !53
  %i.jn = icmp ne <4 x i8> %wide.load.25, zeroinitializer
  %i.jo = icmp ne <4 x i8> %wide.load30.25, zeroinitializer
  %i.jp = zext <4 x i1> %i.jn to <4 x i32>
  %i.jq = zext <4 x i1> %i.jo to <4 x i32>
  %i.jr = add <4 x i32> %i.jj, %i.jp
  %i.js = add <4 x i32> %i.jk, %i.jq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %wide.load.26 = load <4 x i8>, ptr %i.jt, align 16, !tbaa !53
  %wide.load30.26 = load <4 x i8>, ptr %i.ju, align 4, !tbaa !53
  %i.jv = icmp ne <4 x i8> %wide.load.26, zeroinitializer
  %i.jw = icmp ne <4 x i8> %wide.load30.26, zeroinitializer
  %i.jx = zext <4 x i1> %i.jv to <4 x i32>
  %i.jy = zext <4 x i1> %i.jw to <4 x i32>
  %i.jz = add <4 x i32> %i.jr, %i.jx
  %i.ka = add <4 x i32> %i.js, %i.jy
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %wide.load.27 = load <4 x i8>, ptr %i.kb, align 8, !tbaa !53
  %wide.load30.27 = load <4 x i8>, ptr %i.kc, align 4, !tbaa !53
  %i.kd = icmp ne <4 x i8> %wide.load.27, zeroinitializer
  %i.ke = icmp ne <4 x i8> %wide.load30.27, zeroinitializer
  %i.kf = zext <4 x i1> %i.kd to <4 x i32>
  %i.kg = zext <4 x i1> %i.ke to <4 x i32>
  %i.kh = add <4 x i32> %i.jz, %i.kf
  %i.ki = add <4 x i32> %i.ka, %i.kg
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %wide.load.28 = load <4 x i8>, ptr %i.kj, align 16, !tbaa !53
  %wide.load30.28 = load <4 x i8>, ptr %i.kk, align 4, !tbaa !53
  %i.kl = icmp ne <4 x i8> %wide.load.28, zeroinitializer
  %i.km = icmp ne <4 x i8> %wide.load30.28, zeroinitializer
  %i.kn = zext <4 x i1> %i.kl to <4 x i32>
  %i.ko = zext <4 x i1> %i.km to <4 x i32>
  %i.kp = add <4 x i32> %i.kh, %i.kn
  %i.kq = add <4 x i32> %i.ki, %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %wide.load.29 = load <4 x i8>, ptr %i.kr, align 8, !tbaa !53
  %wide.load30.29 = load <4 x i8>, ptr %i.ks, align 4, !tbaa !53
  %i.kt = icmp ne <4 x i8> %wide.load.29, zeroinitializer
  %i.ku = icmp ne <4 x i8> %wide.load30.29, zeroinitializer
  %i.kv = zext <4 x i1> %i.kt to <4 x i32>
  %i.kw = zext <4 x i1> %i.ku to <4 x i32>
  %i.kx = add <4 x i32> %i.kp, %i.kv
  %i.ky = add <4 x i32> %i.kq, %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %wide.load.30 = load <4 x i8>, ptr %i.kz, align 16, !tbaa !53
  %wide.load30.30 = load <4 x i8>, ptr %i.la, align 4, !tbaa !53
  %i.lb = icmp ne <4 x i8> %wide.load.30, zeroinitializer
  %i.lc = icmp ne <4 x i8> %wide.load30.30, zeroinitializer
  %i.ld = zext <4 x i1> %i.lb to <4 x i32>
  %i.le = zext <4 x i1> %i.lc to <4 x i32>
  %i.lf = add <4 x i32> %i.kx, %i.ld
  %i.lg = add <4 x i32> %i.ky, %i.le
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %wide.load.31 = load <4 x i8>, ptr %i.lh, align 8, !tbaa !53
  %wide.load30.31 = load <4 x i8>, ptr %i.li, align 4, !tbaa !53
  %i.lj = icmp ne <4 x i8> %wide.load.31, zeroinitializer
  %i.lk = icmp ne <4 x i8> %wide.load30.31, zeroinitializer
  %i.ll = zext <4 x i1> %i.lj to <4 x i32>
  %i.lm = zext <4 x i1> %i.lk to <4 x i32>
  %i.ln = add <4 x i32> %i.lf, %i.ll
  %i.lo = add <4 x i32> %i.lg, %i.lm
  %bin.rdx = add <4 x i32> %i.lo, %i.ln
  %i.lp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.lq = icmp samesign ult i32 %i.lp, 17
  br i1 %i.lq, label %GetFilterMap.exit.i.i, label %bb.n

bb.n:                                             ; preds = %vector.body.preheader
  %i.lr = call i32 @WebPEstimateBestFilter(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.r) #6
  br label %GetFilterMap.exit.i.i

GetFilterMap.exit.thread60.i.i:                   ; preds = %.critedge.i
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.lt = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.ls, i64 noundef 0) #6 ; 0 uses
  br label %bb.o

GetFilterMap.exit.i.i:                            ; preds = %bb.n, %vector.body.preheader
  %i.lu = phi i32 [ %i.lr, %bb.n ], [ 0, %vector.body.preheader ]
  %i.lv = shl nuw i32 1, %i.lu
  %i.lw = icmp samesign ugt i32 %i.lp, 192
  %or.cond.i.i.i = or i1 %i.av, %i.lw
  %i.lx = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = or i32 %i.lv, %i.lx        ; 2 uses
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.lz = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.ly, i64 noundef 0) #6 ; 0 uses
  %.not.i.i = icmp eq i32 %spec.select.i.i.i, 1
  br i1 %.not.i.i, label %bb.x, label %bb.o

bb.o:                                             ; preds = %GetFilterMap.exit.i.i, %GetFilterMap.exit.thread60.i.i
  %i.ma = phi ptr [ %i.ls, %GetFilterMap.exit.thread60.i.i ], [ %i.ly, %GetFilterMap.exit.i.i ] ; 2 uses
  %.1.i63.i.i = phi i32 [ 15, %GetFilterMap.exit.thread60.i.i ], [ %spec.select.i.i.i, %GetFilterMap.exit.i.i ]
  %i.mb = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.v) #6 ; 3 uses
  %.not54.i.i = icmp eq ptr %i.mb, null
  br i1 %.not54.i.i, label %bb.ac, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.preheader.i.i
  %.04565.i.i = phi i32 [ %.1.i63.i.i, %.preheader.i.i ], [ %i.mj, %bb.v ] ; 2 uses
  %.04864.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.mi, %bb.v ] ; 2 uses
  %i.md = and i32 %.04565.i.i, 1
  %.not52.i.i = icmp eq i32 %i.md, 0
  br i1 %.not52.i.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.me = call fastcc i32 @EncodeAlphaInternal(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef range(i32 0, 2) %i.n, i32 noundef %.04864.i.i, i32 noundef range(i32 0, 2) %i.x, i32 noundef %i.e, ptr noundef nonnull %i.mb, ptr noundef %3) ; 2 uses
  %.not53.i.i = icmp eq i32 %i.me, 0
  br i1 %.not53.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mf = load i64, ptr %3, align 8, !tbaa !50
  %i.mg = load i64, ptr %2, align 8, !tbaa !50
  %i.mh = icmp ult i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.ma) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false), !tbaa.struct !59
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.mc) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.147.i.i = phi i32 [ %i.me, %bb.u ], [ 1, %bb.p ] ; 2 uses
  %i.mi = add nuw nsw i32 %.04864.i.i, 1
  %i.mj = lshr i32 %.04565.i.i, 1                 ; 2 uses
  %i.mk = icmp ne i32 %.147.i.i, 0
  %i.ml = icmp ne i32 %i.mj, 0
  %i.mm = and i1 %i.ml, %i.mk
  br i1 %i.mm, label %bb.p, label %bb.w, !llvm.loop !61

bb.w:                                             ; preds = %bb.v
  call void @WebPSafeFree(ptr noundef nonnull %i.mb) #6
  br label %bb.y

bb.x:                                             ; preds = %GetFilterMap.exit.i.i, %GetFilterMap.exit.thread.i.i
  %i.mn = phi ptr [ %i.at, %GetFilterMap.exit.thread.i.i ], [ %i.ly, %GetFilterMap.exit.i.i ]
  %i.mo = call fastcc i32 @EncodeAlphaInternal(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef range(i32 0, 2) %i.n, i32 noundef 0, i32 noundef range(i32 0, 2) %i.x, i32 noundef %i.e, ptr noundef null, ptr noundef %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mp = phi ptr [ %i.ma, %bb.w ], [ %i.mn, %bb.x ] ; 3 uses
  %.3.i.i = phi i32 [ %.147.i.i, %bb.w ], [ %i.mo, %bb.x ]
  %.not55.i.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not55.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not56.i.i = icmp eq ptr %i.as, null
  br i1 %.not56.i.i, label %ApplyFiltersAndEncode.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.mr = getelementptr inbounds nuw i8, ptr %i.as, i64 148
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !62
  %i.mu = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !63
  %i.mv = load <4 x i32>, ptr %i.mq, align 4, !tbaa !3
  store <4 x i32> %i.mv, ptr %i.mr, align 4, !tbaa !3
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.mx = getelementptr inbounds nuw i8, ptr %i.as, i64 164
  %i.my = load <4 x i32>, ptr %i.mw, align 4, !tbaa !3
  store <4 x i32> %i.my, ptr %i.mx, align 4, !tbaa !3
  br label %ApplyFiltersAndEncode.exit.i

bb.ab:                                            ; preds = %bb.y
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.mp) #6
  br label %bb.ac

ApplyFiltersAndEncode.exit.i:                     ; preds = %bb.aa, %bb.z
  %i.mz = getelementptr i8, ptr %i.mp, i64 24
  %.val.i.i = load i64, ptr %i.mz, align 8, !tbaa !64
  %i.na = getelementptr i8, ptr %i.mp, i64 16
  %.val57.i.i = load ptr, ptr %i.na, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.nb = call i32 @WebPEncodingSetError(ptr noundef %i.p, i32 noundef 1) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %ApplyFiltersAndEncode.exit.i
  %.017 = phi ptr [ null, %bb.ac ], [ %.val57.i.i, %ApplyFiltersAndEncode.exit.i ] ; 2 uses
  %.016 = phi i64 [ 0, %bb.ac ], [ %.val.i.i, %ApplyFiltersAndEncode.exit.i ] ; 3 uses
  %.1.i62.i = phi i32 [ 0, %bb.ac ], [ 1, %ApplyFiltersAndEncode.exit.i ] ; 2 uses
  %i.nc = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  %.not59.i = icmp eq ptr %i.nc, null
  br i1 %.not59.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nd = trunc i64 %.016 to i32
  %i.ne = load i32, ptr %i.nc, align 4, !tbaa !66
  %i.nf = add nsw i32 %i.ne, %i.nd
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !66
  %i.ng = load i64, ptr %i.b, align 8, !tbaa !46
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 23536
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !46
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.k
  %.118 = phi ptr [ null, %bb.k ], [ %.017, %bb.ad ], [ %.017, %bb.ae ]
  %.1 = phi i64 [ 0, %bb.k ], [ %.016, %bb.ad ], [ %.016, %bb.ae ]
  %.1.i = phi i32 [ 0, %bb.k ], [ %.1.i62.i, %bb.ad ], [ %.1.i62.i, %bb.ae ]
  call void @WebPSafeFree(ptr noundef nonnull %i.ac) #6
  br label %EncodeAlpha.exit

EncodeAlpha.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.af
  %.219 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %.118, %bb.af ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.1, %bb.af ] ; 2 uses
  %.0.i = phi i32 [ %i.y, %bb.b ], [ %i.z, %bb.d ], [ %i.ae, %bb.f ], [ %.1.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %EncodeAlpha.exit
  %.not13 = icmp ult i64 %.2, 4294967296
  br i1 %.not13, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @WebPSafeFree(ptr noundef %.219) #6
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ni = trunc nuw i64 %.2 to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.ni, ptr %i.nj, align 8, !tbaa !28
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %.219, ptr %i.nk, align 8, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %EncodeAlpha.exit, %bb.ai, %bb.ah
  %.0 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ai ], [ 0, %EncodeAlpha.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncStartAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = tail call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @WebPGetWorkerInterface() #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  tail call void %i.p(ptr noundef nonnull %i.f) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = tail call i32 @CompressAlphaJob(ptr noundef nonnull %0, ptr poison)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ 1, %bb.e ], [ 1, %bb.a ]
  ret i32 %.1
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncFinishAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not9.not = icmp eq i32 %i.j, 0
  br i1 %.not9.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !70
  %i.o = add nsw i32 %i.n, 20
  %i.p = tail call i32 @WebPReportProgress(ptr noundef %i.l, i32 noundef %i.o, ptr noundef nonnull %i.m) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncDeleteAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = tail call ptr @WebPGetWorkerInterface() #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.d) #6
  %i.i = tail call ptr @WebPGetWorkerInterface() #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  tail call void %i.k(ptr noundef nonnull %i.d) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void @WebPSafeFree(ptr noundef %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret i32 %.0
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @WebPCopyPlane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @QuantizeLevels(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @VP8FiltersInit() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @EncodeAlphaInternal(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr noundef %7, ptr noundef nonnull %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.WebPConfig, align 4         ; 9 uses
  %10 = alloca %struct.WebPPicture, align 8       ; 13 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %struct.VP8LBitWriter, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = mul nsw i32 %2, %1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @WebPFilters, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.f(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %7) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.050 = phi ptr [ %7, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not58 = icmp eq i32 %3, 0
  br i1 %.not58, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %i.c, 3
  %i.h = call i32 @VP8LBitWriterInit(ptr noundef nonnull %11, i64 noundef %i.g) #6
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.i = call i32 @WebPPictureInitInternal(ptr noundef nonnull %10, i32 noundef 528) #6
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %EncodeLossless.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %1, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 %2, ptr %i.l, align 4, !tbaa !45
  store i32 1, ptr %10, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.j, ptr %i.m, align 8, !tbaa !49
  %i.n = call i32 @WebPPictureAlloc(ptr noundef nonnull %10) #6
  %.not15.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i, label %EncodeLossless.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !72
  %i.p = load i32, ptr %i.k, align 8, !tbaa !42
  %i.q = load i32, ptr %i.l, align 4, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !75
  call void %i.o(ptr noundef %.050, i32 noundef %1, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %i.s, i32 noundef %i.u) #6, !inline_history !76
  %i.v = call i32 @WebPConfigInitInternal(ptr noundef nonnull %9, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #6
  %.not16.i = icmp eq i32 %i.v, 0
  br i1 %.not16.i, label %EncodeLossless.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %9, align 4, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.w, align 4, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.x, align 4, !tbaa !36
  %i.y = icmp eq i32 %5, 0
  %i.z = icmp eq i32 %6, 6
  %or.cond.i = and i1 %i.y, %i.z
  %i.aa = sitofp i32 %6 to float
  %i.ab = fmul nnan float %i.aa, 8.000000e+00
  %i.ac = select i1 %or.cond.i, float 1.000000e+02, float %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !79
  %i.ae = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  call void @WebPPictureFree(ptr noundef nonnull %10) #6
  %.not17.i = icmp ne i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %.not18.i = icmp eq i32 %i.ag, 0
  %or.cond = select i1 %.not17.i, i1 %.not18.i, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %EncodeLossless.exit.thread

EncodeLossless.exit.thread:                       ; preds = %bb.g, %.critedge.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.ah = call ptr @VP8LBitWriterFinish(ptr noundef nonnull %11) #6
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !80
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !84
  %i.at = add nsw i32 %i.as, 7
  %i.au = ashr i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = add nsw i64 %i.aq, %i.av                ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, %i.c
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.m

.critedge:                                        ; preds = %EncodeLossless.exit.thread, %bb.d
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 48, i1 false)
  br label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.c, %bb.l
  %i.az = phi ptr [ %.050, %bb.c ], [ %.050, %bb.l ], [ %i.ah, %bb.k ]
  %.049758894 = phi i32 [ 0, %bb.c ], [ 0, %bb.l ], [ 1, %bb.k ]
  %i.ba = phi i1 [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.k ]
  %i.bb = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  %i.bc = shl i32 %4, 2
  %i.bd = or disjoint i32 %.049758894, %i.bc
  %i.be = trunc i32 %i.bd to i8                   ; 2 uses
  %.not62 = icmp eq i32 %5, 0
  %i.bf = or i8 %i.be, 16
  %storemerge = select i1 %.not62, i8 %i.be, i8 %i.bf
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bh = add i64 %i.bb, 1
  %i.bi = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.bg, i64 noundef %i.bh) #6
  %.not63.not = icmp eq i32 %i.bi, 0
  br i1 %.not63.not, label %.critedge68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %.not97 = icmp eq i32 %i.bj, 0
  br i1 %.not97, label %.critedge68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.bg, ptr noundef %i.az, i64 noundef %i.bb) #6
  %i.bl = icmp ne i32 %i.bk, 0
  br label %.critedge68

.critedge68:                                      ; preds = %bb.m, %bb.o, %bb.n
  %i.bm = phi i1 [ false, %bb.n ], [ %i.bl, %bb.o ], [ false, %bb.m ]
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge68
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge68
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85
  %.not66 = icmp eq i32 %i.bo, 0
  %i.bp = zext i1 %.not66 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = phi i32 [ 0, %bb.q ], [ %i.bp, %bb.r ]
  %i.br = getelementptr i8, ptr %8, i64 32
  %.val = load i64, ptr %i.br, align 8, !tbaa !64
  store i64 %.val, ptr %8, align 8, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge, %bb.j
  %.048 = phi i32 [ 0, %bb.j ], [ %i.bq, %bb.s ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.048
}

declare void @VP8BitWriterWipeOut(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @WebPEstimateBestFilter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @VP8BitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @VP8LBitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @VP8LBitWriterFinish(ptr noundef) local_unnamed_addr #1

declare void @VP8LBitWriterWipeOut(ptr noundef) local_unnamed_addr #1

declare i32 @VP8BitWriterAppend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WebPPictureAlloc(ptr noundef) local_unnamed_addr #1

declare i32 @VP8LEncodeStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #1

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"VP8Encoder", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 32, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !5, i64 112, !17, i64 496, !4, i64 536, !4, i64 540, !15, i64 544, !4, i64 552, !22, i64 560, !5, i64 608, !4, i64 3584, !4, i64 3588, !4, i64 3592, !4, i64 3596, !4, i64 3600, !4, i64 3604, !4, i64 3608, !4, i64 3612, !23, i64 3616, !5, i64 23512, !16, i64 23544, !4, i64 23552, !5, i64 23556, !5, i64 23604, !4, i64 23616, !4, i64 23620, !4, i64 23624, !4, i64 23628, !4, i64 23632, !4, i64 23636, !4, i64 23640, !10, i64 23648, !15, i64 23656, !24, i64 23664, !15, i64 23672, !15, i64 23680, !25, i64 23688, !15, i64 23696}
!9 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!14 = !{!"VP8BitWriter", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !15, i64 16, !16, i64 24, !16, i64 32, !4, i64 40}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"", !18, i64 0, !19, i64 8, !21, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!18 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!19 = !{!"p2 _ZTS9VP8Tokens", !20, i64 0}
!20 = !{!"any p2 pointer", !10, i64 0}
!21 = !{!"p1 short", !10, i64 0}
!22 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!23 = !{!"", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 1060, !5, i64 5284, !5, i64 18344, !4, i64 19880, !4, i64 19884, !4, i64 19888}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!"p1 double", !10, i64 0}
!26 = !{!8, !4, i64 540}
!27 = !{!8, !15, i64 544}
!28 = !{!8, !4, i64 552}
!29 = !{!8, !4, i64 23632}
!30 = !{!31, !10, i64 0}
!31 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!32 = !{!22, !10, i64 24}
!33 = !{!22, !10, i64 32}
!34 = !{!22, !10, i64 16}
!35 = !{!8, !9, i64 0}
!36 = !{!37, !4, i64 8}
!37 = !{!"WebPConfig", !4, i64 0, !38, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !38, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!38 = !{!"float", !5, i64 0}
!39 = !{!37, !4, i64 52}
!40 = !{!37, !4, i64 56}
!41 = !{!37, !4, i64 48}
!42 = !{!43, !4, i64 8}
!43 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !15, i64 16, !15, i64 24, !15, i64 32, !4, i64 40, !4, i64 44, !15, i64 48, !4, i64 56, !5, i64 60, !24, i64 72, !4, i64 80, !5, i64 84, !10, i64 96, !10, i64 104, !4, i64 112, !15, i64 120, !44, i64 128, !4, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !15, i64 176, !15, i64 184, !5, i64 192, !10, i64 224, !10, i64 232, !5, i64 240}
!44 = !{!"p1 _ZTS12WebPAuxStats", !10, i64 0}
!45 = !{!43, !4, i64 12}
!46 = !{!16, !16, i64 0}
!47 = !{!43, !15, i64 48}
!48 = !{!43, !4, i64 56}
!49 = !{!43, !44, i64 128}
!50 = !{!51, !16, i64 0}
!51 = !{!"", !16, i64 0, !14, i64 8, !52, i64 56}
!52 = !{!"WebPAuxStats", !4, i64 0, !5, i64 4, !5, i64 24, !5, i64 36, !5, i64 44, !5, i64 92, !5, i64 108, !5, i64 124, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !5, i64 184}
!53 = !{!5, !5, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !55}
!59 = !{i64 0, i64 8, !46, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 8, !60, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 4, !3, i64 56, i64 4, !3, i64 60, i64 20, !53, i64 80, i64 12, !53, i64 92, i64 8, !53, i64 100, i64 48, !53, i64 148, i64 16, !53, i64 164, i64 16, !53, i64 180, i64 16, !53, i64 196, i64 4, !3, i64 200, i64 4, !3, i64 204, i64 4, !3, i64 208, i64 4, !3, i64 212, i64 4, !3, i64 216, i64 4, !3, i64 220, i64 4, !3, i64 224, i64 4, !3, i64 228, i64 4, !3, i64 232, i64 4, !3, i64 236, i64 4, !3, i64 240, i64 4, !53}
!60 = !{!15, !15, i64 0}
!61 = distinct !{!61, !55}
!62 = !{!51, !4, i64 236}
!63 = !{!52, !4, i64 180}
!64 = !{!14, !16, i64 24}
!65 = !{!14, !15, i64 16}
!66 = !{!52, !4, i64 0}
!67 = !{!31, !10, i64 8}
!68 = !{!31, !10, i64 24}
!69 = !{!31, !10, i64 16}
!70 = !{!8, !4, i64 536}
!71 = !{!31, !10, i64 40}
!72 = !{!10, !10, i64 0}
!73 = !{!43, !4, i64 0}
!74 = !{!43, !24, i64 72}
!75 = !{!43, !4, i64 80}
!76 = distinct !{null}
!77 = !{!37, !4, i64 0}
!78 = !{!37, !4, i64 96}
!79 = !{!37, !38, i64 4}
!80 = !{!81, !4, i64 40}
!81 = !{!"", !16, i64 0, !4, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !4, i64 40}
!82 = !{!81, !15, i64 24}
!83 = !{!81, !15, i64 16}
!84 = !{!81, !4, i64 8}
!85 = !{!51, !4, i64 48}
end_hunk_0
