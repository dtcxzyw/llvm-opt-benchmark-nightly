Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mvdistinct?download=true
inline.NumInlined: 20
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"cache lookup failed for statistics object %u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mvdistinct.c\00", align 1
@__func__.statext_ndistinct_load = private unnamed_addr constant [23 x i8] c"statext_ndistinct_load\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"requested statistics kind \22%c\22 is not yet built for statistics object %u\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"invalid MVNDistinct size %zu (expected at least %zu)\00", align 1
@__func__.statext_ndistinct_deserialize = private unnamed_addr constant [30 x i8] c"statext_ndistinct_deserialize\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"invalid ndistinct magic %08x (expected %08x)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"invalid ndistinct type %d (expected %d)\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"invalid zero-length item array in MVNDistinct\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"could not validate \22%s\22 object: invalid attribute number %d found\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"pg_ndistinct\00", align 1
@__func__.statext_ndistinct_validate = private unnamed_addr constant [27 x i8] c"statext_ndistinct_validate\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"cache lookup failed for ordering operator for type %u\00", align 1
@__func__.ndistinct_for_combination = private unnamed_addr constant [26 x i8] c"ndistinct_for_combination\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @statext_ndistinct_build(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 9 uses
  %i.c = shl nuw i32 1, %i.b
  %.neg.i = xor i32 %i.b, -1
  %i.d = add i32 %i.c, %.neg.i                    ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, 24
  %i.g = add nsw i64 %i.f, 16
  %i.h = tail call ptr @palloc(i64 noundef %i.g) #8 ; 5 uses
  store i32 -1554858076, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.d, ptr %i.j, align 8
  %.not53 = icmp slt i32 %i.b, 2
  br i1 %.not53, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = add nsw i32 %i.b, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %generator_next.exit.thread
  %indvar = phi i32 [ 0, %.lr.ph57 ], [ %indvar.next, %generator_next.exit.thread ] ; 2 uses
  %.03455 = phi i32 [ 0, %.lr.ph57 ], [ %.1.lcssa, %generator_next.exit.thread ] ; 2 uses
  %.03554 = phi i32 [ 2, %.lr.ph57 ], [ %i.gn, %generator_next.exit.thread ] ; 17 uses
  %i.q = sub i32 %i.p, %indvar
  %smin = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %.03554)
  %i.r = add i32 %smin, 1                         ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 2)
  %i.s = add nsw i32 %smax, -1                    ; 2 uses
  %i.t = tail call ptr @palloc(i64 noundef 24) #8 ; 8 uses
  %i.u = sub i32 %i.b, %.03554
  %i.v = tail call i32 @llvm.smin.i32(i32 %.03554, i32 %i.u)
  %.not16.i.i = icmp slt i32 %i.v, 1
  br i1 %.not16.i.i, label %generator_init.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %xtraiter = and i32 %i.s, 3                     ; 3 uses
  %i.w = icmp slt i32 %i.r, 5
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i32 %i.s, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.019.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %i.ad, %.lr.ph.i.i ]
  %.01418.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %i.ae, %.lr.ph.i.i ] ; 5 uses
  %.01517.i.i = phi i32 [ %i.b, %.lr.ph.preheader.i.i.new ], [ %i.ab, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %2 = add i32 %.01517.i.i, -1
  %3 = mul i32 %.01517.i.i, %.019.i.i
  %4 = sdiv i32 %3, %.01418.i.i
  %5 = add nuw nsw i32 %.01418.i.i, 1
  %6 = add i32 %.01517.i.i, -2
  %7 = mul i32 %2, %4
  %8 = sdiv i32 %7, %5
  %9 = add nuw nsw i32 %.01418.i.i, 2
  %i.x = add i32 %.01517.i.i, -3
  %i.y = mul i32 %6, %8
  %i.z = sdiv i32 %i.y, %9
  %i.aa = add nuw nsw i32 %.01418.i.i, 3
  %i.ab = add i32 %.01517.i.i, -4                 ; 2 uses
  %i.ac = mul i32 %i.x, %i.z
  %i.ad = sdiv i32 %i.ac, %i.aa                   ; 3 uses
  %i.ae = add nuw nsw i32 %.01418.i.i, 4          ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %generator_init.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

generator_init.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %generator_init.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %generator_init.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.019.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.ad, %generator_init.exit.loopexit.unr-lcssa ]
  %.01418.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.ae, %generator_init.exit.loopexit.unr-lcssa ]
  %.01517.i.i.epil.init = phi i32 [ %i.b, %.lr.ph.preheader.i.i ], [ %i.ab, %generator_init.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.i.i.epil.preheader.a

.lr.ph.i.i.epil.preheader.a:                      ; preds = %.lr.ph.i.i.epil.preheader.a, %.lr.ph.i.i.epil.preheader
  %.019.i.i.epil.init.a = phi i32 [ %i.ag, %.lr.ph.i.i.epil.preheader.a ], [ %.019.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.01418.i.i.epil.init.a = phi i32 [ %11, %.lr.ph.i.i.epil.preheader.a ], [ %.01418.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01517.i.i.epil.init.a = phi i32 [ %10, %.lr.ph.i.i.epil.preheader.a ], [ %.01517.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil.preheader.a ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %10 = add i32 %.01517.i.i.epil.init.a, -1
  %i.af = mul i32 %.01517.i.i.epil.init.a, %.019.i.i.epil.init.a
  %i.ag = sdiv i32 %i.af, %.01418.i.i.epil.init.a ; 2 uses
  %11 = add nuw nsw i32 %.01418.i.i.epil.init.a, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %generator_init.exit, label %.lr.ph.i.i.epil.preheader.a, !llvm.loop !8

generator_init.exit:                              ; preds = %generator_init.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader.a, %bb.b
  %.0.lcssa.i.i = phi i32 [ 1, %bb.b ], [ %i.ad, %generator_init.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.epil.preheader.a ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  store i32 %.0.lcssa.i.i, ptr %i.ah, align 4
  %i.ai = mul i32 %.0.lcssa.i.i, %.03554
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.aj) #8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store i32 0, ptr %i.am, align 8
  store i32 %.03554, ptr %i.t, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.b, ptr %i.an, align 4
  %i.ao = sext i32 %.03554 to i64                 ; 2 uses
  %i.ap = tail call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.ao) #8 ; 2 uses
  tail call fastcc void @generate_combinations_recurse(ptr noundef nonnull %i.t, i32 noundef 0, i32 noundef 0, ptr noundef %i.ap)
  tail call void @pfree(ptr noundef %i.ap) #8
  store i32 0, ptr %i.am, align 8
  %i.aq = load i32, ptr %i.ah, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %generator_next.exit.thread, label %generator_next.exit.lr.ph

generator_next.exit.lr.ph:                        ; preds = %generator_init.exit
  %i.as = icmp sgt i32 %.03554, 0                 ; 3 uses
  %wide.trip.count107.i = zext i32 %.03554 to i64 ; 4 uses
  %xtraiter95 = and i64 %wide.trip.count107.i, 1
  %i.at = icmp eq i32 %.03554, 1
  %unroll_iter98 = and i64 %wide.trip.count107.i, 2147483646
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod97 = trunc i32 %.03554 to i1
  br label %generator_next.exit

generator_next.exit:                              ; preds = %generator_next.exit.lr.ph, %ndistinct_for_combination.exit
  %i.au = phi i32 [ 0, %generator_next.exit.lr.ph ], [ %i.gj, %ndistinct_for_combination.exit ] ; 2 uses
  %.151 = phi i32 [ %.03455, %generator_next.exit.lr.ph ], [ %i.gi, %ndistinct_for_combination.exit ] ; 3 uses
  %i.av = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.aw = load i32, ptr %i.t, align 8
  %i.ax = add i32 %i.au, 1
  store i32 %i.ax, ptr %i.am, align 8
  %i.ay = mul i32 %i.aw, %i.au
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az ; 5 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %generator_next.exit.thread, label %bb.c

bb.c:                                             ; preds = %generator_next.exit
  %i.bb = sext i32 %.151 to i64
  %i.bc = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.bb ; 3 uses
  %i.bd = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.ao) #8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %.03554, ptr %i.bf, align 8
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %niter99 = phi i64 [ %niter99.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bg = load ptr, ptr %i.l, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = load ptr, ptr %i.be, align 8
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.bl, ptr %i.bn, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = load ptr, ptr %i.be, align 8
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv.next
  store i16 %i.bt, ptr %i.bv, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod96.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.bw = load ptr, ptr %i.l, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.epil.init
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = load ptr, ptr %i.be, align 8
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %indvars.iv.epil.init
  store i16 %i.cb, ptr %i.cd, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %i.ce = load i32, ptr %1, align 8
  %.fr96.i = freeze i32 %i.ce                     ; 10 uses
  %i.cf = tail call ptr @multi_sort_init(i32 noundef %.03554) #8 ; 5 uses
  %i.cg = sext i32 %.fr96.i to i64                ; 3 uses
  %i.ch = tail call ptr @palloc_mul(i64 noundef 24, i64 noundef %i.cg) #8 ; 7 uses
  %i.ci = mul i32 %.fr96.i, %.03554
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef %i.cj) #8 ; 3 uses
  %i.cl = tail call ptr @palloc0_mul(i64 noundef 1, i64 noundef %i.cj) #8 ; 3 uses
  %i.cm = icmp sgt i32 %.fr96.i, 0
  br i1 %i.cm, label %.lr.ph.preheader.i, label %.preheader.thread.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %.fr96.i to i64 ; 3 uses
  %xtraiter100 = and i64 %wide.trip.count.i, 1
  %i.cn = icmp eq i32 %.fr96.i, 1
  br i1 %i.cn, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter103 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph.i
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod102 = trunc i32 %.fr96.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.co = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.cp = mul i32 %.03554, %i.co
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv.i.epil.init ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cl, i64 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.ct, ptr %i.cu, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i.epil.preheader
  br i1 %i.as, label %.lr.ph87.split.us.i, label %._crit_edge88.i

.preheader.thread.i:                              ; preds = %._crit_edge
  br i1 %i.as, label %.lr.ph87.split.i, label %._crit_edge88.thread.i

._crit_edge88.thread.i:                           ; preds = %.preheader.thread.i
  tail call void @qsort_interruptible(ptr noundef %i.ch, i64 noundef %i.cg, i64 noundef 24, ptr noundef nonnull @multi_sort_compare, ptr noundef %i.cf) #8
  br label %ndistinct_for_combination.exit

.lr.ph87.split.us.i:                              ; preds = %.preheader.i, %._crit_edge.us.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %._crit_edge.us.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.cv = load ptr, ptr %i.m, align 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv114.i ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = tail call ptr @lookup_type_cache(i32 noundef %i.dc, i32 noundef 2) #8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.split.us.i, label %.lr.ph85.us.i

.lr.ph85.us.i:                                    ; preds = %.lr.ph87.split.us.i
  %i.dj = trunc nuw nsw i64 %indvars.iv114.i to i32
  tail call void @multi_sort_add_dimension(ptr noundef %i.cf, i32 noundef %i.dj, i32 noundef %i.dh, i32 noundef %i.de) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph85.us.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph85.us.i ], [ %indvars.iv.next110.i, %bb.d ] ; 4 uses
  %i.dk = load ptr, ptr %i.n, align 8
  %i.dl = load i32, ptr %i.cw, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv109.i
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv109.i ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv114.i
  store i64 %i.dq, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.o, align 8
  %i.dv = load i32, ptr %i.cw, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv109.i
  %i.ea = load i8, ptr %i.dz, align 1, !range !5, !noundef !6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv114.i
  store i8 %i.ea, ptr %i.ed, align 1
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count.i
  br i1 %exitcond113.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !10

._crit_edge.us.i:                                 ; preds = %bb.d
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count107.i
  br i1 %exitcond118.not.i, label %._crit_edge88.i, label %.lr.ph87.split.us.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter104 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter104.next.1, %.lr.ph.i ]
  %i.ee = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ef = mul i32 %.03554, %i.ee
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv.i ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.cl, i64 %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ej, ptr %i.ek, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.el = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.em = mul i32 %.03554, %i.el
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.en
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %indvars.iv.next.i ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.cl, i64 %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eq, ptr %i.er, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

