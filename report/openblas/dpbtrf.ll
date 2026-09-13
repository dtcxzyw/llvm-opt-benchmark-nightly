Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpbtrf?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPBTRF\00", align 1
@c__1 = internal global i32 1, align 4
@c_n1 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b18 = internal global double 1.000000e+00, align 8
@c_b21 = internal global double -1.000000e+00, align 8
@c__33 = internal global i32 33, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"No Transpose\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: nounwind uwtable
define void @dpbtrf_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 30 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca [1056 x double], align 16         ; 26 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 14 uses
  %i.g = alloca i32, align 4                      ; 26 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.i = load i32, ptr %4, align 4, !tbaa !34     ; 19 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 60 uses
  store i32 0, ptr %5, align 4, !tbaa !34
  %i.l = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %.not236 = icmp eq i32 %i.m, 0
  br i1 %.not236, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = load i32, ptr %1, align 4, !tbaa !34     ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %4, align 4, !tbaa !34
  %.not237 = icmp sgt i32 %i.r, %i.p
  br i1 %.not237, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %.pr = load i32, ptr %5, align 4, !tbaa !34     ; 2 uses
  %.not238 = icmp eq i32 %.pr, 0
  br i1 %.not238, label %bb.g, label %.thread

.thread.sink.split:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -3, %bb.d ], [ -5, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f
  %i.s = phi i32 [ %.pr, %bb.f ], [ %.sink, %.thread.sink.split ]
  %i.t = sub nsw i32 0, %i.s
  store i32 %i.t, ptr %i.a, align 4, !tbaa !34
  %i.u = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit279

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.n, 0
  br i1 %i.v, label %.loopexit279, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #6 ; 3 uses
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 32) ; 16 uses
  %i.y = icmp slt i32 %i.w, 2
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %2, align 4, !tbaa !34
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @dpbtf2_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  br label %.loopexit279

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %.not239 = icmp eq i32 %i.ab, 0
  br i1 %.not239, label %.lr.ph321.preheader, label %.preheader283.peel.next

.lr.ph321.preheader:                              ; preds = %bb.k
  %i.ac = add nsw i32 %i.x, -2                    ; 5 uses
  %wide.trip.count400 = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter590.a = and i64 %wide.trip.count400, 3 ; 3 uses
  %i.ad = icmp slt i32 %i.w, 4
  br i1 %i.ad, label %.lr.ph321.epil.preheader, label %.lr.ph321.preheader.new

.lr.ph321.preheader.new:                          ; preds = %.lr.ph321.preheader
  %unroll_iter594 = and i64 %wide.trip.count400, 60
  br label %.lr.ph321

.preheader283.peel.next:                          ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.ae = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.ae, 7                    ; 3 uses
  %i.af = add nsw i32 %i.x, -2
  %i.ag = icmp ult i32 %i.af, 7
  br i1 %i.ag, label %._crit_edge.epil.preheader, label %.preheader283.peel.next.new

.preheader283.peel.next.new:                      ; preds = %.preheader283.peel.next
  %unroll_iter = and i64 %i.ae, -8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %.preheader283.peel.next.new
  %indvar = phi i64 [ 1, %.preheader283.peel.next.new ], [ %indvar.next.7, %._crit_edge ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader283.peel.next.new ], [ %niter.next.7, %._crit_edge ]
  %i.ah = shl nuw nsw i64 %indvar, 3
  %i.ai = mul nuw nsw i64 %indvar, 264
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ah, i1 false), !tbaa !36
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.aj = shl nuw nsw i64 %indvar.next, 3
  %i.ak = mul nuw nsw i64 %indvar.next, 264
  %scevgep.1 = getelementptr i8, ptr %i.d, i64 %i.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, i8 0, i64 %i.aj, i1 false), !tbaa !36
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %i.al = shl nuw nsw i64 %indvar.next.1, 3
  %i.am = mul nuw nsw i64 %indvar.next.1, 264
  %scevgep.2 = getelementptr i8, ptr %i.d, i64 %i.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, i8 0, i64 %i.al, i1 false), !tbaa !36
  %indvar.next.2 = add nuw nsw i64 %indvar, 3     ; 2 uses
  %i.an = shl nuw nsw i64 %indvar.next.2, 3
  %i.ao = mul nuw nsw i64 %indvar.next.2, 264
  %scevgep.3 = getelementptr i8, ptr %i.d, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, i8 0, i64 %i.an, i1 false), !tbaa !36
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %i.ap = shl nuw nsw i64 %indvar.next.3, 3
  %i.aq = mul nuw nsw i64 %indvar.next.3, 264
  %scevgep.4 = getelementptr i8, ptr %i.d, i64 %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.4, i8 0, i64 %i.ap, i1 false), !tbaa !36
  %indvar.next.4 = add nuw nsw i64 %indvar, 5     ; 2 uses
  %i.ar = shl nuw nsw i64 %indvar.next.4, 3
  %i.as = mul nuw nsw i64 %indvar.next.4, 264
  %scevgep.5 = getelementptr i8, ptr %i.d, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.5, i8 0, i64 %i.ar, i1 false), !tbaa !36
  %indvar.next.5 = add nuw nsw i64 %indvar, 6     ; 2 uses
  %i.at = shl nuw nsw i64 %indvar.next.5, 3
  %i.au = mul nuw nsw i64 %indvar.next.5, 264
  %scevgep.6 = getelementptr i8, ptr %i.d, i64 %i.au
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.6, i8 0, i64 %i.at, i1 false), !tbaa !36
  %indvar.next.6 = add nuw nsw i64 %indvar, 7     ; 2 uses
  %i.av = shl nuw nsw i64 %indvar.next.6, 3
  %i.aw = mul nuw nsw i64 %indvar.next.6, 264
  %scevgep.7 = getelementptr i8, ptr %i.d, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.7, i8 0, i64 %i.av, i1 false), !tbaa !36
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge291.unr-lcssa, label %._crit_edge, !llvm.loop !8

._crit_edge291.unr-lcssa:                         ; preds = %._crit_edge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge291, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge291.unr-lcssa, %.preheader283.peel.next
  %indvar.epil.init = phi i64 [ 1, %.preheader283.peel.next ], [ %indvar.next.7, %._crit_edge291.unr-lcssa ]
  %lcmp.mod584 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod584)
  br label %._crit_edge.epil

