Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddGenetic?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@numvars = internal unnamed_addr global i32 0, align 4
@popsize = internal unnamed_addr global i32 0, align 4
@storedd = internal unnamed_addr global ptr null, align 8
@repeat = internal unnamed_addr global ptr null, align 8
@computed = internal unnamed_addr global ptr null, align 8
@cross = internal unnamed_addr global i32 0, align 4
@large = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddGa(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = tail call i32 @cuddSifting(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.co, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 %2, %1                       ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr @numvars, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = mul nsw i32 %i.e, 3
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.i, i32 120)
  %storemerge = select i1 %i.h, i32 %spec.store.select, i32 %i.g
  %storemerge102 = tail call i32 @llvm.smax.i32(i32 %storemerge, i32 4) ; 2 uses
  store i32 %storemerge102, ptr @popsize, align 4
  %i.j = add nuw nsw i32 %storemerge102, 2
  %i.k = add nsw i32 %i.d, 2
  %i.l = mul nsw i32 %i.j, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #11 ; 3 uses
  store ptr %i.o, ptr @storedd, align 8, !tbaa !28
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.q, align 8, !tbaa !29
  br label %bb.co

bb.d:                                             ; preds = %bb.b
  %3 = load i32, ptr @popsize, align 4, !tbaa !8
  %4 = sext i32 %3 to i64
  %i.r = shl nsw i64 %4, 2
  %5 = tail call noalias ptr @malloc(i64 noundef %i.r) #11 ; 3 uses
  store ptr %5, ptr @repeat, align 8, !tbaa !28
  %i.s = icmp eq ptr %5, null
  br i1 %i.s, label %bb.e, label %.preheader157

.preheader157:                                    ; preds = %bb.d
  %6 = load i32, ptr @popsize, align 4, !tbaa !8  ; 2 uses
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader157
  %8 = zext nneg i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %5, i8 0, i64 %9, i1 false), !tbaa !8
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.t, align 8, !tbaa !29
  tail call void @free(ptr noundef nonnull %i.o) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.co

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader157
  %10 = tail call ptr @st__init_table(ptr noundef nonnull @array_compare, ptr noundef nonnull @array_hash) #10 ; 3 uses
  store ptr %10, ptr @computed, align 8, !tbaa !30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb.f, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.u = load i32, ptr @numvars, align 4, !tbaa !8 ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  %.pre = load ptr, ptr @storedd, align 8, !tbaa !28 ; 9 uses
  %.pre386 = ptrtoaddr ptr %.pre to i64
  br i1 %i.v, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %min.iters.check = icmp ult i32 %i.u, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph188
  %i.z = ptrtoaddr ptr %i.x to i64
  %i.aa = shl nsw i64 %i.y, 2
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = sub i64 %i.ab, %.pre386
  %diff.check = icmp ugt i64 %i.ac, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !8
  %wide.load387 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %wide.load, ptr %i.af, align 4, !tbaa !8
  store <4 x i32> %wide.load387, ptr %i.ag, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge189, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph188, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph188 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ai = load i32, ptr %gep.prol, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.prol
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !37

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge189, label %scalar.ph

bb.f:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.am, align 8, !tbaa !29
  %i.an = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not134 = icmp eq ptr %i.an, null
  br i1 %.not134, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.an) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ao = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not135 = icmp eq ptr %i.ao, null
  br i1 %.not135, label %bb.co, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.ao) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.co

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ap = load i32, ptr %gep, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ar = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.at = load i32, ptr %gep.2, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next.1
  store i32 %i.at, ptr %i.au, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.av = load i32, ptr %gep.3, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next.2
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge189, label %scalar.ph, !llvm.loop !39

._crit_edge189:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !41
  %i.bb = sub i32 %i.ay, %i.ba
  %i.bc = sext i32 %i.u to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !8
  %i.be = tail call i32 @st__insert(ptr noundef nonnull %10, ptr noundef %.pre, ptr noundef null) #10
  %i.bf = icmp eq i32 %i.be, -10000
  br i1 %i.bf, label %bb.j, label %bb.o

bb.j:                                             ; preds = %._crit_edge189
  %i.bg = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not132 = icmp eq ptr %i.bg, null
  br i1 %.not132, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.bg) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bh = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not133 = icmp eq ptr %i.bh, null
  br i1 %.not133, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.bh) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bi = load ptr, ptr @computed, align 8, !tbaa !30
  tail call void @st__free_table(ptr noundef %i.bi) #10
  br label %bb.co

bb.o:                                             ; preds = %._crit_edge189
  %i.bj = load ptr, ptr @repeat, align 8, !tbaa !28 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !8
  %i.bm = load i32, ptr @numvars, align 4, !tbaa !8 ; 5 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = load ptr, ptr @storedd, align 8, !tbaa !28 ; 6 uses
  %factor = shl nuw i32 %i.bm, 1                  ; 4 uses
  %invariant.op = or disjoint i32 %factor, 1      ; 4 uses
  %i.br = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count247 = zext nneg i32 %i.bm to i64 ; 8 uses
  %invariant.gep349 = getelementptr [4 x i8], ptr %i.bp, i64 %i.br ; 5 uses
  %min.iters.check392 = icmp ult i32 %i.bm, 24
  br i1 %min.iters.check392, label %scalar.ph391.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph192
  %i.bs = add nsw i64 %wide.trip.count247, -1     ; 2 uses
  %i.bt = trunc nsw i64 %i.bs to i32
  %i.bu = sub i32 %factor, %i.bt
  %i.bv = icmp sgt i32 %i.bu, %factor
  %i.bw = icmp ugt i64 %i.bs, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %scalar.ph391.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %vector.scevcheck
  %i.by = shl nuw nsw i64 %wide.trip.count247, 2
  %i.bz = add nsw i64 %i.br, %wide.trip.count247
  %i.ca = shl nsw i64 %i.bz, 2
  %scevgep = getelementptr i8, ptr %i.bp, i64 %i.ca
  %i.cb = sext i32 %factor to i64
  %i.cc = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.cd = or disjoint i64 %i.cc, 4
  %i.ce = sub nsw i64 %i.cd, %i.by
  %scevgep389 = getelementptr i8, ptr %i.bq, i64 %i.ce
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.cc
  %scevgep390 = getelementptr i8, ptr %i.cf, i64 4
  %bound0 = icmp ult ptr %invariant.gep349, %scevgep390
  %bound1 = icmp ult ptr %scevgep389, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph391.preheader, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck388
  %n.vec394 = and i64 %wide.trip.count247, 2147483640 ; 3 uses
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next400, %vector.body395 ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep349, i64 %index396 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !8, !alias.scope !42, !noalias !45
  %wide.load398 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !8, !alias.scope !42, !noalias !45
  %i.ci = trunc i64 %index396 to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %invariant.op, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -12
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -28
  %reverse = shufflevector <4 x i32> %wide.load397, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse399 = shufflevector <4 x i32> %wide.load398, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.cn, align 4, !tbaa !8, !alias.scope !45
  store <4 x i32> %reverse399, ptr %i.co, align 4, !tbaa !8, !alias.scope !45
  %index.next400 = add nuw i64 %index396, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next400, %n.vec394
  br i1 %i.cp, label %middle.block401, label %vector.body395, !llvm.loop !47

middle.block401:                                  ; preds = %vector.body395
  %cmp.n402 = icmp eq i64 %n.vec394, %wide.trip.count247
  br i1 %cmp.n402, label %._crit_edge193, label %scalar.ph391.preheader

scalar.ph391.preheader:                           ; preds = %vector.memcheck388, %vector.scevcheck, %.lr.ph192, %middle.block401
  %indvars.iv244.ph = phi i64 [ 0, %vector.memcheck388 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph192 ], [ %n.vec394, %middle.block401 ] ; 5 uses
  %xtraiter442 = and i64 %wide.trip.count247, 1
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %scalar.ph391.prol.loopexit, label %scalar.ph391.prol

