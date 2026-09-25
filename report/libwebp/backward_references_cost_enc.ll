Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/backward_references_cost_enc?download=true
inline.NumInlined: 65
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8LPrefixCode = type { i8, i8 }
%struct.VP8LColorCache = type { ptr, i32, i32 }

@kLog2Table = external local_unnamed_addr constant [256 x i32], align 16
@VP8LFastLog2Slow = external local_unnamed_addr global ptr, align 8
@kPrefixEncodeCode = external local_unnamed_addr constant [512 x %struct.VP8LPrefixCode], align 16

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LBackwardReferencesTraceBackwards(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.VP8LColorCache, align 8     ; 7 uses
  %8 = alloca %struct.VP8LColorCache, align 8     ; 7 uses
  %i.a = mul nsw i32 %1, %0                       ; 11 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = tail call ptr @WebPSafeMalloc(i64 noundef %i.b, i64 noundef 2) #8 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.ch, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %3, 1                       ; 7 uses
  %i.f = shl nuw i32 1, %3
  %i.g = add nuw nsw i32 %i.f, 280
  %i.h = select i1 %i.e, i32 280, i32 %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = add nsw i64 %i.j, 3240
  %i.l = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef %i.k) #8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.m = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 33224) #8 ; 41 uses
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp eq ptr %i.m, null
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %BackwardReferencesHashChainDistanceOnly.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 3240
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 3232 ; 7 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !58
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @VP8LColorCacheInit(ptr noundef nonnull %8, i32 noundef %3) #8
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %BackwardReferencesHashChainDistanceOnly.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = call ptr @VP8LAllocateHistogram(i32 noundef %3) #8 ; 17 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %CostModelBuild.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @VP8LHistogramInit(ptr noundef nonnull %i.s, i32 noundef %3, i32 noundef 1) #8
  call void @VP8LHistogramStoreRefs(ptr noundef %5, ptr noundef nonnull @VP8LDistanceToPlaneCode, i32 noundef %0, ptr noundef nonnull %i.s) #8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 3240
  %i.v = load i32, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = shl nuw i32 1, %i.v
  %i.y = add nuw nsw i32 %i.x, 280
  %i.z = select i1 %i.w, i32 %i.y, i32 280        ; 3 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !61  ; 3 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !58  ; 2 uses
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i, label %._crit_edge.thread.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %wide.trip.count.i.i.i = zext nneg i32 %i.z to i64 ; 4 uses
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i.i.i ], [ %i.al, %vector.body ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i.i.i ], [ %i.am, %vector.body ]
  %vec.phi125 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i.i.i ], [ %i.af, %vector.body ]
  %vec.phi126 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i.i.i ], [ %i.ag, %vector.body ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !62 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !62 ; 2 uses
  %i.af = add <4 x i32> %wide.load, %vec.phi125   ; 2 uses
  %i.ag = add <4 x i32> %wide.load127, %vec.phi126 ; 2 uses
  %i.ah = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.ai = icmp ne <4 x i32> %wide.load127, zeroinitializer
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = add <4 x i32> %vec.phi, %i.aj           ; 2 uses
  %i.am = add <4 x i32> %vec.phi124, %i.ak        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx128 = add <4 x i32> %i.ag, %i.af
  %i.ap = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx128) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %middle.block, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 2 uses
  %.02026.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.ao, %middle.block ]
  %.02225.i.i.i = phi i32 [ %i.as, %.lr.ph.i.i.i ], [ %i.ap, %middle.block ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !62 ; 2 uses
  %i.as = add i32 %i.ar, %.02225.i.i.i            ; 2 uses
  %.not.i.i.i = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %.02026.i.i.i, %i.at ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa123 = phi i32 [ %i.ap, %middle.block ], [ %i.as, %.lr.ph.i.i.i ] ; 3 uses
  %spec.select.i.i.i.lcssa = phi i32 [ %i.ao, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.au = icmp samesign ult i32 %spec.select.i.i.i.lcssa, 2
  br i1 %i.au, label %._crit_edge.thread.i.i.i, label %bb.g

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %i.av = sext i32 %i.z to i64
  %i.aw = shl nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ab, i8 0, i64 %i.aw, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = icmp ult i32 %.lcssa123, 256
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = zext nneg i32 %.lcssa123 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !62
  br label %.lr.ph30.preheader.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.bc = call i32 %i.bb(i32 noundef %.lcssa123) #8, !inline_history !40
  br label %.lr.ph30.preheader.i.i.i

.lr.ph30.preheader.i.i.i:                         ; preds = %bb.i, %bb.h
  %i.bd = phi i32 [ %i.ba, %bb.h ], [ %i.bc, %bb.i ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %VP8LFastLog2.exit24.i.i.i, %.lr.ph30.preheader.i.i.i
  %indvars.iv32.i.i.i = phi i64 [ 0, %.lr.ph30.preheader.i.i.i ], [ %indvars.iv.next33.i.i.i, %VP8LFastLog2.exit24.i.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv32.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !62 ; 3 uses
  %i.bg = icmp ult i32 %i.bf, 256
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph30.i.i.i
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !62
  br label %VP8LFastLog2.exit24.i.i.i

bb.k:                                             ; preds = %.lr.ph30.i.i.i
  %i.bk = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.bl = call i32 %i.bk(i32 noundef %i.bf) #8, !inline_history !40
  br label %VP8LFastLog2.exit24.i.i.i

VP8LFastLog2.exit24.i.i.i:                        ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ %i.bj, %bb.j ], [ %i.bl, %bb.k ]
  %i.bn = sub i32 %i.bd, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv32.i.i.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !62
  %indvars.iv.next33.i.i.i = add nuw nsw i64 %indvars.iv32.i.i.i, 1 ; 2 uses
  %exitcond36.not.i.i.i = icmp eq i64 %indvars.iv.next33.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond36.not.i.i.i, label %ConvertPopulationCountTableToBitEstimates.exit.i.i, label %.lr.ph30.i.i.i, !llvm.loop !41

ConvertPopulationCountTableToBitEstimates.exit.i.i: ; preds = %VP8LFastLog2.exit24.i.i.i, %._crit_edge.thread.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %ConvertPopulationCountTableToBitEstimates.exit.i.i
  %index132 = phi i64 [ 0, %ConvertPopulationCountTableToBitEstimates.exit.i.i ], [ %index.next139.1, %vector.body131 ] ; 3 uses
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit.i.i ], [ %i.cj, %vector.body131 ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit.i.i ], [ %i.ck, %vector.body131 ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit.i.i ], [ %i.cd, %vector.body131 ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit.i.i ], [ %i.ce, %vector.body131 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %index132 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !62 ; 2 uses
  %wide.load138 = load <4 x i32>, ptr %i.br, align 4, !tbaa !62 ; 2 uses
  %i.bs = add <4 x i32> %wide.load137, %vec.phi135
  %i.bt = add <4 x i32> %wide.load138, %vec.phi136
  %i.bu = icmp ne <4 x i32> %wide.load137, zeroinitializer
  %i.bv = icmp ne <4 x i32> %wide.load138, zeroinitializer
  %i.bw = zext <4 x i1> %i.bu to <4 x i32>
  %i.bx = zext <4 x i1> %i.bv to <4 x i32>
  %i.by = add <4 x i32> %vec.phi133, %i.bw
  %i.bz = add <4 x i32> %vec.phi134, %i.bx
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %index132 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %wide.load137.1 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !62 ; 2 uses
  %wide.load138.1 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !62 ; 2 uses
  %i.cd = add <4 x i32> %wide.load137.1, %i.bs    ; 2 uses
  %i.ce = add <4 x i32> %wide.load138.1, %i.bt    ; 2 uses
  %i.cf = icmp ne <4 x i32> %wide.load137.1, zeroinitializer
  %i.cg = icmp ne <4 x i32> %wide.load138.1, zeroinitializer
  %i.ch = zext <4 x i1> %i.cf to <4 x i32>
  %i.ci = zext <4 x i1> %i.cg to <4 x i32>
  %i.cj = add <4 x i32> %i.by, %i.ch              ; 2 uses
  %i.ck = add <4 x i32> %i.bz, %i.ci              ; 2 uses
  %index.next139.1 = add nuw nsw i64 %index132, 16 ; 2 uses
  %i.cl = icmp eq i64 %index.next139.1, 256
  br i1 %i.cl, label %middle.block140, label %vector.body131, !llvm.loop !42

middle.block140:                                  ; preds = %vector.body131
  %bin.rdx142 = add <4 x i32> %i.ce, %i.cd
  %i.cm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx142) ; 3 uses
  %bin.rdx141 = add <4 x i32> %i.ck, %i.cj
  %i.cn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx141)
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 1024 ; 4 uses
  %i.cp = icmp samesign ult i32 %i.cn, 2
  br i1 %i.cp, label %._crit_edge.thread.i36.i.i, label %bb.l

._crit_edge.thread.i36.i.i:                       ; preds = %middle.block140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.co, i8 0, i64 1024, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit37.i.i

bb.l:                                             ; preds = %middle.block140
  %i.cq = icmp ult i32 %i.cm, 256
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !62
  br label %.lr.ph30.preheader.i30.i.i

bb.n:                                             ; preds = %bb.l
  %i.cu = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.cv = call i32 %i.cu(i32 noundef %i.cm) #8, !inline_history !40
  br label %.lr.ph30.preheader.i30.i.i

.lr.ph30.preheader.i30.i.i:                       ; preds = %bb.n, %bb.m
  %i.cw = phi i32 [ %i.ct, %bb.m ], [ %i.cv, %bb.n ]
  br label %.lr.ph30.i31.i.i

.lr.ph30.i31.i.i:                                 ; preds = %VP8LFastLog2.exit24.i33.i.i, %.lr.ph30.preheader.i30.i.i
  %indvars.iv32.i32.i.i = phi i64 [ 0, %.lr.ph30.preheader.i30.i.i ], [ %indvars.iv.next33.i34.i.i, %VP8LFastLog2.exit24.i33.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv32.i32.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !62 ; 3 uses
  %i.cz = icmp ult i32 %i.cy, 256
end_hunk_0
begin_hunk_1_@VP8LBackwardReferencesTraceBackwards:bb.a
  %indvars.iv.next33.i34.i.i = add nuw nsw i64 %indvars.iv32.i32.i.i, 1 ; 2 uses
  %exitcond36.not.i35.i.i = icmp eq i64 %indvars.iv.next33.i34.i.i, 256
  br i1 %exitcond36.not.i35.i.i, label %ConvertPopulationCountTableToBitEstimates.exit37.i.i, label %.lr.ph30.i31.i.i, !llvm.loop !41

ConvertPopulationCountTableToBitEstimates.exit37.i.i: ; preds = %VP8LFastLog2.exit24.i33.i.i, %._crit_edge.thread.i36.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 1032 ; 3 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %ConvertPopulationCountTableToBitEstimates.exit37.i.i
  %index146 = phi i64 [ 0, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %index.next153.1, %vector.body145 ] ; 3 uses
  %vec.phi147 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.ec, %vector.body145 ]
  %vec.phi148 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.ed, %vector.body145 ]
  %vec.phi149 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.dw, %vector.body145 ]
  %vec.phi150 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.dx, %vector.body145 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index146 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load151 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !62 ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !62 ; 2 uses
  %i.dl = add <4 x i32> %wide.load151, %vec.phi149
  %i.dm = add <4 x i32> %wide.load152, %vec.phi150
  %i.dn = icmp ne <4 x i32> %wide.load151, zeroinitializer
  %i.do = icmp ne <4 x i32> %wide.load152, zeroinitializer
  %i.dp = zext <4 x i1> %i.dn to <4 x i32>
  %i.dq = zext <4 x i1> %i.do to <4 x i32>
  %i.dr = add <4 x i32> %vec.phi147, %i.dp
  %i.ds = add <4 x i32> %vec.phi148, %i.dq
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index146 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %wide.load151.1 = load <4 x i32>, ptr %i.du, align 4, !tbaa !62 ; 2 uses
  %wide.load152.1 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !62 ; 2 uses
  %i.dw = add <4 x i32> %wide.load151.1, %i.dl    ; 2 uses
  %i.dx = add <4 x i32> %wide.load152.1, %i.dm    ; 2 uses
  %i.dy = icmp ne <4 x i32> %wide.load151.1, zeroinitializer
  %i.dz = icmp ne <4 x i32> %wide.load152.1, zeroinitializer
  %i.ea = zext <4 x i1> %i.dy to <4 x i32>
  %i.eb = zext <4 x i1> %i.dz to <4 x i32>
  %i.ec = add <4 x i32> %i.dr, %i.ea              ; 2 uses
  %i.ed = add <4 x i32> %i.ds, %i.eb              ; 2 uses
  %index.next153.1 = add nuw nsw i64 %index146, 16 ; 2 uses
  %i.ee = icmp eq i64 %index.next153.1, 256
  br i1 %i.ee, label %middle.block154, label %vector.body145, !llvm.loop !43