._crit_edge.epil:                                 ; preds = %._crit_edge.epil, %._crit_edge.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %._crit_edge.epil.preheader ], [ %indvar.next.epil, %._crit_edge.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.epil.preheader ], [ %epil.iter.next, %._crit_edge.epil ]
  %i.ax = shl nuw nsw i64 %indvar.epil, 3
  %i.ay = mul nuw nsw i64 %indvar.epil, 264
  %scevgep.epil = getelementptr i8, ptr %i.d, i64 %i.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.ax, i1 false), !tbaa !36
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge291, label %._crit_edge.epil, !llvm.loop !9

._crit_edge291:                                   ; preds = %._crit_edge.epil, %._crit_edge291.unr-lcssa
  %i.az = load i32, ptr %1, align 4, !tbaa !34    ; 2 uses
  %.not256310 = icmp slt i32 %i.az, 1
  br i1 %.not256310, label %.loopexit279, label %.lr.ph313

.lr.ph313:                                        ; preds = %._crit_edge291, %.loopexit281
  %.1223311 = phi i32 [ %9, %.loopexit281 ], [ 1, %._crit_edge291 ] ; 11 uses
  %i.ba = load i32, ptr %1, align 4, !tbaa !34
  %i.bb = sub nsw i32 %i.ba, %.1223311
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !34
  %i.bd = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.bc)
  store i32 %i.bd, ptr %i.g, align 4, !tbaa !34
  %i.be = load i32, ptr %4, align 4, !tbaa !34
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !34
  %i.bg = load i32, ptr %2, align 4, !tbaa !34
  %i.bh = mul nsw i32 %.1223311, %i.i             ; 2 uses
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  %i.bj = add i32 %i.bi, %i.bg
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bk
  %i.bm = call i32 @dpotf2_(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.bl, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !34  ; 2 uses
  %.not258 = icmp eq i32 %i.bn, 0
  br i1 %.not258, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph313
  %i.bo = add nsw i32 %i.bn, %.1223311
  br label %bb.ag

bb.m:                                             ; preds = %.lr.ph313
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.bq = add nsw i32 %i.bp, %.1223311            ; 3 uses
  %i.br = load i32, ptr %1, align 4, !tbaa !34    ; 3 uses
  %.not259 = icmp sgt i32 %i.bq, %i.br
  br i1 %.not259, label %.loopexit281, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i32, ptr %2, align 4, !tbaa !34    ; 3 uses
  %i.bt = sub nsw i32 %i.bs, %i.bp
  %i.bu = sub i32 %i.br, %i.bq
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.bv) ; 2 uses
  store i32 %i.bw, ptr %i.e, align 4, !tbaa !34
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !34
  %i.bx = add i32 %i.br, 1
  %i.by = add i32 %.1223311, %i.bs
  %i.bz = sub i32 %i.bx, %i.by                    ; 2 uses
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !34
  %i.ca = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bz) ; 2 uses
  store i32 %i.ca, ptr %i.f, align 4, !tbaa !34
  %i.cb = icmp sgt i32 %i.bw, 0
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = load i32, ptr %4, align 4, !tbaa !34
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !34
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !34
  %i.ce = add nsw i32 %i.bs, 1                    ; 2 uses
  %i.cf = add nsw i32 %i.ce, %i.bh
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cg
  %i.ci = mul nsw i32 %i.bq, %i.i
  %i.cj = sub i32 %i.ci, %i.bp
  %i.ck = add i32 %i.cj, %i.ce
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cl
  call void @dtrsm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b18, ptr noundef %i.ch, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.c) #6
  %i.cn = load i32, ptr %4, align 4, !tbaa !34
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.b, align 4, !tbaa !34
  store i32 %i.co, ptr %i.c, align 4, !tbaa !34
  %i.cp = load i32, ptr %2, align 4, !tbaa !34
  %i.cq = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.cs = sub i32 %i.cq, %i.cr
  %i.ct = add nsw i32 %i.cr, %.1223311
  %i.cu = mul nsw i32 %i.ct, %i.i                 ; 2 uses
  %i.cv = add nsw i32 %i.cs, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cw
  %i.cy = add nsw i32 %i.cu, %i.cq
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cz
  call void @dsyrk_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef %i.cx, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b18, ptr noundef %i.da, ptr noundef nonnull %i.c) #6
  %.pr270 = load i32, ptr %i.f, align 4, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = phi i32 [ %.pr270, %bb.o ], [ %i.ca, %bb.n ] ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.q, label %.loopexit281

bb.q:                                             ; preds = %bb.p
  %i.dd = load i32, ptr %i.g, align 4, !tbaa !34  ; 3 uses
  store i32 %i.dd, ptr %i.c, align 4, !tbaa !34
  %6 = add nsw i32 %.1223311, -1                  ; 2 uses
  %i.de = add i32 %i.dd, 1                        ; 5 uses
  %i.df = sext i32 %i.dd to i64
  %i.dg = add nuw i32 %i.db, 1
  %wide.trip.count380 = zext i32 %i.dg to i64
  %wide.trip.count377 = zext i32 %i.de to i64     ; 5 uses
  %i.dh = add nsw i64 %wide.trip.count377, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge296
  %indvar479 = phi i64 [ 0, %bb.q ], [ %indvar.next480, %._crit_edge296 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %bb.q ], [ %indvars.iv.next, %._crit_edge296 ] ; 10 uses
  %i.di = xor i64 %indvar479, -1
  %i.dj = add i64 %i.di, %wide.trip.count377      ; 7 uses
  %i.dk = sub i64 %i.dh, %indvar479               ; 2 uses
  %.not267292 = icmp sgt i64 %indvars.iv, %i.df
  %i.dl = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  br i1 %.not267292, label %._crit_edge296, label %iter.check496

iter.check496:                                    ; preds = %bb.r
  %i.dm = load i32, ptr %2, align 4, !tbaa !34
  %7 = add i32 %6, %i.dl
  %i.dn = add i32 %7, %i.dm
  %i.do = mul nsw i32 %i.dn, %i.i                 ; 2 uses
  %reass.sub = sub i32 %i.do, %i.dl
  %invariant.op = add i32 %reass.sub, 1           ; 11 uses
  %.idx = mul i64 %indvars.iv, 264
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %.idx ; 11 uses
  %min.iters.check481 = icmp ult i64 %i.dj, 4
  br i1 %min.iters.check481, label %vec.epilog.scalar.ph497.preheader, label %vector.scevcheck478