scalar.ph391.prol:                                ; preds = %scalar.ph391.preheader
  %gep350.prol = getelementptr [4 x i8], ptr %invariant.gep349, i64 %indvars.iv244.ph
  %i.cq = load i32, ptr %gep350.prol, align 4, !tbaa !8
  %i.cr = trunc nuw nsw i64 %indvars.iv244.ph to i32
  %i.cs = xor i32 %i.cr, -1
  %.reass.prol = add i32 %invariant.op, %i.cs
  %i.ct = sext i32 %.reass.prol to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ct
  store i32 %i.cq, ptr %i.cu, align 4, !tbaa !8
  %indvars.iv.next245.prol = or disjoint i64 %indvars.iv244.ph, 1
  br label %scalar.ph391.prol.loopexit

scalar.ph391.prol.loopexit:                       ; preds = %scalar.ph391.prol, %scalar.ph391.preheader
  %indvars.iv244.unr = phi i64 [ %indvars.iv244.ph, %scalar.ph391.preheader ], [ %indvars.iv.next245.prol, %scalar.ph391.prol ]
  %i.cv = add nsw i64 %wide.trip.count247, -1
  %i.cw = icmp eq i64 %indvars.iv244.ph, %i.cv
  br i1 %i.cw, label %._crit_edge193, label %scalar.ph391

scalar.ph391:                                     ; preds = %scalar.ph391.prol.loopexit, %scalar.ph391
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %scalar.ph391 ], [ %indvars.iv244.unr, %scalar.ph391.prol.loopexit ] ; 4 uses
  %gep350 = getelementptr [4 x i8], ptr %invariant.gep349, i64 %indvars.iv244
  %i.cx = load i32, ptr %gep350, align 4, !tbaa !8
  %i.cy = trunc i64 %indvars.iv244 to i32
  %i.cz = xor i32 %i.cy, -1
  %.reass = add i32 %invariant.op, %i.cz
  %i.da = sext i32 %.reass to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.da
  store i32 %i.cx, ptr %i.db, align 4, !tbaa !8
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %gep350.1 = getelementptr [4 x i8], ptr %invariant.gep349, i64 %indvars.iv.next245
  %i.dc = load i32, ptr %gep350.1, align 4, !tbaa !8
  %i.dd = trunc i64 %indvars.iv.next245 to i32
  %i.de = xor i32 %i.dd, -1
  %.reass.1 = add i32 %invariant.op, %i.de
  %i.df = sext i32 %.reass.1 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.df
  store i32 %i.dc, ptr %i.dg, align 4, !tbaa !8
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %exitcond248.not.1 = icmp eq i64 %indvars.iv.next245.1, %wide.trip.count247
  br i1 %exitcond248.not.1, label %._crit_edge193, label %scalar.ph391, !llvm.loop !48

._crit_edge193:                                   ; preds = %scalar.ph391.prol.loopexit, %scalar.ph391, %middle.block401, %bb.o
  %i.dh = sext i32 %i.bm to i64
  %i.di = shl nsw i64 %i.dh, 2
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.di) #11 ; 5 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.r, label %.preheader26.i

.preheader26.i:                                   ; preds = %._crit_edge193
  %i.dl = load i32, ptr @popsize, align 4, !tbaa !8 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 2
  br i1 %i.dm, label %.preheader25.lr.ph.i, label %make_random.exit

.preheader25.lr.ph.i:                             ; preds = %.preheader26.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.pre.i = load i32, ptr @numvars, align 4, !tbaa !8
  br label %.preheader25.i

.preheader25.i:                                   ; preds = %._crit_edge.i, %.preheader25.lr.ph.i
  %i.do = phi i32 [ %i.dl, %.preheader25.lr.ph.i ], [ %i.ep, %._crit_edge.i ]
  %i.dp = phi i32 [ %.pre.i, %.preheader25.lr.ph.i ], [ %i.eq, %._crit_edge.i ] ; 3 uses
  %.02131.i = phi i32 [ 2, %.preheader25.lr.ph.i ], [ %i.er, %._crit_edge.i ] ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %.preheader25.i
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dj, i8 0, i64 %i.ds, i1 false), !tbaa !8
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.q, %.preheader.preheader.i
  %.130.i = phi i32 [ %i.en, %bb.q ], [ 0, %.preheader.preheader.i ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.i
  %i.dt = load i32, ptr @numvars, align 4, !tbaa !8
  %i.du = tail call i64 @Cudd_Random() #10
  %i.dv = sext i32 %i.dt to i64
  %i.dw = srem i64 %i.du, %i.dv                   ; 3 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %bb.q, label %bb.p, !llvm.loop !49

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dw
  %i.ea = trunc nsw i64 %i.dw to i32
  store i32 1, ptr %i.dz, align 4, !tbaa !8
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !32
  %i.ec = add nsw i32 %1, %i.ea
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.eh = load i32, ptr @numvars, align 4, !tbaa !8 ; 3 uses
  %i.ei = add nsw i32 %i.eh, 1
  %i.ej = mul nsw i32 %i.ei, %.02131.i
  %i.ek = add nsw i32 %i.ej, %.130.i
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.el
  store i32 %i.ef, ptr %i.em, align 4, !tbaa !8
  %i.en = add nuw nsw i32 %.130.i, 1              ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.eh
  br i1 %i.eo, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !50

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %.pre34.i = load i32, ptr @popsize, align 4, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader25.i
  %i.ep = phi i32 [ %.pre34.i, %._crit_edge.loopexit.i ], [ %i.do, %.preheader25.i ] ; 3 uses
  %i.eq = phi i32 [ %i.eh, %._crit_edge.loopexit.i ], [ %i.dp, %.preheader25.i ]
  %i.er = add nuw nsw i32 %.02131.i, 1            ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.ep
  br i1 %i.es, label %.preheader25.i, label %make_random.exit, !llvm.loop !51

make_random.exit:                                 ; preds = %._crit_edge.i, %.preheader26.i
  %i.et = phi i32 [ %i.dl, %.preheader26.i ], [ %i.ep, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.dj) #10
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %.lr.ph197, label %find_best.exit

bb.r:                                             ; preds = %._crit_edge193
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.ev, align 8, !tbaa !29
  %i.ew = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not104 = icmp eq ptr %i.ew, null
  br i1 %.not104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.ew) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  tail call void @free(ptr noundef nonnull %i.bj) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  %i.ex = load ptr, ptr @computed, align 8, !tbaa !30
  tail call void @st__free_table(ptr noundef %i.ex) #10
  br label %bb.co

.lr.ph197:                                        ; preds = %make_random.exit, %bb.ai
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %bb.ai ], [ 1, %make_random.exit ] ; 4 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv249 to i32 ; 3 uses
  %i.ez = call fastcc i32 @build_dd(ptr noundef %0, i32 noundef %i.ey, i32 noundef %1, i32 noundef %2)
  %.not126 = icmp eq i32 %i.ez, 0
  br i1 %.not126, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.lr.ph197
  %i.fa = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not127 = icmp eq ptr %i.fa, null
  br i1 %.not127, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.fa) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fb = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not128 = icmp eq ptr %i.fb, null
  br i1 %.not128, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.fb) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.fc = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.fc) #10
  br label %bb.co

bb.z:                                             ; preds = %.lr.ph197
  %i.fd = load ptr, ptr @computed, align 8, !tbaa !30
  %i.fe = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.ff = load i32, ptr @numvars, align 4, !tbaa !8
  %i.fg = add nsw i32 %i.ff, 1
  %i.fh = mul nsw i32 %i.fg, %i.ey
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = call i32 @st__lookup_int(ptr noundef %i.fd, ptr noundef %i.fj, ptr noundef nonnull %i.a) #10
  %.not129 = icmp eq i32 %i.fk, 0
  br i1 %.not129, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr @repeat, align 8, !tbaa !28
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !8
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.fr = load ptr, ptr @computed, align 8, !tbaa !30
  %i.fs = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.ft = load i32, ptr @numvars, align 4, !tbaa !8
  %i.fu = add nsw i32 %i.ft, 1
  %i.fv = mul nsw i32 %i.fu, %i.ey
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.fw
  %i.fy = inttoptr i64 %indvars.iv249 to ptr
  %i.fz = call i32 @st__insert(ptr noundef %i.fr, ptr noundef %i.fx, ptr noundef nonnull %i.fy) #10
  %i.ga = icmp eq i32 %i.fz, -10000
  br i1 %i.ga, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.gb = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not130 = icmp eq ptr %i.gb, null
  br i1 %.not130, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.gb) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.gc = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not131 = icmp eq ptr %i.gc, null
  br i1 %.not131, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.gc) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.gd = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.gd) #10
  br label %bb.co

