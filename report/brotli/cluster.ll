Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/cluster?download=true
inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 66
begin_hunk_0_@BrotliCompareAndPushToQueueLiteral:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  %i.an = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %FastLog2.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 1024 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %7, align 8, !tbaa !15
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %vector.memcheck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.av
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j, %bb.k
  %i.ay = phi double [ %i.ax, %bb.k ], [ f0x547D42AEA2879F2E, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(1040) %i.ae, i64 1040, i1 false), !tbaa.struct !19
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !14
  %i.bd = mul nuw nsw i64 %i.f, 1040
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 1024
  %bound0 = icmp ult ptr %1, %i.bf
  %bound1 = icmp ult ptr %i.ai, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !8, !alias.scope !42
  %wide.load84 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !8, !alias.scope !42
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %wide.load86 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %i.bk = add <4 x i32> %wide.load85, %wide.load
  %i.bl = add <4 x i32> %wide.load86, %wide.load84
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !8, !alias.scope !42
  %wide.load84.1 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !8, !alias.scope !42
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load85.1 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %wide.load86.1 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %i.bq = add <4 x i32> %wide.load85.1, %wide.load.1
  %i.br = add <4 x i32> %wide.load86.1, %wide.load84.1
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !8, !alias.scope !43, !noalias !42
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bs = icmp eq i64 %index.next.1, 256
  br i1 %i.bs, label %HistogramAddHistogramLiteral.exit, label %vector.body, !llvm.loop !40

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i77 = phi i64 [ %i.cq, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0.i77
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i77 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add i32 %i.bw, %i.bu
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %i.by = or disjoint i64 %.0.i77, 1              ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !8
  %i.ce = or disjoint i64 %.0.i77, 2              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  %i.ck = or disjoint i64 %.0.i77, 3              ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = add i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = add nuw nsw i64 %.0.i77, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cq, 256
  br i1 %exitcond.not.3, label %HistogramAddHistogramLiteral.exit, label %scalar.ph, !llvm.loop !41

HistogramAddHistogramLiteral.exit:                ; preds = %vector.body, %scalar.ph
  %i.cr = tail call double @BrotliPopulationCostLiteral(ptr noundef nonnull %1) #7 ; 2 uses
  %i.cs = fsub double %i.ay, %i.al
  %i.ct = fcmp uge double %i.cr, %i.cs
  br i1 %i.ct, label %.critedge61, label %.critedge

.critedge:                                        ; preds = %HistogramAddHistogramLiteral.exit, %bb.i, %FastLog2.exit
  %.sroa.10.0 = phi double [ %i.ag, %bb.i ], [ %i.ak, %FastLog2.exit ], [ %i.cr, %HistogramAddHistogramLiteral.exit ] ; 3 uses
  %i.cu = fadd double %i.al, %.sroa.10.0          ; 4 uses
  %i.cv = load i64, ptr %7, align 8, !tbaa !15    ; 6 uses
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %i.cy = fcmp une double %i.cx, %i.cu
  br i1 %i.cy, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.l
  %i.cz = fcmp ogt double %i.cx, %i.cu
  br i1 %i.cz, label %bb.m, label %bb.p

HistogramPairIsLess.exit:                         ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = load i32, ptr %6, align 8, !tbaa !24
  %i.dd = sub i32 %i.db, %i.dc
  %i.de = sub nuw i32 %spec.select, %spec.select59
  %i.df = icmp ugt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.split, %HistogramPairIsLess.exit
  %i.dg = icmp ult i64 %i.cv, %5
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !25
  %i.di = load i64, ptr %7, align 8, !tbaa !15
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %7, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %spec.select59, ptr %6, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  store double %i.cu, ptr %i.cw, align 8, !tbaa !10
  br label %.critedge61

bb.p:                                             ; preds = %.split, %HistogramPairIsLess.exit, %.critedge
  %i.dk = icmp ult i64 %i.cv, %5
  br i1 %i.dk, label %bb.q, label %.critedge61

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv ; 4 uses
  store i32 %spec.select59, ptr %i.dl, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx69, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx71, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %i.cu, ptr %.sroa.15.0..sroa_idx73, align 8, !tbaa !10
  %i.dm = add nuw i64 %i.cv, 1
  store i64 %i.dm, ptr %7, align 8, !tbaa !15
  br label %.critedge61

.critedge61:                                      ; preds = %bb.p, %bb.q, %bb.o, %HistogramAddHistogramLiteral.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden double @BrotliPopulationCostLiteral(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @BrotliHistogramCombineLiteral(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 1024       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 1024
  br label %bb.b

.loopexit145:                                     ; preds = %BrotliCompareAndPushToQueueLiteral.exit, %bb.b
  %.1139.lcssa = phi i64 [ %.0138149, %bb.b ], [ %.6, %BrotliCompareAndPushToQueueLiteral.exit ] ; 2 uses
  %exitcond175.not = icmp eq i64 %i.h, %6
  br i1 %exitcond175.not, label %.preheader144, label %bb.b, !llvm.loop !44

.preheader144:                                    ; preds = %.loopexit145
  %.not216 = icmp eq i64 %6, 1
  br i1 %.not216, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader144
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not171 = icmp eq i64 %7, 0
  %i.g = getelementptr i8, ptr %1, i64 1024       ; 3 uses
  %scevgep228 = getelementptr i8, ptr %0, i64 1024
  %min.iters.check = icmp ult i64 %7, 8
  %n.vec = and i64 %7, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph151, %.loopexit145
  %.094150 = phi i64 [ 0, %.lr.ph151 ], [ %i.h, %.loopexit145 ] ; 2 uses
  %.0138149 = phi i64 [ 0, %.lr.ph151 ], [ %.1139.lcssa, %.loopexit145 ] ; 2 uses
  %i.h = add nuw i64 %.094150, 1                  ; 4 uses
  %i.i = icmp ult i64 %i.h, %6
  br i1 %i.i, label %.lr.ph, label %.loopexit145

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.094150
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %BrotliCompareAndPushToQueueLiteral.exit
  %.093148 = phi i64 [ %i.h, %.lr.ph ], [ %i.ds, %BrotliCompareAndPushToQueueLiteral.exit ] ; 2 uses
  %.1139147 = phi i64 [ %.0138149, %.lr.ph ], [ %.6, %BrotliCompareAndPushToQueueLiteral.exit ] ; 12 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.093148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 3 uses
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %BrotliCompareAndPushToQueueLiteral.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %spec.select59.i = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %i.o = zext i32 %spec.select59.i to i64         ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = zext i32 %spec.select.i to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.r               ; 3 uses
  %i.x = uitofp i32 %i.q to double                ; 2 uses
  %i.y = icmp ult i32 %i.q, 256
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.r
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10
  br label %FastLog2.exit67.i

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call double @log2(double noundef %i.x) #7
  br label %FastLog2.exit67.i

FastLog2.exit67.i:                                ; preds = %bb.f, %bb.e
  %.0.i66.i = phi double [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = uitofp i32 %i.u to double               ; 2 uses
  %i.ad = icmp ult i32 %i.u, 256
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %FastLog2.exit67.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.v
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  br label %FastLog2.exit65.i

bb.h:                                             ; preds = %FastLog2.exit67.i
  %i.ag = tail call double @log2(double noundef %i.ac) #7
  br label %FastLog2.exit65.i

FastLog2.exit65.i:                                ; preds = %bb.h, %bb.g
  %.0.i64.i = phi double [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = fmul double %.0.i64.i, %i.ac
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.x, double %.0.i66.i, double %i.ah)
  %i.aj = uitofp nneg i64 %i.w to double          ; 2 uses
  %i.ak = icmp samesign ult i64 %i.w, 256
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %FastLog2.exit65.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.w
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  br label %FastLog2.exit.i

bb.j:                                             ; preds = %FastLog2.exit65.i
  %i.an = tail call double @log2(double noundef %i.aj) #7
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.j, %bb.i
  %.0.i63.i = phi double [ %i.am, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = fneg double %i.aj
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %.0.i63.i, double %i.ai)
  %i.aq = fmul double %i.ap, 5.000000e-01
  %i.ar = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1032
  %i.at = load double, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.au = fsub double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.s ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1032
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = fsub double %i.au, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 1024
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !14
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %FastLog2.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 1024 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.1139147, 0
  br i1 %i.bf, label %vector.memcheck, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, double 0.000000e+00, double %i.bg
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.m, %bb.l
  %i.bj = phi double [ %i.bi, %bb.m ], [ f0x547D42AEA2879F2E, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.ar, i64 1040, i1 false), !tbaa.struct !19
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !14
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !14
  %i.bn = mul nuw nsw i64 %i.s, 1040
  %i.bo = getelementptr i8, ptr %scevgep, i64 %i.bn
  %bound0 = icmp ult ptr %1, %i.bo
  %bound1 = icmp ult ptr %i.av, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !67
  %wide.load219 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !8, !alias.scope !67
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.br, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %wide.load221 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %i.bt = add <4 x i32> %wide.load220, %wide.load
  %i.bu = add <4 x i32> %wide.load221, %wide.load219
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !8, !alias.scope !67
  %wide.load219.1 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8, !alias.scope !67
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load220.1 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %wide.load221.1 = load <4 x i32>, ptr %i.by, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %i.bz = add <4 x i32> %wide.load220.1, %wide.load.1
  %i.ca = add <4 x i32> %wide.load221.1, %wide.load219.1
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  store <4 x i32> %i.ca, ptr %i.by, align 4, !tbaa !8, !alias.scope !68, !noalias !67
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next.1, 256
  br i1 %i.cb, label %HistogramAddHistogramLiteral.exit.i, label %vector.body, !llvm.loop !48

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i77.i = phi i64 [ %i.cz, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0.i77.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i77.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = add i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !8
  %i.ch = or disjoint i64 %.0.i77.i, 1            ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = add i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  %i.cn = or disjoint i64 %.0.i77.i, 2            ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !8
  %i.ct = or disjoint i64 %.0.i77.i, 3            ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = add i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !8
  %i.cz = add nuw nsw i64 %.0.i77.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cz, 256
  br i1 %exitcond.not.i.3, label %HistogramAddHistogramLiteral.exit.i, label %scalar.ph, !llvm.loop !49

HistogramAddHistogramLiteral.exit.i:              ; preds = %vector.body, %scalar.ph
  %i.da = tail call double @BrotliPopulationCostLiteral(ptr noundef nonnull %1) #7 ; 2 uses
  %i.db = fsub double %i.bj, %i.ay
  %i.dc = fcmp uge double %i.da, %i.db
  br i1 %i.dc, label %BrotliCompareAndPushToQueueLiteral.exit, label %.critedge.i

.critedge.i:                                      ; preds = %HistogramAddHistogramLiteral.exit.i, %bb.k, %FastLog2.exit.i
  %.sroa.10.0.i = phi double [ %i.at, %bb.k ], [ %i.ax, %FastLog2.exit.i ], [ %i.da, %HistogramAddHistogramLiteral.exit.i ] ; 3 uses
  %i.dd = fadd double %i.ay, %.sroa.10.0.i        ; 4 uses
  %.not.i = icmp eq i64 %.1139147, 0
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.critedge.i
  %i.de = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.df = fcmp une double %i.de, %i.dd
  br i1 %i.df, label %.split.i, label %HistogramPairIsLess.exit.i

.split.i:                                         ; preds = %bb.n
  %i.dg = fcmp ogt double %i.de, %i.dd
  br i1 %i.dg, label %bb.o, label %bb.r

HistogramPairIsLess.exit.i:                       ; preds = %bb.n
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !23
  %i.di = load i32, ptr %5, align 8, !tbaa !24
  %i.dj = sub i32 %i.dh, %i.di
  %i.dk = sub nuw i32 %spec.select.i, %spec.select59.i
  %i.dl = icmp ugt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i
  %i.dm = icmp ult i64 %.1139147, %9
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.do = add nuw i64 %.1139147, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i64 [ %i.do, %bb.p ], [ %.1139147, %bb.o ]
  store i32 %spec.select59.i, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.c, align 4, !tbaa !8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !10
  store double %i.dd, ptr %i.a, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueLiteral.exit

bb.r:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i, %.critedge.i
  %i.dp = icmp ult i64 %.1139147, %9
  br i1 %i.dp, label %bb.s, label %BrotliCompareAndPushToQueueLiteral.exit

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147 ; 4 uses
  store i32 %spec.select59.i, ptr %i.dq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %spec.select.i, ptr %.sroa.7.0..sroa_idx69.i, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx71.i, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store double %i.dd, ptr %.sroa.15.0..sroa_idx73.i, align 8, !tbaa !10
  %i.dr = add nuw i64 %.1139147, 1
  br label %BrotliCompareAndPushToQueueLiteral.exit

BrotliCompareAndPushToQueueLiteral.exit:          ; preds = %bb.c, %HistogramAddHistogramLiteral.exit.i, %bb.q, %bb.r, %bb.s
  %.6 = phi i64 [ %.1139147, %bb.c ], [ %i.dr, %bb.s ], [ %.1139147, %bb.r ], [ %.5, %bb.q ], [ %.1139147, %HistogramAddHistogramLiteral.exit.i ] ; 2 uses
  %i.ds = add i64 %.093148, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %6
  br i1 %exitcond.not, label %.loopexit145, label %bb.c, !llvm.loop !50

bb.t:                                             ; preds = %.lr.ph169, %.loopexit
  %.095168 = phi i64 [ 1, %.lr.ph169 ], [ %.196, %.loopexit ]
  %.097167 = phi double [ 0.000000e+00, %.lr.ph169 ], [ %.198, %.loopexit ] ; 2 uses
  %.099166 = phi i64 [ %6, %.lr.ph169 ], [ %.1100, %.loopexit ] ; 4 uses
  %.2140165 = phi i64 [ %.1139.lcssa, %.lr.ph169 ], [ %.4, %.loopexit ] ; 3 uses
  %i.dt = load double, ptr %i.d, align 8, !tbaa !17
  %i.du = fcmp ult double %i.dt, %.097167
  br i1 %i.du, label %vector.memcheck268, label %.loopexit, !llvm.loop !51

vector.memcheck268:                               ; preds = %bb.t
  %i.dv = load i32, ptr %5, align 8, !tbaa !24    ; 15 uses
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !23  ; 6 uses
  %i.dx = zext i32 %i.dv to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.dx, 1040             ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  %i.dz = zext i32 %i.dw to i64                   ; 2 uses
  %.idx281 = mul nuw nsw i64 %i.dz, 1040          ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.idx281 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1024
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 1024 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !14
  %i.ef = add i64 %i.ee, %i.ec
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !14
  %i.eg = add nuw nsw i64 %.idx281, 1024
  %bound0269 = icmp samesign ult i64 %.idx, %i.eg
  %i.eh = add nuw nsw i64 %.idx, 1024
  %bound1270 = icmp samesign ult i64 %.idx281, %i.eh
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %scalar.ph267, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck268, %vector.body273
  %index274 = phi i64 [ %index.next279.1, %vector.body273 ], [ 0, %vector.memcheck268 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index274 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load275 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !8, !alias.scope !69
  %wide.load276 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !8, !alias.scope !69
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index274 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %wide.load278 = load <4 x i32>, ptr %i.el, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %i.em = add <4 x i32> %wide.load277, %wide.load275
  %i.en = add <4 x i32> %wide.load278, %wide.load276
  store <4 x i32> %i.em, ptr %i.ek, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  store <4 x i32> %i.en, ptr %i.el, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %index.next279 = or disjoint i64 %index274, 8   ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index.next279 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load275.1 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !8, !alias.scope !69
  %wide.load276.1 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !8, !alias.scope !69
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index.next279 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load277.1 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %wide.load278.1 = load <4 x i32>, ptr %i.er, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %i.es = add <4 x i32> %wide.load277.1, %wide.load275.1
  %i.et = add <4 x i32> %wide.load278.1, %wide.load276.1
  store <4 x i32> %i.es, ptr %i.eq, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  store <4 x i32> %i.et, ptr %i.er, align 4, !tbaa !8, !alias.scope !70, !noalias !69
  %index.next279.1 = add nuw nsw i64 %index274, 16 ; 2 uses
  %i.eu = icmp eq i64 %index.next279.1, 256
  br i1 %i.eu, label %HistogramAddHistogramLiteral.exit, label %vector.body273, !llvm.loop !55

end_hunk_0
begin_hunk_1_@BrotliHistogramCombineLiteral:bb.a

.preheader142:                                    ; preds = %.preheader142.preheader, %bb.x
  %.192156 = phi i64 [ %i.hn, %bb.x ], [ 0, %.preheader142.preheader ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = icmp eq i32 %i.hg, %i.dw
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader142
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %i.hk = xor i64 %.192156, -1
  %i.hl = add i64 %.099166, %i.hk
  %i.hm = shl i64 %i.hl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %i.hj, i64 %i.hm, i1 false)
  br label %.loopexit143

bb.x:                                             ; preds = %.preheader142
  %i.hn = add nuw i64 %.192156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.hn, %.099166
  br i1 %exitcond178.not, label %.loopexit143, label %.preheader142, !llvm.loop !59

.loopexit143:                                     ; preds = %bb.x, %bb.w
  %i.ho = add i64 %.099166, -1                    ; 3 uses
  %.not172 = icmp eq i64 %.2140165, 0
  br i1 %.not172, label %.preheader, label %.lr.ph159

.preheader:                                       ; preds = %bb.ad, %.loopexit143
  %.0.lcssa = phi i64 [ 0, %.loopexit143 ], [ %.1, %bb.ad ]
  %.not173 = icmp eq i64 %i.ho, 0
  br i1 %.not173, label %._crit_edge, label %.lr.ph163

.lr.ph159:                                        ; preds = %.loopexit143, %bb.ad
  %.0158 = phi i64 [ %.1, %bb.ad ], [ 0, %.loopexit143 ] ; 5 uses
  %.2157 = phi i64 [ %i.ik, %bb.ad ], [ 0, %.loopexit143 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.2157 ; 5 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !24 ; 3 uses
  %i.hr = icmp eq i32 %i.hq, %i.dv
  br i1 %i.hr, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.lr.ph159
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !23 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, %i.dv
  %i.hv = icmp eq i32 %i.hq, %i.dw
  %or.cond = or i1 %i.hv, %i.hu
  %i.hw = icmp eq i32 %i.ht, %i.dw
  %or.cond108 = or i1 %i.hw, %or.cond
  br i1 %or.cond108, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hx = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !17 ; 2 uses
  %i.ia = fcmp une double %i.hx, %i.hz
  br i1 %i.ia, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.z
  %i.ib = fcmp ogt double %i.hx, %i.hz
  br i1 %i.ib, label %bb.aa, label %bb.ab

HistogramPairIsLess.exit:                         ; preds = %bb.z
  %i.ic = load i32, ptr %i.e, align 4, !tbaa !23
  %i.id = load i32, ptr %5, align 8, !tbaa !24
  %i.ie = sub i32 %i.ic, %i.id
  %i.if = sub i32 %i.ht, %i.hq
  %i.ig = icmp ugt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split, %HistogramPairIsLess.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ac

bb.ab:                                            ; preds = %.split, %HistogramPairIsLess.exit
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ij = add i64 %.0158, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph159, %bb.y, %bb.ac
  %.1 = phi i64 [ %i.ij, %bb.ac ], [ %.0158, %bb.y ], [ %.0158, %.lr.ph159 ] ; 2 uses
  %i.ik = add nuw i64 %.2157, 1                   ; 2 uses
  %exitcond179.not = icmp eq i64 %i.ik, %.2140165
  br i1 %exitcond179.not, label %.preheader, label %.lr.ph159, !llvm.loop !60

.lr.ph163:                                        ; preds = %.preheader, %BrotliCompareAndPushToQueueLiteral.exit131
  %.3162 = phi i64 [ %i.ms, %BrotliCompareAndPushToQueueLiteral.exit131 ], [ 0, %.preheader ] ; 2 uses
  %.3141161 = phi i64 [ %.8, %BrotliCompareAndPushToQueueLiteral.exit131 ], [ %.0.lcssa, %.preheader ] ; 12 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.3162
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8  ; 3 uses
  %i.in = icmp eq i32 %i.dv, %i.im
  br i1 %i.in, label %BrotliCompareAndPushToQueueLiteral.exit131, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph163
  %spec.select.i110 = tail call i32 @llvm.umax.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %spec.select59.i111 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %i.io = zext i32 %spec.select59.i111 to i64     ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8  ; 3 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = zext i32 %spec.select.i110 to i64       ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8  ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, %i.ir            ; 3 uses
  %i.ix = uitofp i32 %i.iq to double              ; 2 uses
  %i.iy = icmp ult i32 %i.iq, 256
  br i1 %i.iy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ir
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !10
  br label %FastLog2.exit67.i112

bb.ag:                                            ; preds = %bb.ae
  %i.jb = tail call double @log2(double noundef %i.ix) #7
  br label %FastLog2.exit67.i112

FastLog2.exit67.i112:                             ; preds = %bb.ag, %bb.af
  %.0.i66.i113 = phi double [ %i.ja, %bb.af ], [ %i.jb, %bb.ag ]
  %i.jc = uitofp i32 %i.iu to double              ; 2 uses
  %i.jd = icmp ult i32 %i.iu, 256
  br i1 %i.jd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %FastLog2.exit67.i112
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iv
  %i.jf = load double, ptr %i.je, align 8, !tbaa !10
  br label %FastLog2.exit65.i114

bb.ai:                                            ; preds = %FastLog2.exit67.i112
  %i.jg = tail call double @log2(double noundef %i.jc) #7
  br label %FastLog2.exit65.i114

FastLog2.exit65.i114:                             ; preds = %bb.ai, %bb.ah
  %.0.i64.i115 = phi double [ %i.jf, %bb.ah ], [ %i.jg, %bb.ai ]
  %i.jh = fmul double %.0.i64.i115, %i.jc
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i66.i113, double %i.jh)
  %i.jj = uitofp nneg i64 %i.iw to double         ; 2 uses
  %i.jk = icmp samesign ult i64 %i.iw, 256
  br i1 %i.jk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %FastLog2.exit65.i114
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iw
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !10
  br label %FastLog2.exit.i116

bb.ak:                                            ; preds = %FastLog2.exit65.i114
  %i.jn = tail call double @log2(double noundef %i.jj) #7
  br label %FastLog2.exit.i116

FastLog2.exit.i116:                               ; preds = %bb.ak, %bb.aj
  %.0.i63.i117 = phi double [ %i.jm, %bb.aj ], [ %i.jn, %bb.ak ]
  %i.jo = fneg double %i.jj
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jo, double %.0.i63.i117, double %i.ji)
  %i.jq = fmul double %i.jp, 5.000000e-01
  %i.jr = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.io ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1032
  %i.jt = load double, ptr %i.js, align 8, !tbaa !13 ; 2 uses
  %i.ju = fsub double %i.jq, %i.jt
  %i.jv = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.is ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1032
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !13 ; 2 uses
  %i.jy = fsub double %i.ju, %i.jx                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 1024
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !14
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %.critedge.i121, label %bb.al

bb.al:                                            ; preds = %FastLog2.exit.i116
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 1024 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !14
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.critedge.i121, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kf = icmp eq i64 %.3141161, 0
  br i1 %i.kf, label %vector.memcheck228, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kg = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.kh = fcmp olt double %i.kg, 0.000000e+00
  %i.ki = select i1 %i.kh, double 0.000000e+00, double %i.kg
  br label %vector.memcheck228

vector.memcheck228:                               ; preds = %bb.an, %bb.am
  %i.kj = phi double [ %i.ki, %bb.an ], [ f0x547D42AEA2879F2E, %bb.am ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.jr, i64 1040, i1 false), !tbaa.struct !19
  %i.kk = load i64, ptr %i.kc, align 8, !tbaa !14
  %i.kl = load i64, ptr %i.g, align 8, !tbaa !14
  %i.km = add i64 %i.kl, %i.kk
  store i64 %i.km, ptr %i.g, align 8, !tbaa !14
  %i.kn = mul nuw nsw i64 %i.is, 1040
  %i.ko = getelementptr i8, ptr %scevgep228, i64 %i.kn
  %bound0229 = icmp ult ptr %1, %i.ko
  %bound1230 = icmp ult ptr %i.jv, %i.g
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %scalar.ph227, label %vector.body233

vector.body233:                                   ; preds = %vector.memcheck228, %vector.body233
  %index234 = phi i64 [ %index.next239.1, %vector.body233 ], [ 0, %vector.memcheck228 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index234 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !8, !alias.scope !71
  %wide.load236 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !8, !alias.scope !71
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index234 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %wide.load237 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %wide.load238 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %i.kt = add <4 x i32> %wide.load237, %wide.load235
  %i.ku = add <4 x i32> %wide.load238, %wide.load236
  store <4 x i32> %i.kt, ptr %i.kr, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  store <4 x i32> %i.ku, ptr %i.ks, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %index.next239 = or disjoint i64 %index234, 8   ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index.next239 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load235.1 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !8, !alias.scope !71
  %wide.load236.1 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !8, !alias.scope !71
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next239 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %wide.load237.1 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %wide.load238.1 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %i.kz = add <4 x i32> %wide.load237.1, %wide.load235.1
  %i.la = add <4 x i32> %wide.load238.1, %wide.load236.1
  store <4 x i32> %i.kz, ptr %i.kx, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  store <4 x i32> %i.la, ptr %i.ky, align 4, !tbaa !8, !alias.scope !72, !noalias !71
  %index.next239.1 = add nuw nsw i64 %index234, 16 ; 2 uses
  %i.lb = icmp eq i64 %index.next239.1, 256
  br i1 %i.lb, label %HistogramAddHistogramLiteral.exit.i120, label %vector.body233, !llvm.loop !64

scalar.ph227:                                     ; preds = %vector.memcheck228, %scalar.ph227
  %.0.i77.i118 = phi i64 [ %i.lz, %scalar.ph227 ], [ 0, %vector.memcheck228 ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0.i77.i118
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i77.i118 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8
  %i.lg = add i32 %i.lf, %i.ld
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !8
  %i.lh = or disjoint i64 %.0.i77.i118, 1         ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lh ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !8
  %i.lm = add i32 %i.ll, %i.lj
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !8
  %i.ln = or disjoint i64 %.0.i77.i118, 2         ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !8
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ln ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8
  %i.ls = add i32 %i.lr, %i.lp
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !8
  %i.lt = or disjoint i64 %.0.i77.i118, 3         ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lt ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !8
  %i.ly = add i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !8
  %i.lz = add nuw nsw i64 %.0.i77.i118, 4         ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %i.lz, 256
  br i1 %exitcond.not.i119.3, label %HistogramAddHistogramLiteral.exit.i120, label %scalar.ph227, !llvm.loop !65

HistogramAddHistogramLiteral.exit.i120:           ; preds = %vector.body233, %scalar.ph227
  %i.ma = tail call double @BrotliPopulationCostLiteral(ptr noundef nonnull %1) #7 ; 2 uses
  %i.mb = fsub double %i.kj, %i.jy
  %i.mc = fcmp uge double %i.ma, %i.mb
  br i1 %i.mc, label %BrotliCompareAndPushToQueueLiteral.exit131, label %.critedge.i121

.critedge.i121:                                   ; preds = %HistogramAddHistogramLiteral.exit.i120, %bb.al, %FastLog2.exit.i116
  %.sroa.10.0.i122 = phi double [ %i.jt, %bb.al ], [ %i.jx, %FastLog2.exit.i116 ], [ %i.ma, %HistogramAddHistogramLiteral.exit.i120 ] ; 3 uses
  %i.md = fadd double %i.jy, %.sroa.10.0.i122     ; 4 uses
  %.not.i123 = icmp eq i64 %.3141161, 0
  br i1 %.not.i123, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i121
  %i.me = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.mf = fcmp une double %i.me, %i.md
  br i1 %i.mf, label %.split.i130, label %HistogramPairIsLess.exit.i124

.split.i130:                                      ; preds = %bb.ao
  %i.mg = fcmp ogt double %i.me, %i.md
  br i1 %i.mg, label %bb.ap, label %bb.as

HistogramPairIsLess.exit.i124:                    ; preds = %bb.ao
  %i.mh = load i32, ptr %i.e, align 4, !tbaa !23
  %i.mi = load i32, ptr %5, align 8, !tbaa !24
  %i.mj = sub i32 %i.mh, %i.mi
  %i.mk = sub nuw i32 %spec.select.i110, %spec.select59.i111
  %i.ml = icmp ugt i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130
  %i.mm = icmp ult i64 %.3141161, %9
  br i1 %i.mm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.mo = add nuw i64 %.3141161, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.7 = phi i64 [ %i.mo, %bb.aq ], [ %.3141161, %bb.ap ]
  store i32 %spec.select59.i111, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i110, ptr %i.e, align 4, !tbaa !8
  store double %.sroa.10.0.i122, ptr %i.f, align 8, !tbaa !10
  store double %i.md, ptr %i.d, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueLiteral.exit131

bb.as:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130, %.critedge.i121
  %i.mp = icmp ult i64 %.3141161, %9
  br i1 %i.mp, label %bb.at, label %BrotliCompareAndPushToQueueLiteral.exit131

bb.at:                                            ; preds = %bb.as
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161 ; 4 uses
  store i32 %spec.select59.i111, ptr %i.mq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i125 = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %spec.select.i110, ptr %.sroa.7.0..sroa_idx69.i125, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i126 = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store double %.sroa.10.0.i122, ptr %.sroa.10.0..sroa_idx71.i126, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i127 = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store double %i.md, ptr %.sroa.15.0..sroa_idx73.i127, align 8, !tbaa !10
  %i.mr = add nuw i64 %.3141161, 1
  br label %BrotliCompareAndPushToQueueLiteral.exit131

BrotliCompareAndPushToQueueLiteral.exit131:       ; preds = %.lr.ph163, %HistogramAddHistogramLiteral.exit.i120, %bb.ar, %bb.as, %bb.at
  %.8 = phi i64 [ %.3141161, %.lr.ph163 ], [ %i.mr, %bb.at ], [ %.3141161, %bb.as ], [ %.7, %bb.ar ], [ %.3141161, %HistogramAddHistogramLiteral.exit.i120 ] ; 2 uses
  %i.ms = add nuw i64 %.3162, 1                   ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ms, %i.ho
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph163, !llvm.loop !66

.loopexit:                                        ; preds = %BrotliCompareAndPushToQueueLiteral.exit131, %bb.t
  %.4 = phi i64 [ %.2140165, %bb.t ], [ %.8, %BrotliCompareAndPushToQueueLiteral.exit131 ]
  %.1100 = phi i64 [ %.099166, %bb.t ], [ %i.ho, %BrotliCompareAndPushToQueueLiteral.exit131 ] ; 3 uses
  %.198 = phi double [ f0x547D42AEA2879F2E, %bb.t ], [ %.097167, %BrotliCompareAndPushToQueueLiteral.exit131 ]
  %.196 = phi i64 [ %8, %bb.t ], [ %.095168, %BrotliCompareAndPushToQueueLiteral.exit131 ] ; 2 uses
  %i.mt = icmp ugt i64 %.1100, %.196
  br i1 %i.mt, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.loopexit, %bb.a, %.preheader144
  %.099.lcssa = phi i64 [ %6, %.preheader144 ], [ 0, %bb.a ], [ 0, %.preheader ], [ %.1100, %.loopexit ]
  ret i64 %.099.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden double @BrotliHistogramBitCostDistanceLiteral(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %2, ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 1040, i1 false), !tbaa.struct !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1024 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !14
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !8, !alias.scope !78
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !tbaa !8, !alias.scope !78
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load10 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  %wide.load11 = load <4 x i32>, ptr %i.l, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  %i.m = add <4 x i32> %wide.load10, %wide.load
  %i.n = add <4 x i32> %wide.load11, %wide.load9
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  store <4 x i32> %i.n, ptr %i.l, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8, !alias.scope !78
  %wide.load9.1 = load <4 x i32>, ptr %i.p, align 4, !tbaa !8, !alias.scope !78
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load10.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  %wide.load11.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !8, !alias.scope !79, !noalias !78
  %i.s = add <4 x i32> %wide.load10.1, %wide.load.1
  %i.t = add <4 x i32> %wide.load11.1, %wide.load9.1
end_hunk_1
begin_hunk_2_@BrotliCompareAndPushToQueueCommand:bb.a
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2824
  %i.ag = load double, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.f ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = fsub double %i.ah, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %FastLog2.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2816 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %7, align 8, !tbaa !15
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %vector.memcheck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.av
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j, %bb.k
  %i.ay = phi double [ %i.ax, %bb.k ], [ f0x547D42AEA2879F2E, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %1, ptr noundef nonnull align 8 dereferenceable(2832) %i.ae, i64 2832, i1 false), !tbaa.struct !32
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2816 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !31
  %i.bd = mul nuw nsw i64 %i.f, 2832
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 2816
  %bound0 = icmp ult ptr %1, %i.bf
  %bound1 = icmp ult ptr %i.ai, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !8, !alias.scope !130
  %wide.load84 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !8, !alias.scope !130
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %wide.load86 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %i.bk = add <4 x i32> %wide.load85, %wide.load
  %i.bl = add <4 x i32> %wide.load86, %wide.load84
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !8, !alias.scope !130
  %wide.load84.1 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !8, !alias.scope !130
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load85.1 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %wide.load86.1 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %i.bq = add <4 x i32> %wide.load85.1, %wide.load.1
  %i.br = add <4 x i32> %wide.load86.1, %wide.load84.1
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !8, !alias.scope !131, !noalias !130
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bs = icmp eq i64 %index.next.1, 704
  br i1 %i.bs, label %HistogramAddHistogramCommand.exit, label %vector.body, !llvm.loop !128

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i6277 = phi i64 [ %i.cq, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0.i6277
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add i32 %i.bw, %i.bu
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %i.by = or disjoint i64 %.0.i6277, 1            ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !8
  %i.ce = or disjoint i64 %.0.i6277, 2            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  %i.ck = or disjoint i64 %.0.i6277, 3            ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = add i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = add nuw nsw i64 %.0.i6277, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cq, 704
  br i1 %exitcond.not.3, label %HistogramAddHistogramCommand.exit, label %scalar.ph, !llvm.loop !129

HistogramAddHistogramCommand.exit:                ; preds = %vector.body, %scalar.ph
  %i.cr = tail call double @BrotliPopulationCostCommand(ptr noundef nonnull %1) #7 ; 2 uses
  %i.cs = fsub double %i.ay, %i.al
  %i.ct = fcmp uge double %i.cr, %i.cs
  br i1 %i.ct, label %.critedge61, label %.critedge

.critedge:                                        ; preds = %HistogramAddHistogramCommand.exit, %bb.i, %FastLog2.exit
  %.sroa.10.0 = phi double [ %i.ag, %bb.i ], [ %i.ak, %FastLog2.exit ], [ %i.cr, %HistogramAddHistogramCommand.exit ] ; 3 uses
  %i.cu = fadd double %i.al, %.sroa.10.0          ; 4 uses
  %i.cv = load i64, ptr %7, align 8, !tbaa !15    ; 6 uses
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %i.cy = fcmp une double %i.cx, %i.cu
  br i1 %i.cy, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.l
  %i.cz = fcmp ogt double %i.cx, %i.cu
  br i1 %i.cz, label %bb.m, label %bb.p

HistogramPairIsLess.exit:                         ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = load i32, ptr %6, align 8, !tbaa !24
  %i.dd = sub i32 %i.db, %i.dc
  %i.de = sub nuw i32 %spec.select, %spec.select59
  %i.df = icmp ugt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.split, %HistogramPairIsLess.exit
  %i.dg = icmp ult i64 %i.cv, %5
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !25
  %i.di = load i64, ptr %7, align 8, !tbaa !15
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %7, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %spec.select59, ptr %6, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  store double %i.cu, ptr %i.cw, align 8, !tbaa !10
  br label %.critedge61

bb.p:                                             ; preds = %.split, %HistogramPairIsLess.exit, %.critedge
  %i.dk = icmp ult i64 %i.cv, %5
  br i1 %i.dk, label %bb.q, label %.critedge61

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv ; 4 uses
  store i32 %spec.select59, ptr %i.dl, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx69, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx71, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %i.cu, ptr %.sroa.15.0..sroa_idx73, align 8, !tbaa !10
  %i.dm = add nuw i64 %i.cv, 1
  store i64 %i.dm, ptr %7, align 8, !tbaa !15
  br label %.critedge61

.critedge61:                                      ; preds = %bb.p, %bb.q, %bb.o, %HistogramAddHistogramCommand.exit, %bb.a
  ret void
}

declare hidden double @BrotliPopulationCostCommand(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @BrotliHistogramCombineCommand(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 2816       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 2816
  br label %bb.b

.loopexit145:                                     ; preds = %BrotliCompareAndPushToQueueCommand.exit, %bb.b
  %.1139.lcssa = phi i64 [ %.0138149, %bb.b ], [ %.6, %BrotliCompareAndPushToQueueCommand.exit ] ; 2 uses
  %exitcond175.not = icmp eq i64 %i.h, %6
  br i1 %exitcond175.not, label %.preheader144, label %bb.b, !llvm.loop !132

.preheader144:                                    ; preds = %.loopexit145
  %.not216 = icmp eq i64 %6, 1
  br i1 %.not216, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader144
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not171 = icmp eq i64 %7, 0
  %i.g = getelementptr i8, ptr %1, i64 2816       ; 3 uses
  %scevgep228 = getelementptr i8, ptr %0, i64 2816
  %min.iters.check = icmp ult i64 %7, 8
  %n.vec = and i64 %7, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph151, %.loopexit145
  %.094150 = phi i64 [ 0, %.lr.ph151 ], [ %i.h, %.loopexit145 ] ; 2 uses
  %.0138149 = phi i64 [ 0, %.lr.ph151 ], [ %.1139.lcssa, %.loopexit145 ] ; 2 uses
  %i.h = add nuw i64 %.094150, 1                  ; 4 uses
  %i.i = icmp ult i64 %i.h, %6
  br i1 %i.i, label %.lr.ph, label %.loopexit145

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.094150
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %BrotliCompareAndPushToQueueCommand.exit
  %.093148 = phi i64 [ %i.h, %.lr.ph ], [ %i.ds, %BrotliCompareAndPushToQueueCommand.exit ] ; 2 uses
  %.1139147 = phi i64 [ %.0138149, %.lr.ph ], [ %.6, %BrotliCompareAndPushToQueueCommand.exit ] ; 12 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.093148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 3 uses
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %BrotliCompareAndPushToQueueCommand.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %spec.select59.i = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %i.o = zext i32 %spec.select59.i to i64         ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = zext i32 %spec.select.i to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.r               ; 3 uses
  %i.x = uitofp i32 %i.q to double                ; 2 uses
  %i.y = icmp ult i32 %i.q, 256
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.r
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10
  br label %FastLog2.exit67.i

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call double @log2(double noundef %i.x) #7
  br label %FastLog2.exit67.i

FastLog2.exit67.i:                                ; preds = %bb.f, %bb.e
  %.0.i66.i = phi double [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = uitofp i32 %i.u to double               ; 2 uses
  %i.ad = icmp ult i32 %i.u, 256
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %FastLog2.exit67.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.v
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  br label %FastLog2.exit65.i

bb.h:                                             ; preds = %FastLog2.exit67.i
  %i.ag = tail call double @log2(double noundef %i.ac) #7
  br label %FastLog2.exit65.i

FastLog2.exit65.i:                                ; preds = %bb.h, %bb.g
  %.0.i64.i = phi double [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = fmul double %.0.i64.i, %i.ac
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.x, double %.0.i66.i, double %i.ah)
  %i.aj = uitofp nneg i64 %i.w to double          ; 2 uses
  %i.ak = icmp samesign ult i64 %i.w, 256
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %FastLog2.exit65.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.w
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  br label %FastLog2.exit.i

bb.j:                                             ; preds = %FastLog2.exit65.i
  %i.an = tail call double @log2(double noundef %i.aj) #7
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.j, %bb.i
  %.0.i63.i = phi double [ %i.am, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = fneg double %i.aj
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %.0.i63.i, double %i.ai)
  %i.aq = fmul double %i.ap, 5.000000e-01
  %i.ar = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2824
  %i.at = load double, ptr %i.as, align 8, !tbaa !30 ; 2 uses
  %i.au = fsub double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.s ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2824
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.ay = fsub double %i.au, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 2816
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !31
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %FastLog2.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2816 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.1139147, 0
  br i1 %i.bf, label %vector.memcheck, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, double 0.000000e+00, double %i.bg
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.m, %bb.l
  %i.bj = phi double [ %i.bi, %bb.m ], [ f0x547D42AEA2879F2E, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %1, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.ar, i64 2832, i1 false), !tbaa.struct !32
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !31
  %i.bn = mul nuw nsw i64 %i.s, 2832
  %i.bo = getelementptr i8, ptr %scevgep, i64 %i.bn
  %bound0 = icmp ult ptr %1, %i.bo
  %bound1 = icmp ult ptr %i.av, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !155
  %wide.load219 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !8, !alias.scope !155
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.br, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %wide.load221 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %i.bt = add <4 x i32> %wide.load220, %wide.load
  %i.bu = add <4 x i32> %wide.load221, %wide.load219
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !8, !alias.scope !155
  %wide.load219.1 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8, !alias.scope !155
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load220.1 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %wide.load221.1 = load <4 x i32>, ptr %i.by, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %i.bz = add <4 x i32> %wide.load220.1, %wide.load.1
  %i.ca = add <4 x i32> %wide.load221.1, %wide.load219.1
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  store <4 x i32> %i.ca, ptr %i.by, align 4, !tbaa !8, !alias.scope !156, !noalias !155
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next.1, 704
  br i1 %i.cb, label %HistogramAddHistogramCommand.exit.i, label %vector.body, !llvm.loop !136

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i6277.i = phi i64 [ %i.cz, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0.i6277.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = add i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !8
  %i.ch = or disjoint i64 %.0.i6277.i, 1          ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = add i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  %i.cn = or disjoint i64 %.0.i6277.i, 2          ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !8
  %i.ct = or disjoint i64 %.0.i6277.i, 3          ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = add i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !8
  %i.cz = add nuw nsw i64 %.0.i6277.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cz, 704
  br i1 %exitcond.not.i.3, label %HistogramAddHistogramCommand.exit.i, label %scalar.ph, !llvm.loop !137

HistogramAddHistogramCommand.exit.i:              ; preds = %vector.body, %scalar.ph
  %i.da = tail call double @BrotliPopulationCostCommand(ptr noundef nonnull %1) #7 ; 2 uses
  %i.db = fsub double %i.bj, %i.ay
  %i.dc = fcmp uge double %i.da, %i.db
  br i1 %i.dc, label %BrotliCompareAndPushToQueueCommand.exit, label %.critedge.i

.critedge.i:                                      ; preds = %HistogramAddHistogramCommand.exit.i, %bb.k, %FastLog2.exit.i
  %.sroa.10.0.i = phi double [ %i.at, %bb.k ], [ %i.ax, %FastLog2.exit.i ], [ %i.da, %HistogramAddHistogramCommand.exit.i ] ; 3 uses
  %i.dd = fadd double %i.ay, %.sroa.10.0.i        ; 4 uses
  %.not.i = icmp eq i64 %.1139147, 0
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.critedge.i
  %i.de = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.df = fcmp une double %i.de, %i.dd
  br i1 %i.df, label %.split.i, label %HistogramPairIsLess.exit.i

.split.i:                                         ; preds = %bb.n
  %i.dg = fcmp ogt double %i.de, %i.dd
  br i1 %i.dg, label %bb.o, label %bb.r

HistogramPairIsLess.exit.i:                       ; preds = %bb.n
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !23
  %i.di = load i32, ptr %5, align 8, !tbaa !24
  %i.dj = sub i32 %i.dh, %i.di
  %i.dk = sub nuw i32 %spec.select.i, %spec.select59.i
  %i.dl = icmp ugt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i
  %i.dm = icmp ult i64 %.1139147, %9
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.do = add nuw i64 %.1139147, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i64 [ %i.do, %bb.p ], [ %.1139147, %bb.o ]
  store i32 %spec.select59.i, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.c, align 4, !tbaa !8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !10
  store double %i.dd, ptr %i.a, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueCommand.exit

bb.r:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i, %.critedge.i
  %i.dp = icmp ult i64 %.1139147, %9
  br i1 %i.dp, label %bb.s, label %BrotliCompareAndPushToQueueCommand.exit

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147 ; 4 uses
  store i32 %spec.select59.i, ptr %i.dq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %spec.select.i, ptr %.sroa.7.0..sroa_idx69.i, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx71.i, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store double %i.dd, ptr %.sroa.15.0..sroa_idx73.i, align 8, !tbaa !10
  %i.dr = add nuw i64 %.1139147, 1
  br label %BrotliCompareAndPushToQueueCommand.exit

BrotliCompareAndPushToQueueCommand.exit:          ; preds = %bb.c, %HistogramAddHistogramCommand.exit.i, %bb.q, %bb.r, %bb.s
  %.6 = phi i64 [ %.1139147, %bb.c ], [ %i.dr, %bb.s ], [ %.1139147, %bb.r ], [ %.5, %bb.q ], [ %.1139147, %HistogramAddHistogramCommand.exit.i ] ; 2 uses
  %i.ds = add i64 %.093148, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %6
  br i1 %exitcond.not, label %.loopexit145, label %bb.c, !llvm.loop !138

bb.t:                                             ; preds = %.lr.ph169, %.loopexit
  %.095168 = phi i64 [ 1, %.lr.ph169 ], [ %.196, %.loopexit ]
  %.097167 = phi double [ 0.000000e+00, %.lr.ph169 ], [ %.198, %.loopexit ] ; 2 uses
  %.099166 = phi i64 [ %6, %.lr.ph169 ], [ %.1100, %.loopexit ] ; 4 uses
  %.2140165 = phi i64 [ %.1139.lcssa, %.lr.ph169 ], [ %.4, %.loopexit ] ; 3 uses
  %i.dt = load double, ptr %i.d, align 8, !tbaa !17
  %i.du = fcmp ult double %i.dt, %.097167
  br i1 %i.du, label %vector.memcheck268, label %.loopexit, !llvm.loop !139

vector.memcheck268:                               ; preds = %bb.t
  %i.dv = load i32, ptr %5, align 8, !tbaa !24    ; 15 uses
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !23  ; 6 uses
  %i.dx = zext i32 %i.dv to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.dx, 2832             ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  %i.dz = zext i32 %i.dw to i64                   ; 2 uses
  %.idx281 = mul nuw nsw i64 %i.dz, 2832          ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.idx281 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2816
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 2816 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.ef = add i64 %i.ee, %i.ec
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !31
  %i.eg = add nuw nsw i64 %.idx281, 2816
  %bound0269 = icmp samesign ult i64 %.idx, %i.eg
  %i.eh = add nuw nsw i64 %.idx, 2816
  %bound1270 = icmp samesign ult i64 %.idx281, %i.eh
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %scalar.ph267, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck268, %vector.body273
  %index274 = phi i64 [ %index.next279.1, %vector.body273 ], [ 0, %vector.memcheck268 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index274 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load275 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !8, !alias.scope !157
  %wide.load276 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !8, !alias.scope !157
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index274 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %wide.load278 = load <4 x i32>, ptr %i.el, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %i.em = add <4 x i32> %wide.load277, %wide.load275
  %i.en = add <4 x i32> %wide.load278, %wide.load276
  store <4 x i32> %i.em, ptr %i.ek, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  store <4 x i32> %i.en, ptr %i.el, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %index.next279 = or disjoint i64 %index274, 8   ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index.next279 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load275.1 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !8, !alias.scope !157
  %wide.load276.1 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !8, !alias.scope !157
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index.next279 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load277.1 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %wide.load278.1 = load <4 x i32>, ptr %i.er, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %i.es = add <4 x i32> %wide.load277.1, %wide.load275.1
  %i.et = add <4 x i32> %wide.load278.1, %wide.load276.1
  store <4 x i32> %i.es, ptr %i.eq, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  store <4 x i32> %i.et, ptr %i.er, align 4, !tbaa !8, !alias.scope !158, !noalias !157
  %index.next279.1 = add nuw nsw i64 %index274, 16 ; 2 uses
  %i.eu = icmp eq i64 %index.next279.1, 704
  br i1 %i.eu, label %HistogramAddHistogramCommand.exit, label %vector.body273, !llvm.loop !143

end_hunk_2
begin_hunk_3_@BrotliHistogramCombineCommand:bb.a

.preheader142:                                    ; preds = %.preheader142.preheader, %bb.x
  %.192156 = phi i64 [ %i.hn, %bb.x ], [ 0, %.preheader142.preheader ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = icmp eq i32 %i.hg, %i.dw
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader142
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %i.hk = xor i64 %.192156, -1
  %i.hl = add i64 %.099166, %i.hk
  %i.hm = shl i64 %i.hl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %i.hj, i64 %i.hm, i1 false)
  br label %.loopexit143

bb.x:                                             ; preds = %.preheader142
  %i.hn = add nuw i64 %.192156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.hn, %.099166
  br i1 %exitcond178.not, label %.loopexit143, label %.preheader142, !llvm.loop !147

.loopexit143:                                     ; preds = %bb.x, %bb.w
  %i.ho = add i64 %.099166, -1                    ; 3 uses
  %.not172 = icmp eq i64 %.2140165, 0
  br i1 %.not172, label %.preheader, label %.lr.ph159

.preheader:                                       ; preds = %bb.ad, %.loopexit143
  %.0.lcssa = phi i64 [ 0, %.loopexit143 ], [ %.1, %bb.ad ]
  %.not173 = icmp eq i64 %i.ho, 0
  br i1 %.not173, label %._crit_edge, label %.lr.ph163

.lr.ph159:                                        ; preds = %.loopexit143, %bb.ad
  %.0158 = phi i64 [ %.1, %bb.ad ], [ 0, %.loopexit143 ] ; 5 uses
  %.2157 = phi i64 [ %i.ik, %bb.ad ], [ 0, %.loopexit143 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.2157 ; 5 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !24 ; 3 uses
  %i.hr = icmp eq i32 %i.hq, %i.dv
  br i1 %i.hr, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.lr.ph159
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !23 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, %i.dv
  %i.hv = icmp eq i32 %i.hq, %i.dw
  %or.cond = or i1 %i.hv, %i.hu
  %i.hw = icmp eq i32 %i.ht, %i.dw
  %or.cond108 = or i1 %i.hw, %or.cond
  br i1 %or.cond108, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hx = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !17 ; 2 uses
  %i.ia = fcmp une double %i.hx, %i.hz
  br i1 %i.ia, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.z
  %i.ib = fcmp ogt double %i.hx, %i.hz
  br i1 %i.ib, label %bb.aa, label %bb.ab

HistogramPairIsLess.exit:                         ; preds = %bb.z
  %i.ic = load i32, ptr %i.e, align 4, !tbaa !23
  %i.id = load i32, ptr %5, align 8, !tbaa !24
  %i.ie = sub i32 %i.ic, %i.id
  %i.if = sub i32 %i.ht, %i.hq
  %i.ig = icmp ugt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split, %HistogramPairIsLess.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ac

bb.ab:                                            ; preds = %.split, %HistogramPairIsLess.exit
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ij = add i64 %.0158, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph159, %bb.y, %bb.ac
  %.1 = phi i64 [ %i.ij, %bb.ac ], [ %.0158, %bb.y ], [ %.0158, %.lr.ph159 ] ; 2 uses
  %i.ik = add nuw i64 %.2157, 1                   ; 2 uses
  %exitcond179.not = icmp eq i64 %i.ik, %.2140165
  br i1 %exitcond179.not, label %.preheader, label %.lr.ph159, !llvm.loop !148

.lr.ph163:                                        ; preds = %.preheader, %BrotliCompareAndPushToQueueCommand.exit131
  %.3162 = phi i64 [ %i.ms, %BrotliCompareAndPushToQueueCommand.exit131 ], [ 0, %.preheader ] ; 2 uses
  %.3141161 = phi i64 [ %.8, %BrotliCompareAndPushToQueueCommand.exit131 ], [ %.0.lcssa, %.preheader ] ; 12 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.3162
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8  ; 3 uses
  %i.in = icmp eq i32 %i.dv, %i.im
  br i1 %i.in, label %BrotliCompareAndPushToQueueCommand.exit131, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph163
  %spec.select.i110 = tail call i32 @llvm.umax.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %spec.select59.i111 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %i.io = zext i32 %spec.select59.i111 to i64     ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8  ; 3 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = zext i32 %spec.select.i110 to i64       ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8  ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, %i.ir            ; 3 uses
  %i.ix = uitofp i32 %i.iq to double              ; 2 uses
  %i.iy = icmp ult i32 %i.iq, 256
  br i1 %i.iy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ir
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !10
  br label %FastLog2.exit67.i112

bb.ag:                                            ; preds = %bb.ae
  %i.jb = tail call double @log2(double noundef %i.ix) #7
  br label %FastLog2.exit67.i112

FastLog2.exit67.i112:                             ; preds = %bb.ag, %bb.af
  %.0.i66.i113 = phi double [ %i.ja, %bb.af ], [ %i.jb, %bb.ag ]
  %i.jc = uitofp i32 %i.iu to double              ; 2 uses
  %i.jd = icmp ult i32 %i.iu, 256
  br i1 %i.jd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %FastLog2.exit67.i112
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iv
  %i.jf = load double, ptr %i.je, align 8, !tbaa !10
  br label %FastLog2.exit65.i114

bb.ai:                                            ; preds = %FastLog2.exit67.i112
  %i.jg = tail call double @log2(double noundef %i.jc) #7
  br label %FastLog2.exit65.i114

FastLog2.exit65.i114:                             ; preds = %bb.ai, %bb.ah
  %.0.i64.i115 = phi double [ %i.jf, %bb.ah ], [ %i.jg, %bb.ai ]
  %i.jh = fmul double %.0.i64.i115, %i.jc
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i66.i113, double %i.jh)
  %i.jj = uitofp nneg i64 %i.iw to double         ; 2 uses
  %i.jk = icmp samesign ult i64 %i.iw, 256
  br i1 %i.jk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %FastLog2.exit65.i114
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iw
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !10
  br label %FastLog2.exit.i116

bb.ak:                                            ; preds = %FastLog2.exit65.i114
  %i.jn = tail call double @log2(double noundef %i.jj) #7
  br label %FastLog2.exit.i116

FastLog2.exit.i116:                               ; preds = %bb.ak, %bb.aj
  %.0.i63.i117 = phi double [ %i.jm, %bb.aj ], [ %i.jn, %bb.ak ]
  %i.jo = fneg double %i.jj
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jo, double %.0.i63.i117, double %i.ji)
  %i.jq = fmul double %i.jp, 5.000000e-01
  %i.jr = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.io ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2824
  %i.jt = load double, ptr %i.js, align 8, !tbaa !30 ; 2 uses
  %i.ju = fsub double %i.jq, %i.jt
  %i.jv = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.is ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2824
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !30 ; 2 uses
  %i.jy = fsub double %i.ju, %i.jx                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 2816
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !31
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %.critedge.i121, label %bb.al

bb.al:                                            ; preds = %FastLog2.exit.i116
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 2816 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !31
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.critedge.i121, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kf = icmp eq i64 %.3141161, 0
  br i1 %i.kf, label %vector.memcheck228, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kg = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.kh = fcmp olt double %i.kg, 0.000000e+00
  %i.ki = select i1 %i.kh, double 0.000000e+00, double %i.kg
  br label %vector.memcheck228

vector.memcheck228:                               ; preds = %bb.an, %bb.am
  %i.kj = phi double [ %i.ki, %bb.an ], [ f0x547D42AEA2879F2E, %bb.am ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %1, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.jr, i64 2832, i1 false), !tbaa.struct !32
  %i.kk = load i64, ptr %i.kc, align 8, !tbaa !31
  %i.kl = load i64, ptr %i.g, align 8, !tbaa !31
  %i.km = add i64 %i.kl, %i.kk
  store i64 %i.km, ptr %i.g, align 8, !tbaa !31
  %i.kn = mul nuw nsw i64 %i.is, 2832
  %i.ko = getelementptr i8, ptr %scevgep228, i64 %i.kn
  %bound0229 = icmp ult ptr %1, %i.ko
  %bound1230 = icmp ult ptr %i.jv, %i.g
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %scalar.ph227, label %vector.body233

vector.body233:                                   ; preds = %vector.memcheck228, %vector.body233
  %index234 = phi i64 [ %index.next239.1, %vector.body233 ], [ 0, %vector.memcheck228 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index234 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !8, !alias.scope !159
  %wide.load236 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !8, !alias.scope !159
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index234 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %wide.load237 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %wide.load238 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %i.kt = add <4 x i32> %wide.load237, %wide.load235
  %i.ku = add <4 x i32> %wide.load238, %wide.load236
  store <4 x i32> %i.kt, ptr %i.kr, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  store <4 x i32> %i.ku, ptr %i.ks, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %index.next239 = or disjoint i64 %index234, 8   ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index.next239 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load235.1 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !8, !alias.scope !159
  %wide.load236.1 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !8, !alias.scope !159
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next239 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %wide.load237.1 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %wide.load238.1 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %i.kz = add <4 x i32> %wide.load237.1, %wide.load235.1
  %i.la = add <4 x i32> %wide.load238.1, %wide.load236.1
  store <4 x i32> %i.kz, ptr %i.kx, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  store <4 x i32> %i.la, ptr %i.ky, align 4, !tbaa !8, !alias.scope !160, !noalias !159
  %index.next239.1 = add nuw nsw i64 %index234, 16 ; 2 uses
  %i.lb = icmp eq i64 %index.next239.1, 704
  br i1 %i.lb, label %HistogramAddHistogramCommand.exit.i120, label %vector.body233, !llvm.loop !152

scalar.ph227:                                     ; preds = %vector.memcheck228, %scalar.ph227
  %.0.i6277.i118 = phi i64 [ %i.lz, %scalar.ph227 ], [ 0, %vector.memcheck228 ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0.i6277.i118
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277.i118 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8
  %i.lg = add i32 %i.lf, %i.ld
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !8
  %i.lh = or disjoint i64 %.0.i6277.i118, 1       ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lh ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !8
  %i.lm = add i32 %i.ll, %i.lj
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !8
  %i.ln = or disjoint i64 %.0.i6277.i118, 2       ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !8
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ln ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8
  %i.ls = add i32 %i.lr, %i.lp
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !8
  %i.lt = or disjoint i64 %.0.i6277.i118, 3       ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lt ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !8
  %i.ly = add i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !8
  %i.lz = add nuw nsw i64 %.0.i6277.i118, 4       ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %i.lz, 704
  br i1 %exitcond.not.i119.3, label %HistogramAddHistogramCommand.exit.i120, label %scalar.ph227, !llvm.loop !153

HistogramAddHistogramCommand.exit.i120:           ; preds = %vector.body233, %scalar.ph227
  %i.ma = tail call double @BrotliPopulationCostCommand(ptr noundef nonnull %1) #7 ; 2 uses
  %i.mb = fsub double %i.kj, %i.jy
  %i.mc = fcmp uge double %i.ma, %i.mb
  br i1 %i.mc, label %BrotliCompareAndPushToQueueCommand.exit131, label %.critedge.i121

.critedge.i121:                                   ; preds = %HistogramAddHistogramCommand.exit.i120, %bb.al, %FastLog2.exit.i116
  %.sroa.10.0.i122 = phi double [ %i.jt, %bb.al ], [ %i.jx, %FastLog2.exit.i116 ], [ %i.ma, %HistogramAddHistogramCommand.exit.i120 ] ; 3 uses
  %i.md = fadd double %i.jy, %.sroa.10.0.i122     ; 4 uses
  %.not.i123 = icmp eq i64 %.3141161, 0
  br i1 %.not.i123, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i121
  %i.me = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.mf = fcmp une double %i.me, %i.md
  br i1 %i.mf, label %.split.i130, label %HistogramPairIsLess.exit.i124

.split.i130:                                      ; preds = %bb.ao
  %i.mg = fcmp ogt double %i.me, %i.md
  br i1 %i.mg, label %bb.ap, label %bb.as

HistogramPairIsLess.exit.i124:                    ; preds = %bb.ao
  %i.mh = load i32, ptr %i.e, align 4, !tbaa !23
  %i.mi = load i32, ptr %5, align 8, !tbaa !24
  %i.mj = sub i32 %i.mh, %i.mi
  %i.mk = sub nuw i32 %spec.select.i110, %spec.select59.i111
  %i.ml = icmp ugt i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130
  %i.mm = icmp ult i64 %.3141161, %9
  br i1 %i.mm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.mo = add nuw i64 %.3141161, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.7 = phi i64 [ %i.mo, %bb.aq ], [ %.3141161, %bb.ap ]
  store i32 %spec.select59.i111, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i110, ptr %i.e, align 4, !tbaa !8
  store double %.sroa.10.0.i122, ptr %i.f, align 8, !tbaa !10
  store double %i.md, ptr %i.d, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueCommand.exit131

bb.as:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130, %.critedge.i121
  %i.mp = icmp ult i64 %.3141161, %9
  br i1 %i.mp, label %bb.at, label %BrotliCompareAndPushToQueueCommand.exit131

bb.at:                                            ; preds = %bb.as
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161 ; 4 uses
  store i32 %spec.select59.i111, ptr %i.mq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i125 = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %spec.select.i110, ptr %.sroa.7.0..sroa_idx69.i125, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i126 = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store double %.sroa.10.0.i122, ptr %.sroa.10.0..sroa_idx71.i126, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i127 = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store double %i.md, ptr %.sroa.15.0..sroa_idx73.i127, align 8, !tbaa !10
  %i.mr = add nuw i64 %.3141161, 1
  br label %BrotliCompareAndPushToQueueCommand.exit131

BrotliCompareAndPushToQueueCommand.exit131:       ; preds = %.lr.ph163, %HistogramAddHistogramCommand.exit.i120, %bb.ar, %bb.as, %bb.at
  %.8 = phi i64 [ %.3141161, %.lr.ph163 ], [ %i.mr, %bb.at ], [ %.3141161, %bb.as ], [ %.7, %bb.ar ], [ %.3141161, %HistogramAddHistogramCommand.exit.i120 ] ; 2 uses
  %i.ms = add nuw i64 %.3162, 1                   ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ms, %i.ho
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph163, !llvm.loop !154

.loopexit:                                        ; preds = %BrotliCompareAndPushToQueueCommand.exit131, %bb.t
  %.4 = phi i64 [ %.2140165, %bb.t ], [ %.8, %BrotliCompareAndPushToQueueCommand.exit131 ]
  %.1100 = phi i64 [ %.099166, %bb.t ], [ %i.ho, %BrotliCompareAndPushToQueueCommand.exit131 ] ; 3 uses
  %.198 = phi double [ f0x547D42AEA2879F2E, %bb.t ], [ %.097167, %BrotliCompareAndPushToQueueCommand.exit131 ]
  %.196 = phi i64 [ %8, %bb.t ], [ %.095168, %BrotliCompareAndPushToQueueCommand.exit131 ] ; 2 uses
  %i.mt = icmp ugt i64 %.1100, %.196
  br i1 %i.mt, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.loopexit, %bb.a, %.preheader144
  %.099.lcssa = phi i64 [ %6, %.preheader144 ], [ 0, %bb.a ], [ 0, %.preheader ], [ %.1100, %.loopexit ]
  ret i64 %.099.lcssa
}

; Function Attrs: nounwind uwtable
define hidden double @BrotliHistogramBitCostDistanceCommand(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %2, ptr noundef nonnull align 8 dereferenceable(2832) %0, i64 2832, i1 false), !tbaa.struct !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2816 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2816 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !31
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !8, !alias.scope !166
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !tbaa !8, !alias.scope !166
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load10 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %wide.load11 = load <4 x i32>, ptr %i.l, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %i.m = add <4 x i32> %wide.load10, %wide.load
  %i.n = add <4 x i32> %wide.load11, %wide.load9
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  store <4 x i32> %i.n, ptr %i.l, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8, !alias.scope !166
  %wide.load9.1 = load <4 x i32>, ptr %i.p, align 4, !tbaa !8, !alias.scope !166
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load10.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %wide.load11.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %i.s = add <4 x i32> %wide.load10.1, %wide.load.1
  %i.t = add <4 x i32> %wide.load11.1, %wide.load9.1
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !8, !alias.scope !167, !noalias !166
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
end_hunk_3
begin_hunk_4_@BrotliCompareAndPushToQueueDistance:bb.a
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2184
  %i.ag = load double, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.f ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = fsub double %i.ah, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %FastLog2.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %7, align 8, !tbaa !15
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %vector.memcheck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = select i1 %i.aw, double 0.000000e+00, double %i.av
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j, %bb.k
  %i.ay = phi double [ %i.ax, %bb.k ], [ f0x547D42AEA2879F2E, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %1, ptr noundef nonnull align 8 dereferenceable(2192) %i.ae, i64 2192, i1 false), !tbaa.struct !36
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !35
  %i.bd = mul nuw nsw i64 %i.f, 2192
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 2176
  %bound0 = icmp ult ptr %1, %i.bf
  %bound1 = icmp ult ptr %i.ai, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !8, !alias.scope !218
  %wide.load84 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !8, !alias.scope !218
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %wide.load86 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %i.bk = add <4 x i32> %wide.load85, %wide.load
  %i.bl = add <4 x i32> %wide.load86, %wide.load84
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !8, !alias.scope !218
  %wide.load84.1 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !8, !alias.scope !218
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load85.1 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %wide.load86.1 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %i.bq = add <4 x i32> %wide.load85.1, %wide.load.1
  %i.br = add <4 x i32> %wide.load86.1, %wide.load84.1
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !8, !alias.scope !219, !noalias !218
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bs = icmp eq i64 %index.next.1, 544
  br i1 %i.bs, label %HistogramAddHistogramDistance.exit, label %vector.body, !llvm.loop !216

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i6277 = phi i64 [ %i.cq, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0.i6277
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add i32 %i.bw, %i.bu
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %i.by = or disjoint i64 %.0.i6277, 1            ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !8
  %i.ce = or disjoint i64 %.0.i6277, 2            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  %i.ck = or disjoint i64 %.0.i6277, 3            ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = add i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = add nuw nsw i64 %.0.i6277, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cq, 544
  br i1 %exitcond.not.3, label %HistogramAddHistogramDistance.exit, label %scalar.ph, !llvm.loop !217

HistogramAddHistogramDistance.exit:               ; preds = %vector.body, %scalar.ph
  %i.cr = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %1) #7 ; 2 uses
  %i.cs = fsub double %i.ay, %i.al
  %i.ct = fcmp uge double %i.cr, %i.cs
  br i1 %i.ct, label %.critedge61, label %.critedge

.critedge:                                        ; preds = %HistogramAddHistogramDistance.exit, %bb.i, %FastLog2.exit
  %.sroa.10.0 = phi double [ %i.ag, %bb.i ], [ %i.ak, %FastLog2.exit ], [ %i.cr, %HistogramAddHistogramDistance.exit ] ; 3 uses
  %i.cu = fadd double %i.al, %.sroa.10.0          ; 4 uses
  %i.cv = load i64, ptr %7, align 8, !tbaa !15    ; 6 uses
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %i.cy = fcmp une double %i.cx, %i.cu
  br i1 %i.cy, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.l
  %i.cz = fcmp ogt double %i.cx, %i.cu
  br i1 %i.cz, label %bb.m, label %bb.p

HistogramPairIsLess.exit:                         ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = load i32, ptr %6, align 8, !tbaa !24
  %i.dd = sub i32 %i.db, %i.dc
  %i.de = sub nuw i32 %spec.select, %spec.select59
  %i.df = icmp ugt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.split, %HistogramPairIsLess.exit
  %i.dg = icmp ult i64 %i.cv, %5
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !25
  %i.di = load i64, ptr %7, align 8, !tbaa !15
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %7, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %spec.select59, ptr %6, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  store double %i.cu, ptr %i.cw, align 8, !tbaa !10
  br label %.critedge61

bb.p:                                             ; preds = %.split, %HistogramPairIsLess.exit, %.critedge
  %i.dk = icmp ult i64 %i.cv, %5
  br i1 %i.dk, label %bb.q, label %.critedge61

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.cv ; 4 uses
  store i32 %spec.select59, ptr %i.dl, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %spec.select, ptr %.sroa.7.0..sroa_idx69, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx71, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %i.cu, ptr %.sroa.15.0..sroa_idx73, align 8, !tbaa !10
  %i.dm = add nuw i64 %i.cv, 1
  store i64 %i.dm, ptr %7, align 8, !tbaa !15
  br label %.critedge61

.critedge61:                                      ; preds = %bb.p, %bb.q, %bb.o, %HistogramAddHistogramDistance.exit, %bb.a
  ret void
}

declare hidden double @BrotliPopulationCostDistance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @BrotliHistogramCombineDistance(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.HistogramPair, align 8     ; 4 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 2176       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 2176
  br label %bb.b

.loopexit145:                                     ; preds = %BrotliCompareAndPushToQueueDistance.exit, %bb.b
  %.1139.lcssa = phi i64 [ %.0138149, %bb.b ], [ %.6, %BrotliCompareAndPushToQueueDistance.exit ] ; 2 uses
  %exitcond175.not = icmp eq i64 %i.h, %6
  br i1 %exitcond175.not, label %.preheader144, label %bb.b, !llvm.loop !220

.preheader144:                                    ; preds = %.loopexit145
  %.not216 = icmp eq i64 %6, 1
  br i1 %.not216, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader144
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not171 = icmp eq i64 %7, 0
  %i.g = getelementptr i8, ptr %1, i64 2176       ; 3 uses
  %scevgep228 = getelementptr i8, ptr %0, i64 2176
  %min.iters.check = icmp ult i64 %7, 8
  %n.vec = and i64 %7, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph151, %.loopexit145
  %.094150 = phi i64 [ 0, %.lr.ph151 ], [ %i.h, %.loopexit145 ] ; 2 uses
  %.0138149 = phi i64 [ 0, %.lr.ph151 ], [ %.1139.lcssa, %.loopexit145 ] ; 2 uses
  %i.h = add nuw i64 %.094150, 1                  ; 4 uses
  %i.i = icmp ult i64 %i.h, %6
  br i1 %i.i, label %.lr.ph, label %.loopexit145

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.094150
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %BrotliCompareAndPushToQueueDistance.exit
  %.093148 = phi i64 [ %i.h, %.lr.ph ], [ %i.ds, %BrotliCompareAndPushToQueueDistance.exit ] ; 2 uses
  %.1139147 = phi i64 [ %.0138149, %.lr.ph ], [ %.6, %BrotliCompareAndPushToQueueDistance.exit ] ; 12 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.093148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 3 uses
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %BrotliCompareAndPushToQueueDistance.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %spec.select59.i = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.k) ; 4 uses
  %i.o = zext i32 %spec.select59.i to i64         ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = zext i32 %spec.select.i to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.r               ; 3 uses
  %i.x = uitofp i32 %i.q to double                ; 2 uses
  %i.y = icmp ult i32 %i.q, 256
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.r
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10
  br label %FastLog2.exit67.i

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call double @log2(double noundef %i.x) #7
  br label %FastLog2.exit67.i

FastLog2.exit67.i:                                ; preds = %bb.f, %bb.e
  %.0.i66.i = phi double [ %i.aa, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = uitofp i32 %i.u to double               ; 2 uses
  %i.ad = icmp ult i32 %i.u, 256
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %FastLog2.exit67.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.v
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  br label %FastLog2.exit65.i

bb.h:                                             ; preds = %FastLog2.exit67.i
  %i.ag = tail call double @log2(double noundef %i.ac) #7
  br label %FastLog2.exit65.i

FastLog2.exit65.i:                                ; preds = %bb.h, %bb.g
  %.0.i64.i = phi double [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = fmul double %.0.i64.i, %i.ac
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.x, double %.0.i66.i, double %i.ah)
  %i.aj = uitofp nneg i64 %i.w to double          ; 2 uses
  %i.ak = icmp samesign ult i64 %i.w, 256
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %FastLog2.exit65.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.w
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  br label %FastLog2.exit.i

bb.j:                                             ; preds = %FastLog2.exit65.i
  %i.an = tail call double @log2(double noundef %i.aj) #7
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.j, %bb.i
  %.0.i63.i = phi double [ %i.am, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = fneg double %i.aj
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %.0.i63.i, double %i.ai)
  %i.aq = fmul double %i.ap, 5.000000e-01
  %i.ar = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2184
  %i.at = load double, ptr %i.as, align 8, !tbaa !34 ; 2 uses
  %i.au = fsub double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.s ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2184
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !34 ; 2 uses
  %i.ay = fsub double %i.au, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 2176
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %FastLog2.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2176 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %.1139147, 0
  br i1 %i.bf, label %vector.memcheck, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, double 0.000000e+00, double %i.bg
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.m, %bb.l
  %i.bj = phi double [ %i.bi, %bb.m ], [ f0x547D42AEA2879F2E, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %1, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ar, i64 2192, i1 false), !tbaa.struct !36
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !35
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !35
  %i.bn = mul nuw nsw i64 %i.s, 2192
  %i.bo = getelementptr i8, ptr %scevgep, i64 %i.bn
  %bound0 = icmp ult ptr %1, %i.bo
  %bound1 = icmp ult ptr %i.av, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !243
  %wide.load219 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !8, !alias.scope !243
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.br, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %wide.load221 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %i.bt = add <4 x i32> %wide.load220, %wide.load
  %i.bu = add <4 x i32> %wide.load221, %wide.load219
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index.next ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !8, !alias.scope !243
  %wide.load219.1 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8, !alias.scope !243
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load220.1 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %wide.load221.1 = load <4 x i32>, ptr %i.by, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %i.bz = add <4 x i32> %wide.load220.1, %wide.load.1
  %i.ca = add <4 x i32> %wide.load221.1, %wide.load219.1
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  store <4 x i32> %i.ca, ptr %i.by, align 4, !tbaa !8, !alias.scope !244, !noalias !243
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next.1, 544
  br i1 %i.cb, label %HistogramAddHistogramDistance.exit.i, label %vector.body, !llvm.loop !224

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i6277.i = phi i64 [ %i.cz, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0.i6277.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = add i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !8
  %i.ch = or disjoint i64 %.0.i6277.i, 1          ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = add i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  %i.cn = or disjoint i64 %.0.i6277.i, 2          ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !8
  %i.ct = or disjoint i64 %.0.i6277.i, 3          ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = add i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !8
  %i.cz = add nuw nsw i64 %.0.i6277.i, 4          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cz, 544
  br i1 %exitcond.not.i.3, label %HistogramAddHistogramDistance.exit.i, label %scalar.ph, !llvm.loop !225

HistogramAddHistogramDistance.exit.i:             ; preds = %vector.body, %scalar.ph
  %i.da = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %1) #7 ; 2 uses
  %i.db = fsub double %i.bj, %i.ay
  %i.dc = fcmp uge double %i.da, %i.db
  br i1 %i.dc, label %BrotliCompareAndPushToQueueDistance.exit, label %.critedge.i

.critedge.i:                                      ; preds = %HistogramAddHistogramDistance.exit.i, %bb.k, %FastLog2.exit.i
  %.sroa.10.0.i = phi double [ %i.at, %bb.k ], [ %i.ax, %FastLog2.exit.i ], [ %i.da, %HistogramAddHistogramDistance.exit.i ] ; 3 uses
  %i.dd = fadd double %i.ay, %.sroa.10.0.i        ; 4 uses
  %.not.i = icmp eq i64 %.1139147, 0
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.critedge.i
  %i.de = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.df = fcmp une double %i.de, %i.dd
  br i1 %i.df, label %.split.i, label %HistogramPairIsLess.exit.i

.split.i:                                         ; preds = %bb.n
  %i.dg = fcmp ogt double %i.de, %i.dd
  br i1 %i.dg, label %bb.o, label %bb.r

HistogramPairIsLess.exit.i:                       ; preds = %bb.n
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !23
  %i.di = load i32, ptr %5, align 8, !tbaa !24
  %i.dj = sub i32 %i.dh, %i.di
  %i.dk = sub nuw i32 %spec.select.i, %spec.select59.i
  %i.dl = icmp ugt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i
  %i.dm = icmp ult i64 %.1139147, %9
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.do = add nuw i64 %.1139147, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i64 [ %i.do, %bb.p ], [ %.1139147, %bb.o ]
  store i32 %spec.select59.i, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.c, align 4, !tbaa !8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !10
  store double %i.dd, ptr %i.a, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueDistance.exit

bb.r:                                             ; preds = %HistogramPairIsLess.exit.i, %.split.i, %.critedge.i
  %i.dp = icmp ult i64 %.1139147, %9
  br i1 %i.dp, label %bb.s, label %BrotliCompareAndPushToQueueDistance.exit

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.1139147 ; 4 uses
  store i32 %spec.select59.i, ptr %i.dq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %spec.select.i, ptr %.sroa.7.0..sroa_idx69.i, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store double %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx71.i, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store double %i.dd, ptr %.sroa.15.0..sroa_idx73.i, align 8, !tbaa !10
  %i.dr = add nuw i64 %.1139147, 1
  br label %BrotliCompareAndPushToQueueDistance.exit

BrotliCompareAndPushToQueueDistance.exit:         ; preds = %bb.c, %HistogramAddHistogramDistance.exit.i, %bb.q, %bb.r, %bb.s
  %.6 = phi i64 [ %.1139147, %bb.c ], [ %i.dr, %bb.s ], [ %.1139147, %bb.r ], [ %.5, %bb.q ], [ %.1139147, %HistogramAddHistogramDistance.exit.i ] ; 2 uses
  %i.ds = add i64 %.093148, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %6
  br i1 %exitcond.not, label %.loopexit145, label %bb.c, !llvm.loop !226

bb.t:                                             ; preds = %.lr.ph169, %.loopexit
  %.095168 = phi i64 [ 1, %.lr.ph169 ], [ %.196, %.loopexit ]
  %.097167 = phi double [ 0.000000e+00, %.lr.ph169 ], [ %.198, %.loopexit ] ; 2 uses
  %.099166 = phi i64 [ %6, %.lr.ph169 ], [ %.1100, %.loopexit ] ; 4 uses
  %.2140165 = phi i64 [ %.1139.lcssa, %.lr.ph169 ], [ %.4, %.loopexit ] ; 3 uses
  %i.dt = load double, ptr %i.d, align 8, !tbaa !17
  %i.du = fcmp ult double %i.dt, %.097167
  br i1 %i.du, label %vector.memcheck268, label %.loopexit, !llvm.loop !227

vector.memcheck268:                               ; preds = %bb.t
  %i.dv = load i32, ptr %5, align 8, !tbaa !24    ; 15 uses
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !23  ; 6 uses
  %i.dx = zext i32 %i.dv to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.dx, 2192             ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  %i.dz = zext i32 %i.dw to i64                   ; 2 uses
  %.idx281 = mul nuw nsw i64 %i.dz, 2192          ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.idx281 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2176
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 2176 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, %i.ec
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !35
  %i.eg = add nuw nsw i64 %.idx281, 2176
  %bound0269 = icmp samesign ult i64 %.idx, %i.eg
  %i.eh = add nuw nsw i64 %.idx, 2176
  %bound1270 = icmp samesign ult i64 %.idx281, %i.eh
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %scalar.ph267, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck268, %vector.body273
  %index274 = phi i64 [ %index.next279.1, %vector.body273 ], [ 0, %vector.memcheck268 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index274 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load275 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !8, !alias.scope !245
  %wide.load276 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !8, !alias.scope !245
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index274 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load277 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %wide.load278 = load <4 x i32>, ptr %i.el, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %i.em = add <4 x i32> %wide.load277, %wide.load275
  %i.en = add <4 x i32> %wide.load278, %wide.load276
  store <4 x i32> %i.em, ptr %i.ek, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  store <4 x i32> %i.en, ptr %i.el, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %index.next279 = or disjoint i64 %index274, 8   ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index.next279 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load275.1 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !8, !alias.scope !245
  %wide.load276.1 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !8, !alias.scope !245
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index.next279 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load277.1 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %wide.load278.1 = load <4 x i32>, ptr %i.er, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %i.es = add <4 x i32> %wide.load277.1, %wide.load275.1
  %i.et = add <4 x i32> %wide.load278.1, %wide.load276.1
  store <4 x i32> %i.es, ptr %i.eq, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  store <4 x i32> %i.et, ptr %i.er, align 4, !tbaa !8, !alias.scope !246, !noalias !245
  %index.next279.1 = add nuw nsw i64 %index274, 16 ; 2 uses
  %i.eu = icmp eq i64 %index.next279.1, 544
  br i1 %i.eu, label %HistogramAddHistogramDistance.exit, label %vector.body273, !llvm.loop !231

end_hunk_4
begin_hunk_5_@BrotliHistogramCombineDistance:bb.a

.preheader142:                                    ; preds = %.preheader142.preheader, %bb.x
  %.192156 = phi i64 [ %i.hn, %bb.x ], [ 0, %.preheader142.preheader ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = icmp eq i32 %i.hg, %i.dw
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader142
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.192156 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %i.hk = xor i64 %.192156, -1
  %i.hl = add i64 %.099166, %i.hk
  %i.hm = shl i64 %i.hl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %i.hj, i64 %i.hm, i1 false)
  br label %.loopexit143

bb.x:                                             ; preds = %.preheader142
  %i.hn = add nuw i64 %.192156, 1                 ; 2 uses
  %exitcond178.not = icmp eq i64 %i.hn, %.099166
  br i1 %exitcond178.not, label %.loopexit143, label %.preheader142, !llvm.loop !235

.loopexit143:                                     ; preds = %bb.x, %bb.w
  %i.ho = add i64 %.099166, -1                    ; 3 uses
  %.not172 = icmp eq i64 %.2140165, 0
  br i1 %.not172, label %.preheader, label %.lr.ph159

.preheader:                                       ; preds = %bb.ad, %.loopexit143
  %.0.lcssa = phi i64 [ 0, %.loopexit143 ], [ %.1, %bb.ad ]
  %.not173 = icmp eq i64 %i.ho, 0
  br i1 %.not173, label %._crit_edge, label %.lr.ph163

.lr.ph159:                                        ; preds = %.loopexit143, %bb.ad
  %.0158 = phi i64 [ %.1, %bb.ad ], [ 0, %.loopexit143 ] ; 5 uses
  %.2157 = phi i64 [ %i.ik, %bb.ad ], [ 0, %.loopexit143 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.2157 ; 5 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !24 ; 3 uses
  %i.hr = icmp eq i32 %i.hq, %i.dv
  br i1 %i.hr, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.lr.ph159
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !23 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, %i.dv
  %i.hv = icmp eq i32 %i.hq, %i.dw
  %or.cond = or i1 %i.hv, %i.hu
  %i.hw = icmp eq i32 %i.ht, %i.dw
  %or.cond108 = or i1 %i.hw, %or.cond
  br i1 %or.cond108, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hx = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !17 ; 2 uses
  %i.ia = fcmp une double %i.hx, %i.hz
  br i1 %i.ia, label %.split, label %HistogramPairIsLess.exit

.split:                                           ; preds = %bb.z
  %i.ib = fcmp ogt double %i.hx, %i.hz
  br i1 %i.ib, label %bb.aa, label %bb.ab

HistogramPairIsLess.exit:                         ; preds = %bb.z
  %i.ic = load i32, ptr %i.e, align 4, !tbaa !23
  %i.id = load i32, ptr %5, align 8, !tbaa !24
  %i.ie = sub i32 %i.ic, %i.id
  %i.if = sub i32 %i.ht, %i.hq
  %i.ig = icmp ugt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split, %HistogramPairIsLess.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ac

bb.ab:                                            ; preds = %.split, %HistogramPairIsLess.exit
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.0158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !tbaa.struct !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ij = add i64 %.0158, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph159, %bb.y, %bb.ac
  %.1 = phi i64 [ %i.ij, %bb.ac ], [ %.0158, %bb.y ], [ %.0158, %.lr.ph159 ] ; 2 uses
  %i.ik = add nuw i64 %.2157, 1                   ; 2 uses
  %exitcond179.not = icmp eq i64 %i.ik, %.2140165
  br i1 %exitcond179.not, label %.preheader, label %.lr.ph159, !llvm.loop !236

.lr.ph163:                                        ; preds = %.preheader, %BrotliCompareAndPushToQueueDistance.exit131
  %.3162 = phi i64 [ %i.ms, %BrotliCompareAndPushToQueueDistance.exit131 ], [ 0, %.preheader ] ; 2 uses
  %.3141161 = phi i64 [ %.8, %BrotliCompareAndPushToQueueDistance.exit131 ], [ %.0.lcssa, %.preheader ] ; 12 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.3162
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8  ; 3 uses
  %i.in = icmp eq i32 %i.dv, %i.im
  br i1 %i.in, label %BrotliCompareAndPushToQueueDistance.exit131, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph163
  %spec.select.i110 = tail call i32 @llvm.umax.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %spec.select59.i111 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.dv) ; 4 uses
  %i.io = zext i32 %spec.select59.i111 to i64     ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8  ; 3 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = zext i32 %spec.select.i110 to i64       ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8  ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, %i.ir            ; 3 uses
  %i.ix = uitofp i32 %i.iq to double              ; 2 uses
  %i.iy = icmp ult i32 %i.iq, 256
  br i1 %i.iy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ir
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !10
  br label %FastLog2.exit67.i112

bb.ag:                                            ; preds = %bb.ae
  %i.jb = tail call double @log2(double noundef %i.ix) #7
  br label %FastLog2.exit67.i112

FastLog2.exit67.i112:                             ; preds = %bb.ag, %bb.af
  %.0.i66.i113 = phi double [ %i.ja, %bb.af ], [ %i.jb, %bb.ag ]
  %i.jc = uitofp i32 %i.iu to double              ; 2 uses
  %i.jd = icmp ult i32 %i.iu, 256
  br i1 %i.jd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %FastLog2.exit67.i112
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iv
  %i.jf = load double, ptr %i.je, align 8, !tbaa !10
  br label %FastLog2.exit65.i114

bb.ai:                                            ; preds = %FastLog2.exit67.i112
  %i.jg = tail call double @log2(double noundef %i.jc) #7
  br label %FastLog2.exit65.i114

FastLog2.exit65.i114:                             ; preds = %bb.ai, %bb.ah
  %.0.i64.i115 = phi double [ %i.jf, %bb.ah ], [ %i.jg, %bb.ai ]
  %i.jh = fmul double %.0.i64.i115, %i.jc
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.ix, double %.0.i66.i113, double %i.jh)
  %i.jj = uitofp nneg i64 %i.iw to double         ; 2 uses
  %i.jk = icmp samesign ult i64 %i.iw, 256
  br i1 %i.jk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %FastLog2.exit65.i114
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iw
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !10
  br label %FastLog2.exit.i116

bb.ak:                                            ; preds = %FastLog2.exit65.i114
  %i.jn = tail call double @log2(double noundef %i.jj) #7
  br label %FastLog2.exit.i116

FastLog2.exit.i116:                               ; preds = %bb.ak, %bb.aj
  %.0.i63.i117 = phi double [ %i.jm, %bb.aj ], [ %i.jn, %bb.ak ]
  %i.jo = fneg double %i.jj
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jo, double %.0.i63.i117, double %i.ji)
  %i.jq = fmul double %i.jp, 5.000000e-01
  %i.jr = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.io ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2184
  %i.jt = load double, ptr %i.js, align 8, !tbaa !34 ; 2 uses
  %i.ju = fsub double %i.jq, %i.jt
  %i.jv = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.is ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2184
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !34 ; 2 uses
  %i.jy = fsub double %i.ju, %i.jx                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 2176
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !35
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %.critedge.i121, label %bb.al

bb.al:                                            ; preds = %FastLog2.exit.i116
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 2176 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !35
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.critedge.i121, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kf = icmp eq i64 %.3141161, 0
  br i1 %i.kf, label %vector.memcheck228, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kg = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.kh = fcmp olt double %i.kg, 0.000000e+00
  %i.ki = select i1 %i.kh, double 0.000000e+00, double %i.kg
  br label %vector.memcheck228

vector.memcheck228:                               ; preds = %bb.an, %bb.am
  %i.kj = phi double [ %i.ki, %bb.an ], [ f0x547D42AEA2879F2E, %bb.am ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %1, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.jr, i64 2192, i1 false), !tbaa.struct !36
  %i.kk = load i64, ptr %i.kc, align 8, !tbaa !35
  %i.kl = load i64, ptr %i.g, align 8, !tbaa !35
  %i.km = add i64 %i.kl, %i.kk
  store i64 %i.km, ptr %i.g, align 8, !tbaa !35
  %i.kn = mul nuw nsw i64 %i.is, 2192
  %i.ko = getelementptr i8, ptr %scevgep228, i64 %i.kn
  %bound0229 = icmp ult ptr %1, %i.ko
  %bound1230 = icmp ult ptr %i.jv, %i.g
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %scalar.ph227, label %vector.body233

vector.body233:                                   ; preds = %vector.memcheck228, %vector.body233
  %index234 = phi i64 [ %index.next239.1, %vector.body233 ], [ 0, %vector.memcheck228 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index234 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !8, !alias.scope !247
  %wide.load236 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !8, !alias.scope !247
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index234 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %wide.load237 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %wide.load238 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %i.kt = add <4 x i32> %wide.load237, %wide.load235
  %i.ku = add <4 x i32> %wide.load238, %wide.load236
  store <4 x i32> %i.kt, ptr %i.kr, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  store <4 x i32> %i.ku, ptr %i.ks, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %index.next239 = or disjoint i64 %index234, 8   ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index.next239 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load235.1 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !8, !alias.scope !247
  %wide.load236.1 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !8, !alias.scope !247
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next239 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %wide.load237.1 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %wide.load238.1 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %i.kz = add <4 x i32> %wide.load237.1, %wide.load235.1
  %i.la = add <4 x i32> %wide.load238.1, %wide.load236.1
  store <4 x i32> %i.kz, ptr %i.kx, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  store <4 x i32> %i.la, ptr %i.ky, align 4, !tbaa !8, !alias.scope !248, !noalias !247
  %index.next239.1 = add nuw nsw i64 %index234, 16 ; 2 uses
  %i.lb = icmp eq i64 %index.next239.1, 544
  br i1 %i.lb, label %HistogramAddHistogramDistance.exit.i120, label %vector.body233, !llvm.loop !240

scalar.ph227:                                     ; preds = %vector.memcheck228, %scalar.ph227
  %.0.i6277.i118 = phi i64 [ %i.lz, %scalar.ph227 ], [ 0, %vector.memcheck228 ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0.i6277.i118
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.i6277.i118 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8
  %i.lg = add i32 %i.lf, %i.ld
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !8
  %i.lh = or disjoint i64 %.0.i6277.i118, 1       ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lh ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !8
  %i.lm = add i32 %i.ll, %i.lj
  store i32 %i.lm, ptr %i.lk, align 4, !tbaa !8
  %i.ln = or disjoint i64 %.0.i6277.i118, 2       ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !8
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ln ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8
  %i.ls = add i32 %i.lr, %i.lp
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !8
  %i.lt = or disjoint i64 %.0.i6277.i118, 3       ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lt ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !8
  %i.ly = add i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !8
  %i.lz = add nuw nsw i64 %.0.i6277.i118, 4       ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %i.lz, 544
  br i1 %exitcond.not.i119.3, label %HistogramAddHistogramDistance.exit.i120, label %scalar.ph227, !llvm.loop !241

HistogramAddHistogramDistance.exit.i120:          ; preds = %vector.body233, %scalar.ph227
  %i.ma = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %1) #7 ; 2 uses
  %i.mb = fsub double %i.kj, %i.jy
  %i.mc = fcmp uge double %i.ma, %i.mb
  br i1 %i.mc, label %BrotliCompareAndPushToQueueDistance.exit131, label %.critedge.i121

.critedge.i121:                                   ; preds = %HistogramAddHistogramDistance.exit.i120, %bb.al, %FastLog2.exit.i116
  %.sroa.10.0.i122 = phi double [ %i.jt, %bb.al ], [ %i.jx, %FastLog2.exit.i116 ], [ %i.ma, %HistogramAddHistogramDistance.exit.i120 ] ; 3 uses
  %i.md = fadd double %i.jy, %.sroa.10.0.i122     ; 4 uses
  %.not.i123 = icmp eq i64 %.3141161, 0
  br i1 %.not.i123, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i121
  %i.me = load double, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.mf = fcmp une double %i.me, %i.md
  br i1 %i.mf, label %.split.i130, label %HistogramPairIsLess.exit.i124

.split.i130:                                      ; preds = %bb.ao
  %i.mg = fcmp ogt double %i.me, %i.md
  br i1 %i.mg, label %bb.ap, label %bb.as

HistogramPairIsLess.exit.i124:                    ; preds = %bb.ao
  %i.mh = load i32, ptr %i.e, align 4, !tbaa !23
  %i.mi = load i32, ptr %5, align 8, !tbaa !24
  %i.mj = sub i32 %i.mh, %i.mi
  %i.mk = sub nuw i32 %spec.select.i110, %spec.select59.i111
  %i.ml = icmp ugt i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130
  %i.mm = icmp ult i64 %.3141161, %9
  br i1 %i.mm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !25
  %i.mo = add nuw i64 %.3141161, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.7 = phi i64 [ %i.mo, %bb.aq ], [ %.3141161, %bb.ap ]
  store i32 %spec.select59.i111, ptr %5, align 8, !tbaa !8
  store i32 %spec.select.i110, ptr %i.e, align 4, !tbaa !8
  store double %.sroa.10.0.i122, ptr %i.f, align 8, !tbaa !10
  store double %i.md, ptr %i.d, align 8, !tbaa !10
  br label %BrotliCompareAndPushToQueueDistance.exit131

bb.as:                                            ; preds = %HistogramPairIsLess.exit.i124, %.split.i130, %.critedge.i121
  %i.mp = icmp ult i64 %.3141161, %9
  br i1 %i.mp, label %bb.at, label %BrotliCompareAndPushToQueueDistance.exit131

bb.at:                                            ; preds = %bb.as
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.3141161 ; 4 uses
  store i32 %spec.select59.i111, ptr %i.mq, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx69.i125 = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %spec.select.i110, ptr %.sroa.7.0..sroa_idx69.i125, align 4, !tbaa !8
  %.sroa.10.0..sroa_idx71.i126 = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store double %.sroa.10.0.i122, ptr %.sroa.10.0..sroa_idx71.i126, align 8, !tbaa !10
  %.sroa.15.0..sroa_idx73.i127 = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store double %i.md, ptr %.sroa.15.0..sroa_idx73.i127, align 8, !tbaa !10
  %i.mr = add nuw i64 %.3141161, 1
  br label %BrotliCompareAndPushToQueueDistance.exit131

BrotliCompareAndPushToQueueDistance.exit131:      ; preds = %.lr.ph163, %HistogramAddHistogramDistance.exit.i120, %bb.ar, %bb.as, %bb.at
  %.8 = phi i64 [ %.3141161, %.lr.ph163 ], [ %i.mr, %bb.at ], [ %.3141161, %bb.as ], [ %.7, %bb.ar ], [ %.3141161, %HistogramAddHistogramDistance.exit.i120 ] ; 2 uses
  %i.ms = add nuw i64 %.3162, 1                   ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ms, %i.ho
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph163, !llvm.loop !242

.loopexit:                                        ; preds = %BrotliCompareAndPushToQueueDistance.exit131, %bb.t
  %.4 = phi i64 [ %.2140165, %bb.t ], [ %.8, %BrotliCompareAndPushToQueueDistance.exit131 ]
  %.1100 = phi i64 [ %.099166, %bb.t ], [ %i.ho, %BrotliCompareAndPushToQueueDistance.exit131 ] ; 3 uses
  %.198 = phi double [ f0x547D42AEA2879F2E, %bb.t ], [ %.097167, %BrotliCompareAndPushToQueueDistance.exit131 ]
  %.196 = phi i64 [ %8, %bb.t ], [ %.095168, %BrotliCompareAndPushToQueueDistance.exit131 ] ; 2 uses
  %i.mt = icmp ugt i64 %.1100, %.196
  br i1 %i.mt, label %bb.t, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.loopexit, %bb.a, %.preheader144
  %.099.lcssa = phi i64 [ %6, %.preheader144 ], [ 0, %bb.a ], [ 0, %.preheader ], [ %.1100, %.loopexit ]
  ret i64 %.099.lcssa
}

; Function Attrs: nounwind uwtable
define hidden double @BrotliHistogramBitCostDistanceDistance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %2, ptr noundef nonnull align 8 dereferenceable(2192) %0, i64 2192, i1 false), !tbaa.struct !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2176 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !35
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !8, !alias.scope !254
  %wide.load9 = load <4 x i32>, ptr %i.j, align 4, !tbaa !8, !alias.scope !254
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load10 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %wide.load11 = load <4 x i32>, ptr %i.l, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %i.m = add <4 x i32> %wide.load10, %wide.load
  %i.n = add <4 x i32> %wide.load11, %wide.load9
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  store <4 x i32> %i.n, ptr %i.l, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.o, align 4, !tbaa !8, !alias.scope !254
  %wide.load9.1 = load <4 x i32>, ptr %i.p, align 4, !tbaa !8, !alias.scope !254
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load10.1 = load <4 x i32>, ptr %i.q, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %wide.load11.1 = load <4 x i32>, ptr %i.r, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %i.s = add <4 x i32> %wide.load10.1, %wide.load.1
  %i.t = add <4 x i32> %wide.load11.1, %wide.load9.1
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !8, !alias.scope !255, !noalias !254
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
end_hunk_5