vector.scevcheck478:                              ; preds = %iter.check496
  %i.dp = add i32 %i.do, 1                        ; 2 uses
  %i.dq = trunc i64 %i.dk to i32
  %i.dr = add i32 %i.dp, %i.dq
  %i.ds = icmp slt i32 %i.dr, %i.dp
  %i.dt = icmp ugt i64 %i.dk, 4294967295
  %i.du = or i1 %i.ds, %i.dt
  br i1 %i.du, label %vec.epilog.scalar.ph497.preheader, label %vector.main.loop.iter.check482

vector.main.loop.iter.check482:                   ; preds = %vector.scevcheck478
  %min.iters.check483 = icmp ult i64 %i.dj, 16
  br i1 %min.iters.check483, label %vec.epilog.ph500, label %vector.ph484

vector.ph484:                                     ; preds = %vector.main.loop.iter.check482
  %i.dv = and i64 %i.dj, 12
  %n.vec485 = and i64 %i.dj, -16                  ; 4 uses
  %i.dw = add i64 %indvars.iv, %n.vec485
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body486 ] ; 2 uses
  %i.dx = add nuw i64 %indvars.iv, %index487      ; 2 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add i32 %invariant.op, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ea ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  %wide.load488 = load <4 x double>, ptr %i.eb, align 8, !tbaa !36
  %wide.load489 = load <4 x double>, ptr %i.ec, align 8, !tbaa !36
  %wide.load490 = load <4 x double>, ptr %i.ed, align 8, !tbaa !36
  %wide.load491 = load <4 x double>, ptr %i.ee, align 8, !tbaa !36
  %i.ef = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dx ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -272
  %i.eh = getelementptr i8, ptr %i.ef, i64 -240
  %i.ei = getelementptr i8, ptr %i.ef, i64 -208
  %i.ej = getelementptr i8, ptr %i.ef, i64 -176
  store <4 x double> %wide.load488, ptr %i.eg, align 8, !tbaa !36
  store <4 x double> %wide.load489, ptr %i.eh, align 8, !tbaa !36
  store <4 x double> %wide.load490, ptr %i.ei, align 8, !tbaa !36
  store <4 x double> %wide.load491, ptr %i.ej, align 8, !tbaa !36
  %index.next492 = add nuw i64 %index487, 16      ; 2 uses
  %i.ek = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.ek, label %middle.block493, label %vector.body486, !llvm.loop !10

middle.block493:                                  ; preds = %vector.body486
  %cmp.n494 = icmp eq i64 %i.dj, %n.vec485
  br i1 %cmp.n494, label %._crit_edge296, label %vec.epilog.iter.check498

vec.epilog.iter.check498:                         ; preds = %middle.block493
  %min.epilog.iters.check499 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check499, label %vec.epilog.scalar.ph497.preheader, label %vec.epilog.ph500, !prof !42

vec.epilog.ph500:                                 ; preds = %vector.main.loop.iter.check482, %vec.epilog.iter.check498
  %vec.epilog.resume.val495 = phi i64 [ %n.vec485, %vec.epilog.iter.check498 ], [ 0, %vector.main.loop.iter.check482 ]
  %n.vec501 = and i64 %i.dj, -4                   ; 3 uses
  %i.el = add i64 %indvars.iv, %n.vec501
  br label %vec.epilog.vector.body502

vec.epilog.vector.body502:                        ; preds = %vec.epilog.vector.body502, %vec.epilog.ph500
  %index503 = phi i64 [ %vec.epilog.resume.val495, %vec.epilog.ph500 ], [ %index.next505, %vec.epilog.vector.body502 ] ; 2 uses
  %i.em = add nuw i64 %indvars.iv, %index503      ; 2 uses
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = add i32 %invariant.op, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ep
  %wide.load504 = load <4 x double>, ptr %i.eq, align 8, !tbaa !36
  %i.er = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.em
  %i.es = getelementptr i8, ptr %i.er, i64 -272
  store <4 x double> %wide.load504, ptr %i.es, align 8, !tbaa !36
  %index.next505 = add nuw i64 %index503, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next505, %n.vec501
  br i1 %i.et, label %vec.epilog.middle.block506, label %vec.epilog.vector.body502, !llvm.loop !11

vec.epilog.middle.block506:                       ; preds = %vec.epilog.vector.body502
  %cmp.n507 = icmp eq i64 %i.dj, %n.vec501
  br i1 %cmp.n507, label %._crit_edge296, label %vec.epilog.scalar.ph497.preheader

vec.epilog.scalar.ph497.preheader:                ; preds = %vector.scevcheck478, %iter.check496, %vec.epilog.iter.check498, %vec.epilog.middle.block506
  %indvars.iv374.ph = phi i64 [ %indvars.iv, %iter.check496 ], [ %indvars.iv, %vector.scevcheck478 ], [ %i.dw, %vec.epilog.iter.check498 ], [ %i.el, %vec.epilog.middle.block506 ] ; 4 uses
  %i.eu = sub i64 %wide.trip.count377, %indvars.iv374.ph
  %xtraiter585 = and i64 %i.eu, 7                 ; 2 uses
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  br i1 %lcmp.mod586.not, label %vec.epilog.scalar.ph497.prol.loopexit, label %vec.epilog.scalar.ph497.prol

vec.epilog.scalar.ph497.prol:                     ; preds = %vec.epilog.scalar.ph497.preheader, %vec.epilog.scalar.ph497.prol
  %indvars.iv374.prol = phi i64 [ %indvars.iv.next375.prol, %vec.epilog.scalar.ph497.prol ], [ %indvars.iv374.ph, %vec.epilog.scalar.ph497.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph497.prol ], [ 0, %vec.epilog.scalar.ph497.preheader ]
  %i.ev = trunc nuw nsw i64 %indvars.iv374.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.ev
  %i.ew = sext i32 %.reass.prol to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !36
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv374.prol
  %i.ez = getelementptr i8, ptr %gep.prol, i64 -272
  store double %i.ey, ptr %i.ez, align 8, !tbaa !36
  %indvars.iv.next375.prol = add nuw nsw i64 %indvars.iv374.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter585
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph497.prol.loopexit, label %vec.epilog.scalar.ph497.prol, !llvm.loop !12