.lr.ph87.split.i:                                 ; preds = %.preheader.thread.i, %bb.e
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %bb.e ], [ 0, %.preheader.thread.i ] ; 3 uses
  %i.es = load ptr, ptr %i.m, align 8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv104.i
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = tail call ptr @lookup_type_cache(i32 noundef %i.ez, i32 noundef 2) #8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i32, ptr %i.fd, align 8            ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.split.us.i, label %bb.e

.split.us.i:                                      ; preds = %.lr.ph87.split.i, %.lr.ph87.split.us.i
  %.us-phi.i = phi i32 [ %i.dc, %.lr.ph87.split.us.i ], [ %i.ez, %.lr.ph87.split.i ]
  %i.fg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fh = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %.us-phi.i) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 468, ptr noundef nonnull @__func__.ndistinct_for_combination) #8
  unreachable

bb.e:                                             ; preds = %.lr.ph87.split.i
  %i.fi = trunc nuw nsw i64 %indvars.iv104.i to i32
  tail call void @multi_sort_add_dimension(ptr noundef %i.cf, i32 noundef %i.fi, i32 noundef %i.fe, i32 noundef %i.fb) #8
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next105.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %._crit_edge88.i, label %.lr.ph87.split.i, !llvm.loop !11

._crit_edge88.i:                                  ; preds = %bb.e, %._crit_edge.us.i, %.preheader.i
  tail call void @qsort_interruptible(ptr noundef %i.ch, i64 noundef %i.cg, i64 noundef 24, ptr noundef nonnull @multi_sort_compare, ptr noundef %i.cf) #8
  %i.fj = icmp sgt i32 %.fr96.i, 1
  br i1 %i.fj, label %.lr.ph93.preheader.i, label %ndistinct_for_combination.exit