bb.ah:                                            ; preds = %bb.ab
  %i.ge = load ptr, ptr @repeat, align 8, !tbaa !28
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv249 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aa, %bb.ah
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.gi = load i32, ptr @popsize, align 4, !tbaa !8
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next250, %i.gj
  br i1 %i.gk, label %.lr.ph197, label %find_best.exit, !llvm.loop !52

find_best.exit:                                   ; preds = %bb.ai, %make_random.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !53 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %find_best.exit
  %i.go = load i32, ptr @numvars, align 4, !tbaa !8
  %i.gp = mul nsw i32 %i.go, 3
  %spec.store.select1 = call i32 @llvm.smin.i32(i32 %i.gp, i32 60)
  br label %bb.ak

bb.ak:                                            ; preds = %find_best.exit, %bb.aj
  %storemerge106 = phi i32 [ %spec.store.select1, %bb.aj ], [ %i.gm, %find_best.exit ] ; 2 uses
  store i32 %storemerge106, ptr @cross, align 4
  %i.gq = icmp sgt i32 %storemerge106, 0
  br i1 %i.gq, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph216, %._crit_edge213
  %.064214 = phi i32 [ 0, %.lr.ph216 ], [ %i.ro, %._crit_edge213 ]
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !54 ; 3 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 2                    ; 2 uses
  %i.gv = call noalias ptr @malloc(i64 noundef %i.gu) #11 ; 8 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %PMX.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gx = call noalias ptr @malloc(i64 noundef %i.gu) #11 ; 7 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %PMX.exit.thread.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %12 = load i32, ptr @popsize, align 4, !tbaa !8
  %i.gz = sext i32 %12 to i64
  %i.ha = shl nsw i64 %i.gz, 3
  %i.hb = call noalias ptr @malloc(i64 noundef %i.ha) #11 ; 11 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %PMX.exit.thread.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.he = load i32, ptr @numvars, align 4, !tbaa !8 ; 2 uses
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hf ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hi = sitofp i32 %i.hh to double
  %i.hj = fdiv double 1.000000e+00, %i.hi
  store double %i.hj, ptr %i.hb, align 8, !tbaa !55
  %13 = load i32, ptr @popsize, align 4, !tbaa !8 ; 3 uses
  %i.hk = icmp sgt i32 %13, 1
  br i1 %i.hk, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.hl = add nsw i32 %i.he, 1
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %13 to i64
  %load_initial = load double, ptr %i.hb, align 8 ; 2 uses
  %i.hn = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter445 = and i64 %i.hn, 1
  %i.ho = icmp eq i32 %13, 2
  br i1 %i.ho, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.hn, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i.i.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.i.i.new ], [ %i.ia, %bb.ap ]
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ap ]
  %i.hp = getelementptr [8 x i8], ptr %i.hb, i64 %indvars.iv.i.i
  %i.hq = mul nsw i64 %indvars.iv.i.i, %i.hm
  %gep.i.i = getelementptr [4 x i8], ptr %i.hg, i64 %i.hq
  %i.hr = load i32, ptr %gep.i.i, align 4, !tbaa !8
  %i.hs = sitofp i32 %i.hr to double
  %i.ht = fdiv double 1.000000e+00, %i.hs
  %i.hu = fadd double %store_forwarded, %i.ht     ; 2 uses
  store double %i.hu, ptr %i.hp, align 8, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i.i
  %i.hw = mul nsw i64 %indvars.iv.next.i.i, %i.hm
  %gep.i.i.1 = getelementptr [4 x i8], ptr %i.hg, i64 %i.hw
  %i.hx = load i32, ptr %gep.i.i.1, align 4, !tbaa !8
  %i.hy = sitofp i32 %i.hx to double
  %i.hz = fdiv double 1.000000e+00, %i.hy
  %i.ia = fadd double %i.hu, %i.hz                ; 3 uses
  store double %i.ia, ptr %i.hv, align 8, !tbaa !55
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !56

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.ap
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod446.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.i.i ], [ %i.ia, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod447 = trunc i64 %i.hn to i1
  call void @llvm.assume(i1 %lcmp.mod447)
  %i.ib = getelementptr [8 x i8], ptr %i.hb, i64 %indvars.iv.i.i.epil.init
  %i.ic = mul nsw i64 %indvars.iv.i.i.epil.init, %i.hm
  %gep.i.i.epil = getelementptr [4 x i8], ptr %i.hg, i64 %i.ic
  %i.id = load i32, ptr %gep.i.i.epil, align 4, !tbaa !8
  %i.ie = sitofp i32 %i.id to double
  %i.if = fdiv double 1.000000e+00, %i.ie
  %i.ig = fadd double %store_forwarded.epil.init, %i.if
  store double %i.ig, ptr %i.ib, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ao
  %i.ih = getelementptr [8 x i8], ptr %i.hb, i64 %i.hf
  %i.ii = getelementptr i8, ptr %i.ih, i64 -8
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !55
  %i.ik = call i64 @Cudd_Random() #10
  %i.il = sitofp i64 %i.ik to double
  %i.im = fmul double %i.ij, %i.il
  %i.in = fdiv double %i.im, f0x41DFFFFFEA400000
  %i.io = load i32, ptr @popsize, align 4, !tbaa !8 ; 4 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph34.preheader.i.i, label %._crit_edge35.i.i

.lr.ph34.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %wide.trip.count49.i.i = zext nneg i32 %i.io to i64
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.aq, %.lr.ph34.preheader.i.i
  %indvars.iv46.i.i = phi i64 [ 0, %.lr.ph34.preheader.i.i ], [ %indvars.iv.next47.i.i, %bb.aq ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv46.i.i
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !55
  %i.is = fcmp ugt double %i.in, %i.ir
  br i1 %i.is, label %bb.aq, label %._crit_edge35.loopexit.split.loop.exit.i.i

bb.aq:                                            ; preds = %.lr.ph34.i.i
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 1 ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %indvars.iv.next47.i.i, %wide.trip.count49.i.i
  br i1 %exitcond50.not.i.i, label %._crit_edge35.i.i, label %.lr.ph34.i.i, !llvm.loop !57

._crit_edge35.loopexit.split.loop.exit.i.i:       ; preds = %.lr.ph34.i.i
  %i.it = trunc nuw nsw i64 %indvars.iv46.i.i to i32
  br label %._crit_edge35.i.i

._crit_edge35.i.i:                                ; preds = %bb.aq, %._crit_edge35.loopexit.split.loop.exit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.it, %._crit_edge35.loopexit.split.loop.exit.i.i ], [ %i.io, %bb.aq ] ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge41.i.i, %._crit_edge35.i.i
  %i.iu = phi i32 [ %i.jd, %._crit_edge41.i.i ], [ %i.io, %._crit_edge35.i.i ]
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr [8 x i8], ptr %i.hb, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.iw, i64 -8
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !55
  %i.iz = call i64 @Cudd_Random() #10
  %i.ja = sitofp i64 %i.iz to double
  %i.jb = fmul double %i.iy, %i.ja
  %i.jc = fdiv double %i.jb, f0x41DFFFFFEA400000
  %i.jd = load i32, ptr @popsize, align 4, !tbaa !8 ; 4 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph40.preheader.i.i, label %._crit_edge41.i.i

.lr.ph40.preheader.i.i:                           ; preds = %bb.ar
  %wide.trip.count54.i.i = zext nneg i32 %i.jd to i64
  br label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %bb.as, %.lr.ph40.preheader.i.i
  %indvars.iv51.i.i = phi i64 [ 0, %.lr.ph40.preheader.i.i ], [ %indvars.iv.next52.i.i, %bb.as ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv51.i.i
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !55
  %i.jh = fcmp ugt double %i.jc, %i.jg
  br i1 %i.jh, label %bb.as, label %._crit_edge41.loopexit.split.loop.exit61.i.i

bb.as:                                            ; preds = %.lr.ph40.i.i
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %exitcond55.not.i.i = icmp eq i64 %indvars.iv.next52.i.i, %wide.trip.count54.i.i
  br i1 %exitcond55.not.i.i, label %._crit_edge41.i.i, label %.lr.ph40.i.i, !llvm.loop !58

._crit_edge41.loopexit.split.loop.exit61.i.i:     ; preds = %.lr.ph40.i.i
  %i.ji = trunc nuw nsw i64 %indvars.iv51.i.i to i32
  br label %._crit_edge41.i.i

._crit_edge41.i.i:                                ; preds = %bb.as, %._crit_edge41.loopexit.split.loop.exit61.i.i, %bb.ar
  %.2.lcssa.i.i = phi i32 [ 0, %bb.ar ], [ %i.ji, %._crit_edge41.loopexit.split.loop.exit61.i.i ], [ %i.jd, %bb.as ] ; 2 uses
  %i.jj = icmp eq i32 %.2.lcssa.i.i, %.1.lcssa.i.i
  br i1 %i.jj, label %bb.ar, label %bb.at, !llvm.loop !59

bb.at:                                            ; preds = %._crit_edge41.i.i
  call void @free(ptr noundef nonnull %i.hb) #10
  %i.jk = load i32, ptr @numvars, align 4, !tbaa !8
  %i.jl = call i64 @Cudd_Random() #10
  %i.jm = sext i32 %i.jk to i64
  %i.jn = srem i64 %i.jl, %i.jm                   ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %i.jo = load i32, ptr @numvars, align 4, !tbaa !8
  %i.jp = call i64 @Cudd_Random() #10
  %i.jq = sext i32 %i.jo to i64
  %i.jr = srem i64 %i.jp, %i.jq                   ; 2 uses
  %i.js = icmp eq i64 %i.jn, %i.jr
  br i1 %i.js, label %bb.au, label %.preheader86.i, !llvm.loop !60

.preheader86.i:                                   ; preds = %bb.au
  %i.jt = trunc nsw i64 %i.jn to i32              ; 2 uses
  %i.ju = trunc nsw i64 %i.jr to i32              ; 2 uses
  %i.jv = icmp sgt i32 %i.gs, 0
  br i1 %i.jv, label %.lr.ph.preheader.i, label %.lr.ph100.i

.lr.ph.preheader.i:                               ; preds = %.preheader86.i
  %i.jw = zext nneg i32 %i.gs to i64
  %i.jx = shl nuw nsw i64 %i.jw, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gv, i8 -1, i64 %i.jx, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gx, i8 -1, i64 %i.jx, i1 false), !tbaa !8
  br label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %.lr.ph.preheader.i, %.preheader86.i
  %i.jy = load ptr, ptr @storedd, align 8, !tbaa !28 ; 8 uses
  %i.jz = load i32, ptr @numvars, align 4, !tbaa !8 ; 2 uses
  %i.ka = add nsw i32 %i.jz, 1                    ; 4 uses
  %i.kb = mul nsw i32 %i.ka, %.2.lcssa.i.i        ; 2 uses
  %i.kc = load i32, ptr @popsize, align 4, !tbaa !8 ; 3 uses
  %i.kd = mul nsw i32 %i.kc, %i.ka                ; 2 uses
  %i.ke = mul nsw i32 %i.ka, %.1.lcssa.i.i        ; 2 uses
  %i.kf = add nsw i32 %i.kc, 1
  %i.kg = mul nsw i32 %i.kf, %i.ka                ; 2 uses
  %i.kh = add nsw i32 %i.jz, -1                   ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph100.i
  %.16499.i = phi i32 [ %i.jt, %.lr.ph100.i ], [ %i.lc, %bb.av ] ; 8 uses
  %i.ki = add nsw i32 %.16499.i, %i.kb
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8  ; 2 uses
  %i.km = add nsw i32 %.16499.i, %i.kd
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kn
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !8
  %i.kp = sext i32 %i.kl to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.kp
  store i32 %.16499.i, ptr %i.kq, align 4, !tbaa !8
  %i.kr = add nsw i32 %.16499.i, %i.ke
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8  ; 2 uses
  %i.kv = add nsw i32 %.16499.i, %i.kg
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kw
  store i32 %i.ku, ptr %i.kx, align 4, !tbaa !8
  %i.ky = sext i32 %i.ku to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ky
  store i32 %.16499.i, ptr %i.kz, align 4, !tbaa !8
  %i.la = icmp eq i32 %.16499.i, %i.kh
  %i.lb = add nsw i32 %.16499.i, 1
  %i.lc = select i1 %i.la, i32 0, i32 %i.lb       ; 2 uses
  %.not70.i = icmp eq i32 %i.lc, %i.ju
  br i1 %.not70.i, label %.preheader.i138, label %bb.av, !llvm.loop !61

.preheader.i138:                                  ; preds = %bb.av, %bb.az
  %.2103.i = phi i32 [ %i.mb, %bb.az ], [ %i.ju, %bb.av ] ; 8 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.preheader.i138
  %.0.i = phi i32 [ %i.lj, %bb.aw ], [ %.2103.i, %.preheader.i138 ]
  %i.ld = add nsw i32 %.0.i, %i.ke
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !8  ; 2 uses
  %i.lh = sext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8  ; 2 uses
  %.not72.i = icmp eq i32 %i.lj, -1
  br i1 %.not72.i, label %bb.ax, label %bb.aw, !llvm.loop !62

bb.ax:                                            ; preds = %bb.aw
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.lh
  %i.ll = add nsw i32 %.2103.i, %i.kd
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.lm
  store i32 %i.lg, ptr %i.ln, align 4, !tbaa !8
  store i32 %.2103.i, ptr %i.lk, align 4, !tbaa !8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.1.i = phi i32 [ %.2103.i, %bb.ax ], [ %i.lu, %bb.ay ]
  %i.lo = add nsw i32 %.1.i, %i.kb
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8  ; 2 uses
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8  ; 2 uses
  %.not73.i = icmp eq i32 %i.lu, -1
  br i1 %.not73.i, label %bb.az, label %bb.ay, !llvm.loop !63

bb.az:                                            ; preds = %bb.ay
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.ls
  %i.lw = add nsw i32 %.2103.i, %i.kg
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.lx
  store i32 %i.lr, ptr %i.ly, align 4, !tbaa !8
  store i32 %.2103.i, ptr %i.lv, align 4, !tbaa !8
  %i.lz = icmp eq i32 %.2103.i, %i.kh
  %i.ma = add nsw i32 %.2103.i, 1
  %i.mb = select i1 %i.lz, i32 0, i32 %i.ma       ; 2 uses
  %.not71.i = icmp eq i32 %i.mb, %i.jt
  br i1 %.not71.i, label %.lr.ph212.preheader, label %.preheader.i138, !llvm.loop !64

.lr.ph212.preheader:                              ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.gv) #10
  call void @free(ptr noundef nonnull %i.gx) #10
  br label %.lr.ph212