middle.block154:                                  ; preds = %vector.body145
  %bin.rdx156 = add <4 x i32> %i.dx, %i.dw
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx156) ; 3 uses
  %bin.rdx155 = add <4 x i32> %i.ed, %i.ec
  %i.eg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx155)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 2048 ; 4 uses
  %i.ei = icmp samesign ult i32 %i.eg, 2
  br i1 %i.ei, label %._crit_edge.thread.i54.i.i, label %bb.q

._crit_edge.thread.i54.i.i:                       ; preds = %middle.block154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.eh, i8 0, i64 1024, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit55.i.i

bb.q:                                             ; preds = %middle.block154
  %i.ej = icmp ult i32 %i.ef, 256
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !62
  br label %.lr.ph30.preheader.i48.i.i

bb.s:                                             ; preds = %bb.q
  %i.en = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.eo = call i32 %i.en(i32 noundef %i.ef) #8, !inline_history !40
  br label %.lr.ph30.preheader.i48.i.i

.lr.ph30.preheader.i48.i.i:                       ; preds = %bb.s, %bb.r
  %i.ep = phi i32 [ %i.em, %bb.r ], [ %i.eo, %bb.s ]
  br label %.lr.ph30.i49.i.i

.lr.ph30.i49.i.i:                                 ; preds = %VP8LFastLog2.exit24.i51.i.i, %.lr.ph30.preheader.i48.i.i
  %indvars.iv32.i50.i.i = phi i64 [ 0, %.lr.ph30.preheader.i48.i.i ], [ %indvars.iv.next33.i52.i.i, %VP8LFastLog2.exit24.i51.i.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv32.i50.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !62 ; 3 uses
  %i.es = icmp ult i32 %i.er, 256
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph30.i49.i.i
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !62
  br label %VP8LFastLog2.exit24.i51.i.i

bb.u:                                             ; preds = %.lr.ph30.i49.i.i
  %i.ew = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.ex = call i32 %i.ew(i32 noundef %i.er) #8, !inline_history !40
  br label %VP8LFastLog2.exit24.i51.i.i

VP8LFastLog2.exit24.i51.i.i:                      ; preds = %bb.u, %bb.t
  %i.ey = phi i32 [ %i.ev, %bb.t ], [ %i.ex, %bb.u ]
  %i.ez = sub i32 %i.ep, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv32.i50.i.i
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !62
  %indvars.iv.next33.i52.i.i = add nuw nsw i64 %indvars.iv32.i50.i.i, 1 ; 2 uses
  %exitcond36.not.i53.i.i = icmp eq i64 %indvars.iv.next33.i52.i.i, 256
  br i1 %exitcond36.not.i53.i.i, label %ConvertPopulationCountTableToBitEstimates.exit55.i.i, label %.lr.ph30.i49.i.i, !llvm.loop !41

ConvertPopulationCountTableToBitEstimates.exit55.i.i: ; preds = %VP8LFastLog2.exit24.i51.i.i, %._crit_edge.thread.i54.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.s, i64 2056 ; 3 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %ConvertPopulationCountTableToBitEstimates.exit55.i.i
  %index160 = phi i64 [ 0, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %index.next167.1, %vector.body159 ] ; 3 uses
  %vec.phi161 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fv, %vector.body159 ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fw, %vector.body159 ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fp, %vector.body159 ]
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fq, %vector.body159 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index160 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load165 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !62 ; 2 uses
  %wide.load166 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !62 ; 2 uses
  %i.fe = add <4 x i32> %wide.load165, %vec.phi163
  %i.ff = add <4 x i32> %wide.load166, %vec.phi164
  %i.fg = icmp ne <4 x i32> %wide.load165, zeroinitializer
  %i.fh = icmp ne <4 x i32> %wide.load166, zeroinitializer
  %i.fi = zext <4 x i1> %i.fg to <4 x i32>
  %i.fj = zext <4 x i1> %i.fh to <4 x i32>
  %i.fk = add <4 x i32> %vec.phi161, %i.fi
  %i.fl = add <4 x i32> %vec.phi162, %i.fj
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index160 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %wide.load165.1 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !62 ; 2 uses
  %wide.load166.1 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !62 ; 2 uses
  %i.fp = add <4 x i32> %wide.load165.1, %i.fe    ; 2 uses
  %i.fq = add <4 x i32> %wide.load166.1, %i.ff    ; 2 uses
  %i.fr = icmp ne <4 x i32> %wide.load165.1, zeroinitializer
  %i.fs = icmp ne <4 x i32> %wide.load166.1, zeroinitializer
  %i.ft = zext <4 x i1> %i.fr to <4 x i32>
  %i.fu = zext <4 x i1> %i.fs to <4 x i32>
  %i.fv = add <4 x i32> %i.fk, %i.ft              ; 2 uses
  %i.fw = add <4 x i32> %i.fl, %i.fu              ; 2 uses
  %index.next167.1 = add nuw nsw i64 %index160, 16 ; 2 uses
  %i.fx = icmp eq i64 %index.next167.1, 256
  br i1 %i.fx, label %middle.block168, label %vector.body159, !llvm.loop !44

