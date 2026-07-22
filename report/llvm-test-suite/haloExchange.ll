inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AtomMsgSt = type { i32, i32, double, double, double, double, double, double }

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @initAtomHaloExchange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12 ; 12 uses
  %i.b = tail call i32 @processorNum(ptr noundef %0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #13
  store i32 %i.b, ptr %i.a, align 8, !tbaa !4
  %i.c = tail call i32 @processorNum(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !4
  %i.e = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !4
  %i.g = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !4
  %i.k = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add nsw i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !4
  %i.s = add nsw i32 %i.r, 2
  %i.t = load i32, ptr %1, align 8, !tbaa !4
  %i.u = add nsw i32 %i.t, 2                      ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s
  %i.w = mul nsw i32 %i.u, %i.p
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %i.w)
  %i.y = mul i32 %i.x, 7168
  store i32 %i.y, ptr %i.m, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @loadAtomsBuffer, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @unloadAtomsBuffer, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @destroyAtomsExchange, ptr %i.ab, align 8, !tbaa !13
  %i.ac = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 15 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !4   ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = add i32 %i.ae, 4
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !4
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  %i.ai = mul nsw i32 %i.af, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !4
  %i.aj = load i32, ptr %1, align 8, !tbaa !4
  %i.ak = shl i32 %i.aj, 1
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ah                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !4
  %i.ao = add nsw i32 %i.ad, 2
  %i.ap = mul nsw i32 %i.al, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.am, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.b

.preheader:                                       ; preds = %mkAtomCellList.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  store ptr %calloc, ptr %i.av, align 8, !tbaa !14
  %calloc85 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %calloc85, ptr %i.aw, align 8, !tbaa !14
  %calloc86 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %calloc86, ptr %i.ax, align 8, !tbaa !14
  %calloc87 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %calloc87, ptr %i.ay, align 8, !tbaa !14
  %calloc88 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %calloc88, ptr %i.az, align 8, !tbaa !14
  %calloc89 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store ptr %calloc89, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.a, %mkAtomCellList.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mkAtomCellList.exit ] ; 9 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.bh) #12 ; 2 uses
  %i.bj = load i32, ptr %1, align 8, !tbaa !4
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = load i32, ptr %i.n, align 4, !tbaa !4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !4
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = icmp eq i64 %indvars.iv, 0
  %spec.select.i = select i1 %i.bp, i32 1, i32 %i.bk ; 3 uses
  %i.bq = icmp eq i64 %indvars.iv, 1
  %i.br = add nsw i32 %spec.select.i, -2
  %.042.i = select i1 %i.bq, i32 %i.br, i32 -1    ; 2 uses
  %i.bs = icmp eq i64 %indvars.iv, 2
  %.039.i = select i1 %i.bs, i32 1, i32 %i.bm     ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv, 3
  %i.bu = add nsw i32 %.039.i, -2
  %.040.i = select i1 %i.bt, i32 %i.bu, i32 -1    ; 2 uses
  %i.bv = icmp eq i64 %indvars.iv, 4
  %.037.i = select i1 %i.bv, i32 1, i32 %i.bo     ; 3 uses
  %i.bw = icmp eq i64 %indvars.iv, 5
  %i.bx = add nsw i32 %.037.i, -2
  %.038.i = select i1 %i.bw, i32 %i.bx, i32 -1    ; 2 uses
  %i.by = icmp slt i32 %.042.i, %spec.select.i
  %i.bz = icmp slt i32 %.040.i, %.039.i
  %or.cond.i = select i1 %i.by, i1 %i.bz, i1 false
  %i.ca = icmp slt i32 %.038.i, %.037.i
  %or.cond60.i = select i1 %or.cond.i, i1 %i.ca, i1 false
  br i1 %or.cond60.i, label %.preheader43.us.i, label %mkAtomCellList.exit