vec.epilog.scalar.ph497.prol.loopexit:            ; preds = %vec.epilog.scalar.ph497.prol, %vec.epilog.scalar.ph497.preheader
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %vec.epilog.scalar.ph497.preheader ], [ %indvars.iv.next375.prol, %vec.epilog.scalar.ph497.prol ]
  %i.fa = sub i64 %indvars.iv374.ph, %wide.trip.count377
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %._crit_edge296, label %vec.epilog.scalar.ph497

vec.epilog.scalar.ph497:                          ; preds = %vec.epilog.scalar.ph497.prol.loopexit, %vec.epilog.scalar.ph497
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.7, %vec.epilog.scalar.ph497 ], [ %indvars.iv374.unr, %vec.epilog.scalar.ph497.prol.loopexit ] ; 10 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv374 to i32
  %.reass = add i32 %invariant.op, %i.fc
  %i.fd = sext i32 %.reass to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !36
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv374
  %i.fg = getelementptr i8, ptr %gep, i64 -272
  store double %i.ff, ptr %i.fg, align 8, !tbaa !36
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv.next375 to i32
  %.reass.1 = add i32 %invariant.op, %i.fh
  %i.fi = sext i32 %.reass.1 to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !36
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375
  %i.fl = getelementptr i8, ptr %gep.1, i64 -272
  store double %i.fk, ptr %i.fl, align 8, !tbaa !36
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv.next375.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.fm
  %i.fn = sext i32 %.reass.2 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !36
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.1
  %i.fq = getelementptr i8, ptr %gep.2, i64 -272
  store double %i.fp, ptr %i.fq, align 8, !tbaa !36
  %indvars.iv.next375.2 = add nuw nsw i64 %indvars.iv374, 3 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv.next375.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.fr
  %i.fs = sext i32 %.reass.3 to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !36
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.2
  %i.fv = getelementptr i8, ptr %gep.3, i64 -272
  store double %i.fu, ptr %i.fv, align 8, !tbaa !36
  %indvars.iv.next375.3 = add nuw nsw i64 %indvars.iv374, 4 ; 2 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv.next375.3 to i32
  %.reass.4 = add i32 %invariant.op, %i.fw
  %i.fx = sext i32 %.reass.4 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !36
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.3
  %i.ga = getelementptr i8, ptr %gep.4, i64 -272
  store double %i.fz, ptr %i.ga, align 8, !tbaa !36
  %indvars.iv.next375.4 = add nuw nsw i64 %indvars.iv374, 5 ; 2 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv.next375.4 to i32
  %.reass.5 = add i32 %invariant.op, %i.gb
  %i.gc = sext i32 %.reass.5 to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !36
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.4
  %i.gf = getelementptr i8, ptr %gep.5, i64 -272
  store double %i.ge, ptr %i.gf, align 8, !tbaa !36
  %indvars.iv.next375.5 = add nuw nsw i64 %indvars.iv374, 6 ; 2 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv.next375.5 to i32
  %.reass.6 = add i32 %invariant.op, %i.gg
  %i.gh = sext i32 %.reass.6 to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !36
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.5
  %i.gk = getelementptr i8, ptr %gep.6, i64 -272
  store double %i.gj, ptr %i.gk, align 8, !tbaa !36
  %indvars.iv.next375.6 = add nuw nsw i64 %indvars.iv374, 7 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next375.6 to i32
  %.reass.7 = add i32 %invariant.op, %i.gl
  %i.gm = sext i32 %.reass.7 to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !36
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next375.6
  %i.gp = getelementptr i8, ptr %gep.7, i64 -272
  store double %i.go, ptr %i.gp, align 8, !tbaa !36
  %indvars.iv.next375.7 = add nuw nsw i64 %indvars.iv374, 8 ; 2 uses
  %exitcond378.not.7 = icmp eq i64 %indvars.iv.next375.7, %wide.trip.count377
  br i1 %exitcond378.not.7, label %._crit_edge296, label %vec.epilog.scalar.ph497, !llvm.loop !13