.lr.ph93.preheader.i:                             ; preds = %._crit_edge88.i
  %wide.trip.count122.i = zext nneg i32 %.fr96.i to i64
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i
  %indvars.iv119.i = phi i64 [ 1, %.lr.ph93.preheader.i ], [ %indvars.iv.next120.i, %.lr.ph93.i ] ; 2 uses
  %.092.i = phi i32 [ 1, %.lr.ph93.preheader.i ], [ %.1.i, %.lr.ph93.i ]
  %.07291.i = phi i32 [ 1, %.lr.ph93.preheader.i ], [ %i.fq, %.lr.ph93.i ] ; 2 uses
  %.07490.i = phi i32 [ 0, %.lr.ph93.preheader.i ], [ %.2.i, %.lr.ph93.i ]
  %i.fk = getelementptr [24 x i8], ptr %i.ch, i64 %indvars.iv119.i ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -24
  %i.fm = tail call i32 @multi_sort_compare(ptr noundef nonnull %i.fk, ptr noundef %i.fl, ptr noundef %i.cf) #8
  %.not.i = icmp ne i32 %i.fm, 0                  ; 3 uses
  %i.fn = icmp eq i32 %.07291.i, 1
  %narrow.i = select i1 %.not.i, i1 %i.fn, i1 false
  %spec.select.i = zext i1 %narrow.i to i32
  %.2.i = add i32 %.07490.i, %spec.select.i       ; 2 uses
  %i.fo = zext i1 %.not.i to i32
  %.1.i = add i32 %.092.i, %i.fo                  ; 2 uses
  %i.fp = add i32 %.07291.i, 1
  %i.fq = select i1 %.not.i, i32 1, i32 %i.fp     ; 2 uses
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count122.i
  br i1 %exitcond123.not.i, label %._crit_edge.loopexit.i, label %.lr.ph93.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph93.i
  %i.fr = icmp eq i32 %i.fq, 1
  %i.fs = zext i1 %i.fr to i32
  %i.ft = add i32 %.2.i, %i.fs
  %i.fu = sitofp i32 %.1.i to double
  br label %ndistinct_for_combination.exit