PMX.exit.thread.critedge:                         ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.gv) #10
  br label %PMX.exit.thread.sink.split

PMX.exit.thread.sink.split:                       ; preds = %bb.am, %PMX.exit.thread.critedge
  %.lcssa339.sink = phi ptr [ %i.gx, %PMX.exit.thread.critedge ], [ %i.gv, %bb.am ]
  call void @free(ptr noundef nonnull %.lcssa339.sink) #10
  br label %PMX.exit.thread

PMX.exit.thread:                                  ; preds = %bb.al, %PMX.exit.thread.sink.split
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.mc, align 8, !tbaa !29
  %i.md = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not110 = icmp eq ptr %i.md, null
  br i1 %.not110, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %PMX.exit.thread
  call void @free(ptr noundef nonnull %i.md) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.bb

bb.bb:                                            ; preds = %PMX.exit.thread, %bb.ba
  %i.me = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not111 = icmp eq ptr %i.me, null
  br i1 %.not111, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.me) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.mf = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.mf) #10
  br label %bb.co

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %bb.ck
  %.4209 = phi i32 [ %i.rm, %bb.ck ], [ %i.kc, %.lr.ph212.preheader ] ; 5 uses
  %i.mg = call fastcc i32 @build_dd(ptr noundef %0, i32 noundef %.4209, i32 noundef %1, i32 noundef %2)
  %.not113 = icmp eq i32 %i.mg, 0
  br i1 %.not113, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.lr.ph212
  %i.mh = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not114 = icmp eq ptr %i.mh, null
  br i1 %.not114, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.mh) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.mi = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not115 = icmp eq ptr %i.mi, null
  br i1 %.not115, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef nonnull %i.mi) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.mj = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.mj) #10
  br label %bb.co