middle.block168:                                  ; preds = %vector.body159
  %bin.rdx170 = add <4 x i32> %i.fq, %i.fp
  %i.fy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx170) ; 3 uses
  %bin.rdx169 = add <4 x i32> %i.fw, %i.fv
  %i.fz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx169)
  %i.ga = icmp samesign ult i32 %i.fz, 2
  br i1 %i.ga, label %._crit_edge.thread.i72.i.i, label %bb.v

._crit_edge.thread.i72.i.i:                       ; preds = %middle.block168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.l, i8 0, i64 1024, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit73.i.i

bb.v:                                             ; preds = %middle.block168
  %i.gb = icmp ult i32 %i.fy, 256
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gc = zext nneg i32 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !62
  br label %.lr.ph30.preheader.i66.i.i

bb.x:                                             ; preds = %bb.v
  %i.gf = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.gg = call i32 %i.gf(i32 noundef %i.fy) #8, !inline_history !40
  br label %.lr.ph30.preheader.i66.i.i

.lr.ph30.preheader.i66.i.i:                       ; preds = %bb.x, %bb.w
  %i.gh = phi i32 [ %i.ge, %bb.w ], [ %i.gg, %bb.x ]
  br label %.lr.ph30.i67.i.i

.lr.ph30.i67.i.i:                                 ; preds = %VP8LFastLog2.exit24.i69.i.i, %.lr.ph30.preheader.i66.i.i
  %indvars.iv32.i68.i.i = phi i64 [ 0, %.lr.ph30.preheader.i66.i.i ], [ %indvars.iv.next33.i70.i.i, %VP8LFastLog2.exit24.i69.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv32.i68.i.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !62 ; 3 uses
  %i.gk = icmp ult i32 %i.gj, 256
  br i1 %i.gk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph30.i67.i.i
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !62
  br label %VP8LFastLog2.exit24.i69.i.i

bb.z:                                             ; preds = %.lr.ph30.i67.i.i
  %i.go = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.gp = call i32 %i.go(i32 noundef %i.gj) #8, !inline_history !40
  br label %VP8LFastLog2.exit24.i69.i.i

VP8LFastLog2.exit24.i69.i.i:                      ; preds = %bb.z, %bb.y
  %i.gq = phi i32 [ %i.gn, %bb.y ], [ %i.gp, %bb.z ]
  %i.gr = sub i32 %i.gh, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv32.i68.i.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !62
  %indvars.iv.next33.i70.i.i = add nuw nsw i64 %indvars.iv32.i68.i.i, 1 ; 2 uses
  %exitcond36.not.i71.i.i = icmp eq i64 %indvars.iv.next33.i70.i.i, 256
  br i1 %exitcond36.not.i71.i.i, label %ConvertPopulationCountTableToBitEstimates.exit73.i.i, label %.lr.ph30.i67.i.i, !llvm.loop !41

ConvertPopulationCountTableToBitEstimates.exit73.i.i: ; preds = %VP8LFastLog2.exit24.i69.i.i, %._crit_edge.thread.i72.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.s, i64 3080 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.s, i64 3084
  %10 = getelementptr inbounds nuw i8, ptr %i.s, i64 3088
  %11 = getelementptr inbounds nuw i8, ptr %i.s, i64 3092
  %12 = getelementptr inbounds nuw i8, ptr %i.s, i64 3096
  %13 = getelementptr inbounds nuw i8, ptr %i.s, i64 3100
  %14 = getelementptr inbounds nuw i8, ptr %i.s, i64 3104
  %15 = getelementptr inbounds nuw i8, ptr %i.s, i64 3108
  %16 = load <40 x i32>, ptr %i.gt, align 8, !tbaa !62 ; 33 uses
  %17 = load i32, ptr %15, align 4, !tbaa !62
  %18 = load i32, ptr %14, align 8, !tbaa !62
  %19 = load i32, ptr %13, align 4, !tbaa !62
  %20 = load i32, ptr %12, align 8, !tbaa !62
  %21 = load i32, ptr %11, align 4, !tbaa !62
  %22 = load i32, ptr %10, align 8, !tbaa !62
  %23 = load i32, ptr %i.gt, align 8, !tbaa !62
  %24 = load i32, ptr %9, align 4, !tbaa !62
  %i.gu = add i32 %24, %23
  %25 = icmp ne <40 x i32> %16, zeroinitializer
  %26 = add i32 %i.gu, %22
  %i.gv = add i32 %26, %21
  %27 = add i32 %i.gv, %20
  %i.gw = add i32 %27, %19
  %28 = add i32 %i.gw, %18
  %i.gx = add i32 %28, %17
  %i.gy = extractelement <40 x i32> %16, i64 8
  %i.gz = add i32 %i.gx, %i.gy
  %i.ha = extractelement <40 x i32> %16, i64 9
  %i.hb = add i32 %i.gz, %i.ha
  %i.hc = extractelement <40 x i32> %16, i64 10
  %i.hd = add i32 %i.hb, %i.hc
  %i.he = extractelement <40 x i32> %16, i64 11
  %i.hf = add i32 %i.hd, %i.he
  %i.hg = extractelement <40 x i32> %16, i64 12
  %i.hh = add i32 %i.hf, %i.hg
  %i.hi = extractelement <40 x i32> %16, i64 13
  %i.hj = add i32 %i.hh, %i.hi
  %i.hk = extractelement <40 x i32> %16, i64 14
  %i.hl = add i32 %i.hj, %i.hk
  %i.hm = extractelement <40 x i32> %16, i64 15
  %i.hn = add i32 %i.hl, %i.hm
  %i.ho = extractelement <40 x i32> %16, i64 16
  %i.hp = add i32 %i.hn, %i.ho
  %i.hq = extractelement <40 x i32> %16, i64 17
  %i.hr = add i32 %i.hp, %i.hq
  %i.hs = extractelement <40 x i32> %16, i64 18
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = extractelement <40 x i32> %16, i64 19
  %i.hv = add i32 %i.ht, %i.hu
  %i.hw = extractelement <40 x i32> %16, i64 20
  %i.hx = add i32 %i.hv, %i.hw
  %i.hy = extractelement <40 x i32> %16, i64 21
  %i.hz = add i32 %i.hx, %i.hy
  %i.ia = extractelement <40 x i32> %16, i64 22
  %i.ib = add i32 %i.hz, %i.ia
  %i.ic = extractelement <40 x i32> %16, i64 23
  %i.id = add i32 %i.ib, %i.ic
  %i.ie = extractelement <40 x i32> %16, i64 24
  %i.if = add i32 %i.id, %i.ie
  %i.ig = extractelement <40 x i32> %16, i64 25
  %i.ih = add i32 %i.if, %i.ig
  %i.ii = extractelement <40 x i32> %16, i64 26
  %i.ij = add i32 %i.ih, %i.ii
  %i.ik = extractelement <40 x i32> %16, i64 27
  %i.il = add i32 %i.ij, %i.ik
  %i.im = extractelement <40 x i32> %16, i64 28
  %i.in = add i32 %i.il, %i.im
  %29 = extractelement <40 x i32> %16, i64 29
  %30 = add i32 %i.in, %29
  %i.io = extractelement <40 x i32> %16, i64 30
  %i.ip = add i32 %30, %i.io
  %31 = extractelement <40 x i32> %16, i64 31
  %32 = add i32 %i.ip, %31
  %i.iq = extractelement <40 x i32> %16, i64 32
  %i.ir = add i32 %32, %i.iq
  %i.is = extractelement <40 x i32> %16, i64 33
  %i.it = add i32 %i.ir, %i.is
  %i.iu = extractelement <40 x i32> %16, i64 34
  %i.iv = add i32 %i.it, %i.iu
  %i.iw = extractelement <40 x i32> %16, i64 35
  %i.ix = add i32 %i.iv, %i.iw
  %i.iy = extractelement <40 x i32> %16, i64 36
  %i.iz = add i32 %i.ix, %i.iy
  %i.ja = extractelement <40 x i32> %16, i64 37
  %i.jb = add i32 %i.iz, %i.ja
  %i.jc = extractelement <40 x i32> %16, i64 38
  %i.jd = add i32 %i.jb, %i.jc
  %33 = extractelement <40 x i32> %16, i64 39
  %34 = add i32 %i.jd, %33                        ; 3 uses
  %i.je = bitcast <40 x i1> %25 to i40
  %i.jf = call range(i40 0, 41) i40 @llvm.ctpop.i40(i40 %i.je)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.l, i64 3072 ; 3 uses
  %i.jh = icmp samesign ult i40 %i.jf, 2
  br i1 %i.jh, label %._crit_edge.thread.i90.i.i, label %bb.aa

._crit_edge.thread.i90.i.i:                       ; preds = %ConvertPopulationCountTableToBitEstimates.exit73.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.jg, i8 0, i64 160, i1 false)
  br label %.loopexit158.i