ndistinct_for_combination.exit:                   ; preds = %._crit_edge88.thread.i, %._crit_edge88.i, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi double [ 1.000000e+00, %._crit_edge88.i ], [ %i.fu, %._crit_edge.loopexit.i ], [ 1.000000e+00, %._crit_edge88.thread.i ] ; 3 uses
  %spec.select82.i = phi i32 [ 1, %._crit_edge88.i ], [ %i.ft, %._crit_edge.loopexit.i ], [ 1, %._crit_edge88.thread.i ] ; 2 uses
  %i.fv = sitofp i32 %.fr96.i to double           ; 2 uses
  %i.fw = fmul nnan double %.0.lcssa.i, %i.fv
  %i.fx = sub i32 %.fr96.i, %spec.select82.i
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = sitofp i32 %spec.select82.i to double
  %i.ga = fmul nnan double %i.fv, %i.fz
  %i.gb = fdiv double %i.ga, %0
  %i.gc = fadd double %i.gb, %i.fy
  %i.gd = fdiv double %i.fw, %i.gc                ; 2 uses
  %i.ge = fcmp olt double %i.gd, %.0.lcssa.i
  %.0.i.i = select i1 %i.ge, double %.0.lcssa.i, double %i.gd ; 2 uses
  %i.gf = fcmp ogt double %.0.i.i, %0
  %.1.i.i = select i1 %i.gf, double %0, double %.0.i.i
  %i.gg = fadd double %.1.i.i, 5.000000e-01
  %i.gh = tail call double @llvm.floor.f64(double %i.gg)
  store double %i.gh, ptr %i.bc, align 8
  %i.gi = add i32 %.151, 1                        ; 2 uses
  %i.gj = load i32, ptr %i.am, align 8            ; 2 uses
  %i.gk = load i32, ptr %i.ah, align 4
  %i.gl = icmp eq i32 %i.gj, %i.gk
  br i1 %i.gl, label %generator_next.exit.thread, label %generator_next.exit, !llvm.loop !14