bb.bj:                                            ; preds = %.lr.ph212
  %i.mk = load ptr, ptr @repeat, align 8, !tbaa !28 ; 4 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %indvars.iv15.i = phi i32 [ %indvars.iv.next16.i, %bb.bk ], [ 1, %bb.bj ] ; 3 uses
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140, %bb.bk ], [ 0, %bb.bj ] ; 5 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.i139
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %i.mn = icmp sgt i32 %i.mm, 1
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1
  %indvars.iv.next16.i = add nuw i32 %indvars.iv15.i, 1
  br i1 %i.mn, label %bb.bk, label %.preheader.i141, !llvm.loop !65

.preheader.i141:                                  ; preds = %bb.bk
  %i.mo = trunc nuw nsw i64 %indvars.iv.i139 to i32 ; 6 uses
  %i.mp = load i32, ptr @popsize, align 4, !tbaa !8 ; 4 uses
  %.01011.i = add nuw nsw i32 %i.mo, 1
  %i.mq = icmp slt i32 %.01011.i, %i.mp
  %.pre259.a = load ptr, ptr @storedd, align 8, !tbaa !28 ; 7 uses
  %.pre260.a = load i32, ptr @numvars, align 4, !tbaa !8 ; 7 uses
  %i.mr = add nsw i32 %.pre260.a, 1               ; 6 uses
  br i1 %i.mq, label %.lr.ph.i143, label %largest.exit

.lr.ph.i143:                                      ; preds = %.preheader.i141
  %i.ms = sext i32 %indvars.iv15.i to i64         ; 4 uses
  %i.mt = sext i32 %i.mr to i64                   ; 3 uses
  %i.mu = sext i32 %.pre260.a to i64
  %invariant.gep.i144 = getelementptr [4 x i8], ptr %.pre259.a, i64 %i.mu ; 3 uses
  %i.mv = trunc i64 %indvars.iv.i139 to i32
  %i.mw = trunc i64 %indvars.iv.i139 to i32
  %reass.sub = sub i32 %i.mp, %i.mw
  %i.mx = sub i32 %i.mv, %i.mp
  %i.my = and i32 %i.mx, 1
  %lcmp.mod450.not.not = icmp eq i32 %i.my, 0
  br i1 %lcmp.mod450.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i143
  %i.mz = mul nsw i64 %i.ms, %i.mt
  %gep.i145.prol = getelementptr [4 x i8], ptr %invariant.gep.i144, i64 %i.mz
  %i.na = load i32, ptr %gep.i145.prol, align 4, !tbaa !8
  %i.nb = mul nsw i32 %i.mr, %i.mo
  %i.nc = add nsw i32 %i.nb, %.pre260.a
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !8
  %.not.i146.prol = icmp slt i32 %i.na, %i.nf
  br i1 %.not.i146.prol, label %.prol.loopexit.unr-lcssa, label %bb.bl

bb.bl:                                            ; preds = %.prol.preheader
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ms
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !8
  %i.ni = icmp slt i32 %i.nh, 2
  %spec.select.i147.prol = select i1 %i.ni, i32 %indvars.iv15.i, i32 %i.mo
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.bl, %.prol.preheader
  %.2.i.prol = phi i32 [ %i.mo, %.prol.preheader ], [ %spec.select.i147.prol, %bb.bl ] ; 2 uses
  %indvars.iv.next18.i.prol = add nsw i64 %i.ms, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i143
  %.2.i.lcssa.unr = phi i32 [ poison, %.lr.ph.i143 ], [ %.2.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv17.i.unr = phi i64 [ %i.ms, %.lr.ph.i143 ], [ %indvars.iv.next18.i.prol, %.prol.loopexit.unr-lcssa ]
  %.112.i.unr = phi i32 [ %i.mo, %.lr.ph.i143 ], [ %.2.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.nj = icmp eq i32 %reass.sub, 2
  br i1 %i.nj, label %largest.exit, label %.lr.ph.i143.new

.lr.ph.i143.new:                                  ; preds = %.prol.loopexit, %bb.bp
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i.1, %bb.bp ], [ %indvars.iv17.i.unr, %.prol.loopexit ] ; 5 uses
  %.112.i = phi i32 [ %.2.i.1, %bb.bp ], [ %.112.i.unr, %.prol.loopexit ] ; 3 uses
  %i.nk = mul nsw i64 %indvars.iv17.i, %i.mt
  %gep.i145 = getelementptr [4 x i8], ptr %invariant.gep.i144, i64 %i.nk
  %i.nl = load i32, ptr %gep.i145, align 4, !tbaa !8
  %i.nm = mul nsw i32 %.112.i, %i.mr
  %i.nn = add nsw i32 %i.nm, %.pre260.a
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !8
  %.not.i146 = icmp slt i32 %i.nl, %i.nq
  br i1 %.not.i146, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i143.new
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv17.i
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !8
  %i.nt = icmp slt i32 %i.ns, 2
  %i.nu = trunc nsw i64 %indvars.iv17.i to i32
  %spec.select.i147 = select i1 %i.nt, i32 %i.nu, i32 %.112.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i143.new
  %.2.i = phi i32 [ %.112.i, %.lr.ph.i143.new ], [ %spec.select.i147, %bb.bm ] ; 3 uses
  %indvars.iv.next18.i = add nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.nv = mul nsw i64 %indvars.iv.next18.i, %i.mt
  %gep.i145.1 = getelementptr [4 x i8], ptr %invariant.gep.i144, i64 %i.nv
  %i.nw = load i32, ptr %gep.i145.1, align 4, !tbaa !8
  %i.nx = mul nsw i32 %.2.i, %i.mr
  %i.ny = add nsw i32 %i.nx, %.pre260.a
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !8
  %.not.i146.1 = icmp slt i32 %i.nw, %i.ob
  br i1 %.not.i146.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next18.i
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !8
  %i.oe = icmp slt i32 %i.od, 2
  %i.of = trunc nsw i64 %indvars.iv.next18.i to i32
  %spec.select.i147.1 = select i1 %i.oe, i32 %i.of, i32 %.2.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.2.i.1 = phi i32 [ %.2.i, %bb.bn ], [ %spec.select.i147.1, %bb.bo ] ; 2 uses
  %indvars.iv.next18.i.1 = add nsw i64 %indvars.iv17.i, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next18.i.1 to i32
  %exitcond252.1 = icmp eq i32 %i.mp, %lftr.wideiv.1
  br i1 %exitcond252.1, label %largest.exit, label %.lr.ph.i143.new, !llvm.loop !66

largest.exit:                                     ; preds = %.prol.loopexit, %bb.bp, %.preheader.i141
  %.1.lcssa.i = phi i32 [ %i.mo, %.preheader.i141 ], [ %.2.i.lcssa.unr, %.prol.loopexit ], [ %.2.i.1, %bb.bp ] ; 2 uses
  store i32 %.1.lcssa.i, ptr @large, align 4, !tbaa !8
  %i.og = mul nsw i32 %i.mr, %.4209
  %i.oh = add nsw i32 %i.og, %.pre260.a
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !8
  %i.ol = mul nsw i32 %i.mr, %.1.lcssa.i          ; 2 uses
  %i.om = add nsw i32 %i.ol, %.pre260.a
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !8
  %i.oq = icmp slt i32 %i.ok, %i.op
  br i1 %i.oq, label %bb.bq, label %bb.ck

bb.bq:                                            ; preds = %largest.exit
  %i.or = load ptr, ptr @computed, align 8, !tbaa !30
  %i.os = sext i32 %i.ol to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %.pre259.a, i64 %i.os
  %i.ou = call i32 @st__lookup_int(ptr noundef %i.or, ptr noundef %i.ot, ptr noundef nonnull %i.a) #10
  %.not116 = icmp eq i32 %i.ou, 0
  br i1 %.not116, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ov = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not117 = icmp eq ptr %i.ov, null
  br i1 %.not117, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.ov) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.ow = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not118 = icmp eq ptr %i.ow, null
  br i1 %.not118, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef nonnull %i.ow) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.ox = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.ox) #10
  br label %bb.co