._crit_edge296:                                   ; preds = %vec.epilog.scalar.ph497.prol.loopexit, %vec.epilog.scalar.ph497, %middle.block493, %vec.epilog.middle.block506, %bb.r
  %storemerge266.lcssa = phi i32 [ %i.dl, %bb.r ], [ %i.de, %middle.block493 ], [ %i.de, %vec.epilog.middle.block506 ], [ %i.de, %vec.epilog.scalar.ph497 ], [ %i.de, %vec.epilog.scalar.ph497.prol.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next, %wide.trip.count380
  %indvar.next480 = add i64 %indvar479, 1
  br i1 %exitcond381.not, label %bb.s, label %bb.r, !llvm.loop !14

bb.s:                                             ; preds = %._crit_edge296
  store i32 %storemerge266.lcssa, ptr %i.h, align 4, !tbaa !34
  %i.gq = load i32, ptr %4, align 4, !tbaa !34
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr %i.b, align 4, !tbaa !34
  %i.gs = load i32, ptr %2, align 4, !tbaa !34
  %i.gt = add i32 %i.bi, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gu
  call void @dtrsm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b18, ptr noundef %i.gv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33) #6
  %i.gw = load i32, ptr %i.e, align 4, !tbaa !34
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gy = load i32, ptr %4, align 4, !tbaa !34
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.gz, ptr %i.b, align 4, !tbaa !34
  store i32 %i.gz, ptr %i.c, align 4, !tbaa !34
  %i.ha = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  %i.hc = load i32, ptr %i.g, align 4, !tbaa !34  ; 3 uses
  %i.hd = sub i32 %i.hb, %i.hc
  %i.he = add nsw i32 %i.hc, %.1223311
  %i.hf = mul nsw i32 %i.he, %i.i
  %i.hg = add nsw i32 %i.hd, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hh
  %i.hj = add nsw i32 %i.hc, 1
  %i.hk = add nsw i32 %i.ha, %.1223311
  %i.hl = mul nsw i32 %i.hk, %i.i
  %i.hm = add nsw i32 %i.hj, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hn
  call void @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef %i.hi, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33, ptr noundef nonnull @c_b18, ptr noundef %i.ho, ptr noundef nonnull %i.c) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hp = load i32, ptr %4, align 4, !tbaa !34
  %i.hq = add nsw i32 %i.hp, -1
  store i32 %i.hq, ptr %i.b, align 4, !tbaa !34
  %i.hr = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.hs = add nsw i32 %i.hr, 1
  %i.ht = add nsw i32 %i.hr, %.1223311
  %i.hu = mul nsw i32 %i.ht, %i.i
  %i.hv = add nsw i32 %i.hs, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hw
  call void @dsyrk_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33, ptr noundef nonnull @c_b18, ptr noundef %i.hx, ptr noundef nonnull %i.b) #6
  %i.hy = load i32, ptr %i.f, align 4, !tbaa !34  ; 3 uses
  store i32 %i.hy, ptr %i.b, align 4, !tbaa !34
  %.not263306 = icmp slt i32 %i.hy, 1
  br i1 %.not263306, label %.loopexit281, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.u
  %i.hz = load i32, ptr %i.g, align 4, !tbaa !34  ; 3 uses
  store i32 %i.hz, ptr %i.c, align 4, !tbaa !34
  %i.ia = add i32 %i.hz, 1                        ; 5 uses
  %i.ib = sext i32 %i.hz to i64
  %i.ic = add nuw i32 %i.hy, 1
  %wide.trip.count390 = zext i32 %i.ic to i64
  %wide.trip.count387 = zext i32 %i.ia to i64     ; 5 uses
  %i.id = add nsw i64 %wide.trip.count387, -2
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph309, %._crit_edge302
  %indvar466 = phi i64 [ 0, %.lr.ph309 ], [ %indvar.next467, %._crit_edge302 ] ; 3 uses
  %indvars.iv382 = phi i64 [ 1, %.lr.ph309 ], [ %indvars.iv.next383, %._crit_edge302 ] ; 10 uses
  %i.ie = xor i64 %indvar466, -1
  %i.if = add i64 %i.ie, %wide.trip.count387      ; 7 uses
  %i.ig = sub i64 %i.id, %indvar466               ; 2 uses
  %.not265298 = icmp sgt i64 %indvars.iv382, %i.ib
  %i.ih = trunc nuw nsw i64 %indvars.iv382 to i32 ; 3 uses
  br i1 %.not265298, label %._crit_edge302, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.ii = load i32, ptr %2, align 4, !tbaa !34
  %8 = add i32 %6, %i.ih
  %i.ij = add i32 %8, %i.ii
  %i.ik = mul nsw i32 %i.ij, %i.i                 ; 2 uses
  %reass.sub355 = sub i32 %i.ik, %i.ih
  %invariant.op304 = add i32 %reass.sub355, 1     ; 11 uses
  %.idx441 = mul i64 %indvars.iv382, 264
  %invariant.gep452 = getelementptr i8, ptr %i.d, i64 %.idx441 ; 11 uses
  %min.iters.check = icmp ult i64 %i.if, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.il = add i32 %i.ik, 1                        ; 2 uses
  %i.im = trunc i64 %i.ig to i32
  %i.in = add i32 %i.il, %i.im
  %i.io = icmp slt i32 %i.in, %i.il
  %i.ip = icmp ugt i64 %i.ig, 4294967295
  %i.iq = or i1 %i.io, %i.ip
  br i1 %i.iq, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check468 = icmp ult i64 %i.if, 16
  br i1 %min.iters.check468, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ir = and i64 %i.if, 12
  %n.vec = and i64 %i.if, -16                     ; 4 uses
  %i.is = add i64 %indvars.iv382, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.it = add nuw i64 %indvars.iv382, %index      ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.it ; 4 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 -272
  %i.iw = getelementptr i8, ptr %i.iu, i64 -240
  %i.ix = getelementptr i8, ptr %i.iu, i64 -208
  %i.iy = getelementptr i8, ptr %i.iu, i64 -176
  %wide.load = load <4 x double>, ptr %i.iv, align 8, !tbaa !36
  %wide.load469 = load <4 x double>, ptr %i.iw, align 8, !tbaa !36
  %wide.load470 = load <4 x double>, ptr %i.ix, align 8, !tbaa !36
  %wide.load471 = load <4 x double>, ptr %i.iy, align 8, !tbaa !36
  %i.iz = trunc nuw nsw i64 %i.it to i32
  %i.ja = add i32 %invariant.op304, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jb ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  store <4 x double> %wide.load, ptr %i.jc, align 8, !tbaa !36
  store <4 x double> %wide.load469, ptr %i.jd, align 8, !tbaa !36
  store <4 x double> %wide.load470, ptr %i.je, align 8, !tbaa !36
  store <4 x double> %wide.load471, ptr %i.jf, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %._crit_edge302, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ir, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec472 = and i64 %i.if, -4                   ; 3 uses
  %i.jh = add i64 %indvars.iv382, %n.vec472
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index473 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next475, %vec.epilog.vector.body ] ; 2 uses
  %i.ji = add nuw i64 %indvars.iv382, %index473   ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 -272
  %wide.load474 = load <4 x double>, ptr %i.jk, align 8, !tbaa !36
  %i.jl = trunc nuw nsw i64 %i.ji to i32
  %i.jm = add i32 %invariant.op304, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jn
  store <4 x double> %wide.load474, ptr %i.jo, align 8, !tbaa !36
  %index.next475 = add nuw i64 %index473, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next475, %n.vec472
  br i1 %i.jp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n476 = icmp eq i64 %i.if, %n.vec472
  br i1 %cmp.n476, label %._crit_edge302, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv384.ph = phi i64 [ %indvars.iv382, %iter.check ], [ %indvars.iv382, %vector.scevcheck ], [ %i.is, %vec.epilog.iter.check ], [ %i.jh, %vec.epilog.middle.block ] ; 4 uses
  %i.jq = sub i64 %wide.trip.count387, %indvars.iv384.ph
  %xtraiter587 = and i64 %i.jq, 7                 ; 2 uses
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv384.prol = phi i64 [ %indvars.iv.next385.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv384.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter589 = phi i64 [ %prol.iter589.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep453.prol = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv384.prol
  %i.jr = getelementptr i8, ptr %gep453.prol, i64 -272
  %i.js = load double, ptr %i.jr, align 8, !tbaa !36
  %i.jt = trunc nuw nsw i64 %indvars.iv384.prol to i32
  %.reass305.prol = add i32 %invariant.op304, %i.jt
  %i.ju = sext i32 %.reass305.prol to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ju
  store double %i.js, ptr %i.jv, align 8, !tbaa !36
  %indvars.iv.next385.prol = add nuw nsw i64 %indvars.iv384.prol, 1 ; 2 uses
  %prol.iter589.next = add i64 %prol.iter589, 1   ; 2 uses
  %prol.iter589.cmp.not = icmp eq i64 %prol.iter589.next, %xtraiter587
  br i1 %prol.iter589.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv384.unr = phi i64 [ %indvars.iv384.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next385.prol, %vec.epilog.scalar.ph.prol ]
  %i.jw = sub i64 %indvars.iv384.ph, %wide.trip.count387
  %i.jx = icmp ugt i64 %i.jw, -8
  br i1 %i.jx, label %._crit_edge302, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv384 = phi i64 [ %indvars.iv.next385.7, %vec.epilog.scalar.ph ], [ %indvars.iv384.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv384
  %i.jy = getelementptr i8, ptr %gep453, i64 -272
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !36
  %i.ka = trunc nuw nsw i64 %indvars.iv384 to i32
  %.reass305 = add i32 %invariant.op304, %i.ka
  %i.kb = sext i32 %.reass305 to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kb
  store double %i.jz, ptr %i.kc, align 8, !tbaa !36
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %gep453.1 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385
  %i.kd = getelementptr i8, ptr %gep453.1, i64 -272
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !36
  %i.kf = trunc nuw nsw i64 %indvars.iv.next385 to i32
  %.reass305.1 = add i32 %invariant.op304, %i.kf
  %i.kg = sext i32 %.reass305.1 to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kg
  store double %i.ke, ptr %i.kh, align 8, !tbaa !36
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %gep453.2 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.1
  %i.ki = getelementptr i8, ptr %gep453.2, i64 -272
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !36
  %i.kk = trunc nuw nsw i64 %indvars.iv.next385.1 to i32
  %.reass305.2 = add i32 %invariant.op304, %i.kk
  %i.kl = sext i32 %.reass305.2 to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kl
  store double %i.kj, ptr %i.km, align 8, !tbaa !36
  %indvars.iv.next385.2 = add nuw nsw i64 %indvars.iv384, 3 ; 2 uses
  %gep453.3 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.2
  %i.kn = getelementptr i8, ptr %gep453.3, i64 -272
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !36
  %i.kp = trunc nuw nsw i64 %indvars.iv.next385.2 to i32
  %.reass305.3 = add i32 %invariant.op304, %i.kp
  %i.kq = sext i32 %.reass305.3 to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kq
  store double %i.ko, ptr %i.kr, align 8, !tbaa !36
  %indvars.iv.next385.3 = add nuw nsw i64 %indvars.iv384, 4 ; 2 uses
  %gep453.4 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.3
  %i.ks = getelementptr i8, ptr %gep453.4, i64 -272
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !36
  %i.ku = trunc nuw nsw i64 %indvars.iv.next385.3 to i32
  %.reass305.4 = add i32 %invariant.op304, %i.ku
  %i.kv = sext i32 %.reass305.4 to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kv
  store double %i.kt, ptr %i.kw, align 8, !tbaa !36
  %indvars.iv.next385.4 = add nuw nsw i64 %indvars.iv384, 5 ; 2 uses
  %gep453.5 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.4
  %i.kx = getelementptr i8, ptr %gep453.5, i64 -272
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !36
  %i.kz = trunc nuw nsw i64 %indvars.iv.next385.4 to i32
  %.reass305.5 = add i32 %invariant.op304, %i.kz
  %i.la = sext i32 %.reass305.5 to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.la
  store double %i.ky, ptr %i.lb, align 8, !tbaa !36
  %indvars.iv.next385.5 = add nuw nsw i64 %indvars.iv384, 6 ; 2 uses
  %gep453.6 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.5
  %i.lc = getelementptr i8, ptr %gep453.6, i64 -272
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !36
  %i.le = trunc nuw nsw i64 %indvars.iv.next385.5 to i32
  %.reass305.6 = add i32 %invariant.op304, %i.le
  %i.lf = sext i32 %.reass305.6 to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lf
  store double %i.ld, ptr %i.lg, align 8, !tbaa !36
  %indvars.iv.next385.6 = add nuw nsw i64 %indvars.iv384, 7 ; 2 uses
  %gep453.7 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %indvars.iv.next385.6
  %i.lh = getelementptr i8, ptr %gep453.7, i64 -272
  %i.li = load double, ptr %i.lh, align 8, !tbaa !36
  %i.lj = trunc nuw nsw i64 %indvars.iv.next385.6 to i32
  %.reass305.7 = add i32 %invariant.op304, %i.lj
  %i.lk = sext i32 %.reass305.7 to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lk
  store double %i.li, ptr %i.ll, align 8, !tbaa !36
  %indvars.iv.next385.7 = add nuw nsw i64 %indvars.iv384, 8 ; 2 uses
  %exitcond388.not.7 = icmp eq i64 %indvars.iv.next385.7, %wide.trip.count387
  br i1 %exitcond388.not.7, label %._crit_edge302, label %vec.epilog.scalar.ph, !llvm.loop !18

._crit_edge302:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.v
  %storemerge264.lcssa = phi i32 [ %i.ih, %bb.v ], [ %i.ia, %middle.block ], [ %i.ia, %vec.epilog.middle.block ], [ %i.ia, %vec.epilog.scalar.ph ], [ %i.ia, %vec.epilog.scalar.ph.prol.loopexit ]
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count390
  %indvar.next467 = add i64 %indvar466, 1
  br i1 %exitcond391.not, label %..loopexit281_crit_edge, label %bb.v, !llvm.loop !19

..loopexit281_crit_edge:                          ; preds = %._crit_edge302
  store i32 %storemerge264.lcssa, ptr %i.h, align 4, !tbaa !34
  br label %.loopexit281

.loopexit281:                                     ; preds = %bb.u, %..loopexit281_crit_edge, %bb.m, %bb.p
  %9 = add nuw nsw i32 %.1223311, %i.x            ; 2 uses
  %.not256 = icmp sgt i32 %9, %i.az
  br i1 %.not256, label %.loopexit279, label %.lr.ph313, !llvm.loop !20

.loopexit280:                                     ; preds = %.lr.ph317, %.lr.ph321
  %i.lm = add nuw nsw i32 %.1221320, 2
  %.not254314.not.1 = icmp slt i32 %i.mk, %i.x
  br i1 %.not254314.not.1, label %.lr.ph317.1, label %.loopexit280.1

.lr.ph317.1:                                      ; preds = %.loopexit280
  %indvar.next393 = or disjoint i64 %indvar392, 1 ; 2 uses
  %i.ln = trunc i64 %indvar.next393 to i32
  %i.lo = sub i32 %i.ac, %i.ln
  %i.lp = zext i32 %i.lo to i64
  %i.lq = shl nuw nsw i64 %i.lp, 3
  %i.lr = add nuw nsw i64 %i.lq, 8
  %i.ls = mul nuw nsw i64 %indvar.next393, 272
  %i.lt = getelementptr i8, ptr %i.d, i64 %i.ls
  %scevgep394.1 = getelementptr i8, ptr %i.lt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.1, i8 0, i64 %i.lr, i1 false), !tbaa !36
  br label %.loopexit280.1

.loopexit280.1:                                   ; preds = %.lr.ph317.1, %.loopexit280
  %i.lu = add nuw nsw i32 %.1221320, 3
  %.not254314.not.2 = icmp slt i32 %i.lm, %i.x
  br i1 %.not254314.not.2, label %.lr.ph317.2, label %.loopexit280.2

.lr.ph317.2:                                      ; preds = %.loopexit280.1
  %indvar.next393.1 = or disjoint i64 %indvar392, 2 ; 2 uses
  %i.lv = trunc i64 %indvar.next393.1 to i32
  %i.lw = sub i32 %i.ac, %i.lv
  %i.lx = zext i32 %i.lw to i64
  %i.ly = shl nuw nsw i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 8
  %i.ma = mul nuw nsw i64 %indvar.next393.1, 272
  %i.mb = getelementptr i8, ptr %i.d, i64 %i.ma
  %scevgep394.2 = getelementptr i8, ptr %i.mb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.2, i8 0, i64 %i.lz, i1 false), !tbaa !36
  br label %.loopexit280.2

.loopexit280.2:                                   ; preds = %.lr.ph317.2, %.loopexit280.1
  %i.mc = add nuw nsw i32 %.1221320, 4            ; 2 uses
  %.not254314.not.3 = icmp slt i32 %i.lu, %i.x
  br i1 %.not254314.not.3, label %.lr.ph317.3, label %.loopexit280.3

.lr.ph317.3:                                      ; preds = %.loopexit280.2
  %indvar.next393.2 = or disjoint i64 %indvar392, 3 ; 2 uses
  %i.md = trunc i64 %indvar.next393.2 to i32
  %i.me = sub i32 %i.ac, %i.md
  %i.mf = zext i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = add nuw nsw i64 %i.mg, 8
  %i.mi = mul nuw nsw i64 %indvar.next393.2, 272
  %i.mj = getelementptr i8, ptr %i.d, i64 %i.mi
  %scevgep394.3 = getelementptr i8, ptr %i.mj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.3, i8 0, i64 %i.mh, i1 false), !tbaa !36
  br label %.loopexit280.3