.preheader43.us.i:                                ; preds = %bb.b, %._crit_edge48.split.us.us.i
  %.03551.us.i.a = phi i32 [ %i.cf, %._crit_edge48.split.us.us.i ], [ %.042.i, %bb.b ] ; 2 uses
  %.03650.us.i = phi i64 [ %indvars.iv.next.i.a, %._crit_edge48.split.us.us.i ], [ 0, %bb.b ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader43.us.i
  %.03447.us.us.i = phi i32 [ %.040.i, %.preheader43.us.i ], [ %i.ce, %._crit_edge.us.us.i ] ; 2 uses
  %.146.us.us.i = phi i64 [ %.03650.us.i, %.preheader43.us.i ], [ %indvars.iv.next.i.a, %._crit_edge.us.us.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.a, %bb.c ], [ %.146.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %.045.us.us.i = phi i32 [ %i.cd, %bb.c ], [ %.038.i, %.preheader.us.us.i ] ; 2 uses
  %i.cb = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %.03551.us.i.a, i32 noundef %.03447.us.us.i, i32 noundef %.045.us.us.i) #13
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !4
  %i.cd = add i32 %.045.us.us.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cd, %.037.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.c

._crit_edge.us.us.i:                              ; preds = %bb.c
  %i.ce = add i32 %.03447.us.us.i, 1              ; 2 uses
  %exitcond57.not.i = icmp eq i32 %i.ce, %.039.i
  br i1 %exitcond57.not.i, label %._crit_edge48.split.us.us.i, label %.preheader.us.us.i

._crit_edge48.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %i.cf = add i32 %.03551.us.i.a, 1               ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.cf, %spec.select.i
  br i1 %exitcond58.not.i, label %mkAtomCellList.exit, label %.preheader43.us.i

mkAtomCellList.exit:                              ; preds = %._crit_edge48.split.us.us.i, %bb.b
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.bi, ptr %i.cg, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.preheader, label %bb.b

bb.d:                                             ; preds = %.preheader
  store double 1.000000e+00, ptr %calloc, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %i.ch = load i32, ptr %0, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, -1
  %i.cj = icmp eq i32 %i.bc, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double -1.000000e+00, ptr %calloc85, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %calloc86, i64 8
  store double 1.000000e+00, ptr %i.cn, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = icmp eq i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %calloc87, i64 8
  store double -1.000000e+00, ptr %i.cs, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4  ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %calloc88, i64 16
  store double 1.000000e+00, ptr %i.cw, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = icmp eq i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %calloc89, i64 16
  store double -1.000000e+00, ptr %i.db, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ac, ptr %i.dc, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @loadAtomsBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = sext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load double, ptr %i.h, align 8, !tbaa !18
  %i.j = fmul double %i.e, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.n = load double, ptr %i.m, align 8, !tbaa !18
  %i.o = fmul double %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fmul double %i.q, %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.b
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %bb.b

._crit_edge68.loopexit:                           ; preds = %._crit_edge
  %i.af = mul i32 %.1.lcssa, 56
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %bb.a
  %.060.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge68.loopexit ]
  ret i32 %.060.lcssa