bb.bw:                                            ; preds = %bb.bq
  %i.oy = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %i.oz = load i32, ptr %i.a, align 4, !tbaa !8
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !8
  %i.pd = add nsw i32 %i.pc, -1
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !8
  %i.pe = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !8
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.pj = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.pk = load i32, ptr @numvars, align 4, !tbaa !8
  %i.pl = add nsw i32 %i.pk, 1
  %i.pm = mul nsw i32 %i.pl, %i.pe
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pn
  store ptr %i.po, ptr %i.b, align 8, !tbaa !28
  %i.pp = load ptr, ptr @computed, align 8, !tbaa !30
  %i.pq = call i32 @st__delete(ptr noundef %i.pp, ptr noundef nonnull %i.b, ptr noundef null) #10
  %.not119.not = icmp eq i32 %i.pq, 0
  br i1 %.not119.not, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.pr = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not120 = icmp eq ptr %i.pr, null
  br i1 %.not120, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.pr) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.ps = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not121 = icmp eq ptr %i.ps, null
  br i1 %.not121, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.ps) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.pt = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.pt) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.co

.critedge:                                        ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge, %bb.bw
  %i.pu = load i32, ptr @numvars, align 4, !tbaa !8 ; 2 uses
  %.not122202 = icmp slt i32 %i.pu, 0
  %.pre261 = load ptr, ptr @storedd, align 8, !tbaa !28 ; 3 uses
  %.pre262 = load i32, ptr @large, align 4, !tbaa !8 ; 2 uses
  %.pre265.a = add i32 %i.pu, 1                   ; 5 uses
  br i1 %.not122202, label %.._crit_edge206_crit_edge, label %.lr.ph205

.._crit_edge206_crit_edge:                        ; preds = %bb.cd
  %.pre267.a = mul nsw i32 %.pre262, %.pre265.a
  %.pre269 = sext i32 %.pre267.a to i64
  br label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.cd
  %i.pv = mul nsw i32 %.pre265.a, %.4209
  %i.pw = mul nsw i32 %.pre262, %.pre265.a
  %i.px = sext i32 %i.pv to i64                   ; 2 uses
  %i.py = sext i32 %i.pw to i64                   ; 5 uses
  %wide.trip.count257 = zext nneg i32 %.pre265.a to i64 ; 5 uses
  %invariant.gep354 = getelementptr [4 x i8], ptr %.pre261, i64 %i.px ; 6 uses
  %invariant.gep356 = getelementptr [4 x i8], ptr %.pre261, i64 %i.py ; 6 uses
  %min.iters.check407 = icmp ult i32 %.pre265.a, 8
  br i1 %min.iters.check407, label %scalar.ph406.preheader, label %vector.memcheck404

vector.memcheck404:                               ; preds = %.lr.ph205
  %i.pz = sub nsw i64 %i.py, %i.px
  %i.qa = shl nsw i64 %i.pz, 2
  %i.qb = add nsw i64 %i.qa, -1
  %diff.check405 = icmp ult i64 %i.qb, 31
  br i1 %diff.check405, label %scalar.ph406.preheader, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck404
  %n.vec409 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next414, %vector.body410 ] ; 3 uses
  %i.qc = getelementptr [4 x i8], ptr %invariant.gep354, i64 %index411 ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 16
  %wide.load412 = load <4 x i32>, ptr %i.qc, align 4, !tbaa !8
  %wide.load413 = load <4 x i32>, ptr %i.qd, align 4, !tbaa !8
  %i.qe = getelementptr [4 x i8], ptr %invariant.gep356, i64 %index411 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 16
  store <4 x i32> %wide.load412, ptr %i.qe, align 4, !tbaa !8
  store <4 x i32> %wide.load413, ptr %i.qf, align 4, !tbaa !8
  %index.next414 = add nuw i64 %index411, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next414, %n.vec409
  br i1 %i.qg, label %middle.block415, label %vector.body410, !llvm.loop !67

middle.block415:                                  ; preds = %vector.body410
  %cmp.n416 = icmp eq i64 %n.vec409, %wide.trip.count257
  br i1 %cmp.n416, label %._crit_edge206, label %scalar.ph406.preheader

scalar.ph406.preheader:                           ; preds = %vector.memcheck404, %.lr.ph205, %middle.block415
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck404 ], [ 0, %.lr.ph205 ], [ %n.vec409, %middle.block415 ] ; 3 uses
  %xtraiter452 = and i64 %wide.trip.count257, 3   ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %scalar.ph406.prol.loopexit, label %scalar.ph406.prol

scalar.ph406.prol:                                ; preds = %scalar.ph406.preheader, %scalar.ph406.prol
  %indvars.iv254.prol = phi i64 [ %indvars.iv.next255.prol, %scalar.ph406.prol ], [ %indvars.iv254.ph, %scalar.ph406.preheader ] ; 3 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %scalar.ph406.prol ], [ 0, %scalar.ph406.preheader ]
  %gep355.prol = getelementptr [4 x i8], ptr %invariant.gep354, i64 %indvars.iv254.prol
  %i.qh = load i32, ptr %gep355.prol, align 4, !tbaa !8
  %gep357.prol = getelementptr [4 x i8], ptr %invariant.gep356, i64 %indvars.iv254.prol
  store i32 %i.qh, ptr %gep357.prol, align 4, !tbaa !8
  %indvars.iv.next255.prol = add nuw nsw i64 %indvars.iv254.prol, 1 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %scalar.ph406.prol.loopexit, label %scalar.ph406.prol, !llvm.loop !68

scalar.ph406.prol.loopexit:                       ; preds = %scalar.ph406.prol, %scalar.ph406.preheader
  %indvars.iv254.unr = phi i64 [ %indvars.iv254.ph, %scalar.ph406.preheader ], [ %indvars.iv.next255.prol, %scalar.ph406.prol ]
  %i.qi = sub nsw i64 %indvars.iv254.ph, %wide.trip.count257
  %i.qj = icmp ugt i64 %i.qi, -4
  br i1 %i.qj, label %._crit_edge206, label %scalar.ph406

scalar.ph406:                                     ; preds = %scalar.ph406.prol.loopexit, %scalar.ph406
  %indvars.iv254 = phi i64 [ %indvars.iv.next255.3, %scalar.ph406 ], [ %indvars.iv254.unr, %scalar.ph406.prol.loopexit ] ; 6 uses
  %gep355 = getelementptr [4 x i8], ptr %invariant.gep354, i64 %indvars.iv254
  %i.qk = load i32, ptr %gep355, align 4, !tbaa !8
  %gep357 = getelementptr [4 x i8], ptr %invariant.gep356, i64 %indvars.iv254
  store i32 %i.qk, ptr %gep357, align 4, !tbaa !8
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %gep355.1 = getelementptr [4 x i8], ptr %invariant.gep354, i64 %indvars.iv.next255
  %i.ql = load i32, ptr %gep355.1, align 4, !tbaa !8
  %gep357.1 = getelementptr [4 x i8], ptr %invariant.gep356, i64 %indvars.iv.next255
  store i32 %i.ql, ptr %gep357.1, align 4, !tbaa !8
  %indvars.iv.next255.1 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %gep355.2 = getelementptr [4 x i8], ptr %invariant.gep354, i64 %indvars.iv.next255.1
  %i.qm = load i32, ptr %gep355.2, align 4, !tbaa !8
  %gep357.2 = getelementptr [4 x i8], ptr %invariant.gep356, i64 %indvars.iv.next255.1
  store i32 %i.qm, ptr %gep357.2, align 4, !tbaa !8
  %indvars.iv.next255.2 = add nuw nsw i64 %indvars.iv254, 3 ; 2 uses
  %gep355.3 = getelementptr [4 x i8], ptr %invariant.gep354, i64 %indvars.iv.next255.2
  %i.qn = load i32, ptr %gep355.3, align 4, !tbaa !8
  %gep357.3 = getelementptr [4 x i8], ptr %invariant.gep356, i64 %indvars.iv.next255.2
  store i32 %i.qn, ptr %gep357.3, align 4, !tbaa !8
  %indvars.iv.next255.3 = add nuw nsw i64 %indvars.iv254, 4 ; 2 uses
  %exitcond258.not.3 = icmp eq i64 %indvars.iv.next255.3, %wide.trip.count257
  br i1 %exitcond258.not.3, label %._crit_edge206, label %scalar.ph406, !llvm.loop !69