.loopexit280.3:                                   ; preds = %.lr.ph317.3, %.loopexit280.2
  %indvar.next393.3 = add nuw nsw i64 %indvar392, 4 ; 2 uses
  %niter595.next.3 = add i64 %niter595, 4         ; 2 uses
  %niter595.ncmp.3 = icmp eq i64 %niter595.next.3, %unroll_iter594
  br i1 %niter595.ncmp.3, label %._crit_edge322.unr-lcssa, label %.lr.ph321, !llvm.loop !21

.lr.ph321:                                        ; preds = %.loopexit280.3, %.lr.ph321.preheader.new
  %indvar392 = phi i64 [ 0, %.lr.ph321.preheader.new ], [ %indvar.next393.3, %.loopexit280.3 ] ; 6 uses
  %.1221320 = phi i32 [ 1, %.lr.ph321.preheader.new ], [ %i.mc, %.loopexit280.3 ] ; 5 uses
  %niter595 = phi i64 [ 0, %.lr.ph321.preheader.new ], [ %niter595.next.3, %.loopexit280.3 ]
  %i.mk = add nuw nsw i32 %.1221320, 1
  %.not254314.not = icmp slt i32 %.1221320, %i.x
  br i1 %.not254314.not, label %.lr.ph317, label %.loopexit280