generator_next.exit.thread:                       ; preds = %generator_next.exit, %ndistinct_for_combination.exit, %generator_init.exit
  %.1.lcssa = phi i32 [ %.03455, %generator_init.exit ], [ %i.gi, %ndistinct_for_combination.exit ], [ %.151, %generator_next.exit ]
  %i.gm = load ptr, ptr %i.al, align 8
  tail call void @pfree(ptr noundef %i.gm) #8
  tail call void @pfree(ptr noundef nonnull %i.t) #8
  %i.gn = add i32 %.03554, 1                      ; 2 uses
  %.not = icmp sgt i32 %i.gn, %i.b
  %indvar.next = add i32 %indvar, 1
  br i1 %.not, label %._crit_edge58, label %bb.b, !llvm.loop !15

._crit_edge58:                                    ; preds = %generator_next.exit.thread, %bb.a
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @statext_ndistinct_load(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = zext i32 %0 to i64
  %i.c = zext i1 %1 to i64
  %i.d = tail call ptr @SearchSysCache2(i32 noundef 70, i64 noundef %i.b, i64 noundef %i.c) #8 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %0) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @__func__.statext_ndistinct_load) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call i64 @SysCacheGetAttr(i32 noundef 70, ptr noundef nonnull %i.d, i16 noundef signext 3, ptr noundef nonnull %i.a) #8
  %i.h = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef 100, i32 noundef %0) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 162, ptr noundef nonnull @__func__.statext_ndistinct_load) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = call ptr @pg_detoast_datum_packed(ptr noundef %i.l) #8
  %i.n = call ptr @statext_ndistinct_deserialize(ptr noundef %i.m)
  call void @ReleaseSysCache(ptr noundef nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %i.n
}

