Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistscan?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"GiST queue context\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GiST page data context\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"missing support function %d for attribute %d of index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gistscan.c\00", align 1
@__func__.gistrescan = private unnamed_addr constant [11 x i8] c"gistrescan\00", align 1
@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @gistbeginscan(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @RelationGetIndexScan(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @initGISTstate(ptr noundef %i.c) #5 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  %i.g = tail call ptr @palloc0(i64 noundef 24664) #5 ; 10 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = tail call ptr @createTempGistContext() #5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 4
  %i.q = tail call ptr @palloc(i64 noundef %i.p) #5
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 1, ptr %i.s, align 8
  %i.t = load i32, ptr %i.m, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = zext nneg i32 %i.t to i64
  %i.w = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef %i.v) #5
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load i32, ptr %i.m, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %i.z) #5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.m, align 4
  %i.ad = sext i32 %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 1, i64 %i.ad, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 -1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.g, ptr %i.ai, align 8
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  ret ptr %i.a
}

declare ptr @RelationGetIndexScan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @initGISTstate(ptr noundef) local_unnamed_addr #1

declare ptr @palloc0(i64 noundef) local_unnamed_addr #1

declare ptr @createTempGistContext() local_unnamed_addr #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @gistrescan(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null                   ; 7 uses
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.i, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #5
  store ptr %i.k, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @MemoryContextReset(ptr noundef %i.g) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load i16, ptr %i.u, align 4
  %i.w = sext i16 %i.v to i32                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ab = tail call ptr @CreateTemplateTupleDesc(i32 noundef %i.w) #5
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ab, ptr %i.ad, align 8
  %.not119127 = icmp slt i16 %i.aa, 1
  br i1 %.not119127, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %narrow = add nuw i16 %i.aa, 1                  ; 2 uses
  %5 = zext i16 %narrow to i32
  %wide.trip.count = zext i16 %narrow to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.g
  %.0109.lcssa = phi i32 [ 1, %bb.g ], [ %5, %.lr.ph ] ; 2 uses
  %.not120129 = icmp sgt i32 %.0109.lcssa, %i.w
  br i1 %.not120129, label %._crit_edge, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader
  %i.ae = zext nneg i32 %.0109.lcssa to i64
  %i.af = add nuw nsw i32 %i.w, 1
  %wide.trip.count153 = zext nneg i32 %i.af to i64
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = trunc i64 %indvars.iv to i16
  %i.ak = load ptr, ptr %i.q, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 368
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4
  tail call void @TupleDescInitEntry(ptr noundef %i.ai, i16 noundef signext %i.aj, ptr noundef null, i32 noundef %i.ap, i32 noundef -1, i32 noundef 0) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !7

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv150 = phi i64 [ %i.ae, %.lr.ph131.preheader ], [ %indvars.iv.next151, %.lr.ph131 ] ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = trunc i64 %indvars.iv150 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr [100 x i8], ptr %i.az, i64 %indvars.iv150
  %i.bb = load i32, ptr %i.ba, align 4
  tail call void @TupleDescInitEntry(ptr noundef %i.as, i16 noundef signext %i.at, ptr noundef null, i32 noundef %i.bb, i32 noundef -1, i32 noundef 0) #5
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge, label %.lr.ph131, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph131, %.preheader
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void @TupleDescFinalize(ptr noundef %i.be) #5
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr %i.bh, ptr %i.o, align 8
  %i.bi = load ptr, ptr %i.b, align 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.bj, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 24656
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.bn, ptr @CurrentMemoryContext, align 8
  %i.bp = tail call ptr @pairingheap_allocate(ptr noundef nonnull @pairingheap_GISTSearchItem_cmp, ptr noundef nonnull %0) #5
  store ptr %i.bp, ptr %i.c, align 8
  store ptr %i.bo, ptr @CurrentMemoryContext, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 1, ptr %i.bq, align 1
  %.not121 = icmp eq ptr %1, null
  br i1 %.not121, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  br i1 %i.e, label %.loopexit126, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call ptr @palloc(i64 noundef %i.bv) #5 ; 3 uses
  %i.bx = load i32, ptr %i.br, align 8            ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph134, label %.loopexit126

.lr.ph134:                                        ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph134, %bb.l
  %indvars.iv155 = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next156, %bb.l ] ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %i.ca, i64 %indvars.iv155
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv155
  store ptr %i.cd, ptr %i.ce, align 8
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.cf = load i32, ptr %i.br, align 8            ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next156, %i.cg
  br i1 %i.ch, label %bb.l, label %.loopexit126, !llvm.loop !9

.loopexit126:                                     ; preds = %bb.l, %bb.k, %bb.j
  %i.ci = phi i32 [ %i.bs, %bb.j ], [ %i.bx, %bb.k ], [ %i.cf, %bb.l ]
  %.0108 = phi ptr [ null, %bb.j ], [ %i.bw, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = sext i32 %i.ci to i64
  %i.cm = mul nsw i64 %i.cl, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ck, ptr nonnull align 8 %1, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i8 1, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.br, align 8
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.loopexit126, %bb.p
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.p ], [ 0, %.loopexit126 ] ; 3 uses
  %i.cq = load ptr, ptr %i.cj, align 8
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %indvars.iv158 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i16, ptr %i.cu, align 4
  %i.cw = sext i16 %i.cv to i64
  %i.cx = getelementptr i8, ptr %i.ct, i64 -8
  %i.cy = getelementptr [48 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.ct, align 8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.cs, ptr noundef %i.cy, ptr noundef %i.cz) #5
  br i1 %i.e, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph137
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0108, i64 %indvars.iv158
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store ptr %i.db, ptr %i.dc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph137
  %i.dd = load i32, ptr %i.cr, align 8
  %i.de = and i32 %i.dd, 193
  %or.cond = icmp eq i32 %i.de, 1
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.cn, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.df = load i32, ptr %i.br, align 8
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next159, %i.dg
  br i1 %i.dh, label %.lr.ph137, label %._crit_edge138, !llvm.loop !10

._crit_edge138:                                   ; preds = %bb.p, %.loopexit126
  br i1 %i.e, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge138
  tail call void @pfree(ptr noundef %.0108) #5
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge138, %bb.q, %bb.i, %bb.h
  %.not122 = icmp eq ptr %3, null
  br i1 %.not122, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  br i1 %i.e, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = tail call ptr @palloc(i64 noundef %i.dm) #5 ; 3 uses
  %i.do = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph141, label %.loopexit

.lr.ph141:                                        ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph141, %bb.v
  %indvars.iv161 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next162, %bb.v ] ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %indvars.iv161
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv161
  store ptr %i.du, ptr %i.dv, align 8
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.dw = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next162, %i.dx
  br i1 %i.dy, label %bb.v, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.v, %bb.u, %bb.t
  %i.dz = phi i32 [ %i.dj, %bb.t ], [ %i.do, %bb.u ], [ %i.dw, %bb.v ]
  %.0 = phi ptr [ null, %bb.t ], [ %i.dn, %bb.u ], [ %i.dn, %bb.v ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = sext i32 %i.dz to i64
  %i.ed = mul nsw i64 %i.ec, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eb, ptr nonnull align 8 %3, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr %i.di, align 4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = tail call ptr @palloc(i64 noundef %i.eg) #5
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = load i32, ptr %i.di, align 4
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph145, label %._crit_edge146
end_hunk_0