bb.aa:                                            ; preds = %ConvertPopulationCountTableToBitEstimates.exit73.i.i
  %i.ji = icmp ult i32 %34, 256
  br i1 %i.ji, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jj = zext nneg i32 %34 to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !62
  br label %.lr.ph30.preheader.i84.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.jm = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.jn = call i32 %i.jm(i32 noundef %34) #8, !inline_history !40
  br label %.lr.ph30.preheader.i84.i.i

.lr.ph30.preheader.i84.i.i:                       ; preds = %bb.ac, %bb.ab
  %i.jo = phi i32 [ %i.jl, %bb.ab ], [ %i.jn, %bb.ac ]
  br label %.lr.ph30.i85.i.i

.lr.ph30.i85.i.i:                                 ; preds = %VP8LFastLog2.exit24.i87.i.i, %.lr.ph30.preheader.i84.i.i
  %indvars.iv32.i86.i.i = phi i64 [ 0, %.lr.ph30.preheader.i84.i.i ], [ %indvars.iv.next33.i88.i.i, %VP8LFastLog2.exit24.i87.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv32.i86.i.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !62 ; 3 uses
  %i.jr = icmp ult i32 %i.jq, 256
  br i1 %i.jr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph30.i85.i.i
  %i.js = zext nneg i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !62
  br label %VP8LFastLog2.exit24.i87.i.i

bb.ae:                                            ; preds = %.lr.ph30.i85.i.i
  %i.jv = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !65
  %i.jw = call i32 %i.jv(i32 noundef %i.jq) #8, !inline_history !40
  br label %VP8LFastLog2.exit24.i87.i.i

VP8LFastLog2.exit24.i87.i.i:                      ; preds = %bb.ae, %bb.ad
  %i.jx = phi i32 [ %i.ju, %bb.ad ], [ %i.jw, %bb.ae ]
  %i.jy = sub i32 %i.jo, %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv32.i86.i.i
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !62
  %indvars.iv.next33.i88.i.i = add nuw nsw i64 %indvars.iv32.i86.i.i, 1 ; 2 uses
  %exitcond36.not.i89.i.i = icmp eq i64 %indvars.iv.next33.i88.i.i, 40
  br i1 %exitcond36.not.i89.i.i, label %.loopexit158.i, label %.lr.ph30.i85.i.i, !llvm.loop !41

CostModelBuild.exit.i:                            ; preds = %bb.e
  call void @VP8LFreeHistogram(ptr noundef null) #8
  br label %bb.bw

.loopexit158.i:                                   ; preds = %VP8LFastLog2.exit24.i87.i.i, %._crit_edge.thread.i90.i.i
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.s) #8
  %i.ka = call i32 @llvm.smin.i32(i32 %i.a, i32 4095) ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.m, i64 32792 ; 4 uses
  store ptr null, ptr %i.kb, align 8, !tbaa !16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr null, ptr %i.kc, align 8, !tbaa !17
  store ptr null, ptr %i.m, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 33216
  store ptr null, ptr %i.kd, align 8, !tbaa !19
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store i32 0, ptr %i.ke, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.m, i64 32800 ; 4 uses
  store ptr %i.c, ptr %i.kf, align 8, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %i.m, i64 33208
  %i.kh = getelementptr inbounds nuw i8, ptr %i.m, i64 32808 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.m, i64 32840
  store ptr null, ptr %i.ki, align 8, !tbaa !23
  %i.kj = getelementptr inbounds nuw i8, ptr %i.m, i64 32848
  %i.kk = getelementptr inbounds nuw i8, ptr %i.m, i64 32880
  store ptr %i.kh, ptr %i.kk, align 8, !tbaa !23
  %i.kl = getelementptr inbounds nuw i8, ptr %i.m, i64 32888
  %i.km = getelementptr inbounds nuw i8, ptr %i.m, i64 32920
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !23
  %i.kn = getelementptr inbounds nuw i8, ptr %i.m, i64 32928
  %i.ko = getelementptr inbounds nuw i8, ptr %i.m, i64 32960
  store ptr %i.kl, ptr %i.ko, align 8, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 32968
  %i.kq = getelementptr inbounds nuw i8, ptr %i.m, i64 33000
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %i.m, i64 33008
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 33040
  store ptr %i.kp, ptr %i.ks, align 8, !tbaa !23
  %i.kt = getelementptr inbounds nuw i8, ptr %i.m, i64 33048
  %i.ku = getelementptr inbounds nuw i8, ptr %i.m, i64 33080
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !23
  %i.kv = getelementptr inbounds nuw i8, ptr %i.m, i64 33088
  %i.kw = getelementptr inbounds nuw i8, ptr %i.m, i64 33120
  store ptr %i.kt, ptr %i.kw, align 8, !tbaa !23
  %i.kx = getelementptr inbounds nuw i8, ptr %i.m, i64 33128
  %i.ky = getelementptr inbounds nuw i8, ptr %i.m, i64 33160
  store ptr %i.kv, ptr %i.ky, align 8, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 33168 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.m, i64 33200
  store ptr %i.kx, ptr %i.la, align 8, !tbaa !23
  store ptr %i.kz, ptr %i.kg, align 8, !tbaa !24
  %i.lb = icmp sgt i32 %i.a, 0                    ; 2 uses
  br i1 %i.lb, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.loopexit158.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %i.lc, align 8, !tbaa !25
  br label %._crit_edge69.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit158.i
  %i.ld = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.le = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ka to i64 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %GetLengthCost.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %GetLengthCost.exit.i.i ] ; 5 uses
  %i.lf = icmp samesign ult i64 %indvars.iv.i.i, 512
  br i1 %i.lf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr @kPrefixEncodeCode, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.lg, align 2, !tbaa !66
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !66
  %i.lh = sext i8 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.li = sext i8 %.sroa.4.0.copyload.i.i.i.i to i32
  br label %GetLengthCost.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.lj = trunc i64 %indvars.iv.i.i to i32
  %i.lk = add i32 %i.lj, -1                       ; 2 uses
  %i.ll = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.lk, i1 true) ; 2 uses
  %i.lm = sub nuw nsw i32 30, %i.ll               ; 2 uses
  %i.ln = lshr i32 %i.lk, %i.lm
  %i.lo = and i32 %i.ln, 1
  %i.lp = shl nuw nsw i32 %i.ll, 1
  %i.lq = or disjoint i32 %i.lo, %i.lp
  %i.lr = xor i32 %i.lq, 62
  br label %GetLengthCost.exit.i.i