.lr.ph317:                                        ; preds = %.lr.ph321
  %i.ml = trunc i64 %indvar392 to i32
  %i.mm = sub i32 %i.ac, %i.ml
  %i.mn = zext i32 %i.mm to i64
  %i.mo = shl nuw nsw i64 %i.mn, 3
  %i.mp = add nuw nsw i64 %i.mo, 8
  %i.mq = mul nuw nsw i64 %indvar392, 272
  %i.mr = getelementptr i8, ptr %i.d, i64 %i.mq
  %scevgep394 = getelementptr i8, ptr %i.mr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394, i8 0, i64 %i.mp, i1 false), !tbaa !36
  br label %.loopexit280

._crit_edge322.unr-lcssa:                         ; preds = %.loopexit280.3
  %lcmp.mod592.not = icmp eq i64 %xtraiter590.a, 0
  br i1 %lcmp.mod592.not, label %._crit_edge322, label %.lr.ph321.epil.preheader

.lr.ph321.epil.preheader:                         ; preds = %._crit_edge322.unr-lcssa, %.lr.ph321.preheader
  %indvar392.epil.init = phi i64 [ 0, %.lr.ph321.preheader ], [ %indvar.next393.3, %._crit_edge322.unr-lcssa ]
  %.1221320.epil.init = phi i32 [ 1, %.lr.ph321.preheader ], [ %i.mc, %._crit_edge322.unr-lcssa ]
  %lcmp.mod593 = icmp ne i64 %xtraiter590.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod593)
  br label %.lr.ph321.epil