declare ptr @SearchSysCache2(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @statext_ndistinct_deserialize(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = zext i8 %i.b to i32                      ; 4 uses
  %i.d = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 1
  %.val.i = load i8, ptr %i.e, align 1            ; 2 uses
  %i.f = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.f, 3
  %i.g = icmp eq i8 %.val.i, 18
  %i.h = select i1 %i.g, i64 16, i64 0
  br i1 %or.cond.i.i.i, label %VARSIZE_ANY_EXHDR.exit.thread, label %VARSIZE_ANY_EXHDR.exit

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i32 %i.c, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr %0, align 4
  %i.n = lshr i32 %i.m, 2
  %i.o = add nsw i32 %i.n, -4
  %i.p = zext i32 %i.o to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.l, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp ult i64 %.0.i, 12
  br i1 %i.q, label %VARSIZE_ANY_EXHDR.exit.thread, label %bb.g

VARSIZE_ANY_EXHDR.exit.thread:                    ; preds = %bb.c, %VARSIZE_ANY_EXHDR.exit
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.s = tail call fastcc i64 @VARSIZE_ANY_EXHDR(ptr noundef %0)
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i64 noundef %i.s, i64 noundef 12) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef nonnull @__func__.statext_ndistinct_deserialize) #8
  unreachable

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.u = and i8 %i.b, 1
  %.not.i48 = icmp eq i8 %i.u, 0
  %.v.i = select i1 %.not.i48, i64 4, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.v, align 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.6.4.copyload = load i32, ptr %i.w, align 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.10.8.copyload = load i32, ptr %i.x, align 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.not = icmp eq i32 %.sroa.0.0.copyload, -1554858076
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.sroa.0.0.copyload, i32 noundef -1554858076) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 276, ptr noundef nonnull @__func__.statext_ndistinct_deserialize) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not47 = icmp eq i32 %.sroa.6.4.copyload, 1
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %.sroa.6.4.copyload, i32 noundef 1) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 279, ptr noundef nonnull @__func__.statext_ndistinct_deserialize) #8
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %.sroa.10.8.copyload, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__func__.statext_ndistinct_deserialize) #8
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = zext i32 %.sroa.10.8.copyload to i64    ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = or disjoint i64 %i.ah, 12               ; 2 uses
  br i1 %i.d, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %0, i64 1
  %.val.i51 = load i8, ptr %i.aj, align 1         ; 2 uses
  %i.ak = add i8 %.val.i51, -1
  %or.cond.i.i.i52 = icmp ult i8 %i.ak, 3
  %i.al = icmp eq i8 %.val.i51, 18
  %i.am = select i1 %i.al, i64 16, i64 0
  %i.an = select i1 %or.cond.i.i.i52, i64 8, i64 %i.am
  br label %VARSIZE_ANY_EXHDR.exit53

bb.o:                                             ; preds = %bb.m
  %i.ao = and i32 %i.c, 1
  %.not.i49 = icmp eq i32 %i.ao, 0
  br i1 %.not.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = lshr i32 %i.c, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, -1
  br label %VARSIZE_ANY_EXHDR.exit53

bb.q:                                             ; preds = %bb.o
  %i.as = load i32, ptr %0, align 4
  %i.at = lshr i32 %i.as, 2
  %i.au = add nsw i32 %i.at, -4
  %i.av = zext i32 %i.au to i64
  br label %VARSIZE_ANY_EXHDR.exit53

VARSIZE_ANY_EXHDR.exit53:                         ; preds = %bb.n, %bb.p, %bb.q
  %.0.i50 = phi i64 [ %i.an, %bb.n ], [ %i.ar, %bb.p ], [ %i.av, %bb.q ]
  %i.aw = icmp ult i64 %.0.i50, %i.ai
  br i1 %i.aw, label %bb.r, label %.lr.ph

bb.r:                                             ; preds = %VARSIZE_ANY_EXHDR.exit53
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ay = tail call fastcc i64 @VARSIZE_ANY_EXHDR(ptr noundef %0)
  %i.az = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i64 noundef %i.ay, i64 noundef %i.ai) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 287, ptr noundef nonnull @__func__.statext_ndistinct_deserialize) #8
  unreachable