GetLengthCost.exit.i.i:                           ; preds = %bb.ah, %bb.ag
  %.02.i.i.i = phi i32 [ %i.lh, %bb.ag ], [ %i.lr, %bb.ah ]
  %.0.i.i.i = phi i32 [ %i.li, %bb.ag ], [ %i.lm, %bb.ah ]
  %i.ls = sext i32 %.02.i.i.i to i64
  %i.lt = getelementptr [4 x i8], ptr %i.ld, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 1024
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !62
  %i.lw = zext i32 %i.lv to i64
  %i.lx = sext i32 %.0.i.i.i to i64
  %i.ly = shl nsw i64 %i.lx, 23
  %i.lz = add nsw i64 %i.ly, %i.lw
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv.i.i
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.af, !llvm.loop !45

._crit_edge.i.i:                                  ; preds = %GetLengthCost.exit.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  store i64 1, ptr %i.mb, align 8, !tbaa !25
  %.not96.i.i = icmp eq i32 %i.a, 1
  br i1 %.not96.i.i, label %._crit_edge69.i.i, label %.lr.ph68.i.i.preheader

.lr.ph68.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.mc = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.mc, 1
  %i.md = icmp eq i32 %i.a, 2
  br i1 %i.md, label %.lr.ph68.i.i.epil.preheader, label %.lr.ph68.i.i.preheader.new