._crit_edge206:                                   ; preds = %scalar.ph406.prol.loopexit, %scalar.ph406, %middle.block415, %.._crit_edge206_crit_edge
  %.pre-phi270 = phi i64 [ %.pre269, %.._crit_edge206_crit_edge ], [ %i.py, %middle.block415 ], [ %i.py, %scalar.ph406 ], [ %i.py, %scalar.ph406.prol.loopexit ]
  %i.qo = load ptr, ptr @computed, align 8, !tbaa !30
  %i.qp = getelementptr inbounds [4 x i8], ptr %.pre261, i64 %.pre-phi270
  %i.qq = call i32 @st__lookup_int(ptr noundef %i.qo, ptr noundef %i.qp, ptr noundef nonnull %i.a) #10
  %.not123 = icmp eq i32 %i.qq, 0
  br i1 %.not123, label %bb.ce, label %.sink.split

bb.ce:                                            ; preds = %._crit_edge206
  %i.qr = load ptr, ptr @computed, align 8, !tbaa !30
  %i.qs = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.qt = load i32, ptr @large, align 4, !tbaa !8 ; 2 uses
  %i.qu = load i32, ptr @numvars, align 4, !tbaa !8
  %i.qv = add nsw i32 %i.qu, 1
  %i.qw = mul nsw i32 %i.qv, %i.qt
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qx
  %i.qz = sext i32 %i.qt to i64
  %i.ra = inttoptr i64 %i.qz to ptr
  %i.rb = call i32 @st__insert(ptr noundef %i.qr, ptr noundef %i.qy, ptr noundef %i.ra) #10
  %i.rc = icmp eq i32 %i.rb, -10000
  br i1 %i.rc, label %bb.cf, label %.sink.split

bb.cf:                                            ; preds = %bb.ce
  %i.rd = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not124 = icmp eq ptr %i.rd, null
  br i1 %.not124, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef nonnull %i.rd) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.re = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not125 = icmp eq ptr %i.re, null
  br i1 %.not125, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @free(ptr noundef nonnull %i.re) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.rf = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.rf) #10
  br label %bb.co

.sink.split:                                      ; preds = %bb.ce, %._crit_edge206
  %large.sink = phi ptr [ %i.a, %._crit_edge206 ], [ @large, %bb.ce ]
  %i.rg = load ptr, ptr @repeat, align 8, !tbaa !28
  %i.rh = load i32, ptr %large.sink, align 4, !tbaa !8
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !8
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !8
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split, %largest.exit
  %i.rm = add nsw i32 %.4209, 1
  %i.rn = load i32, ptr @popsize, align 4, !tbaa !8
  %.not112 = icmp sgt i32 %.4209, %i.rn
  br i1 %.not112, label %._crit_edge213, label %.lr.ph212, !llvm.loop !70

._crit_edge213:                                   ; preds = %bb.ck
  %i.ro = add nuw nsw i32 %.064214, 1             ; 2 uses
  %i.rp = load i32, ptr @cross, align 4, !tbaa !8
  %i.rq = icmp slt i32 %i.ro, %i.rp
  br i1 %i.rq, label %bb.al, label %._crit_edge217, !llvm.loop !71

._crit_edge217:                                   ; preds = %._crit_edge213, %bb.ak
  %i.rr = call fastcc i32 @find_best()
  %i.rs = load ptr, ptr @computed, align 8, !tbaa !30
  call void @st__free_table(ptr noundef %i.rs) #10
  store ptr null, ptr @computed, align 8, !tbaa !30
  %i.rt = call fastcc i32 @build_dd(ptr noundef %0, i32 noundef %i.rr, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.ru = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %.not107 = icmp eq ptr %i.ru, null
  br i1 %.not107, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge217
  call void @free(ptr noundef nonnull %i.ru) #10
  store ptr null, ptr @storedd, align 8, !tbaa !28
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge217, %bb.cl
  %i.rv = load ptr, ptr @repeat, align 8, !tbaa !28 ; 2 uses
  %.not108 = icmp eq ptr %i.rv, null
  br i1 %.not108, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.rv) #10
  store ptr null, ptr @repeat, align 8, !tbaa !28
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cc, %bb.i, %bb.h, %bb.e, %bb.a, %bb.cj, %bb.bv, %bb.bi, %bb.bd, %bb.ag, %bb.y, %bb.t, %bb.n, %bb.c
  %.5 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.n ], [ 0, %bb.ag ], [ 0, %bb.y ], [ 0, %bb.cj ], [ 0, %bb.cc ], [ 0, %bb.bv ], [ 0, %bb.bi ], [ 0, %bb.bd ], [ 0, %bb.h ], [ 0, %bb.t ], [ 0, %bb.i ], [ %i.rt, %bb.cm ], [ %i.rt, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cuddSifting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @st__init_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @array_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr @numvars, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, -2147483648) i32 @array_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = load i32, ptr @numvars, align 4, !tbaa !8 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %i.a, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0910 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = mul nsw i32 %.0910, 997
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = mul nsw i32 %i.g, 997
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = add nsw i32 %i.k, %i.h
  %i.m = mul nsw i32 %i.l, 997
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = add nsw i32 %i.p, %i.m
  %i.r = mul nsw i32 %i.q, 997
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = add nsw i32 %i.u, %i.r                   ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !73

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0910.epil = phi i32 [ %.0910.epil.init, %.lr.ph.epil.preheader ], [ %i.z, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.w = mul nsw i32 %.0910.epil, 997
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = add nsw i32 %i.y, %i.w                   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil ]
  %i.aa = tail call i32 @llvm.abs.i32(i32 %.lcssa, i1 true)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ab = srem i32 %.09.lcssa, %1
  ret i32 %i.ab
}

declare i32 @st__insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @st__free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @build_dd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load ptr, ptr @computed, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.d = load i32, ptr @numvars, align 4, !tbaa !8
  %i.e = add nsw i32 %i.d, 1
  %i.f = mul nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  %i.i = call i32 @st__lookup_int(ptr noundef nonnull %i.b, ptr noundef %i.h, ptr noundef nonnull %i.a) #10
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @storedd, align 8, !tbaa !28 ; 2 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !8
  %i.l = load i32, ptr @numvars, align 4, !tbaa !8 ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.k
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = mul nsw i32 %i.m, %1
  %i.t = add nsw i32 %i.s, %i.l
  br label %sift_up.exit.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.v = load i32, ptr @numvars, align 4, !tbaa !8 ; 3 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = mul nsw i32 %i.y, 20
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ae = add nuw nsw i32 %.039, 1                ; 2 uses
  %i.af = load i32, ptr @numvars, align 4, !tbaa !8 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge, !llvm.loop !75

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ah = phi i32 [ %i.v, %.lr.ph ], [ %i.af, %bb.e ]
  %.039 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ai = load ptr, ptr @storedd, align 8, !tbaa !28
  %i.aj = add nsw i32 %i.ah, 1
  %i.ak = mul nsw i32 %i.aj, %1
  %i.al = add nsw i32 %i.ak, %.039
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 2 uses
  %i.at = add nsw i32 %.039, %2                   ; 2 uses
  %i.au = call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.as) #10 ; 2 uses
  %.not13.i = icmp slt i32 %i.au, %i.at
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.015.i = phi i32 [ %i.ax, %bb.g ], [ %i.au, %bb.f ] ; 3 uses
  %.01214.i = phi i32 [ %.015.i, %bb.g ], [ %i.as, %bb.f ]
  %i.av = call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i, i32 noundef %.01214.i) #10
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %sift_up.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ax = call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i) #10 ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %i.at
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !77

.loopexit:                                        ; preds = %bb.g, %bb.f
  %i.ay = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.az = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = icmp sgt i32 %i.ba, %i.z
  br i1 %i.bb, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.d
  %i.bc = call i32 @cuddSifting(ptr noundef %0, i32 noundef %2, i32 noundef %3) #10
  %.not36 = icmp eq i32 %i.bc, 0
  br i1 %.not36, label %sift_up.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.bd = load i32, ptr @numvars, align 4, !tbaa !8 ; 6 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %.pre = load ptr, ptr @storedd, align 8, !tbaa !28 ; 3 uses
  %.pre58 = ptrtoaddr ptr %.pre to i64
  br i1 %i.be, label %.lr.ph42, label %.preheader.._crit_edge43_crit_edge