.lr.ph:                                           ; preds = %VARSIZE_ANY_EXHDR.exit53
  %i.ba = mul nuw nsw i64 %i.ag, 24
  %i.bb = add nuw nsw i64 %i.ba, 16
  %i.bc = tail call ptr @palloc0(i64 noundef %i.bb) #8 ; 5 uses
  store i32 -1554858076, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store i32 %.sroa.10.8.copyload, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.04356 = phi ptr [ %i.y, %.lr.ph ], [ %i.bx, %bb.s ] ; 3 uses
  %.04455 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.s ] ; 2 uses
  %i.bg = sext i32 %.04455 to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %.04356, align 1
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.04356, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bl = load i32, ptr %i.bj, align 1            ; 2 uses
  store i32 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.04356, i64 12 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = tail call ptr @palloc(i64 noundef %i.bo) #8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load i32, ptr %i.bk, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bp, ptr nonnull align 1 %i.bm, i64 %i.bt, i1 false)
  %i.bu = load i32, ptr %i.bk, align 8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bw
  %i.by = add nuw i32 %.04455, 1                  ; 2 uses
  %i.bz = load i32, ptr %i.be, align 8
  %i.ca = icmp ult i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.s, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.s, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bc, %bb.s ]
  ret ptr %.0
}

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @statext_ndistinct_serialize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.b, 1
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.038 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 3 uses
  %.03637 = phi i64 [ 16, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = sext i32 %.038 to i64
  %i.e = getelementptr [24 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = add i64 %.03637, 12
  %i.k = add i64 %i.j, %i.i
  %i.l = sext i32 %.038 to i64
  %i.m = getelementptr [24 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 1
  %i.r = add i64 %i.k, 12
  %i.s = add i64 %i.r, %i.q                       ; 3 uses
  %i.t = add nuw i32 %.038, 2                     ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.038.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.03637.epil.init = phi i64 [ 16, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.u = sext i32 %.038.epil.init to i64
  %i.v = getelementptr [24 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = add i64 %.03637.epil.init, 12
  %i.ab = add i64 %i.aa, %i.z
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.036.lcssa = phi i64 [ 16, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ac = tail call ptr @palloc(i64 noundef %.036.lcssa) #8 ; 6 uses
  %i.ad = trunc i64 %.036.lcssa to i32
  %i.ae = shl i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %0, align 8
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = load i32, ptr %i.a, align 8
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = load i32, ptr %i.a, align 8
  %.not44 = icmp eq i32 %i.am, 0
  br i1 %.not44, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph42, %bb.b
  %.140 = phi i32 [ 0, %.lr.ph42 ], [ %i.aw, %bb.b ] ; 2 uses
  %.03539 = phi ptr [ %i.an, %.lr.ph42 ], [ %i.av, %bb.b ] ; 3 uses
  %i.ap = sext i32 %.140 to i64
  %i.aq = getelementptr inbounds [24 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  store double %.sroa.0.0.copyload, ptr %.03539, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i32 %.sroa.4.0.copyload, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.03539, i64 12 ; 2 uses
  %i.at = sext i32 %.sroa.4.0.copyload to i64
  %i.au = shl nsw i64 %i.at, 1                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 2 %.sroa.53.0.copyload, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = add nuw i32 %.140, 1                    ; 2 uses
  %i.ax = load i32, ptr %i.a, align 8
  %i.ay = icmp ult i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge43, !llvm.loop !19

._crit_edge43:                                    ; preds = %bb.b, %._crit_edge
  ret ptr %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 -1, 4294967296) i64 @VARSIZE_ANY_EXHDR(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp eq i8 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %.val = load i8, ptr %i.d, align 1              ; 2 uses
  %i.e = add i8 %.val, -1
  %or.cond.i.i = icmp ult i8 %i.e, 3
  %i.f = icmp eq i8 %.val, 18
  %i.g = select i1 %i.f, i64 16, i64 0
  %i.h = select i1 %or.cond.i.i, i64 8, i64 %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.b, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.b, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %0, align 4
  %i.n = lshr i32 %i.m, 2
  %i.o = add nsw i32 %i.n, -4
  %i.p = zext i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  ret i64 %.0
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @statext_ndistinct_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @pfree(ptr noundef nonnull %0) #8
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.c = sext i32 %.05 to i64
  %i.d = getelementptr [24 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @pfree(ptr noundef %i.f) #8
  %i.g = add nuw i32 %.05, 1                      ; 2 uses
  %i.h = load i32, ptr %i.a, align 8
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !20
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @statext_ndistinct_validate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not5074 = icmp eq i32 %i.c, 0
  br i1 %.not5074, label %.critedge55, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %.critedge53
  %.04275 = phi i32 [ 0, %.lr.ph77 ], [ %i.v, %.critedge53 ] ; 2 uses
  %i.g = sext i32 %.04275 to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.418.0.copyload = load ptr, ptr %.sroa.418.0..sroa_idx, align 8
  %.not4971 = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %.not4971, label %.lr.ph73.preheader, label %.critedge53

.lr.ph73.preheader:                               ; preds = %bb.b
  %wide.trip.count86 = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.critedge
  %indvars.iv83 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next84, %.critedge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.418.0.copyload, i64 %indvars.iv83
  %i.j = load i16, ptr %i.i, align 2              ; 4 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = icmp sgt i16 %i.j, 0
  br i1 %i.l, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.lr.ph73
  %i.m = load i32, ptr %i.e, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %.thread57

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread57, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.j, %i.p
  br i1 %i.q, label %.critedge, label %bb.c

bb.d:                                             ; preds = %.lr.ph73
  %i.r = icmp ne i16 %i.j, 0
  %.not = icmp sge i32 %i.k, %i.a
  %or.cond51.not = and i1 %i.r, %.not
  br i1 %or.cond51.not, label %.critedge, label %.thread57

.thread57:                                        ; preds = %.preheader, %bb.d, %bb.c
  %i.s = tail call zeroext i1 @errstart(i32 noundef %3, ptr noundef null) #8
  br i1 %i.s, label %bb.e, label %.critedge55

bb.e:                                             ; preds = %.thread57
  %i.t = tail call i32 @errcode(i32 noundef 33685634) #8 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %i.k) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 395, ptr noundef nonnull @__func__.statext_ndistinct_validate) #8
  br label %.critedge55

.critedge:                                        ; preds = %.lr.ph, %bb.d
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.critedge53, label %.lr.ph73, !llvm.loop !22

.critedge53:                                      ; preds = %.critedge, %bb.b
  %i.v = add nuw i32 %.04275, 1                   ; 2 uses
  %exitcond88.not = icmp eq i32 %i.v, %i.c
  br i1 %exitcond88.not, label %.critedge55, label %bb.b, !llvm.loop !23

.critedge55:                                      ; preds = %.critedge53, %bb.e, %.thread57, %bb.a
  %.not5065 = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ false, %.thread57 ], [ true, %.critedge53 ]
  ret i1 %.not5065
}

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @multi_sort_init(i32 noundef) local_unnamed_addr #2

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @multi_sort_add_dimension(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @qsort_interruptible(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @multi_sort_compare(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @generate_combinations_recurse(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = icmp slt i32 %1, %i.a
  br i1 %i.b, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %3, i64 %i.f
  %i.h = add nsw i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i32 [ %2, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  store i32 %.020, ptr %i.g, align 4
  %i.i = add nsw i32 %.020, 1                     ; 3 uses
  tail call fastcc void @generate_combinations_recurse(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef %i.i, ptr noundef %3)
  %i.j = load i32, ptr %i.c, align 4
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %.loopexit, !llvm.loop !24

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = mul i32 %i.o, %i.a
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.q
  %i.s = sext i32 %i.a to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %3, i64 %i.t, i1 false)
  %i.u = load i32, ptr %i.n, align 8
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.n, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !16}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
end_hunk_0
