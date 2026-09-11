Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/escape_analysis?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_ssa_escape_analysis(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91   ; 2 uses
  %i.g = icmp slt i32 %i.f, %i.d
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 8 uses
  %i.i = sext i32 %i.f to i64
  %wide.trip.count = sext i32 %i.d to i64         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.j = getelementptr inbounds [48 x i8], ptr %i.b, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.o = getelementptr inbounds [40 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45
  %i.q = and i32 %i.p, 384
  %.not243 = icmp eq i32 %i.q, 0
  br i1 %.not243, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nsw i64 %indvars.iv to i32
  %i.s = tail call fastcc zeroext i1 @is_allocation_def(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.l, i32 noundef %i.r, ptr noundef %0)
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !84

bb.g:                                             ; preds = %bb.e
  %i.t = shl nsw i64 %wide.trip.count, 2          ; 3 uses
  %i.u = icmp ugt i64 %i.t, 32768                 ; 2 uses
  br i1 %i.u, label %bb.h, label %.thread259, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noalias ptr @_emalloc(i64 noundef %i.t) #4 ; 4 uses
  %.not244 = icmp eq ptr %i.v, null
  br i1 %.not244, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call fastcc i32 @zend_build_equi_escape_sets(ptr noundef %i.v, ptr noundef %1, ptr noundef nonnull %2)
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.k

.thread259:                                       ; preds = %bb.g
  %i.y = alloca i8, i64 %i.t, align 16            ; 2 uses
  %i.z = call fastcc i32 @zend_build_equi_escape_sets(ptr noundef %i.y, ptr noundef %1, ptr noundef nonnull %2)
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_efree(ptr noundef nonnull %i.v) #5
  br label %.critedge

bb.k:                                             ; preds = %.thread259, %bb.i
  %i.ab = phi ptr [ %i.y, %.thread259 ], [ %i.v, %bb.i ] ; 8 uses
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !91  ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.d
  br i1 %i.ad, label %.lr.ph282, label %.thread263

.lr.ph282:                                        ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %2, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ag = sext i32 %i.ac to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph282, %bb.ah
  %indvars.iv309 = phi i64 [ %i.ag, %.lr.ph282 ], [ %indvars.iv.next310, %bb.ah ] ; 6 uses
  %.0208281 = phi i32 [ 0, %.lr.ph282 ], [ %.3211, %bb.ah ] ; 8 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv309
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 7 uses
  %i.am = load i8, ptr %i.al, align 8             ; 17 uses
  %i.an = and i8 %i.am, 32
  %.not274 = icmp eq i8 %i.an, 0
  br i1 %.not274, label %bb.m, label %bb.ah

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds [48 x i8], ptr %i.b, i64 %indvars.iv309 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = and i8 %i.aq, 12
  %.not248 = icmp eq i8 %i.ar, 0
  br i1 %.not248, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.at = getelementptr inbounds [40 x i8], ptr %i.as, i64 %indvars.iv309
  %i.au = load i32, ptr %i.at, align 8, !tbaa !45
  %i.av = and i32 %i.au, 1024
  %.not249 = icmp eq i32 %i.av, 0
  br i1 %.not249, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = shl i8 %i.am, 3
  %sext = ashr i8 %i.aw, 7
  %i.ax = sext i8 %sext to i32
  %spec.select = add nsw i32 %.0208281, %i.ax
  %i.ay = or i8 %i.am, 48
  store i8 %i.ay, ptr %i.al, align 8
  br label %bb.ah

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.bd = getelementptr inbounds [40 x i8], ptr %i.bc, i64 %indvars.iv309
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.bf = and i32 %i.be, 384
  %.not250 = icmp eq i32 %i.bf, 0
  br i1 %.not250, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.bg = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [36 x i8], ptr %.val, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bg ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !52
  %i.bm = trunc nsw i64 %indvars.iv309 to i32     ; 3 uses
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !54
  switch i8 %i.bp, label %is_local_def.exit [
    i8 71, label %bb.ae
    i8 72, label %bb.ae
    i8 31, label %bb.ae
    i8 22, label %bb.ae
    i8 68, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bq = call ptr @zend_optimizer_get_class_entry_from_op1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bj) #5 ; 8 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %is_local_def.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 384
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55
  %.not26.i = icmp eq ptr %i.bs, null
  br i1 %.not26.i, label %bb.v, label %is_local_def.exit

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 360
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !68 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70
  %i.bx = icmp eq ptr %i.bw, @zend_std_get_constructor
  br i1 %i.bx, label %bb.w, label %is_local_def.exit

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.ca = icmp eq ptr %i.bz, @zend_objects_destroy_object
  br i1 %i.ca, label %bb.x, label %is_local_def.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 256
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72
  %.not27.i = icmp eq ptr %i.cc, null
  br i1 %.not27.i, label %bb.y, label %is_local_def.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 264
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !73
  %.not28.i = icmp eq ptr %i.ce, null
  br i1 %.not28.i, label %bb.z, label %is_local_def.exit

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !74
  %.not29.i = icmp eq ptr %i.cg, null
  br i1 %.not29.i, label %bb.aa, label %is_local_def.exit

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 288
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75
  %.not30.i = icmp eq ptr %i.ci, null
  br i1 %.not30.i, label %bb.ab, label %is_local_def.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  %.not31.i = icmp eq ptr %i.ck, null
  br i1 %.not31.i, label %._crit_edge322, label %is_local_def.exit

._crit_edge322:                                   ; preds = %bb.ab
  %.pre = load i8, ptr %i.al, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !76
  %i.cn = icmp eq i32 %i.cm, %i.bm
  br i1 %i.cn, label %bb.ad, label %is_local_def.exit

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !54
  switch i8 %i.cp, label %is_local_def.exit [
    i8 22, label %bb.ae
    i8 23, label %bb.ae
    i8 24, label %bb.ae
    i8 32, label %bb.ae
    i8 27, label %bb.ae
    i8 28, label %bb.ae
    i8 -124, label %bb.ae
    i8 -123, label %bb.ae
    i8 -122, label %bb.ae
    i8 -121, label %bb.ae
  ]

is_local_def.exit:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.cq = load i8, ptr %i.al, align 8             ; 2 uses
  %i.cr = and i8 %i.cq, 48
  %i.cs = icmp eq i8 %i.cr, 16
  %i.ct = sext i1 %i.cs to i32
  %spec.select251 = add nsw i32 %.0208281, %i.ct
  %i.cu = or i8 %i.cq, 48
  store i8 %i.cu, ptr %i.al, align 8
  br label %bb.ah
end_hunk_0
