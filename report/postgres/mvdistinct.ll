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
  %.03554 = phi i32 [ 2, %.lr.ph57 ], [ %i.gn, %generator_next.exit.thread ] ; 18 uses
  %2 = zext i32 %.03554 to i64                    ; 2 uses
  %i.q = sub i32 %i.p, %indvar
  %smin = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %.03554)
  %i.r = add i32 %smin, 1                         ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 2)
  %i.s = add nsw i32 %smax, -1                    ; 3 uses
  %i.t = tail call ptr @palloc(i64 noundef 24) #8 ; 8 uses
  %i.u = sub i32 %i.b, %.03554
  %i.v = tail call i32 @llvm.smin.i32(i32 %.03554, i32 %i.u)
  %.not16.i.i = icmp slt i32 %i.v, 1
  br i1 %.not16.i.i, label %generator_init.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %xtraiter = and i32 %i.s, 1
  %i.w = icmp slt i32 %i.r, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i32 %i.s, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.019.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %i.ad, %.lr.ph.i.i ]
  %.01418.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %i.ae, %.lr.ph.i.i ] ; 3 uses
  %.01517.i.i = phi i32 [ %i.b, %.lr.ph.preheader.i.i.new ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.x = add i32 %.01517.i.i, -1
  %i.y = mul i32 %.01517.i.i, %.019.i.i
  %i.z = sdiv i32 %i.y, %.01418.i.i
  %i.aa = add nuw nsw i32 %.01418.i.i, 1
  %i.ab = add i32 %.01517.i.i, -2                 ; 2 uses
  %i.ac = mul i32 %i.x, %i.z
  %i.ad = sdiv i32 %i.ac, %i.aa                   ; 3 uses
  %i.ae = add nuw nsw i32 %.01418.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %generator_init.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !4

generator_init.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %generator_init.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %generator_init.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.019.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.ad, %generator_init.exit.loopexit.unr-lcssa ]
  %.01418.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.ae, %generator_init.exit.loopexit.unr-lcssa ]
  %.01517.i.i.epil.init = phi i32 [ %i.b, %.lr.ph.preheader.i.i ], [ %i.ab, %generator_init.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.af = mul i32 %.01517.i.i.epil.init, %.019.i.i.epil.init
  %i.ag = sdiv i32 %i.af, %.01418.i.i.epil.init
  br label %generator_init.exit

generator_init.exit:                              ; preds = %.lr.ph.i.i.epil.preheader, %generator_init.exit.loopexit.unr-lcssa, %bb.b
  %.0.lcssa.i.i = phi i32 [ 1, %bb.b ], [ %i.ad, %generator_init.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.epil.preheader ] ; 2 uses
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
  %wide.trip.count107.i = zext i32 %.03554 to i64 ; 2 uses
  %xtraiter95 = and i64 %2, 1
  %i.at = icmp eq i32 %.03554, 1
  %unroll_iter98 = and i64 %2, 2147483646
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
  br i1 %niter99.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

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
  %i.ea = load i8, ptr %i.dz, align 1, !range !7, !noundef !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv114.i
  store i8 %i.ea, ptr %i.ed, align 1
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count.i
  br i1 %exitcond113.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !9

._crit_edge.us.i:                                 ; preds = %bb.d
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count107.i
  br i1 %exitcond118.not.i, label %._crit_edge88.i, label %.lr.ph87.split.us.i, !llvm.loop !10

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
end_hunk_0