.lr.ph68.i.i.preheader.new:                       ; preds = %.lr.ph68.i.i.preheader
  %unroll_iter = and i64 %i.mc, -2
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %bb.ak, %.lr.ph68.i.i.preheader.new
  %i.me = phi i64 [ 1, %.lr.ph68.i.i.preheader.new ], [ %i.mq, %bb.ak ] ; 2 uses
  %indvars.iv78.i.i = phi i64 [ 1, %.lr.ph68.i.i.preheader.new ], [ %indvars.iv.next79.i.i.1, %bb.ak ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.preheader.new ], [ %niter.next.1, %bb.ak ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv78.i.i ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !26
  %i.mh = getelementptr i8, ptr %i.mf, i64 -8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !26
  %.not64.i.i = icmp eq i64 %i.mg, %i.mi
  br i1 %.not64.i.i, label %.lr.ph68.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph68.i.i
  %i.mj = add i64 %i.me, 1                        ; 2 uses
  store i64 %i.mj, ptr %i.mb, align 8, !tbaa !25
  br label %.lr.ph68.i.i.1

.lr.ph68.i.i.1:                                   ; preds = %bb.ai, %.lr.ph68.i.i
  %i.mk = phi i64 [ %i.me, %.lr.ph68.i.i ], [ %i.mj, %bb.ai ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv78.i.i ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !26
  %i.mo = load i64, ptr %i.ml, align 8, !tbaa !26
  %.not64.i.i.1 = icmp eq i64 %i.mn, %i.mo
  br i1 %.not64.i.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph68.i.i.1
  %i.mp = add i64 %i.mk, 1                        ; 2 uses
  store i64 %i.mp, ptr %i.mb, align 8, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph68.i.i.1
  %i.mq = phi i64 [ %i.mk, %.lr.ph68.i.i.1 ], [ %i.mp, %bb.aj ] ; 3 uses
  %indvars.iv.next79.i.i.1 = add nuw nsw i64 %indvars.iv78.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge69.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i, !llvm.loop !46

._crit_edge69.i.i.loopexit.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge69.i.i, label %.lr.ph68.i.i.epil.preheader

.lr.ph68.i.i.epil.preheader:                      ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.preheader
  %.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %i.mq, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv78.i.i.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %indvars.iv.next79.i.i.1, %._crit_edge69.i.i.loopexit.unr-lcssa ]
end_hunk_1