.preheader.._crit_edge43_crit_edge:               ; preds = %.preheader
  %.pre46 = add nsw i32 %i.bd, 1
  %.pre47 = mul nsw i32 %.pre46, %1
  br label %._crit_edge43

.lr.ph42:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32 ; 2 uses
  %i.bh = add nuw nsw i32 %i.bd, 1
  %i.bi = mul nsw i32 %i.bh, %1                   ; 4 uses
  %i.bj = sext i32 %2 to i64                      ; 2 uses
  %i.bk = sext i32 %i.bi to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bg, i64 %i.bj ; 6 uses
  %invariant.gep56 = getelementptr [4 x i8], ptr %.pre, i64 %i.bk ; 6 uses
  %min.iters.check = icmp ult i32 %i.bd, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph42
  %i.bl = ptrtoaddr ptr %i.bg to i64
  %i.bm = shl nsw i64 %i.bk, 2
  %i.bn = add i64 %i.bm, %.pre58
  %i.bo = shl nsw i64 %i.bj, 2
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = sub i64 %i.bp, %i.bn
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !8
  %wide.load59 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8
  %i.bt = getelementptr [4 x i8], ptr %invariant.gep56, i64 %index ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !8
  store <4 x i32> %wide.load59, ptr %i.bu, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph42 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bw = load i32, ptr %gep.prol, align 4, !tbaa !8
  %gep57.prol = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv.prol
  store i32 %i.bw, ptr %gep57.prol, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge43, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bz = load i32, ptr %gep, align 4, !tbaa !8
  %gep57 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv
  store i32 %i.bz, ptr %gep57, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ca = load i32, ptr %gep.1, align 4, !tbaa !8
  %gep57.1 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv.next
  store i32 %i.ca, ptr %gep57.1, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.cb = load i32, ptr %gep.2, align 4, !tbaa !8
  %gep57.2 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv.next.1
  store i32 %i.cb, ptr %gep57.2, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.cc = load i32, ptr %gep.3, align 4, !tbaa !8
  %gep57.3 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv.next.2
  store i32 %i.cc, ptr %gep57.3, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge43, label %scalar.ph, !llvm.loop !80

._crit_edge43:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.._crit_edge43_crit_edge
  %.pre-phi48 = phi i32 [ %.pre47, %.preheader.._crit_edge43_crit_edge ], [ %i.bi, %middle.block ], [ %i.bi, %scalar.ph ], [ %i.bi, %scalar.ph.prol.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !41
  %i.ch = sub i32 %i.ce, %i.cg
  %i.ci = add nsw i32 %.pre-phi48, %i.bd
  br label %sift_up.exit.sink.split

sift_up.exit.sink.split:                          ; preds = %bb.c, %._crit_edge43
  %.sink62 = phi i32 [ %i.ci, %._crit_edge43 ], [ %i.t, %bb.c ]
  %.pre.sink = phi ptr [ %.pre, %._crit_edge43 ], [ %i.j, %bb.c ]
  %.sink = phi i32 [ %i.ch, %._crit_edge43 ], [ %i.r, %bb.c ]
  %i.cj = sext i32 %.sink62 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.pre.sink, i64 %i.cj
  store i32 %.sink, ptr %i.ck, align 4, !tbaa !8
  br label %sift_up.exit

sift_up.exit:                                     ; preds = %.lr.ph.i, %sift_up.exit.sink.split, %._crit_edge
  %.029 = phi i32 [ 0, %._crit_edge ], [ 1, %sift_up.exit.sink.split ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.029
}

declare i32 @st__lookup_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @find_best() unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @popsize, align 4, !tbaa !8 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @storedd, align 8, !tbaa !28 ; 4 uses
  %i.d = load i32, ptr @numvars, align 4, !tbaa !8 ; 5 uses
  %i.e = add nsw i32 %i.d, 1                      ; 4 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.c, i64 %i.g ; 3 uses
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %i.a, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.08 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.j = mul nsw i64 %indvars.iv, %i.f
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.j
  %i.k = load i32, ptr %gep, align 4, !tbaa !8
  %i.l = mul nsw i32 %i.e, %.08
  %i.m = add nsw i32 %i.l, %i.d
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = icmp slt i32 %i.k, %i.p
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.q, i32 %i.r, i32 %.08 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = mul nsw i64 %indvars.iv.next, %i.f
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.s
  %i.t = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.u = mul nsw i32 %i.e, %spec.select
  %i.v = add nsw i32 %i.u, %i.d
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = icmp slt i32 %i.t, %i.y
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.z, i32 %i.aa, i32 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.08.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ab = mul nsw i64 %indvars.iv.epil.init, %i.f
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ab
  %i.ac = load i32, ptr %gep.epil, align 4, !tbaa !8
  %i.ad = mul nsw i32 %i.e, %.08.epil.init
  %i.ae = add nsw i32 %i.ad, %i.d
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ac, %i.ah
  %i.aj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.ai, i32 %i.aj, i32 %.08.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  ret i32 %.0.lcssa
}

declare i32 @st__delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @Cudd_Random() local_unnamed_addr #2

declare i32 @cuddNextLow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddSwapInPlace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 560}
!10 = !{!"DdManager", !11, i64 0, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !15, i64 88, !5, i64 96, !5, i64 100, !16, i64 104, !16, i64 112, !16, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !17, i64 152, !17, i64 160, !18, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !16, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !19, i64 280, !14, i64 288, !14, i64 296, !16, i64 304, !5, i64 312, !21, i64 320, !21, i64 328, !21, i64 336, !21, i64 344, !19, i64 352, !21, i64 360, !19, i64 368, !5, i64 376, !22, i64 384, !22, i64 392, !19, i64 400, !12, i64 408, !23, i64 416, !19, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !16, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !16, i64 472, !16, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !24, i64 528, !24, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !25, i64 568, !23, i64 576, !26, i64 584, !26, i64 592, !26, i64 600, !26, i64 608, !27, i64 616, !27, i64 624, !5, i64 632, !14, i64 640, !14, i64 648, !14, i64 656, !5, i64 664, !14, i64 672, !14, i64 680, !16, i64 688, !16, i64 696, !16, i64 704, !16, i64 712, !16, i64 720, !16, i64 728, !5, i64 736, !12, i64 744, !12, i64 752, !14, i64 760}
!11 = !{!"DdNode", !5, i64 0, !5, i64 4, !12, i64 8, !6, i64 16, !14, i64 32}
!12 = !{!"p1 _ZTS6DdNode", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS7DdCache", !13, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"p1 _ZTS10DdSubtable", !13, i64 0}
!18 = !{!"DdSubtable", !19, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!19 = !{!"p2 _ZTS6DdNode", !20, i64 0}
!20 = !{!"any p2 pointer", !13, i64 0}
!21 = !{!"p1 int", !13, i64 0}
!22 = !{!"p1 long", !13, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"p1 _ZTS7MtrNode", !13, i64 0}
!25 = !{!"p1 _ZTS12DdLocalCache", !13, i64 0}
!26 = !{!"p1 _ZTS6DdHook", !13, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!28 = !{!21, !21, i64 0}
!29 = !{!10, !5, i64 632}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS9st__table", !13, i64 0}
!32 = !{!10, !21, i64 336}
!33 = distinct !{!33, !34, !35, !36}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !34, !35}
!40 = !{!10, !5, i64 228}
!41 = !{!10, !5, i64 312}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !34, !35, !36}
!48 = distinct !{!48, !34, !35}
!49 = distinct !{!49, !34}
!50 = distinct !{!50, !34}
!51 = distinct !{!51, !34}
!52 = distinct !{!52, !34}
!53 = !{!10, !5, i64 564}
!54 = !{!10, !5, i64 136}
!55 = !{!16, !16, i64 0}
!56 = distinct !{!56, !34}
!57 = distinct !{!57, !34}
!58 = distinct !{!58, !34}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
!61 = distinct !{!61, !34}
!62 = distinct !{!62, !34}
!63 = distinct !{!63, !34}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = distinct !{!67, !34, !35, !36}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !34, !35}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !34}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !34}
!76 = !{!10, !21, i64 320}
!77 = distinct !{!77, !34}
!78 = distinct !{!78, !34, !35, !36}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !34, !35}
!81 = distinct !{!81, !34}
end_hunk_0
