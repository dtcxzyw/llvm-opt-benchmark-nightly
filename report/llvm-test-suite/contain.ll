inline.NumInlined: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_contain(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.h, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021.i, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021.i, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef nonnull @descend) #10
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %rm_contain.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %.01518.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.01518.i, align 8, !tbaa !15
  %.not1619.i = icmp eq ptr %i.ac, null
  br i1 %.not1619.i, label %rm_equal.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.preheader.i, %bb.c
  %.01522.i = phi ptr [ %.015.i, %bb.c ], [ %.01518.i, %.preheader.i ] ; 4 uses
  %.021.i8 = phi ptr [ %.1.i, %bb.c ], [ %i.f, %.preheader.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.01522.i, %bb.c ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @descend(ptr noundef nonnull %.01522.i, ptr noundef nonnull %.pn20.i) #10, !inline_history !16
  %.not17.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i7
  %i.ae = load ptr, ptr %.pn20.i, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.021.i8, i64 8
  store ptr %i.ae, ptr %.021.i8, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i7
  %.1.i = phi ptr [ %i.af, %bb.b ], [ %.021.i8, %.lr.ph.i7 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %.015.i, align 8, !tbaa !15
  %.not16.i = icmp eq ptr %i.ag, null
  br i1 %.not16.i, label %._crit_edge.loopexit.i9, label %.lr.ph.i7

._crit_edge.loopexit.i9:                          ; preds = %bb.c
  %.pre.i10 = load ptr, ptr %.01522.i, align 8, !tbaa !15
  br label %rm_equal.exit

rm_equal.exit:                                    ; preds = %.preheader.i, %._crit_edge.loopexit.i9
  %i.ah = phi ptr [ %i.ab, %.preheader.i ], [ %.pre.i10, %._crit_edge.loopexit.i9 ]
  %.0.lcssa.i = phi ptr [ %i.f, %.preheader.i ], [ %.1.i, %._crit_edge.loopexit.i9 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store ptr %i.ah, ptr %.0.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not41.i = icmp eq ptr %.pr, null
  br i1 %.not41.i, label %rm_contain.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %rm_equal.exit, %.loopexit.i
  %i.aj = phi ptr [ %i.bb, %.loopexit.i ], [ %.pr, %rm_equal.exit ] ; 3 uses
  %.pn.i = phi ptr [ %i.ak, %.loopexit.i ], [ %i.f, %rm_equal.exit ]
  %.02444.i = phi i32 [ %i.am, %.loopexit.i ], [ -1, %rm_equal.exit ]
  %.02643.i = phi ptr [ %.127.i, %.loopexit.i ], [ %i.f, %rm_equal.exit ] ; 4 uses
  %.03042.i = phi ptr [ %spec.select.i, %.loopexit.i ], [ undef, %rm_equal.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.am = lshr i32 %i.al, 16                      ; 2 uses
  %.not36.i = icmp eq i32 %i.am, %.02444.i
  %spec.select.i = select i1 %.not36.i, ptr %.03042.i, ptr %.02643.i ; 2 uses
  %i.an = and i32 %i.al, 1023                     ; 2 uses
  %.not46.i = icmp eq i32 %i.an, 0
  %i.ao = sext i1 %.not46.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i11
  %.029.i = phi ptr [ %i.f, %.lr.ph.i11 ], [ %i.ap, %bb.h ] ; 3 uses
  %.not37.i = icmp eq ptr %.029.i, %spec.select.i
  br i1 %.not37.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.aq = load ptr, ptr %.029.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.023.i = phi i32 [ %i.an, %bb.e ], [ %i.ay, %bb.g ] ; 4 uses
  %i.ar = zext nneg i32 %.023.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %i.at, %i.aw
  %.not38.i = icmp eq i32 %i.ax, 0
  br i1 %.not38.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = add nsw i32 %.023.i, -1
  %i.az = icmp sgt i32 %.023.i, 1
  br i1 %i.az, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i12 = phi i32 [ %.023.i, %bb.f ], [ %i.ao, %bb.g ]
  %.not39.i = icmp eq i32 %.1.i12, 0
  br i1 %.not39.i, label %.loopexit.i, label %bb.d

bb.i:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02643.i, i64 8
  store ptr %i.aj, ptr %.02643.i, align 8, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %bb.i
  %.127.i = phi ptr [ %i.ba, %bb.i ], [ %.02643.i, %bb.h ] ; 2 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bb, null
  br i1 %.not.i13, label %rm_contain.exit, label %.lr.ph.i11

rm_contain.exit:                                  ; preds = %.loopexit.i, %sf_sort.exit, %rm_equal.exit
  %.026.lcssa.i = phi ptr [ %i.f, %rm_equal.exit ], [ %i.f, %sf_sort.exit ], [ %.127.i, %.loopexit.i ] ; 2 uses
  %i.bc = ptrtoint ptr %i.f to i64
  store ptr null, ptr %.026.lcssa.i, align 8, !tbaa !15
  %i.bd = ptrtoint ptr %.026.lcssa.i to i64
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = lshr exact i64 %i.be, 3
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bj = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.bg, i32 noundef %i.bi) #10 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.bg, ptr %i.bk, align 4, !tbaa !8
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not23.i = icmp eq ptr %i.bl, null
  br i1 %.not23.i, label %sf_unlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %rm_contain.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.loopexit, %.lr.ph.preheader.i
  %i.bo = phi ptr [ %i.cz, %.loopexit ], [ %i.bl, %.lr.ph.preheader.i ] ; 8 uses
  %.pn.i16 = phi ptr [ %i.cv, %.loopexit ], [ %i.f, %.lr.ph.preheader.i ]
  %.01824.i = phi ptr [ %i.cy, %.loopexit ], [ %i.bn, %.lr.ph.preheader.i ] ; 8 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = and i32 %i.bp, 1023                     ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64              ; 4 uses
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bq, 7
  %.01824.i24 = ptrtoaddr ptr %.01824.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64
  %i.bu = sub i64 %.01824.i24, %i.bt
  %diff.check = icmp ugt i64 %i.bu, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i15
  %n.vec = and i64 %i.bs, 2040                    ; 3 uses
  %i.bv = sub nsw i64 %i.br, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = sub i64 %i.br, %index                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -12
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -28
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !4
  %wide.load25 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -28
  store <4 x i32> %wide.load, ptr %i.cb, align 4, !tbaa !4
  store <4 x i32> %wide.load25, ptr %i.cc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i15, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.br, %.lr.ph.i15 ], [ %i.bv, %middle.block ] ; 4 uses
  %i.ce = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.ce, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.prol
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i.prol
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ci = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.ci, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.1
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.1
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.2
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.2
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not22.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not22.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn.i16, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.bj, align 8, !tbaa !14
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.01824.i, i64 %i.cx
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !15 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cz, null
  br i1 %.not.i17, label %sf_unlist.exit, label %.lr.ph.i15

sf_unlist.exit:                                   ; preds = %.loopexit, %rm_contain.exit
  tail call void @free(ptr noundef nonnull %i.f) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  ret ptr %i.bj
}

declare i32 @descend(...) #1

declare void @sf_free(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_rev_contain(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.h, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021.i, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021.i, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef nonnull @ascend) #10
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %rm_rev_contain.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %.01518.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.01518.i, align 8, !tbaa !15
  %.not1619.i = icmp eq ptr %i.ac, null
  br i1 %.not1619.i, label %rm_equal.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.preheader.i, %bb.c
  %.01522.i = phi ptr [ %.015.i, %bb.c ], [ %.01518.i, %.preheader.i ] ; 4 uses
  %.021.i8 = phi ptr [ %.1.i, %bb.c ], [ %i.f, %.preheader.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.01522.i, %bb.c ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @ascend(ptr noundef nonnull %.01522.i, ptr noundef nonnull %.pn20.i) #10, !inline_history !16
  %.not17.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i7
  %i.ae = load ptr, ptr %.pn20.i, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.021.i8, i64 8
  store ptr %i.ae, ptr %.021.i8, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i7
  %.1.i = phi ptr [ %i.af, %bb.b ], [ %.021.i8, %.lr.ph.i7 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %.015.i, align 8, !tbaa !15
  %.not16.i = icmp eq ptr %i.ag, null
  br i1 %.not16.i, label %._crit_edge.loopexit.i9, label %.lr.ph.i7

._crit_edge.loopexit.i9:                          ; preds = %bb.c
  %.pre.i10 = load ptr, ptr %.01522.i, align 8, !tbaa !15
  br label %rm_equal.exit

rm_equal.exit:                                    ; preds = %.preheader.i, %._crit_edge.loopexit.i9
  %i.ah = phi ptr [ %i.ab, %.preheader.i ], [ %.pre.i10, %._crit_edge.loopexit.i9 ]
  %.0.lcssa.i = phi ptr [ %i.f, %.preheader.i ], [ %.1.i, %._crit_edge.loopexit.i9 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store ptr %i.ah, ptr %.0.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not41.i = icmp eq ptr %.pr, null
  br i1 %.not41.i, label %rm_rev_contain.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %rm_equal.exit, %.loopexit.i
  %i.aj = phi ptr [ %i.bc, %.loopexit.i ], [ %.pr, %rm_equal.exit ] ; 3 uses
  %.pn.i = phi ptr [ %i.ak, %.loopexit.i ], [ %i.f, %rm_equal.exit ]
  %.02444.i = phi i32 [ %i.am, %.loopexit.i ], [ -1, %rm_equal.exit ]
  %.02643.i = phi ptr [ %.127.i, %.loopexit.i ], [ %i.f, %rm_equal.exit ] ; 4 uses
  %.03042.i = phi ptr [ %spec.select.i, %.loopexit.i ], [ undef, %rm_equal.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.am = lshr i32 %i.al, 16                      ; 2 uses
  %.not36.i = icmp eq i32 %i.am, %.02444.i
  %spec.select.i = select i1 %.not36.i, ptr %.03042.i, ptr %.02643.i ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i11
  %.029.i = phi ptr [ %i.f, %.lr.ph.i11 ], [ %i.an, %bb.h ] ; 3 uses
  %.not37.i = icmp eq ptr %.029.i, %spec.select.i
  br i1 %.not37.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.ao = load ptr, ptr %.029.i, align 8, !tbaa !15 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = and i32 %i.ap, 1023                     ; 2 uses
  %.not46.i = icmp eq i32 %i.aq, 0
  %i.ar = sext i1 %.not46.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.023.i = phi i32 [ %i.aq, %bb.e ], [ %i.az, %bb.g ] ; 4 uses
  %i.as = zext nneg i32 %.023.i to i64            ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = xor i32 %i.aw, -1
  %i.ay = and i32 %i.au, %i.ax
  %.not38.i = icmp eq i32 %i.ay, 0
  br i1 %.not38.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = add nsw i32 %.023.i, -1
  %i.ba = icmp sgt i32 %.023.i, 1
  br i1 %i.ba, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i12 = phi i32 [ %.023.i, %bb.f ], [ %i.ar, %bb.g ]
  %.not39.i = icmp eq i32 %.1.i12, 0
  br i1 %.not39.i, label %.loopexit.i, label %bb.d

bb.i:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.02643.i, i64 8
  store ptr %i.aj, ptr %.02643.i, align 8, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %bb.i
  %.127.i = phi ptr [ %i.bb, %bb.i ], [ %.02643.i, %bb.h ] ; 2 uses
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bc, null
  br i1 %.not.i13, label %rm_rev_contain.exit, label %.lr.ph.i11

rm_rev_contain.exit:                              ; preds = %.loopexit.i, %sf_sort.exit, %rm_equal.exit
  %.026.lcssa.i = phi ptr [ %i.f, %rm_equal.exit ], [ %i.f, %sf_sort.exit ], [ %.127.i, %.loopexit.i ] ; 2 uses
  %i.bd = ptrtoint ptr %i.f to i64
  store ptr null, ptr %.026.lcssa.i, align 8, !tbaa !15
  %i.be = ptrtoint ptr %.026.lcssa.i to i64
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !17
  %i.bk = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.bh, i32 noundef %i.bj) #10 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bh, ptr %i.bl, align 4, !tbaa !8
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not23.i = icmp eq ptr %i.bm, null
  br i1 %.not23.i, label %sf_unlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %rm_rev_contain.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.loopexit, %.lr.ph.preheader.i
  %i.bp = phi ptr [ %i.da, %.loopexit ], [ %i.bm, %.lr.ph.preheader.i ] ; 8 uses
  %.pn.i16 = phi ptr [ %i.cw, %.loopexit ], [ %i.f, %.lr.ph.preheader.i ]
  %.01824.i = phi ptr [ %i.cz, %.loopexit ], [ %i.bo, %.lr.ph.preheader.i ] ; 8 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = and i32 %i.bq, 1023                     ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64              ; 4 uses
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.br, 7
  %.01824.i24 = ptrtoaddr ptr %.01824.i to i64
  %i.bu = ptrtoaddr ptr %i.bp to i64
  %i.bv = sub i64 %.01824.i24, %i.bu
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i15
  %n.vec = and i64 %i.bt, 2040                    ; 3 uses
  %i.bw = sub nsw i64 %i.bs, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = sub i64 %i.bs, %index                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bz, align 4, !tbaa !4
  %wide.load25 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -28
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !4
  store <4 x i32> %wide.load25, ptr %i.cd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i15, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bs, %.lr.ph.i15 ], [ %i.bw, %middle.block ] ; 4 uses
  %i.cf = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.prol
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i.prol
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !25

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cj = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.cj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next.i.1
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.1
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next.i.2
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.2
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not22.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not22.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !26

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn.i16, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.bk, align 8, !tbaa !14
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %.01824.i, i64 %i.cy
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !15 ; 2 uses
  %.not.i17 = icmp eq ptr %i.da, null
  br i1 %.not.i17, label %sf_unlist.exit, label %.lr.ph.i15

sf_unlist.exit:                                   ; preds = %.loopexit, %rm_rev_contain.exit
  tail call void @free(ptr noundef nonnull %i.f) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  ret ptr %i.bk
}

declare i32 @ascend(...) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_ind_contain(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.h, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021.i, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021.i, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef nonnull @descend) #10
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %rm_contain.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %.01518.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.01518.i, align 8, !tbaa !15
  %.not1619.i = icmp eq ptr %i.ac, null
  br i1 %.not1619.i, label %rm_equal.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.preheader.i, %bb.c
  %.01522.i = phi ptr [ %.015.i, %bb.c ], [ %.01518.i, %.preheader.i ] ; 4 uses
  %.021.i10 = phi ptr [ %.1.i, %bb.c ], [ %i.f, %.preheader.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.01522.i, %bb.c ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @descend(ptr noundef nonnull %.01522.i, ptr noundef nonnull %.pn20.i) #10, !inline_history !16
  %.not17.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i9
  %i.ae = load ptr, ptr %.pn20.i, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.021.i10, i64 8
  store ptr %i.ae, ptr %.021.i10, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i9
  %.1.i = phi ptr [ %i.af, %bb.b ], [ %.021.i10, %.lr.ph.i9 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %.015.i, align 8, !tbaa !15
  %.not16.i = icmp eq ptr %i.ag, null
  br i1 %.not16.i, label %._crit_edge.loopexit.i11, label %.lr.ph.i9

._crit_edge.loopexit.i11:                         ; preds = %bb.c
  %.pre.i12 = load ptr, ptr %.01522.i, align 8, !tbaa !15
  br label %rm_equal.exit

rm_equal.exit:                                    ; preds = %.preheader.i, %._crit_edge.loopexit.i11
  %i.ah = phi ptr [ %i.ab, %.preheader.i ], [ %.pre.i12, %._crit_edge.loopexit.i11 ]
  %.0.lcssa.i = phi ptr [ %i.f, %.preheader.i ], [ %.1.i, %._crit_edge.loopexit.i11 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store ptr %i.ah, ptr %.0.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not41.i = icmp eq ptr %.pr, null
  br i1 %.not41.i, label %rm_contain.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %rm_equal.exit, %.loopexit.i
  %i.aj = phi ptr [ %i.bb, %.loopexit.i ], [ %.pr, %rm_equal.exit ] ; 3 uses
  %.pn.i = phi ptr [ %i.ak, %.loopexit.i ], [ %i.f, %rm_equal.exit ]
  %.02444.i = phi i32 [ %i.am, %.loopexit.i ], [ -1, %rm_equal.exit ]
  %.02643.i = phi ptr [ %.127.i, %.loopexit.i ], [ %i.f, %rm_equal.exit ] ; 4 uses
  %.03042.i = phi ptr [ %spec.select.i, %.loopexit.i ], [ undef, %rm_equal.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.am = lshr i32 %i.al, 16                      ; 2 uses
  %.not36.i = icmp eq i32 %i.am, %.02444.i
  %spec.select.i = select i1 %.not36.i, ptr %.03042.i, ptr %.02643.i ; 2 uses
  %i.an = and i32 %i.al, 1023                     ; 2 uses
  %.not46.i = icmp eq i32 %i.an, 0
  %i.ao = sext i1 %.not46.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i13
  %.029.i = phi ptr [ %i.f, %.lr.ph.i13 ], [ %i.ap, %bb.h ] ; 3 uses
  %.not37.i = icmp eq ptr %.029.i, %spec.select.i
  br i1 %.not37.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.aq = load ptr, ptr %.029.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.023.i = phi i32 [ %i.an, %bb.e ], [ %i.ay, %bb.g ] ; 4 uses
  %i.ar = zext nneg i32 %.023.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %i.at, %i.aw
  %.not38.i = icmp eq i32 %i.ax, 0
  br i1 %.not38.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = add nsw i32 %.023.i, -1
  %i.az = icmp sgt i32 %.023.i, 1
  br i1 %i.az, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i14 = phi i32 [ %.023.i, %bb.f ], [ %i.ao, %bb.g ]
  %.not39.i = icmp eq i32 %.1.i14, 0
  br i1 %.not39.i, label %.loopexit.i, label %bb.d

bb.i:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02643.i, i64 8
  store ptr %i.aj, ptr %.02643.i, align 8, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.h, %bb.i
  %.127.i = phi ptr [ %i.ba, %bb.i ], [ %.02643.i, %bb.h ] ; 2 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bb, null
  br i1 %.not.i15, label %rm_contain.exit, label %.lr.ph.i13

rm_contain.exit:                                  ; preds = %.loopexit.i, %sf_sort.exit, %rm_equal.exit
  %.026.lcssa.i = phi ptr [ %i.f, %rm_equal.exit ], [ %i.f, %sf_sort.exit ], [ %.127.i, %.loopexit.i ] ; 2 uses
  %i.bc = ptrtoint ptr %i.f to i64
  store ptr null, ptr %.026.lcssa.i, align 8, !tbaa !15
  %i.bd = ptrtoint ptr %.026.lcssa.i to i64
  %i.be = sub i64 %i.bd, %i.bc                    ; 3 uses
  %i.bf = lshr exact i64 %i.be, 3
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.bk = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.bg, i32 noundef %i.bi) #10 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bg, ptr %i.bl, align 4, !tbaa !8
  %sext = shl i64 %i.be, 29
  %i.bm = ashr i64 %sext, 30
  %i.bn = and i64 %i.bm, -4
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #9 ; 4 uses
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not43.i = icmp eq ptr %i.bp, null
  br i1 %.not43.i, label %.preheader.i20, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %rm_contain.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.bs = ptrtoint ptr %i.bj to i64
  br label %bb.j

.preheader.i20:                                   ; preds = %.loopexit, %rm_contain.exit
  %i.bt = icmp sgt i32 %i.bg, 0
  br i1 %i.bt, label %.lr.ph47.preheader.i, label %._crit_edge.i21

.lr.ph47.preheader.i:                             ; preds = %.preheader.i20
  %i.bu = lshr exact i64 %i.be, 1
  %i.bv = and i64 %i.bu, 8589934588
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.bo, i64 %i.bv, i1 false), !tbaa !4
  br label %._crit_edge.i21

bb.j:                                             ; preds = %.loopexit, %.lr.ph.i17
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next50.i, %.loopexit ] ; 2 uses
  %i.bw = phi ptr [ %i.bp, %.lr.ph.i17 ], [ %i.do, %.loopexit ] ; 9 uses
  %.pn.i18 = phi ptr [ %i.f, %.lr.ph.i17 ], [ %i.dd, %.loopexit ]
  %.03644.i = phi ptr [ %i.br, %.lr.ph.i17 ], [ %i.dn, %.loopexit ] ; 8 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = and i32 %i.bx, 1023                     ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 4 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.by, 7
  %.03644.i28 = ptrtoaddr ptr %.03644.i to i64
  %i.cb = ptrtoaddr ptr %i.bw to i64
  %i.cc = sub i64 %.03644.i28, %i.cb
  %diff.check = icmp ugt i64 %i.cc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.ca, 2040                    ; 3 uses
  %i.cd = sub nsw i64 %i.bz, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = sub i64 %i.bz, %index                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -12
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cg, align 4, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %i.ce ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -28
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !4
  store <4 x i32> %wide.load29, ptr %i.ck, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.j, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bz, %bb.j ], [ %i.cd, %middle.block ] ; 4 uses
  %i.cm = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.cm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.prol
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %indvars.iv.i.prol
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !28

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cq = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.cq, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %indvars.iv.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %indvars.iv.next.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.1
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %indvars.iv.next.i.1
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.2
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.03644.i, i64 %indvars.iv.next.i.2
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not42.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not42.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !29

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn.i18, i64 8 ; 2 uses
  %i.de = ptrtoint ptr %i.bw to i64
  %i.df = sub i64 %i.de, %i.bs
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = load i32, ptr %i.bk, align 8, !tbaa !14
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = sdiv i64 %i.dg, %i.di
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv49.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr inbounds [4 x i8], ptr %.03644.i, i64 %i.di
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !15 ; 2 uses
  %.not.i19 = icmp eq ptr %i.do, null
  br i1 %.not.i19, label %.preheader.i20, label %bb.j

._crit_edge.i21:                                  ; preds = %.lr.ph47.preheader.i, %.preheader.i20
  %.not40.i = icmp eq ptr %i.bo, null
  br i1 %.not40.i, label %sf_ind_unlist.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i21
  tail call void @free(ptr noundef nonnull %i.bo) #10
  br label %sf_ind_unlist.exit

sf_ind_unlist.exit:                               ; preds = %._crit_edge.i21, %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  ret ptr %i.bk
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_dupl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.h, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021.i, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021.i, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef nonnull @descend) #10
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %rm_equal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %.01518.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.01518.i, align 8, !tbaa !15
  %.not1619.i = icmp eq ptr %i.ac, null
  br i1 %.not1619.i, label %._crit_edge.i, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.preheader.i, %bb.c
  %.01522.i = phi ptr [ %.015.i, %bb.c ], [ %.01518.i, %.preheader.i ] ; 4 uses
  %.021.i7 = phi ptr [ %.1.i, %bb.c ], [ %i.f, %.preheader.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.01522.i, %bb.c ], [ %i.f, %.preheader.i ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @descend(ptr noundef nonnull %.01522.i, ptr noundef nonnull %.pn20.i) #10, !inline_history !16
  %.not17.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i6
  %i.ae = load ptr, ptr %.pn20.i, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.021.i7, i64 8
  store ptr %i.ae, ptr %.021.i7, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i6
  %.1.i = phi ptr [ %i.af, %bb.b ], [ %.021.i7, %.lr.ph.i6 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %.015.i, align 8, !tbaa !15
  %.not16.i = icmp eq ptr %i.ag, null
  br i1 %.not16.i, label %._crit_edge.loopexit.i8, label %.lr.ph.i6

._crit_edge.loopexit.i8:                          ; preds = %bb.c
  %.pre.i9 = load ptr, ptr %.01522.i, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i8, %.preheader.i
  %i.ah = phi ptr [ %i.ab, %.preheader.i ], [ %.pre.i9, %._crit_edge.loopexit.i8 ]
  %.0.lcssa.i = phi ptr [ %i.f, %.preheader.i ], [ %.1.i, %._crit_edge.loopexit.i8 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.0.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  br label %rm_equal.exit

rm_equal.exit:                                    ; preds = %sf_sort.exit, %._crit_edge.i
  %.2.i = phi ptr [ %i.ai, %._crit_edge.i ], [ %i.f, %sf_sort.exit ]
  %i.aj = ptrtoint ptr %.2.i to i64
  %i.ak = ptrtoint ptr %i.f to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.aq = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.an, i32 noundef %i.ap) #10 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !8
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not23.i = icmp eq ptr %i.as, null
  br i1 %.not23.i, label %sf_unlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %rm_equal.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.loopexit, %.lr.ph.preheader.i
  %i.av = phi ptr [ %i.cg, %.loopexit ], [ %i.as, %.lr.ph.preheader.i ] ; 8 uses
  %.pn.i = phi ptr [ %i.cc, %.loopexit ], [ %i.f, %.lr.ph.preheader.i ]
  %.01824.i = phi ptr [ %i.cf, %.loopexit ], [ %i.au, %.lr.ph.preheader.i ] ; 8 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = and i32 %i.aw, 1023                     ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64              ; 4 uses
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ax, 7
  %.01824.i14 = ptrtoaddr ptr %.01824.i to i64
  %i.ba = ptrtoaddr ptr %i.av to i64
  %i.bb = sub i64 %.01824.i14, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i10
  %n.vec = and i64 %i.az, 2040                    ; 3 uses
  %i.bc = sub nsw i64 %i.ay, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = sub i64 %i.ay, %index                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -12
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %wide.load15 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %i.bd ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -12
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -28
  store <4 x i32> %wide.load, ptr %i.bi, align 4, !tbaa !4
  store <4 x i32> %wide.load15, ptr %i.bj, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i10, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ay, %.lr.ph.i10 ], [ %i.bc, %middle.block ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.prol
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i.prol
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !31

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bp = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.bp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.1
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.1
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i.2
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not22.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not22.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.aq, align 8, !tbaa !14
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.01824.i, i64 %i.ce
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %.not.i11 = icmp eq ptr %i.cg, null
  br i1 %.not.i11, label %sf_unlist.exit, label %.lr.ph.i10

sf_unlist.exit:                                   ; preds = %.loopexit, %rm_equal.exit
  tail call void @free(ptr noundef nonnull %i.f) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  ret ptr %i.aq
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_union(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8
  %i.j = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.i, label %sf_list.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.q, %bb.b ] ; 2 uses
  %.01314.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01314.i, i64 8 ; 2 uses
  store ptr %.015.i, ptr %.01314.i, align 8, !tbaa !15
  %i.q = getelementptr inbounds [4 x i8], ptr %.015.i, i64 %i.o ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.m
  br i1 %i.r, label %bb.b, label %sf_list.exit

sf_list.exit:                                     ; preds = %bb.b, %bb.a
  %.013.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  store ptr null, ptr %.013.lcssa.i, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #9 ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !8   ; 2 uses
  %i.ab = load i32, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.aa                ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %.idx.i22 = shl nuw nsw i64 %i.ad, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i22
  %i.af = icmp sgt i32 %i.ac, 0
  br i1 %i.af, label %.lr.ph.i24, label %sf_list.exit27

.lr.ph.i24:                                       ; preds = %sf_list.exit
  %i.ag = sext i32 %i.ab to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i24
  %.015.i25 = phi ptr [ %i.z, %.lr.ph.i24 ], [ %i.ai, %bb.c ] ; 2 uses
  %.01314.i26 = phi ptr [ %i.x, %.lr.ph.i24 ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01314.i26, i64 8 ; 2 uses
  store ptr %.015.i25, ptr %.01314.i26, align 8, !tbaa !15
  %i.ai = getelementptr inbounds [4 x i8], ptr %.015.i25, i64 %i.ag ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.ae
  br i1 %i.aj, label %bb.c, label %sf_list.exit27

sf_list.exit27:                                   ; preds = %bb.c, %sf_list.exit
  %.013.lcssa.i23 = phi ptr [ %i.x, %sf_list.exit ], [ %i.ah, %bb.c ]
  store ptr null, ptr %.013.lcssa.i23, align 8, !tbaa !15
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !8
  %. = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.aa)
  %i.al = add nsw i32 %., 1
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #9 ; 5 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not42.i = icmp eq ptr %i.ap, null
  br i1 %.not42.i, label %.preheader.i, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %sf_list.exit27
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !15
  %.not39.i60 = icmp eq ptr %i.aq, null
  br i1 %.not39.i60, label %.lr.ph61.i.preheader, label %.lr.ph

.lr.ph.i28:                                       ; preds = %bb.g
  %i.ar = load ptr, ptr %.135.i, align 8, !tbaa !15
  %.not39.i = icmp eq ptr %i.ar, null
  br i1 %.not39.i, label %.lr.ph61.i.preheader, label %.lr.ph

.lr.ph61.i.preheader:                             ; preds = %.lr.ph.i28, %.lr.ph.i28.preheader
  %.lcssa56 = phi ptr [ %i.ap, %.lr.ph.i28.preheader ], [ %i.bd, %.lr.ph.i28 ]
  %.047.i.lcssa = phi ptr [ %i.ao, %.lr.ph.i28.preheader ], [ %.1.i, %.lr.ph.i28 ]
  %.02646.i.lcssa = phi ptr [ %i.x, %.lr.ph.i28.preheader ], [ %.127.i, %.lr.ph.i28 ]
  %.02845.i.lcssa = phi ptr [ %i.f, %.lr.ph.i28.preheader ], [ %.129.i, %.lr.ph.i28 ]
  %.03144.i.lcssa = phi ptr [ %i.f, %.lr.ph.i28.preheader ], [ %.132.i, %.lr.ph.i28 ]
  %.03443.i.lcssa = phi ptr [ %i.x, %.lr.ph.i28.preheader ], [ %.135.i, %.lr.ph.i28 ]
  br label %.lr.ph61.i

.lr.ph:                                           ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %.03443.i65 = phi ptr [ %.135.i, %.lr.ph.i28 ], [ %i.x, %.lr.ph.i28.preheader ] ; 6 uses
  %.03144.i64 = phi ptr [ %.132.i, %.lr.ph.i28 ], [ %i.f, %.lr.ph.i28.preheader ] ; 7 uses
  %.02845.i63 = phi ptr [ %.129.i, %.lr.ph.i28 ], [ %i.f, %.lr.ph.i28.preheader ] ; 5 uses
  %.02646.i62 = phi ptr [ %.127.i, %.lr.ph.i28 ], [ %i.x, %.lr.ph.i28.preheader ] ; 5 uses
  %.047.i61 = phi ptr [ %.1.i, %.lr.ph.i28 ], [ %i.ao, %.lr.ph.i28.preheader ] ; 5 uses
  %i.as = tail call i32 (ptr, ptr, ...) @descend(ptr noundef nonnull %.03144.i64, ptr noundef nonnull %.03443.i65) #10, !inline_history !33
  switch i32 %i.as, label %bb.g [
    i32 -1, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.03144.i64, i64 8
  %i.au = load ptr, ptr %.03144.i64, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %.02845.i63, i64 8
  store ptr %i.au, ptr %.02845.i63, align 8, !tbaa !15
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.03144.i64, i64 8
  %i.ax = load ptr, ptr %.03144.i64, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %.047.i61, i64 8
  store ptr %i.ax, ptr %.047.i61, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.03443.i65, i64 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.03443.i65, i64 8
  %i.bb = load ptr, ptr %.03443.i65, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %.02646.i62, i64 8
  store ptr %i.bb, ptr %.02646.i62, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph
  %.135.i = phi ptr [ %.03443.i65, %.lr.ph ], [ %.03443.i65, %bb.d ], [ %i.az, %bb.e ], [ %i.ba, %bb.f ] ; 4 uses
  %.132.i = phi ptr [ %.03144.i64, %.lr.ph ], [ %i.at, %bb.d ], [ %i.aw, %bb.e ], [ %.03144.i64, %bb.f ] ; 3 uses
  %.129.i = phi ptr [ %.02845.i63, %.lr.ph ], [ %i.av, %bb.d ], [ %.02845.i63, %bb.e ], [ %.02845.i63, %bb.f ] ; 3 uses
  %.127.i = phi ptr [ %.02646.i62, %.lr.ph ], [ %.02646.i62, %bb.d ], [ %.02646.i62, %bb.e ], [ %i.bc, %bb.f ] ; 3 uses
  %.1.i = phi ptr [ %.047.i61, %.lr.ph ], [ %.047.i61, %bb.d ], [ %i.ay, %bb.e ], [ %.047.i61, %bb.f ] ; 3 uses
  %i.bd = load ptr, ptr %.132.i, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i28

.preheader.i:                                     ; preds = %bb.g, %.lr.ph61.i, %sf_list.exit27
  %.0.lcssa80.i = phi ptr [ %i.ao, %sf_list.exit27 ], [ %.047.i.lcssa, %.lr.ph61.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.026.lcssa79.i = phi ptr [ %i.x, %sf_list.exit27 ], [ %.02646.i.lcssa, %.lr.ph61.i ], [ %.127.i, %bb.g ] ; 2 uses
  %.034.lcssa78.i = phi ptr [ %i.x, %sf_list.exit27 ], [ %.03443.i.lcssa, %.lr.ph61.i ], [ %.135.i, %bb.g ] ; 2 uses
  %.230.lcssa.i = phi ptr [ %i.f, %sf_list.exit27 ], [ %i.bh, %.lr.ph61.i ], [ %.129.i, %bb.g ]
  %i.be = load ptr, ptr %.034.lcssa78.i, align 8, !tbaa !15 ; 2 uses
  %.not4163.i = icmp eq ptr %i.be, null
  br i1 %.not4163.i, label %rm2_equal.exit, label %.lr.ph66.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %i.bf = phi ptr [ %i.bi, %.lr.ph61.i ], [ %.lcssa56, %.lr.ph61.i.preheader ]
  %.23060.i = phi ptr [ %i.bh, %.lr.ph61.i ], [ %.02845.i.lcssa, %.lr.ph61.i.preheader ] ; 2 uses
  %.23359.i = phi ptr [ %i.bg, %.lr.ph61.i ], [ %.03144.i.lcssa, %.lr.ph61.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.23359.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.23060.i, i64 8 ; 2 uses
  store ptr %i.bf, ptr %.23060.i, align 8, !tbaa !15
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 2 uses
  %.not40.i = icmp eq ptr %i.bi, null
  br i1 %.not40.i, label %.preheader.i, label %.lr.ph61.i

.lr.ph66.i:                                       ; preds = %.preheader.i, %.lr.ph66.i
  %i.bj = phi ptr [ %i.bm, %.lr.ph66.i ], [ %i.be, %.preheader.i ]
  %.265.i = phi ptr [ %i.bl, %.lr.ph66.i ], [ %.026.lcssa79.i, %.preheader.i ] ; 2 uses
  %.23664.i = phi ptr [ %i.bk, %.lr.ph66.i ], [ %.034.lcssa78.i, %.preheader.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.23664.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.265.i, i64 8 ; 2 uses
  store ptr %i.bj, ptr %.265.i, align 8, !tbaa !15
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !15 ; 2 uses
  %.not41.i = icmp eq ptr %i.bm, null
  br i1 %.not41.i, label %rm2_equal.exit, label %.lr.ph66.i

rm2_equal.exit:                                   ; preds = %.lr.ph66.i, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.026.lcssa79.i, %.preheader.i ], [ %i.bl, %.lr.ph66.i ]
  store ptr null, ptr %.0.lcssa80.i, align 8, !tbaa !15
  store ptr null, ptr %.2.lcssa.i, align 8, !tbaa !15
  store ptr null, ptr %.230.lcssa.i, align 8, !tbaa !15
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.not31.i = icmp eq ptr %i.bn, null
  br i1 %.not31.i, label %rm2_contain.exit, label %.preheader.i29

.preheader.i29:                                   ; preds = %rm2_equal.exit, %.loopexit.i
  %i.bo = phi ptr [ %i.cj, %.loopexit.i ], [ %i.bn, %rm2_equal.exit ] ; 3 uses
  %.pn.i = phi ptr [ %i.bp, %.loopexit.i ], [ %i.f, %rm2_equal.exit ]
  %.02032.i = phi ptr [ %.121.i, %.loopexit.i ], [ %i.f, %rm2_equal.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.preheader.i29
  %.023.i = phi ptr [ %i.bq, %bb.m ], [ %i.x, %.preheader.i29 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.023.i, i64 8
  %i.br = load ptr, ptr %.023.i, align 8, !tbaa !15 ; 3 uses
  %.not28.i = icmp eq ptr %i.br, null
  br i1 %.not28.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = icmp samesign ugt i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bx = and i32 %i.bu, 1023                     ; 2 uses
  %.not35.i = icmp eq i32 %i.bx, 0
  %i.by = sext i1 %.not35.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.019.i = phi i32 [ %i.bx, %bb.j ], [ %i.cg, %bb.l ] ; 4 uses
  %i.bz = zext nneg i32 %.019.i to i64            ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bz
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = xor i32 %i.cd, -1
  %i.cf = and i32 %i.cb, %i.ce
  %.not29.i = icmp eq i32 %i.cf, 0
  br i1 %.not29.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = add nsw i32 %.019.i, -1
  %i.ch = icmp sgt i32 %.019.i, 1
  br i1 %i.ch, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i31 = phi i32 [ %.019.i, %bb.k ], [ %i.by, %bb.l ]
  %.not30.i = icmp eq i32 %.1.i31, 0
  br i1 %.not30.i, label %.loopexit.i, label %bb.h

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  store ptr %i.bo, ptr %.02032.i, align 8, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.m, %.critedge.i
  %.121.i = phi ptr [ %i.ci, %.critedge.i ], [ %.02032.i, %bb.m ] ; 2 uses
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cj, null
  br i1 %.not.i30, label %rm2_contain.exit, label %.preheader.i29

rm2_contain.exit:                                 ; preds = %.loopexit.i, %rm2_equal.exit
  %.020.lcssa.i = phi ptr [ %i.f, %rm2_equal.exit ], [ %.121.i, %.loopexit.i ] ; 2 uses
  store ptr null, ptr %.020.lcssa.i, align 8, !tbaa !15
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.not31.i32 = icmp eq ptr %i.ck, null
  br i1 %.not31.i32, label %rm2_contain.exit48, label %.preheader.i33

.preheader.i33:                                   ; preds = %rm2_contain.exit, %.loopexit.i39
  %i.cl = phi ptr [ %i.dg, %.loopexit.i39 ], [ %i.ck, %rm2_contain.exit ] ; 3 uses
  %.pn.i34 = phi ptr [ %i.cm, %.loopexit.i39 ], [ %i.x, %rm2_contain.exit ]
  %.02032.i35 = phi ptr [ %.121.i40, %.loopexit.i39 ], [ %i.x, %rm2_contain.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn.i34, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.preheader.i33
  %.023.i36 = phi ptr [ %i.cn, %bb.s ], [ %i.f, %.preheader.i33 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.023.i36, i64 8
  %i.co = load ptr, ptr %.023.i36, align 8, !tbaa !15 ; 3 uses
  %.not28.i37 = icmp eq ptr %i.co, null
  br i1 %.not28.i37, label %.critedge.i38, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = icmp samesign ugt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.p, label %.critedge.i38

bb.p:                                             ; preds = %bb.o
  %i.cu = and i32 %i.cr, 1023                     ; 2 uses
  %.not35.i43 = icmp eq i32 %i.cu, 0
  %i.cv = sext i1 %.not35.i43 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.019.i44 = phi i32 [ %i.cu, %bb.p ], [ %i.dd, %bb.r ] ; 4 uses
  %i.cw = zext nneg i32 %.019.i44 to i64          ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cw
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = xor i32 %i.da, -1
  %i.dc = and i32 %i.cy, %i.db
  %.not29.i45 = icmp eq i32 %i.dc, 0
  br i1 %.not29.i45, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = add nsw i32 %.019.i44, -1
  %i.de = icmp sgt i32 %.019.i44, 1
  br i1 %i.de, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i46 = phi i32 [ %.019.i44, %bb.q ], [ %i.cv, %bb.r ]
  %.not30.i47 = icmp eq i32 %.1.i46, 0
  br i1 %.not30.i47, label %.loopexit.i39, label %bb.n

.critedge.i38:                                    ; preds = %bb.o, %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %.02032.i35, i64 8
  store ptr %i.cl, ptr %.02032.i35, align 8, !tbaa !15
  br label %.loopexit.i39

.loopexit.i39:                                    ; preds = %bb.s, %.critedge.i38
  %.121.i40 = phi ptr [ %i.df, %.critedge.i38 ], [ %.02032.i35, %bb.s ] ; 2 uses
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !15 ; 2 uses
  %.not.i41 = icmp eq ptr %i.dg, null
  br i1 %.not.i41, label %rm2_contain.exit48, label %.preheader.i33

rm2_contain.exit48:                               ; preds = %.loopexit.i39, %rm2_contain.exit
  %.020.lcssa.i42 = phi ptr [ %i.x, %rm2_contain.exit ], [ %.121.i40, %.loopexit.i39 ] ; 2 uses
  %i.dh = ptrtoint ptr %.020.lcssa.i to i64
  %i.di = ptrtoint ptr %i.f to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 3
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = ptrtoint ptr %.0.lcssa80.i to i64
  %i.dn = ptrtoint ptr %i.ao to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 3
  %i.dq = trunc i64 %i.dp to i32
  store ptr null, ptr %.020.lcssa.i42, align 8, !tbaa !15
  %i.dr = ptrtoint ptr %.020.lcssa.i42 to i64
  %i.ds = ptrtoint ptr %i.x to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = lshr exact i64 %i.dt, 3
  %i.dv = trunc i64 %i.du to i32
  %i.dw = add i32 %i.dl, %i.dq
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %i.ea = tail call ptr @sf_merge(ptr noundef nonnull %i.f, ptr noundef nonnull %i.x, ptr noundef %i.ao, i32 noundef %i.dx, i32 noundef %i.dz)
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %1) #10
  ret ptr %i.ea
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @dist_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !34
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.b, ptr noundef %1) #10 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !14
  %i.n = mul nsw i32 %i.m, %i.l                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx.i = shl nuw nsw i64 %i.o, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %sf_sort.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.k, %bb.a ] ; 7 uses
  %.01920.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.s = and i32 %i.r, 65535
  store i32 %i.s, ptr %.021.i, align 4, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021.i) #10
  %i.u = shl i32 %i.t, 16
  %i.v = load i32, ptr %.021.i, align 4, !tbaa !4
  %i.w = or i32 %i.v, %i.u
  store i32 %i.w, ptr %.021.i, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %.01920.i, i64 8 ; 2 uses
  store ptr %.021.i, ptr %.01920.i, align 8, !tbaa !15
  %i.y = load i32, ptr %0, align 8, !tbaa !14
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.021.i, i64 %i.z ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.p
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !8
  br label %sf_sort.exit

sf_sort.exit:                                     ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.ac = phi i32 [ %i.l, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.019.lcssa.i = phi ptr [ %i.i, %bb.a ], [ %i.x, %._crit_edge.loopexit.i ]
  store ptr null, ptr %.019.lcssa.i, align 8, !tbaa !15
  %i.ad = sext i32 %i.ac to i64
  tail call void @qsort(ptr noundef %i.i, i64 noundef %i.ad, i64 noundef 8, ptr noundef nonnull @d1_order) #10
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %d1_rm_equal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sf_sort.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %.not2930.i = icmp eq ptr %i.ag, null
  br i1 %.not2930.i, label %._crit_edge.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 1, %.preheader.i ] ; 2 uses
  %i.ah = phi ptr [ %i.at, %bb.d ], [ %i.af, %.preheader.i ] ; 2 uses
  %.033.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.02731.i = phi i32 [ %.128.i, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.ai = zext nneg i32 %.02731.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ai ; 2 uses
  %i.ak = tail call i32 (ptr, ptr, ...) @d1_order(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah) #10, !inline_history !38
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 3 uses
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i7
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.ao = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.am, ptr noundef %i.am, ptr noundef %i.an) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i7
  %i.ap = add nsw i32 %.033.i, 1
  %i.aq = sext i32 %.033.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aq
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !15
  %i.as = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.128.i = phi i32 [ %.02731.i, %bb.b ], [ %i.as, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %.033.i, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  %.not29.i = icmp eq ptr %i.au, null
  br i1 %.not29.i, label %._crit_edge.loopexit.i8, label %.lr.ph.i7

._crit_edge.loopexit.i8:                          ; preds = %bb.d
  %.phi.trans.insert.i = zext i32 %.128.i to i64
  %.phi.trans.insert36.i = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.phi.trans.insert.i
  %.pre.i9 = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i8, %.preheader.i
  %i.av = phi ptr [ %.pre.i9, %._crit_edge.loopexit.i8 ], [ %i.ae, %.preheader.i ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.loopexit.i8 ], [ 0, %.preheader.i ] ; 2 uses
  %i.aw = add nsw i32 %.0.lcssa.i, 1
  %i.ax = sext i32 %.0.lcssa.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !15
  br label %d1_rm_equal.exit

d1_rm_equal.exit:                                 ; preds = %sf_sort.exit, %._crit_edge.i
  %.2.i = phi i32 [ %i.aw, %._crit_edge.i ], [ 0, %sf_sort.exit ] ; 3 uses
  %i.az = sext i32 %.2.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.2.i, i32 noundef %i.bc) #10 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %.2.i, ptr %i.be, align 4, !tbaa !8
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %.not23.i = icmp eq ptr %i.bf, null
  br i1 %.not23.i, label %sf_unlist.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %d1_rm_equal.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !13
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.loopexit, %.lr.ph.preheader.i
  %i.bi = phi ptr [ %i.ct, %.loopexit ], [ %i.bf, %.lr.ph.preheader.i ] ; 8 uses
  %.pn.i = phi ptr [ %i.cp, %.loopexit ], [ %i.i, %.lr.ph.preheader.i ]
  %.01824.i = phi ptr [ %i.cs, %.loopexit ], [ %i.bh, %.lr.ph.preheader.i ] ; 8 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = and i32 %i.bj, 1023                     ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bk, 7
  %.01824.i16 = ptrtoaddr ptr %.01824.i to i64
  %i.bn = ptrtoaddr ptr %i.bi to i64
  %i.bo = sub i64 %.01824.i16, %i.bn
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i10
  %n.vec = and i64 %i.bm, 2040                    ; 3 uses
  %i.bp = sub nsw i64 %i.bl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = sub i64 %i.bl, %index                   ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4
  %wide.load17 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -12
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -28
  store <4 x i32> %wide.load, ptr %i.bv, align 4, !tbaa !4
  store <4 x i32> %wide.load17, ptr %i.bw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i10, %middle.block
  %indvars.iv.i11.ph = phi i64 [ %i.bl, %.lr.ph.i10 ], [ %i.bp, %middle.block ] ; 4 uses
  %i.by = add nsw i64 %indvars.iv.i11.ph, 1
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i11.prol
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i11.prol
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !40

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.cc = icmp ult i64 %indvars.iv.i11.ph, 3
  br i1 %i.cc, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i11
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.i11
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next.i12 = add nsw i64 %indvars.iv.i11, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i12
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next.i12.1 = add nsw i64 %indvars.iv.i11, -2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i12.1
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i12.1
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !4
  %indvars.iv.next.i12.2 = add nsw i64 %indvars.iv.i11, -3 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i12.2
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.01824.i, i64 %indvars.iv.next.i12.2
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not22.i.3 = icmp eq i64 %indvars.iv.next.i12.2, 0
  br i1 %.not22.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !41
end_hunk_0
begin_hunk_1_@rm2_equal:bb.a
  %.not3999 = icmp eq ptr %i.b, null
  br i1 %.not3999, label %.lr.ph61.preheader, label %.lr.ph105

.lr.ph:                                           ; preds = %bb.e
  %i.c = load ptr, ptr %.135, align 8, !tbaa !15
  %.not39 = icmp eq ptr %i.c, null
  br i1 %.not39, label %.lr.ph61.preheader, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.03443104 = phi ptr [ %.135, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %.03144103 = phi ptr [ %.132, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.02845102 = phi ptr [ %.129, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.02646101 = phi ptr [ %.127, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.047100 = phi ptr [ %.1, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %i.d = tail call i32 (ptr, ptr, ...) %3(ptr noundef nonnull %.03144103, ptr noundef nonnull %.03443104) #10
  switch i32 %i.d, label %bb.e [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph105
  %i.e = getelementptr inbounds nuw i8, ptr %.03144103, i64 8
  %i.f = load ptr, ptr %.03144103, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %.02845102, i64 8
  store ptr %i.f, ptr %.02845102, align 8, !tbaa !15
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph105
  %i.h = getelementptr inbounds nuw i8, ptr %.03144103, i64 8
  %i.i = load ptr, ptr %.03144103, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %.047100, i64 8
  store ptr %i.i, ptr %.047100, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %.03443104, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph105
  %i.l = getelementptr inbounds nuw i8, ptr %.03443104, i64 8
  %i.m = load ptr, ptr %.03443104, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.02646101, i64 8
  store ptr %i.m, ptr %.02646101, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph105
  %.135 = phi ptr [ %.03443104, %.lr.ph105 ], [ %.03443104, %bb.b ], [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %.132 = phi ptr [ %.03144103, %.lr.ph105 ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %.03144103, %bb.d ] ; 3 uses
  %.129 = phi ptr [ %.02845102, %.lr.ph105 ], [ %i.g, %bb.b ], [ %.02845102, %bb.c ], [ %.02845102, %bb.d ] ; 3 uses
  %.127 = phi ptr [ %.02646101, %.lr.ph105 ], [ %.02646101, %bb.b ], [ %.02646101, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %.1 = phi ptr [ %.047100, %.lr.ph105 ], [ %.047100, %bb.b ], [ %i.j, %bb.c ], [ %.047100, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %.132, align 8, !tbaa !15  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph61.preheader:                               ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa97 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.047.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.1, %.lr.ph ]
  %.02646.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.127, %.lr.ph ]
  %.02845.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.129, %.lr.ph ]
  %.03144.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.132, %.lr.ph ]
  %.03443.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %.135, %.lr.ph ]
  br label %.lr.ph61

.preheader:                                       ; preds = %bb.e, %.lr.ph61, %bb.a
  %.0.lcssa80 = phi ptr [ %2, %bb.a ], [ %.047.lcssa, %.lr.ph61 ], [ %.1, %bb.e ] ; 2 uses
  %.026.lcssa79 = phi ptr [ %1, %bb.a ], [ %.02646.lcssa, %.lr.ph61 ], [ %.127, %bb.e ] ; 2 uses
  %.034.lcssa78 = phi ptr [ %1, %bb.a ], [ %.03443.lcssa, %.lr.ph61 ], [ %.135, %bb.e ] ; 2 uses
  %.230.lcssa = phi ptr [ %0, %bb.a ], [ %i.s, %.lr.ph61 ], [ %.129, %bb.e ]
  %i.p = load ptr, ptr %.034.lcssa78, align 8, !tbaa !15 ; 2 uses
  %.not4163 = icmp eq ptr %i.p, null
  br i1 %.not4163, label %._crit_edge, label %.lr.ph66

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %i.q = phi ptr [ %i.t, %.lr.ph61 ], [ %.lcssa97, %.lr.ph61.preheader ]
  %.23060 = phi ptr [ %i.s, %.lr.ph61 ], [ %.02845.lcssa, %.lr.ph61.preheader ] ; 2 uses
  %.23359 = phi ptr [ %i.r, %.lr.ph61 ], [ %.03144.lcssa, %.lr.ph61.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.23359, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.23060, i64 8 ; 2 uses
  store ptr %i.q, ptr %.23060, align 8, !tbaa !15
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %.not40 = icmp eq ptr %i.t, null
  br i1 %.not40, label %.preheader, label %.lr.ph61

.lr.ph66:                                         ; preds = %.preheader, %.lr.ph66
  %i.u = phi ptr [ %i.x, %.lr.ph66 ], [ %i.p, %.preheader ]
  %.265 = phi ptr [ %i.w, %.lr.ph66 ], [ %.026.lcssa79, %.preheader ] ; 2 uses
  %.23664 = phi ptr [ %i.v, %.lr.ph66 ], [ %.034.lcssa78, %.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.23664, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.265, i64 8 ; 2 uses
  store ptr %i.u, ptr %.265, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %.not41 = icmp eq ptr %i.x, null
  br i1 %.not41, label %._crit_edge, label %.lr.ph66

._crit_edge:                                      ; preds = %.lr.ph66, %.preheader
  %.2.lcssa = phi ptr [ %.026.lcssa79, %.preheader ], [ %i.w, %.lr.ph66 ]
  store ptr null, ptr %.0.lcssa80, align 8, !tbaa !15
  store ptr null, ptr %.2.lcssa, align 8, !tbaa !15
  store ptr null, ptr %.230.lcssa, align 8, !tbaa !15
  %i.y = ptrtoint ptr %.0.lcssa80 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @rm2_contain(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit
  %i.b = phi ptr [ %i.w, %.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.pn = phi ptr [ %i.c, %.loopexit ], [ %0, %bb.a ]
  %.02032 = phi ptr [ %.121, %.loopexit ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.023 = phi ptr [ %i.d, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.e = load ptr, ptr %.023, align 8, !tbaa !15  ; 3 uses
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = lshr i32 %i.f, 16
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.i = lshr i32 %i.h, 16
  %i.j = icmp samesign ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, 1023                       ; 2 uses
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = sext i1 %.not35 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.019 = phi i32 [ %i.k, %bb.d ], [ %i.t, %bb.f ] ; 4 uses
  %i.m = zext nneg i32 %.019 to i64               ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %i.o, %i.r
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.019, -1
  %i.u = icmp sgt i32 %.019, 1
  br i1 %i.u, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %.019, %bb.e ], [ %i.l, %bb.f ]
  %.not30 = icmp eq i32 %.1, 0
  br i1 %.not30, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.02032, i64 8
  store ptr %i.b, ptr %.02032, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.critedge
  %.121 = phi ptr [ %i.v, %.critedge ], [ %.02032, %bb.g ] ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.020.lcssa = phi ptr [ %0, %bb.a ], [ %.121, %.loopexit ] ; 2 uses
  store ptr null, ptr %.020.lcssa, align 8, !tbaa !15
  %i.x = ptrtoint ptr %.020.lcssa to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = trunc i64 %i.aa to i32
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_sort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi ptr [ %i.x, %.lr.ph ], [ %i.h, %bb.a ] ; 7 uses
  %.01920 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = load i32, ptr %.021, align 4, !tbaa !4
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.021, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.021) #10
  %i.r = shl i32 %i.q, 16
  %i.s = load i32, ptr %.021, align 4, !tbaa !4
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %.021, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.01920, i64 8 ; 2 uses
  store ptr %.021, ptr %.01920, align 8, !tbaa !15
  %i.v = load i32, ptr %0, align 8, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.021, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.m
  br i1 %i.y, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.z = phi i32 [ %i.i, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.019.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  store ptr null, ptr %.019.lcssa, align 8, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.aa, i64 noundef 8, ptr noundef %1) #10
  ret ptr %i.f
}

declare i32 @set_ord(...) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8
  %i.j = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi ptr [ %i.h, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.01314 = phi ptr [ %i.f, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01314, i64 8 ; 2 uses
  store ptr %.015, ptr %.01314, align 8, !tbaa !15
  %i.q = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.o ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.m
  br i1 %i.r, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.013.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  store ptr null, ptr %.013.lcssa, align 8, !tbaa !15
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_unlist(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %1, i32 noundef %2) #10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit29
  %i.f = phi ptr [ %i.aq, %.loopexit29 ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %.pn = phi ptr [ %i.am, %.loopexit29 ], [ %0, %.lr.ph.preheader ]
  %.01824 = phi ptr [ %i.ap, %.loopexit29 ], [ %i.e, %.lr.ph.preheader ] ; 8 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.h, 7
  %.0182427 = ptrtoaddr ptr %.01824 to i64
  %i.k = ptrtoaddr ptr %i.f to i64
  %i.l = sub i64 %.0182427, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.j, 2040                     ; 3 uses
  %i.m = sub nsw i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = sub i64 %i.i, %index                     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -12
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -28
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !4
  store <4 x i32> %wide.load28, ptr %i.t, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit29, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.i, %.lr.ph ], [ %i.m, %middle.block ] ; 4 uses
  %i.v = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %indvars.iv.prol
  store i32 %i.x, ptr %i.y, align 4, !tbaa !4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !44

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.z = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.z, label %.loopexit29, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %indvars.iv.next.1
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.01824, i64 %indvars.iv.next.2
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not22.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not22.3, label %.loopexit29, label %scalar.ph, !llvm.loop !45

.loopexit29:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.am = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01824, i64 %i.ao
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.loopexit29, %bb.a
  tail call void @free(ptr noundef nonnull %0) #10
  ret ptr %i.a
}

declare ptr @sf_new(...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @sf_ind_unlist(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %1, i32 noundef %2) #10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #9 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not43 = icmp eq ptr %i.f, null
  br i1 %.not43, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = ptrtoint ptr %4 to i64
  br label %bb.b

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %.preheader
  %i.k = zext nneg i32 %1 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %i.e, i64 %i.l, i1 false), !tbaa !4
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv49 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next50, %.loopexit ] ; 2 uses
  %i.m = phi ptr [ %i.f, %.lr.ph ], [ %i.be, %.loopexit ] ; 9 uses
  %.pn = phi ptr [ %0, %.lr.ph ], [ %i.at, %.loopexit ]
  %.03644 = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %.loopexit ] ; 8 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = and i32 %i.n, 1023                       ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 4 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.o, 7
  %.0364459 = ptrtoaddr ptr %.03644 to i64
  %i.r = ptrtoaddr ptr %i.m to i64
  %i.s = sub i64 %.0364459, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.q, 2040                     ; 3 uses
  %i.t = sub nsw i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_1