.lr.ph321.epil:                                   ; preds = %.loopexit280.epil, %.lr.ph321.epil.preheader
  %indvar392.epil = phi i64 [ %indvar392.epil.init, %.lr.ph321.epil.preheader ], [ %indvar.next393.epil, %.loopexit280.epil ] ; 3 uses
  %.1221320.epil = phi i32 [ %.1221320.epil.init, %.lr.ph321.epil.preheader ], [ %i.ms, %.loopexit280.epil ] ; 2 uses
  %epil.iter591 = phi i64 [ 0, %.lr.ph321.epil.preheader ], [ %epil.iter591.next, %.loopexit280.epil ]
  %i.ms = add nuw nsw i32 %.1221320.epil, 1
  %.not254314.not.epil = icmp slt i32 %.1221320.epil, %i.x
  br i1 %.not254314.not.epil, label %.lr.ph317.epil, label %.loopexit280.epil

.lr.ph317.epil:                                   ; preds = %.lr.ph321.epil
  %i.mt = trunc i64 %indvar392.epil to i32
  %i.mu = sub i32 %i.ac, %i.mt
  %i.mv = zext i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = add nuw nsw i64 %i.mw, 8
  %i.my = mul nuw nsw i64 %indvar392.epil, 272
  %i.mz = getelementptr i8, ptr %i.d, i64 %i.my
  %scevgep394.epil = getelementptr i8, ptr %i.mz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.epil, i8 0, i64 %i.mx, i1 false), !tbaa !36
  br label %.loopexit280.epil

.loopexit280.epil:                                ; preds = %.lr.ph317.epil, %.lr.ph321.epil
  %indvar.next393.epil = add nuw nsw i64 %indvar392.epil, 1
  %epil.iter591.next = add i64 %epil.iter591, 1   ; 2 uses
  %epil.iter591.cmp.not = icmp eq i64 %epil.iter591.next, %xtraiter590.a
  br i1 %epil.iter591.cmp.not, label %._crit_edge322, label %.lr.ph321.epil, !llvm.loop !22

._crit_edge322:                                   ; preds = %.loopexit280.epil, %._crit_edge322.unr-lcssa
  %i.na = load i32, ptr %1, align 4, !tbaa !34    ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph354.preheader, label %.loopexit279

.lr.ph354.preheader:                              ; preds = %._crit_edge322
  %i.nc = add i32 %i.i, 1                         ; 2 uses
  %i.nd = mul i32 %i.i, %i.x
  %i.ne = add i32 %i.i, -1                        ; 2 uses
  %i.nf = mul i32 %i.i, %i.x
  br label %.lr.ph354

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %.loopexit
  %indvar513 = phi i32 [ 0, %.lr.ph354.preheader ], [ %indvar.next514, %.loopexit ] ; 3 uses
  %.3225352 = phi i32 [ 1, %.lr.ph354.preheader ], [ %i.xr, %.loopexit ] ; 11 uses
  %i.ng = mul i32 %i.nf, %indvar513
  %i.nh = add i32 %i.nc, %i.ng
  %i.ni = mul i32 %i.nd, %indvar513
  %i.nj = add i32 %i.nc, %i.ni
  %i.nk = load i32, ptr %1, align 4, !tbaa !34
  %i.nl = sub nsw i32 %i.nk, %.3225352
  %i.nm = add nsw i32 %i.nl, 1                    ; 2 uses
  store i32 %i.nm, ptr %i.c, align 4, !tbaa !34
  %i.nn = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.nm)
  store i32 %i.nn, ptr %i.g, align 4, !tbaa !34
  %i.no = load i32, ptr %4, align 4, !tbaa !34
  %i.np = add nsw i32 %i.no, -1
  store i32 %i.np, ptr %i.b, align 4, !tbaa !34
  %i.nq = mul nsw i32 %.3225352, %i.i             ; 3 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr [8 x i8], ptr %i.k, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 8      ; 3 uses
  %i.nu = call i32 @dpotf2_(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.nt, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.nv = load i32, ptr %i.h, align 4, !tbaa !34  ; 2 uses
  %.not242 = icmp eq i32 %i.nv, 0
  br i1 %.not242, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph354
  %i.nw = add nsw i32 %i.nv, %.3225352
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph354
  %i.nx = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.ny = add nsw i32 %i.nx, %.3225352            ; 2 uses
  %i.nz = load i32, ptr %1, align 4, !tbaa !34    ; 3 uses
  %.not243 = icmp sgt i32 %i.ny, %i.nz
  br i1 %.not243, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.oa = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.ob = sub nsw i32 %i.oa, %i.nx
  %i.oc = sub i32 %i.nz, %i.ny
  %i.od = add nsw i32 %i.oc, 1
  %i.oe = call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.od) ; 2 uses
  store i32 %i.oe, ptr %i.e, align 4, !tbaa !34
  store i32 %i.nx, ptr %i.b, align 4, !tbaa !34
  %i.of = add i32 %i.nz, 1
  %i.og = add i32 %.3225352, %i.oa
  %i.oh = sub i32 %i.of, %i.og                    ; 2 uses
  store i32 %i.oh, ptr %i.c, align 4, !tbaa !34
  %i.oi = call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.oh) ; 2 uses
  store i32 %i.oi, ptr %i.f, align 4, !tbaa !34
  %i.oj = icmp sgt i32 %i.oe, 0
  br i1 %i.oj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ok = load i32, ptr %4, align 4, !tbaa !34
  %i.ol = add nsw i32 %i.ok, -1                   ; 2 uses
  store i32 %i.ol, ptr %i.b, align 4, !tbaa !34
  store i32 %i.ol, ptr %i.c, align 4, !tbaa !34
  %i.om = add i32 %i.nq, 1                        ; 2 uses
  %i.on = add i32 %i.om, %i.nx
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.oo
  call void @dtrsm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b18, ptr noundef %i.nt, ptr noundef nonnull %i.b, ptr noundef %i.op, ptr noundef nonnull %i.c) #6
  %i.oq = load i32, ptr %4, align 4, !tbaa !34
  %i.or = add nsw i32 %i.oq, -1                   ; 2 uses
  store i32 %i.or, ptr %i.b, align 4, !tbaa !34
  store i32 %i.or, ptr %i.c, align 4, !tbaa !34
  %i.os = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.ot = add i32 %i.om, %i.os
end_hunk_0