bb.b:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %.06065 = phi i32 [ 0, %.lr.ph67 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv75
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = shl i32 %i.ah, 6                        ; 2 uses
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = sext i32 %i.ai to i64
  %i.ax = sext i32 %.06065 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ay = trunc nsw i64 %indvars.iv.next71 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.06065, %bb.b ], [ %i.ay, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge68.loopexit, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv70 = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next71, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ %i.aw, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds [56 x i8], ptr %3, i64 %indvars.iv70 ; 8 uses
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !38
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !40
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.at, i64 %indvars.iv ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bh = fadd double %i.j, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store double %i.bh, ptr %i.bi, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = fadd double %i.o, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store double %i.bl, ptr %i.bm, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = fadd double %i.t, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store double %i.bp, ptr %i.bq, align 8, !tbaa !43
  %i.br = getelementptr inbounds [24 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store double %i.bs, ptr %i.bt, align 8, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store double %i.bv, ptr %i.bw, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store double %i.by, ptr %i.bz, align 8, !tbaa !46
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ca = load i32, ptr %i.ak, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@unloadAtomsBuffer:bb.a
  %i.a = sext i32 %3 to i64
  %i.b = udiv i64 %i.a, 56                        ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.v = load double, ptr %i.u, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void @putAtomInBox(ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.h, i32 noundef %i.j, double noundef %i.l, double noundef %i.n, double noundef %i.p, double noundef %i.r, double noundef %i.t, double noundef %i.v) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @destroyAtomsExchange(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.c) #13
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.r) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.t) #13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.v) #13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.x) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @initForceHaloExchange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12 ; 12 uses
  %i.b = tail call i32 @processorNum(ptr noundef %0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #13
  store i32 %i.b, ptr %i.a, align 8, !tbaa !4
  %i.c = tail call i32 @processorNum(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !4
  %i.e = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !4
  %i.g = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !4
  %i.k = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @loadForceBuffer, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @unloadForceBuffer, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @destroyForceExchange, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4
  %i.u = load i32, ptr %1, align 8, !tbaa !4
  %i.v = add nsw i32 %i.u, 2                      ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = add nsw i32 %i.r, 2
  %i.y = mul nsw i32 %i.v, %i.x
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %i.aa = shl i32 %i.z, 9
  store i32 %i.aa, ptr %i.m, align 8, !tbaa !8
  %i.ab = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 10 uses
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !4   ; 2 uses
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !4   ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.ac                ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !4
  %i.af = load i32, ptr %1, align 8, !tbaa !4
  %i.ag = add nsw i32 %i.af, 2                    ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.ad                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !4
  %i.aj = add nsw i32 %i.ac, 2
  %i.ak = mul nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %i.ah, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  br label %bb.c

bb.b:                                             ; preds = %mkForceRecvCellList.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !20
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a, %mkForceRecvCellList.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mkForceRecvCellList.exit ] ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2                    ; 2 uses
  %i.aw = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.av) #12 ; 2 uses
  %i.ax = load i32, ptr %1, align 8, !tbaa !4     ; 4 uses
  %i.ay = load i32, ptr %i.q, align 4, !tbaa !4   ; 6 uses
  %i.az = load i32, ptr %i.s, align 8, !tbaa !4   ; 6 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  switch i32 %i.ba, label %.preheader50.lr.ph.i [
    i32 5, label %bb.g
    i32 1, label %bb.d
    i32 2, label %bb.h
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.bb = add nsw i32 %i.ax, -1
  br label %.preheader50.lr.ph.i

bb.e:                                             ; preds = %bb.c
  %i.bc = add nsw i32 %i.ay, -1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.bd = add nsw i32 %i.ay, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.be = add nsw i32 %i.ay, 1
  %i.bf = add nsw i32 %i.az, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.e
  %.049.i = phi i32 [ %i.ay, %bb.e ], [ %i.be, %bb.g ], [ %i.bd, %bb.f ], [ 1, %bb.c ]
  %.048.i = phi i32 [ 0, %bb.e ], [ %i.bf, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ]
  %.047.i = phi i32 [ %i.az, %bb.e ], [ %i.az, %bb.g ], [ 1, %bb.f ], [ %i.az, %bb.c ]
  %.046.i = phi i32 [ %i.bc, %bb.e ], [ -1, %bb.g ], [ -1, %bb.f ], [ 0, %bb.c ]
  %.045.i = add nsw i32 %i.ax, 1
  %i.bg = icmp sgt i32 %i.ax, -2
  br i1 %i.bg, label %.preheader50.lr.ph.i, label %mkForceSendCellList.exit

.preheader50.lr.ph.i:                             ; preds = %bb.h, %bb.d, %bb.c
  %.04478.i = phi i32 [ -1, %bb.h ], [ %i.bb, %bb.d ], [ 0, %bb.c ]
  %.04577.i = phi i32 [ %.045.i, %bb.h ], [ %i.ax, %bb.d ], [ 1, %bb.c ]
  %.04676.i = phi i32 [ %.046.i, %bb.h ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.04775.i = phi i32 [ %.047.i, %bb.h ], [ %i.az, %bb.d ], [ %i.az, %bb.c ] ; 2 uses
  %.04874.i = phi i32 [ %.048.i, %bb.h ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.04973.i = phi i32 [ %.049.i, %bb.h ], [ %i.ay, %bb.d ], [ %i.ay, %bb.c ] ; 2 uses
  %i.bh = icmp slt i32 %.04676.i, %.04973.i
  %i.bi = icmp slt i32 %.04874.i, %.04775.i
  %or.cond.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %.preheader50.us.i, label %mkForceSendCellList.exit

.preheader50.us.i:                                ; preds = %.preheader50.lr.ph.i, %._crit_edge55.split.us.us.i
  %.04258.us.i.a = phi i32 [ %i.bn, %._crit_edge55.split.us.us.i ], [ %.04478.i, %.preheader50.lr.ph.i ] ; 2 uses
  %.04357.us.i = phi i64 [ %indvars.iv.next.i.a, %._crit_edge55.split.us.us.i ], [ 0, %.preheader50.lr.ph.i ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader50.us.i
  %.04154.us.us.i = phi i32 [ %.04676.i, %.preheader50.us.i ], [ %i.bm, %._crit_edge.us.us.i ] ; 2 uses
  %.153.us.us.i = phi i64 [ %.04357.us.i, %.preheader50.us.i ], [ %indvars.iv.next.i.a, %._crit_edge.us.us.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.a, %bb.i ], [ %.153.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %.052.us.us.i = phi i32 [ %i.bl, %bb.i ], [ %.04874.i, %.preheader.us.us.i ] ; 2 uses
  %i.bj = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %.04258.us.i.a, i32 noundef %.04154.us.us.i, i32 noundef %.052.us.us.i) #13
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %i.bl = add i32 %.052.us.us.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bl, %.04775.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.i

._crit_edge.us.us.i:                              ; preds = %bb.i
  %i.bm = add i32 %.04154.us.us.i, 1              ; 2 uses
  %exitcond64.not.i = icmp eq i32 %i.bm, %.04973.i
  br i1 %exitcond64.not.i, label %._crit_edge55.split.us.us.i, label %.preheader.us.us.i

._crit_edge55.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %i.bn = add i32 %.04258.us.i.a, 1               ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.bn, %.04577.i
  br i1 %exitcond65.not.i, label %mkForceSendCellList.exit, label %.preheader50.us.i

mkForceSendCellList.exit:                         ; preds = %._crit_edge55.split.us.us.i, %bb.h, %.preheader50.lr.ph.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  store ptr %i.aw, ptr %i.bo, align 8, !tbaa !16
  %i.bp = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.av) #12 ; 2 uses
  %i.bq = load i32, ptr %1, align 8, !tbaa !4     ; 4 uses
  %i.br = load i32, ptr %i.q, align 4, !tbaa !4   ; 6 uses
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !4   ; 6 uses
  switch i32 %i.ba, label %.preheader50.lr.ph.i56 [
    i32 5, label %bb.m
    i32 1, label %bb.j
    i32 2, label %bb.n
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.j:                                             ; preds = %mkForceSendCellList.exit
  %i.bt = add nsw i32 %i.bq, 1
  br label %.preheader50.lr.ph.i56

bb.k:                                             ; preds = %mkForceSendCellList.exit
  %i.bu = add nsw i32 %i.br, 1
  br label %bb.n

bb.l:                                             ; preds = %mkForceSendCellList.exit
  %i.bv = add nsw i32 %i.br, 1
  br label %bb.n

bb.m:                                             ; preds = %mkForceSendCellList.exit
  %i.bw = add nsw i32 %i.br, 1
  %i.bx = add nsw i32 %i.bs, 1
  br label %bb.n

bb.n:                                             ; preds = %mkForceSendCellList.exit, %bb.m, %bb.l, %bb.k
  %.049.i51 = phi i32 [ %i.bu, %bb.k ], [ %i.bw, %bb.m ], [ %i.bv, %bb.l ], [ 0, %mkForceSendCellList.exit ]
  %.048.i52 = phi i32 [ 0, %bb.k ], [ %i.bs, %bb.m ], [ -1, %bb.l ], [ 0, %mkForceSendCellList.exit ]
  %.047.i53 = phi i32 [ %i.bs, %bb.k ], [ %i.bx, %bb.m ], [ 0, %bb.l ], [ %i.bs, %mkForceSendCellList.exit ]
  %.046.i54 = phi i32 [ %i.br, %bb.k ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %mkForceSendCellList.exit ]
  %.045.i55 = add nsw i32 %i.bq, 1
  %i.by = icmp sgt i32 %i.bq, -2
  br i1 %i.by, label %.preheader50.lr.ph.i56, label %mkForceRecvCellList.exit

.preheader50.lr.ph.i56:                           ; preds = %bb.n, %bb.j, %mkForceSendCellList.exit
  %.04478.i57 = phi i32 [ -1, %bb.n ], [ %i.bq, %bb.j ], [ -1, %mkForceSendCellList.exit ]
  %.04577.i58 = phi i32 [ %.045.i55, %bb.n ], [ %i.bt, %bb.j ], [ 0, %mkForceSendCellList.exit ]
  %.04676.i59 = phi i32 [ %.046.i54, %bb.n ], [ 0, %bb.j ], [ 0, %mkForceSendCellList.exit ] ; 2 uses
  %.04775.i60 = phi i32 [ %.047.i53, %bb.n ], [ %i.bs, %bb.j ], [ %i.bs, %mkForceSendCellList.exit ] ; 2 uses
  %.04874.i61 = phi i32 [ %.048.i52, %bb.n ], [ 0, %bb.j ], [ 0, %mkForceSendCellList.exit ] ; 2 uses
  %.04973.i62 = phi i32 [ %.049.i51, %bb.n ], [ %i.br, %bb.j ], [ %i.br, %mkForceSendCellList.exit ] ; 2 uses
  %i.bz = icmp slt i32 %.04676.i59, %.04973.i62
  %i.ca = icmp slt i32 %.04874.i61, %.04775.i60
  %or.cond.i63 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond.i63, label %.preheader50.us.i64, label %mkForceRecvCellList.exit

.preheader50.us.i64:                              ; preds = %.preheader50.lr.ph.i56, %._crit_edge55.split.us.us.i76
  %.04258.us.i65 = phi i32 [ %i.cf, %._crit_edge55.split.us.us.i76 ], [ %.04478.i57, %.preheader50.lr.ph.i56 ] ; 2 uses
  %.04357.us.i66 = phi i64 [ %indvars.iv.next.i72, %._crit_edge55.split.us.us.i76 ], [ 0, %.preheader50.lr.ph.i56 ]
  br label %.preheader.us.us.i67

.preheader.us.us.i67:                             ; preds = %._crit_edge.us.us.i74, %.preheader50.us.i64
  %.04154.us.us.i68 = phi i32 [ %.04676.i59, %.preheader50.us.i64 ], [ %i.ce, %._crit_edge.us.us.i74 ] ; 2 uses
  %.153.us.us.i69 = phi i64 [ %.04357.us.i66, %.preheader50.us.i64 ], [ %indvars.iv.next.i72, %._crit_edge.us.us.i74 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.us.us.i67
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i72, %bb.o ], [ %.153.us.us.i69, %.preheader.us.us.i67 ] ; 2 uses
  %.052.us.us.i71 = phi i32 [ %i.cd, %bb.o ], [ %.04874.i61, %.preheader.us.us.i67 ] ; 2 uses
  %i.cb = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %.04258.us.i65, i32 noundef %.04154.us.us.i68, i32 noundef %.052.us.us.i71) #13
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i70, 1 ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv.i70
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !4
  %i.cd = add i32 %.052.us.us.i71, 1              ; 2 uses
  %exitcond.not.i73 = icmp eq i32 %i.cd, %.04775.i60
  br i1 %exitcond.not.i73, label %._crit_edge.us.us.i74, label %bb.o

._crit_edge.us.us.i74:                            ; preds = %bb.o
  %i.ce = add i32 %.04154.us.us.i68, 1            ; 2 uses
  %exitcond64.not.i75 = icmp eq i32 %i.ce, %.04973.i62
  br i1 %exitcond64.not.i75, label %._crit_edge55.split.us.us.i76, label %.preheader.us.us.i67

._crit_edge55.split.us.us.i76:                    ; preds = %._crit_edge.us.us.i74
  %i.cf = add i32 %.04258.us.i65, 1               ; 2 uses
  %exitcond65.not.i77 = icmp eq i32 %i.cf, %.04577.i58
  br i1 %exitcond65.not.i77, label %mkForceRecvCellList.exit, label %.preheader50.us.i64

mkForceRecvCellList.exit:                         ; preds = %._crit_edge55.split.us.us.i76, %bb.n, %.preheader50.lr.ph.i56
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  store ptr %i.bp, ptr %i.cg, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, -7) i32 @loadForceBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge32.loopexit:                           ; preds = %._crit_edge
  %i.m = shl i32 %.1.lcssa, 3
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge32.loopexit ]
  ret i32 %.024.lcssa

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %.02429 = phi i32 [ 0, %.lr.ph31 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv40
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.t = shl i32 %i.o, 6                          ; 2 uses
  %i.u = add nsw i32 %i.r, %i.t
  %i.v = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.w = sext i32 %i.t to i64                     ; 7 uses
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %i.y = sext i32 %.02429 to i64                  ; 5 uses
  %i.z = or disjoint i64 %i.w, 1
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.ab = sub i64 %i.aa, %i.w                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ac = ptrtoaddr ptr %i.v to i64
  %i.ad = shl nsw i64 %i.y, 3
  %i.ae = add i64 %i.ad, %i.a
  %i.af = shl nsw i64 %i.w, 3
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = sub i64 %i.ag, %i.ae
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.aa, 3                    ; 2 uses
  %n.vec = sub i64 %i.ab, %n.mod.vf               ; 3 uses
  %i.ai = add i64 %n.vec, %i.y                    ; 2 uses
  %i.aj = add i64 %n.vec, %i.w
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %invariant.gep47 = getelementptr [8 x i8], ptr %3, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !18
  %wide.load43 = load <2 x double>, ptr %i.ak, align 8, !tbaa !18
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep48, i64 16
  store <2 x double> %wide.load, ptr %gep48, align 8, !tbaa !50
  store <2 x double> %wide.load43, ptr %i.al, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph ], [ %i.ai, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph ], [ %i.aj, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next36.lcssa = phi i64 [ %i.ai, %middle.block ], [ %indvars.iv.next36, %scalar.ph ]
  %i.an = trunc nsw i64 %indvars.iv.next36.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.02429, %bb.b ], [ %i.an, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge32.loopexit, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %scalar.ph ], [ %indvars.iv35.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv35
  store double %i.ap, ptr %i.aq, align 8, !tbaa !50
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.ar, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !55
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @unloadForceBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.h = ptrtoaddr ptr %4 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv38 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next39, %._crit_edge ] ; 2 uses
  %.02328 = phi i32 [ 0, %.lr.ph30 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv38
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.s = shl i32 %i.n, 6                          ; 2 uses
  %i.t = add nsw i32 %i.q, %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.v = sext i32 %i.s to i64                     ; 7 uses
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  %i.x = sext i32 %.02328 to i64                  ; 5 uses
  %i.y = or disjoint i64 %i.v, 1
  %i.z = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.aa = sub i64 %i.z, %i.v                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ab = ptrtoaddr ptr %i.u to i64
  %i.ac = shl nsw i64 %i.v, 3
  %i.ad = shl nsw i64 %i.x, 3
  %i.ae = add i64 %i.ac, %i.ab
  %i.af = add i64 %i.ad, %i.h
  %i.ag = sub i64 %i.af, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.z, 3                     ; 2 uses
  %n.vec = sub i64 %i.aa, %n.mod.vf               ; 3 uses
  %i.ah = add i64 %n.vec, %i.x                    ; 2 uses
  %i.ai = add i64 %n.vec, %i.v
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.x
  %invariant.gep45 = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %gep, i64 16
end_hunk_1
