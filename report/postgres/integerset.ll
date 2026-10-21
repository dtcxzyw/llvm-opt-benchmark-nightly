Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/integerset?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple8b_mode = type { i8, i8 }

@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [68 x i8] c"cannot add new values to integer set while iteration is in progress\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"integerset.c\00", align 1
@__func__.intset_add_member = private unnamed_addr constant [18 x i8] c"intset_add_member\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot add value to integer set out of order\00", align 1
@simple8b_modes = internal unnamed_addr constant [17 x %struct.simple8b_mode] [%struct.simple8b_mode { i8 0, i8 -16 }, %struct.simple8b_mode { i8 0, i8 120 }, %struct.simple8b_mode { i8 1, i8 60 }, %struct.simple8b_mode { i8 2, i8 30 }, %struct.simple8b_mode { i8 3, i8 20 }, %struct.simple8b_mode { i8 4, i8 15 }, %struct.simple8b_mode { i8 5, i8 12 }, %struct.simple8b_mode { i8 6, i8 10 }, %struct.simple8b_mode { i8 7, i8 8 }, %struct.simple8b_mode { i8 8, i8 7 }, %struct.simple8b_mode { i8 10, i8 6 }, %struct.simple8b_mode { i8 12, i8 5 }, %struct.simple8b_mode { i8 15, i8 4 }, %struct.simple8b_mode { i8 20, i8 3 }, %struct.simple8b_mode { i8 30, i8 2 }, %struct.simple8b_mode { i8 60, i8 1 }, %struct.simple8b_mode zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [63 x i8] c"could not expand integer set, maximum number of levels reached\00", align 1
@__func__.intset_update_upper = private unnamed_addr constant [20 x i8] c"intset_update_upper\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @intset_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 5968) #11 ; 9 uses
  %i.b = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call i64 @GetMemoryChunkSpace(ptr noundef nonnull %i.a) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4000
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4004
  store i8 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare i64 @GetMemoryChunkSpace(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @intset_num_entries(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @intset_memory_usage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @intset_add_member(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4004
  %i.b = load i8, ptr %i.a, align 4, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull @__func__.intset_add_member) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp ugt i64 %1, %i.g
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %.not12 = icmp eq i64 %i.i, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 375, ptr noundef nonnull @__func__.intset_add_member) #11
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp sgt i32 %i.m, 481
  br i1 %i.n, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8
  %i.u = tail call ptr @MemoryContextAlloc(ptr noundef %i.t, i64 noundef 1040) #11 ; 8 uses
  %i.v = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.u) #11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8
  store i16 0, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 0, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.u, ptr %i.ac, align 8
  store ptr %i.u, ptr %i.q, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.ad, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.u, %bb.h ], [ %i.r, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %.lr.ph.i
  %i.ah = phi i64 [ 0, %.lr.ph.i ], [ %i.ex, %bb.v ]
  %.153.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.2.i, %bb.v ] ; 3 uses
  %.03952.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ew, %bb.v ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8            ; 4 uses
  %i.ak = add i32 %.03952.i, 1                    ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.al ; 7 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = xor i64 %i.aj, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.k, %bb.i
  %.053.i.i.ph = phi i32 [ %i.ar, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.050.i.i.ph = phi i32 [ %i.aw, %bb.k ], [ 240, %bb.i ] ; 2 uses
  %.047.i.i.ph = phi i32 [ %i.ay, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.045.i.i.ph = phi i64 [ %.045.i.i, %bb.k ], [ %i.ap, %bb.i ]
  %.043.i.i.ph = phi i64 [ %.043.i.i, %bb.k ], [ %i.an, %bb.i ]
  %.0.i.i.ph = phi i32 [ %.0.i.i, %bb.k ], [ 0, %bb.i ]
  %i.aq = zext nneg i32 %.047.i.i.ph to i64
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.m
  %.045.i.i = phi i64 [ %i.be, %bb.m ], [ %.045.i.i.ph, %.outer ] ; 2 uses
  %.043.i.i = phi i64 [ %i.bc, %bb.m ], [ %.043.i.i.ph, %.outer ] ; 2 uses
  %.0.i.i = phi i32 [ %i.az, %bb.m ], [ %.0.i.i.ph, %.outer ] ; 3 uses
  %.045.highbits.i.i = lshr i64 %.045.i.i, %i.aq
  %.not.i.i = icmp eq i64 %.045.highbits.i.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add i32 %.053.i.i.ph, 1                 ; 3 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr @simple8b_modes, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = load i8, ptr %i.at, align 2
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %.not61.i.i = icmp slt i32 %.0.i.i, %i.aw
  br i1 %.not61.i.i, label %.outer, label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.az = add i32 %.0.i.i, 1                      ; 3 uses
  %.not60.i.i = icmp slt i32 %i.az, %.050.i.i.ph
  br i1 %.not60.i.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = xor i64 %.043.i.i, -1
  %i.be = add i64 %i.bc, %i.bd
  br label %bb.j

.loopexit:                                        ; preds = %bb.k, %bb.l
  %.255.i.i = phi i32 [ %.053.i.i.ph, %bb.l ], [ %i.ar, %bb.k ]
  %.252.i.i = phi i32 [ %.050.i.i.ph, %bb.l ], [ %i.aw, %bb.k ] ; 5 uses
  %.249.i.i = phi i32 [ %.047.i.i.ph, %bb.l ], [ %i.ay, %bb.k ] ; 2 uses
  %i.bf = icmp eq i32 %.252.i.i, 0
  br i1 %i.bf, label %simple8b_encode.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.bg = icmp sgt i32 %.249.i.i, 0
  br i1 %i.bg, label %.preheader.i.i, label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %i.bh = icmp sgt i32 %.252.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bi = zext nneg i32 %.249.i.i to i64          ; 3 uses
  %i.bj = zext nneg i32 %.252.i.i to i64          ; 3 uses
  %i.bk = add nsw i64 %i.bj, -1                   ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bl = icmp eq i32 %.252.i.i, 2
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.bk, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.o ] ; 3 uses
  %.04162.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cb, %bb.o ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.o ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %i.bs = add i64 %i.bn, %i.br
  %i.bt = or i64 %i.bs, %.04162.i.i
  %i.bu = shl i64 %i.bt, %i.bi
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %i.bq, %i.by
  %i.ca = or i64 %i.bz, %i.bu
  %i.cb = shl i64 %i.ca, %i.bi                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.o, !llvm.loop !5

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04162.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.cc = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i.epil.init
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i.i.epil.init
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = xor i64 %i.ch, -1
  %i.cj = add i64 %i.ce, %i.ci
  %i.ck = or i64 %i.cj, %.04162.i.i.epil.init
  %i.cl = shl i64 %i.ck, %i.bi
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa56 = phi i64 [ %i.cb, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cl, %.epil.preheader ]
  %i.cm = or i64 %.lcssa56, %i.ap
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.n
  %.142.i.i = phi i64 [ 0, %bb.n ], [ %i.ap, %.preheader.i.i ], [ %i.cm, %._crit_edge.loopexit.i.i ]
  %i.cn = zext i32 %.255.i.i to i64
  %i.co = shl i64 %i.cn, 60
  %i.cp = or i64 %.142.i.i, %i.co
  br label %simple8b_encode.exit.i

simple8b_encode.exit.i:                           ; preds = %._crit_edge.i.i, %.loopexit
  %.056.i.i = phi i64 [ %i.cp, %._crit_edge.i.i ], [ 1152921504606846975, %.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.153.i, i64 2
  %i.cr = load i16, ptr %i.cq, align 2            ; 2 uses
  %i.cs = icmp ugt i16 %i.cr, 63
  br i1 %i.cs, label %bb.p, label %bb.v

bb.p:                                             ; preds = %simple8b_encode.exit.i
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = tail call ptr @MemoryContextAlloc(ptr noundef %i.ct, i64 noundef 1040) #11 ; 8 uses
  %i.cv = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.cu) #11
  %i.cw = load i64, ptr %i.ae, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.ae, align 8
  store i16 0, ptr %i.cu, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 2 uses
  store i16 0, ptr %i.cy, align 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  store ptr %i.cu, ptr %i.da, align 8
  store ptr %i.cu, ptr %i.q, align 8
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.u, %bb.p
  %.tr47.i.i = phi i32 [ 1, %bb.p ], [ %i.ei, %bb.u ] ; 6 uses
  %.tr48.i.i = phi ptr [ %i.cu, %bb.p ], [ %i.ea, %bb.u ] ; 2 uses
  %i.db = load i32, ptr %i.af, align 8            ; 3 uses
  %.not.i42.i = icmp slt i32 %.tr47.i.i, %i.db
  br i1 %.not.i42.i, label %tailrecurse._crit_edge.i.i, label %bb.q

tailrecurse._crit_edge.i.i:                       ; preds = %tailrecurse.i.i
  %.phi.trans.insert.i.i = sext i32 %.tr47.i.i to i64 ; 2 uses
  %.phi.trans.insert56.i.i = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.phi.trans.insert.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert56.i.i, align 8
  br label %bb.t

bb.q:                                             ; preds = %tailrecurse.i.i
  %i.dc = icmp eq i32 %i.db, 11
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12, !inline_history !6 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #11, !inline_history !6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__func__.intset_update_upper) #11, !inline_history !6
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr %i.af, align 8
  %i.dh = load i16, ptr %i.df, align 2
  %i.di = icmp eq i16 %i.dh, 0
  %.0.in.v.i.i = select i1 %i.di, i64 16, i64 8
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0.in.v.i.i
  %.0.i43.i = load i64, ptr %.0.in.i.i, align 8
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = tail call ptr @MemoryContextAlloc(ptr noundef %i.dj, i64 noundef 1032) #11, !inline_history !6 ; 8 uses
  %i.dl = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.dk) #11, !inline_history !6
  %i.dm = load i64, ptr %i.ae, align 8
  %i.dn = add i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.ae, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dp = trunc i32 %.tr47.i.i to i16
  store i16 %i.dp, ptr %i.dk, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.0.i43.i, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 520
  store ptr %i.df, ptr %i.dr, align 8
  store i16 1, ptr %i.do, align 2
  store ptr %i.dk, ptr %i.ag, align 8
  %i.ds = sext i32 %.tr47.i.i to i64              ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ds
  store ptr %i.dk, ptr %i.dt, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %tailrecurse._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.phi.trans.insert.i.i, %tailrecurse._crit_edge.i.i ], [ %i.ds, %bb.s ]
  %i.du = phi ptr [ %.pre.i.i, %tailrecurse._crit_edge.i.i ], [ %i.dk, %bb.s ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i16, ptr %i.dv, align 2            ; 3 uses
  %i.dx = icmp ult i16 %i.dw, 64
  br i1 %i.dx, label %intset_update_upper.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.pre-phi.i.i
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = tail call ptr @MemoryContextAlloc(ptr noundef %i.dz, i64 noundef 1032) #11, !inline_history !6 ; 7 uses
  %i.eb = tail call i64 @GetMemoryChunkSpace(ptr noundef %i.ea) #11, !inline_history !6
  %i.ec = load i64, ptr %i.ae, align 8
  %i.ed = add i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.ae, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ef = trunc i32 %.tr47.i.i to i16
  store i16 %i.ef, ptr %i.ea, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.aj, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 520
  store ptr %.tr48.i.i, ptr %i.eh, align 8
  store i16 1, ptr %i.ee, align 2
  store ptr %i.ea, ptr %i.dy, align 8
  %i.ei = add i32 %.tr47.i.i, 1
  br label %tailrecurse.i.i

intset_update_upper.exit.i:                       ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.el = zext nneg i16 %i.dw to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  store i64 %i.aj, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 520
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %.tr48.i.i, ptr %i.eo, align 8
  %i.ep = add nuw nsw i16 %i.dw, 1
  store i16 %i.ep, ptr %i.ej, align 2
  %.pre.i = load i16, ptr %i.cy, align 2
  br label %bb.v

bb.v:                                             ; preds = %intset_update_upper.exit.i, %simple8b_encode.exit.i
  %i.eq = phi i16 [ %.pre.i, %intset_update_upper.exit.i ], [ %i.cr, %simple8b_encode.exit.i ] ; 2 uses
  %.2.i = phi ptr [ %i.cu, %intset_update_upper.exit.i ], [ %.153.i, %simple8b_encode.exit.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  %i.et = add i16 %i.eq, 1
  store i16 %i.et, ptr %i.es, align 2
  %i.eu = zext i16 %i.eq to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  store i64 %i.aj, ptr %i.ev, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.056.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.ew = add i32 %.252.i.i, %i.ak                ; 5 uses
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  %i.ey = sub nsw i64 %i.p, %i.ex
  %i.ez = icmp ugt i64 %i.ey, 240
  br i1 %i.ez, label %bb.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.v
  %i.fa = load i32, ptr %i.l, align 8             ; 3 uses
  %i.fb = icmp slt i32 %i.ew, %i.fa
  br i1 %i.fb, label %bb.w, label %intset_flush_buffered_values.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ex
  %i.fd = sub nuw nsw i32 %i.fa, %i.ew
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.fc, i64 %i.ff, i1 false)
  %.pre60.i = load i32, ptr %i.l, align 8
  br label %intset_flush_buffered_values.exit

intset_flush_buffered_values.exit:                ; preds = %._crit_edge.i, %bb.w
  %i.fg = phi i32 [ %.pre60.i, %bb.w ], [ %i.fa, %._crit_edge.i ]
  %i.fh = sub i32 %i.fg, %i.ew                    ; 2 uses
  store i32 %i.fh, ptr %i.l, align 8
  br label %bb.x

bb.x:                                             ; preds = %intset_flush_buffered_values.exit, %bb.f
  %i.fi = phi i32 [ %i.fh, %intset_flush_buffered_values.exit ], [ %i.m, %bb.f ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fk
  store i64 %1, ptr %i.fl, align 8
  %i.fm = load i32, ptr %i.l, align 8
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.l, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8
  store i64 %1, ptr %i.f, align 8
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @intset_is_member(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %bb.d, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.b, %.lr.ph.split.i
  %.023.i = phi i32 [ %spec.select21.i, %.lr.ph.split.i ], [ %i.b, %bb.b ] ; 2 uses
  %.01722.i = phi i32 [ %spec.select20.i, %.lr.ph.split.i ], [ 0, %bb.b ] ; 3 uses
  %i.f = sub i32 %.023.i, %.01722.i
  %i.g = sdiv i32 %i.f, 2
  %i.h = add i32 %i.g, %.01722.i                  ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %1, %i.k                    ; 2 uses
  %i.m = add i32 %i.h, 1
  %spec.select20.i = select i1 %i.l, i32 %i.m, i32 %.01722.i ; 4 uses
  %spec.select21.i = select i1 %i.l, i32 %.023.i, i32 %i.h ; 2 uses
  %i.n = icmp sgt i32 %spec.select21.i, %spec.select20.i
  br i1 %i.n, label %.lr.ph.split.i, label %intset_binsrch_uint64.exit, !llvm.loop !10

intset_binsrch_uint64.exit:                       ; preds = %.lr.ph.split.i
  %.not50 = icmp slt i32 %spec.select20.i, %i.b
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %intset_binsrch_uint64.exit
  %i.o = sext i32 %spec.select20.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, %1
  br label %.critedge

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not48 = icmp eq ptr %i.t, null
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %.03666 = add i32 %i.v, -1                      ; 2 uses
  %i.w = icmp sgt i32 %.03666, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03668 = phi i32 [ %.036, %bb.f ], [ %.03666, %bb.e ] ; 2 uses
  %.03767 = phi ptr [ %i.an, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03767, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.03767, i64 2
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %.not.i51 = icmp eq i16 %i.z, 0
  br i1 %.not.i51, label %.critedge, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.023.us.i = phi i32 [ %spec.select19.us.i, %.lr.ph.split.us.i ], [ %i.aa, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01722.us.i = phi i32 [ %spec.select.us.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.ab = sub i32 %.023.us.i, %.01722.us.i
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add i32 %i.ac, %.01722.us.i             ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %.not.us.i = icmp ult i64 %1, %i.ag             ; 2 uses
  %i.ah = add i32 %i.ad, 1
  %spec.select.us.i = select i1 %.not.us.i, i32 %.01722.us.i, i32 %i.ah ; 4 uses
  %spec.select19.us.i = select i1 %.not.us.i, i32 %i.ad, i32 %.023.us.i ; 2 uses
  %i.ai = icmp sgt i32 %spec.select19.us.i, %spec.select.us.i
  br i1 %i.ai, label %.lr.ph.split.us.i, label %intset_binsrch_uint64.exit54, !llvm.loop !10

intset_binsrch_uint64.exit54:                     ; preds = %.lr.ph.split.us.i
  %.not49 = icmp eq i32 %spec.select.us.i, 0
  br i1 %.not49, label %.critedge, label %bb.f

bb.f:                                             ; preds = %intset_binsrch_uint64.exit54
  %i.aj = getelementptr inbounds nuw i8, ptr %.03767, i64 520
  %i.ak = add i32 %spec.select.us.i, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.036 = add nsw i32 %.03668, -1
  %i.ao = icmp sgt i32 %.03668, 1
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.037.lcssa = phi ptr [ %i.t, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 2
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %.not21.i = icmp eq i16 %i.ar, 0
  br i1 %.not21.i, label %.critedge, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %._crit_edge
  %i.as = zext i16 %i.ar to i32
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %.020.i = phi i32 [ %.1.i, %.lr.ph.i55 ], [ %i.as, %.lr.ph.i55.preheader ] ; 2 uses
  %.01719.i = phi i32 [ %.118.i, %.lr.ph.i55 ], [ 0, %.lr.ph.i55.preheader ] ; 3 uses
  %i.at = sub i32 %.020.i, %.01719.i
  %i.au = sdiv i32 %i.at, 2
  %i.av = add i32 %i.au, %.01719.i                ; 3 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %.not.i56 = icmp ult i64 %1, %i.ay              ; 2 uses
  %i.az = add i32 %i.av, 1
  %.118.i = select i1 %.not.i56, i32 %.01719.i, i32 %i.az ; 4 uses
  %.1.i = select i1 %.not.i56, i32 %i.av, i32 %.020.i ; 2 uses
  %i.ba = icmp sgt i32 %.1.i, %.118.i
  br i1 %i.ba, label %.lr.ph.i55, label %intset_binsrch_leaf.exit, !llvm.loop !12

intset_binsrch_leaf.exit:                         ; preds = %.lr.ph.i55
  %i.bb = icmp eq i32 %.118.i, 0
  br i1 %i.bb, label %.critedge, label %bb.g

bb.g:                                             ; preds = %intset_binsrch_leaf.exit
  %i.bc = add i32 %.118.i, -1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp eq i64 %i.bf, %1
  br i1 %i.bg, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 4 uses
  %i.bj = lshr i64 %i.bi, 60
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @simple8b_modes, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = load i8, ptr %i.bk, align 2
  %i.bo = icmp eq i64 %i.bi, 1152921504606846975
  br i1 %i.bo, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %2 = icmp ult i64 %i.bi, 2305843009213693952
  br i1 %2, label %bb.j, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.bp = sub i64 %1, %i.bf
  %i.bq = zext i8 %i.bm to i64
  %i.br = icmp ule i64 %i.bp, %i.bq
  br label %.critedge

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bs = zext i8 %i.bn to i64                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.bs
  %i.bt = xor i64 %notmask.i, -1
  %3 = tail call i8 @llvm.umax.i8(i8 %i.bm, i8 1)
  %umax.i = zext i8 %3 to i32
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.k, %.lr.ph.preheader.i
  %.045.i = phi i32 [ %i.by, %bb.k ], [ 0, %.lr.ph.preheader.i ]
  %.02844.i = phi i64 [ %i.bw, %bb.k ], [ %i.bf, %.lr.ph.preheader.i ]
  %.03243.i = phi i64 [ %i.bx, %bb.k ], [ %i.bi, %.lr.ph.preheader.i ] ; 2 uses
  %i.bu = and i64 %.03243.i, %i.bt
  %i.bv = add i64 %.02844.i, 1
  %i.bw = add i64 %i.bv, %i.bu                    ; 3 uses
  %.not.i59 = icmp ult i64 %i.bw, %1
  br i1 %.not.i59, label %bb.k, label %.split.loop.exit39.i

bb.k:                                             ; preds = %.lr.ph.i58
  %i.bx = lshr i64 %.03243.i, %i.bs
  %i.by = add nuw nsw i32 %.045.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.by, %umax.i
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i58, !llvm.loop !13

.split.loop.exit39.i:                             ; preds = %.lr.ph.i58
  %i.bz = icmp eq i64 %i.bw, %1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %intset_binsrch_uint64.exit54, %bb.k, %._crit_edge, %.split.loop.exit39.i, %bb.j, %bb.h, %bb.g, %intset_binsrch_leaf.exit, %bb.d, %intset_binsrch_uint64.exit, %bb.c
  %.2 = phi i1 [ false, %intset_binsrch_uint64.exit ], [ %i.r, %bb.c ], [ %i.bz, %.split.loop.exit39.i ], [ false, %bb.d ], [ false, %intset_binsrch_leaf.exit ], [ false, %bb.k ], [ true, %bb.g ], [ false, %._crit_edge ], [ false, %bb.h ], [ %i.br, %bb.j ], [ false, %intset_binsrch_uint64.exit54 ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @intset_begin_iterate(ptr noundef initializes((4004, 4005), (4016, 4036)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4004
  store i8 1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4024
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4032
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4020
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4016
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4040
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4008
  store ptr %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @intset_iterate_next(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4020 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 3 uses
  %.promoted = load i32, ptr %i.a, align 4        ; 3 uses
  %.promoted41 = load i32, ptr %i.b, align 8      ; 2 uses
  %i.c = icmp slt i32 %.promoted, %.promoted41
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4040 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4048 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4008 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %.promoted44 = load ptr, ptr %i.d, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %.backedge.thread, %bb.a
  %.lcssa37 = phi i32 [ %.promoted, %bb.a ], [ 0, %.backedge.thread ], [ %i.bg, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4008
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = add nsw i32 %.lcssa37, 1
  store i32 %i.m, ptr %i.a, align 4
  %i.n = sext i32 %.lcssa37 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.q = phi ptr [ %.promoted44, %.lr.ph ], [ %i.be, %.backedge ] ; 4 uses
  %i.r = phi i32 [ %.promoted, %.lr.ph ], [ %i.bg, %.backedge ]
  %i.s = phi i32 [ %.promoted41, %.lr.ph ], [ %i.bf, %.backedge ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.e, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = add nsw i32 %i.t, 1
  store i32 %i.z, ptr %i.e, align 8
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 4 uses
  %i.af = lshr i64 %i.ae, 60                      ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @simple8b_modes, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %2 = zext i8 %i.ai to i32                       ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 2
  %i.ak = zext i8 %i.aj to i64                    ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.ak
  %i.al = xor i64 %notmask.i, -1                  ; 3 uses
  %i.am = icmp eq i64 %i.ae, 1152921504606846975
  br i1 %i.am, label %.backedge.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %umax.i = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %umax.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.an = icmp eq i64 %i.af, 15
  br i1 %i.an, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02025.i = phi i64 [ %i.ac, %.lr.ph.preheader.i.new ], [ %i.av, %.lr.ph.i ]
  %.02124.i = phi i64 [ %i.ae, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ao = and i64 %.02124.i, %i.al
  %i.ap = add i64 %.02025.i, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = lshr i64 %.02124.i, %i.ak               ; 2 uses
  %i.at = and i64 %i.as, %i.al
  %i.au = add i64 %i.aq, 1
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.av, ptr %i.ax, align 8
  %i.ay = lshr i64 %i.as, %i.ak                   ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %simple8b_decode.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

simple8b_decode.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %simple8b_decode.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %simple8b_decode.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %simple8b_decode.exit.loopexit.unr-lcssa ]
  %.02025.i.epil.init = phi i64 [ %i.ac, %.lr.ph.preheader.i ], [ %i.av, %simple8b_decode.exit.loopexit.unr-lcssa ]
  %.02124.i.epil.init = phi i64 [ %i.ae, %.lr.ph.preheader.i ], [ %i.ay, %simple8b_decode.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.az = and i64 %.02124.i.epil.init, %i.al
  %i.ba = add i64 %.02025.i.epil.init, 1
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  store i64 %i.bb, ptr %i.bc, align 8
  br label %simple8b_decode.exit.loopexit

simple8b_decode.exit.loopexit:                    ; preds = %simple8b_decode.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.bd = add nuw nsw i32 %2, 1
  br label %.backedge.thread

.backedge.thread:                                 ; preds = %bb.d, %simple8b_decode.exit.loopexit
  %.0.i = phi i32 [ 1, %bb.d ], [ %i.bd, %simple8b_decode.exit.loopexit ]
  store i32 %.0.i, ptr %i.b, align 8
  br label %._crit_edge

.backedge:                                        ; preds = %bb.e, %bb.g
  %i.be = phi ptr [ null, %bb.g ], [ %i.bj, %bb.e ]
  %i.bf = phi i32 [ %i.bm, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ 0, %bb.g ], [ %i.r, %bb.e ]   ; 3 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  store ptr %i.bj, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = icmp eq ptr %i.bk, %i.f
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.h, align 8
  %i.bm = load i32, ptr %i.j, align 8             ; 2 uses
  store i32 %i.bm, ptr %i.b, align 8
  store i32 0, ptr %i.a, align 4
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4004
  store i8 0, ptr %i.bn, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bo = phi i1 [ false, %bb.h ], [ true, %._crit_edge ]
  %storemerge = phi i64 [ 0, %bb.h ], [ %i.p, %._crit_edge ]
  store i64 %storemerge, ptr %1, align 8
  ret i1 %i.bo
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{null}
!7 = distinct !{!7, !4}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
end_hunk_0
