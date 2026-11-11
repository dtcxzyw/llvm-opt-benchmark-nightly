Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/haloExchange?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AtomMsgSt = type { i32, i32, double, double, double, double, double, double }

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @initAtomHaloExchange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !53 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12 ; 12 uses
  %i.b = tail call i32 @processorNum(ptr noundef %0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #13
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call i32 @processorNum(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !7
  %i.e = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !7
  %i.g = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !7
  %i.k = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = add nsw i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7
  %i.s = add nsw i32 %i.r, 2
  %i.t = load i32, ptr %1, align 8, !tbaa !7
  %i.u = add nsw i32 %i.t, 2                      ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s
  %i.w = mul nsw i32 %i.u, %i.p
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %i.w)
  %i.y = mul i32 %i.x, 7168
  store i32 %i.y, ptr %i.m, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @loadAtomsBuffer, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @unloadAtomsBuffer, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @destroyAtomsExchange, ptr %i.ab, align 8, !tbaa !13
  %i.ac = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 15 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !7   ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = add i32 %i.ae, 4
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !7
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  %i.ai = mul nsw i32 %i.af, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !7
  %i.aj = load i32, ptr %1, align 8, !tbaa !7
  %i.ak = shl i32 %i.aj, 1
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ah                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !7
  %i.ao = add nsw i32 %i.ad, 2
  %i.ap = mul nsw i32 %i.al, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.am, ptr %i.as, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.b

.preheader:                                       ; preds = %mkAtomCellList.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  store ptr %calloc, ptr %i.av, align 8, !tbaa !15
  %calloc85 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %calloc85, ptr %i.aw, align 8, !tbaa !15
  %calloc86 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %calloc86, ptr %i.ax, align 8, !tbaa !15
  %calloc87 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %calloc87, ptr %i.ay, align 8, !tbaa !15
  %calloc88 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %calloc88, ptr %i.az, align 8, !tbaa !15
  %calloc89 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store ptr %calloc89, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.a, %mkAtomCellList.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mkAtomCellList.exit ] ; 9 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.bh) #12 ; 2 uses
  %i.bj = load i32, ptr %1, align 8, !tbaa !7
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = load i32, ptr %i.n, align 4, !tbaa !7
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !7
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
  %.03551.us.i = phi i32 [ %i.cf, %._crit_edge48.split.us.us.i ], [ %.042.i, %bb.b ] ; 2 uses
  %.03650.us.i = phi i64 [ %indvars.iv.next.i, %._crit_edge48.split.us.us.i ], [ 0, %bb.b ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader43.us.i
  %.03447.us.us.i = phi i32 [ %.040.i, %.preheader43.us.i ], [ %i.ce, %._crit_edge.us.us.i ] ; 2 uses
  %.146.us.us.i = phi i64 [ %.03650.us.i, %.preheader43.us.i ], [ %indvars.iv.next.i, %._crit_edge.us.us.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %.146.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %.045.us.us.i = phi i32 [ %i.cd, %bb.c ], [ %.038.i, %.preheader.us.us.i ] ; 2 uses
  %i.cb = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %.03551.us.i, i32 noundef %.03447.us.us.i, i32 noundef %.045.us.us.i) #13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !7
  %i.cd = add nsw i32 %.045.us.us.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cd, %.037.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.c

._crit_edge.us.us.i:                              ; preds = %bb.c
  %i.ce = add nsw i32 %.03447.us.us.i, 1          ; 2 uses
  %exitcond57.not.i = icmp eq i32 %i.ce, %.039.i
  br i1 %exitcond57.not.i, label %._crit_edge48.split.us.us.i, label %.preheader.us.us.i

._crit_edge48.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %i.cf = add nsw i32 %.03551.us.i, 1             ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.cf, %spec.select.i
  br i1 %exitcond58.not.i, label %mkAtomCellList.exit, label %.preheader43.us.i

mkAtomCellList.exit:                              ; preds = %._crit_edge48.split.us.us.i, %bb.b
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.bi, ptr %i.cg, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.preheader, label %bb.b

bb.d:                                             ; preds = %.preheader
  store double 1.000000e+00, ptr %calloc, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %i.ch = load i32, ptr %0, align 4, !tbaa !7
  %i.ci = add nsw i32 %i.ch, -1
  %i.cj = icmp eq i32 %i.bc, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double -1.000000e+00, ptr %calloc85, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7  ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %calloc86, i64 8
  store double 1.000000e+00, ptr %i.cn, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = icmp eq i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %calloc87, i64 8
  store double -1.000000e+00, ptr %i.cs, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7  ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %calloc88, i64 16
  store double 1.000000e+00, ptr %i.cw, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = icmp eq i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %calloc89, i64 16
  store double -1.000000e+00, ptr %i.db, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ac, ptr %i.dc, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @loadAtomsBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 !guid !54 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = sext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !19
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !19
  %i.j = fmul <2 x double> %i.h, %i.i             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %i.o = fmul double %i.l, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %i.q to i64
  %i.aa = extractelement <2 x double> %i.j, i64 0
  %i.ab = extractelement <2 x double> %i.j, i64 1
  br label %bb.b

._crit_edge68.loopexit:                           ; preds = %._crit_edge
  %i.ac = mul i32 %.1.lcssa, 56
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %bb.a
  %.061.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge68.loopexit ]
  ret i32 %.061.lcssa

bb.b:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %.06164 = phi i32 [ 0, %.lr.ph67 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv75
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 2 uses
  %i.af = shl i32 %i.ae, 6                        ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !31  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = sext i32 %i.af to i64
  %i.au = sext i32 %.06164 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.av = trunc nsw i64 %indvars.iv.next71 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.06164, %bb.b ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge68.loopexit, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv70 = phi i64 [ %i.au, %.lr.ph ], [ %indvars.iv.next71, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds [56 x i8], ptr %3, i64 %indvars.iv70 ; 8 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !38
end_hunk_0
