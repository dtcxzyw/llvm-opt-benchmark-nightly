Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reverse_tree?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @reverse_tree_info(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %3, align 4
  store i32 -1, ptr %4, align 4
  store i32 -1, ptr %5, align 4
  store i32 -1, ptr %6, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %2, %1
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph.i.preheader, label %dep.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.d = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %2, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %int_pow.exit.i
  %indvar = phi i32 [ %indvar.next, %int_pow.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.09.i = phi i32 [ %i.l, %int_pow.exit.i ], [ 0, %.lr.ph.i.preheader ]
  %.078.i = phi i32 [ %i.m, %int_pow.exit.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %i.e = icmp samesign ugt i32 %.078.i, 1
  br i1 %i.e, label %.lr.ph.i.i.preheader, label %int_pow.exit.i

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %indvar, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %indvar, -4                    ; 3 uses
  %i.f = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.d, %vector.ph ], [ %i.g, %vector.body ]
  %i.g = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.h = icmp eq i32 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.g) ; 2 uses
  %cmp.n = icmp eq i32 %indvar, %n.vec
  br i1 %cmp.n, label %int_pow.exit.i, label %.lr.ph.i.i.preheader128

.lr.ph.i.i.preheader128:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.013.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.f, %middle.block ]
  %.01012.i.i.ph = phi i32 [ %2, %.lr.ph.i.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader128, %.lr.ph.i.i
  %.013.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %.013.i.i.ph, %.lr.ph.i.i.preheader128 ]
  %.01012.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader128 ]
  %i.j = mul nsw i32 %.01012.i.i, %2              ; 2 uses
  %i.k = add nuw nsw i32 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.k, %.078.i
  br i1 %exitcond.not.i.i, label %int_pow.exit.i, label %.lr.ph.i.i, !llvm.loop !14

int_pow.exit.i:                                   ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.i
  %.1.i.i = phi i32 [ %2, %.lr.ph.i ], [ %i.i, %middle.block ], [ %i.j, %.lr.ph.i.i ]
  %i.l = add nsw i32 %.1.i.i, %.09.i              ; 2 uses
  %i.m = add nuw nsw i32 %.078.i, 1
  %i.n = icmp slt i32 %i.l, %i.b
  %indvar.next = add i32 %indvar, 1
  br i1 %i.n, label %.lr.ph.i, label %dep.exit, !llvm.loop !0

dep.exit:                                         ; preds = %int_pow.exit.i, %bb.e
  %.07.lcssa.i = phi i32 [ 0, %bb.e ], [ %.078.i, %int_pow.exit.i ] ; 9 uses
  store i32 %.07.lcssa.i, ptr %6, align 4
  %i.o = icmp eq i32 %0, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %dep.exit
  store i32 -1, ptr %3, align 4
  store i32 %i.b, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %bb.k

bb.g:                                             ; preds = %dep.exit
  %i.p = icmp eq i32 %2, 1
  br i1 %i.p, label %geometric_series.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq i32 %.07.lcssa.i, 0
  br i1 %.not43, label %geometric_series.exit, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.h
  %min.iters.check80 = icmp samesign ult i32 %.07.lcssa.i, 4
  br i1 %min.iters.check80, label %.lr.ph.i.i37.preheader125, label %vector.ph81

vector.ph81:                                      ; preds = %.lr.ph.i.i37.preheader
  %n.vec82 = and i32 %.07.lcssa.i, 2147483644     ; 3 uses
  %i.q = or disjoint i32 %n.vec82, 1
  %i.r = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %2, i64 0
  %broadcast.splatinsert83 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat84 = shufflevector <4 x i32> %broadcast.splatinsert83, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph81
  %index86 = phi i32 [ 0, %vector.ph81 ], [ %index.next88, %vector.body85 ]
  %vec.phi87 = phi <4 x i32> [ %i.r, %vector.ph81 ], [ %i.s, %vector.body85 ]
  %i.s = mul <4 x i32> %vec.phi87, %broadcast.splat84 ; 2 uses
  %index.next88 = add nuw i32 %index86, 4         ; 2 uses
  %i.t = icmp eq i32 %index.next88, %n.vec82
  br i1 %i.t, label %middle.block89, label %vector.body85, !llvm.loop !15

middle.block89:                                   ; preds = %vector.body85
  %i.u = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.s) ; 2 uses
  %cmp.n90 = icmp eq i32 %.07.lcssa.i, %n.vec82
  br i1 %cmp.n90, label %geometric_series.exit, label %.lr.ph.i.i37.preheader125

.lr.ph.i.i37.preheader125:                        ; preds = %.lr.ph.i.i37.preheader, %middle.block89
  %.013.i.i38.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.q, %middle.block89 ]
  %.01012.i.i39.ph = phi i32 [ %2, %.lr.ph.i.i37.preheader ], [ %i.u, %middle.block89 ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader125, %.lr.ph.i.i37
  %.013.i.i38 = phi i32 [ %i.w, %.lr.ph.i.i37 ], [ %.013.i.i38.ph, %.lr.ph.i.i37.preheader125 ] ; 2 uses
  %.01012.i.i39 = phi i32 [ %i.v, %.lr.ph.i.i37 ], [ %.01012.i.i39.ph, %.lr.ph.i.i37.preheader125 ]
  %i.v = mul nsw i32 %.01012.i.i39, %2            ; 2 uses
  %i.w = add nuw nsw i32 %.013.i.i38, 1
  %exitcond.not.i.i40 = icmp eq i32 %.013.i.i38, %.07.lcssa.i
  br i1 %exitcond.not.i.i40, label %geometric_series.exit, label %.lr.ph.i.i37, !llvm.loop !16

geometric_series.exit:                            ; preds = %.lr.ph.i.i37, %middle.block89, %bb.h
  %.1.i.i36 = phi i32 [ %2, %bb.h ], [ %i.u, %middle.block89 ], [ %i.v, %.lr.ph.i.i37 ]
  %i.x = sub nsw i32 1, %.1.i.i36
  %i.y = sub nsw i32 1, %2
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = sdiv i32 %i.z, %2                       ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = icmp eq i32 %0, 1
  br i1 %i.ac, label %search_tree.exit, label %.preheader.lr.ph.i

geometric_series.exit.thread:                     ; preds = %bb.g
  %i.ad = add nuw nsw i32 %.07.lcssa.i, 1
  %i.ae = icmp eq i32 %0, 1
  br i1 %i.ae, label %search_tree.exit, label %.preheader.i.preheader

.preheader.lr.ph.i:                               ; preds = %geometric_series.exit
  %.not54.i = icmp slt i32 %2, 1
  br i1 %.not54.i, label %search_tree.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %geometric_series.exit.thread, %.preheader.lr.ph.i
  %.ph = phi i32 [ %.07.lcssa.i, %geometric_series.exit.thread ], [ %i.ab, %.preheader.lr.ph.i ]
  %.ph114 = phi i32 [ %i.ad, %geometric_series.exit.thread ], [ %i.aa, %.preheader.lr.ph.i ]
  %min.iters.check94 = icmp ult i32 %2, 16
  %n.vec96 = and i32 %2, -16                      ; 4 uses
  %i.af = or disjoint i32 %n.vec96, 1
  %broadcast.splatinsert97 = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat98 = shufflevector <16 x i32> %broadcast.splatinsert97, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %cmp.n109 = icmp eq i32 %2, %n.vec96
  br label %.preheader.i

tailrecurse.loopexit.i:                           ; preds = %bb.j, %vector.early.exit.1
  %.03655.i.lcssa73 = phi i32 [ %i.bg, %vector.early.exit.1 ], [ %.03655.i, %bb.j ] ; 3 uses
  %i.ag = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %i.ah = add nsw i32 %.03655.i.lcssa73, 1        ; 2 uses
  %i.ai = sdiv i32 %i.al, %2                      ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.ak = icmp eq i32 %0, %i.ah
  br i1 %i.ak, label %search_tree.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %tailrecurse.loopexit.i
  %i.al = phi i32 [ %i.aj, %tailrecurse.loopexit.i ], [ %.ph, %.preheader.i.preheader ] ; 3 uses
  %i.am = phi i32 [ %i.ai, %tailrecurse.loopexit.i ], [ %.ph114, %.preheader.i.preheader ] ; 5 uses
  %i.an = phi i32 [ %i.ah, %tailrecurse.loopexit.i ], [ 1, %.preheader.i.preheader ] ; 4 uses
  %i.ao = phi i32 [ %i.ag, %tailrecurse.loopexit.i ], [ 1, %.preheader.i.preheader ] ; 5 uses
  %.tr4261.i = phi i32 [ %.03655.i.lcssa73, %tailrecurse.loopexit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.preheader.i
  %i.ap = mul i32 %n.vec96, %i.am
  %i.aq = add i32 %i.an, %i.ap
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert101 = insertelement <16 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat102 = shufflevector <16 x i32> %broadcast.splatinsert101, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ar = mul <16 x i32> %broadcast.splat100, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %induction = add <16 x i32> %broadcast.splat102, %i.ar
  %i.as = shl i32 %i.am, 4
  %broadcast.splatinsert103 = insertelement <16 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat104 = shufflevector <16 x i32> %broadcast.splatinsert103, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body.interim, %vector.ph95
  %index106 = phi i32 [ 0, %vector.ph95 ], [ %index.next107, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph95 ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.at = add <16 x i32> %vec.ind, %broadcast.splat100 ; 2 uses
  %i.au = icmp eq <16 x i32> %broadcast.splat98, %i.at ; 2 uses
  %i.av = icmp sgt <16 x i32> %broadcast.splat98, %vec.ind
  %i.aw = icmp slt <16 x i32> %broadcast.splat98, %i.at
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = or <16 x i1> %i.au, %i.ax
  %i.az = freeze <16 x i1> %i.ay                  ; 2 uses
  %i.ba = bitcast <16 x i1> %i.az to i16
  %.not113 = icmp eq i16 %i.ba, 0
  br i1 %.not113, label %vector.body.interim, label %vector.early.exit.check

vector.body.interim:                              ; preds = %vector.body105
  %vec.ind.next = add <16 x i32> %vec.ind, %broadcast.splat104
  %index.next107 = add nuw i32 %index106, 16      ; 2 uses
  %i.bb = icmp eq i32 %index.next107, %n.vec96
  br i1 %i.bb, label %middle.block108, label %vector.body105, !llvm.loop !17

middle.block108:                                  ; preds = %vector.body.interim
  br i1 %cmp.n109, label %search_tree.exit, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %.preheader.i, %middle.block108
  %.056.i.ph = phi i32 [ 1, %.preheader.i ], [ %i.af, %middle.block108 ]
  %.03655.i.ph = phi i32 [ %i.an, %.preheader.i ], [ %i.aq, %middle.block108 ]
  br label %scalar.ph93

vector.early.exit.check:                          ; preds = %vector.body105
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.az, i1 false) ; 2 uses
  %i.bc = extractelement <16 x i1> %i.au, i64 %first.active.lane
  br i1 %i.bc, label %search_tree.exit, label %vector.early.exit.1

vector.early.exit.1:                              ; preds = %vector.early.exit.check
  %i.bd = trunc i64 %first.active.lane to i32
  %i.be = add i32 %index106, %i.bd
  %i.bf = mul i32 %i.be, %i.am
  %i.bg = add i32 %i.an, %i.bf
  br label %tailrecurse.loopexit.i

bb.i:                                             ; preds = %bb.j
  %i.bh = add nuw i32 %.056.i, 1
  %exitcond.not.i = icmp eq i32 %.056.i, %2
  br i1 %exitcond.not.i, label %search_tree.exit, label %scalar.ph93, !llvm.loop !18

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %bb.i
  %.056.i = phi i32 [ %i.bh, %bb.i ], [ %.056.i.ph, %scalar.ph93.preheader ] ; 2 uses
  %.03655.i = phi i32 [ %i.bi, %bb.i ], [ %.03655.i.ph, %scalar.ph93.preheader ] ; 3 uses
  %i.bi = add i32 %.03655.i, %i.am                ; 3 uses
  %i.bj = icmp eq i32 %0, %i.bi
  br i1 %i.bj, label %search_tree.exit, label %bb.j

bb.j:                                             ; preds = %scalar.ph93
  %i.bk = icmp sgt i32 %0, %.03655.i
  %i.bl = icmp slt i32 %0, %i.bi
  %or.cond.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i, label %tailrecurse.loopexit.i, label %bb.i

search_tree.exit:                                 ; preds = %tailrecurse.loopexit.i, %vector.early.exit.check, %middle.block108, %bb.i, %scalar.ph93, %geometric_series.exit.thread, %geometric_series.exit, %.preheader.lr.ph.i
  %storemerge.sink.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ 1, %geometric_series.exit.thread ], [ 1, %geometric_series.exit ], [ %i.ao, %bb.i ], [ %i.ao, %scalar.ph93 ], [ %i.ag, %tailrecurse.loopexit.i ], [ %i.ao, %middle.block108 ], [ %i.ao, %vector.early.exit.check ]
  %.sink93.i = phi i32 [ -1, %.preheader.lr.ph.i ], [ 0, %geometric_series.exit.thread ], [ 0, %geometric_series.exit ], [ %.tr4261.i, %scalar.ph93 ], [ -1, %bb.i ], [ %.03655.i.lcssa73, %tailrecurse.loopexit.i ], [ -1, %middle.block108 ], [ %.tr4261.i, %vector.early.exit.check ]
  %.sink.i = phi i32 [ -1, %.preheader.lr.ph.i ], [ %.07.lcssa.i, %geometric_series.exit.thread ], [ %i.ab, %geometric_series.exit ], [ %i.al, %scalar.ph93 ], [ -1, %bb.i ], [ %i.aj, %tailrecurse.loopexit.i ], [ -1, %middle.block108 ], [ %i.al, %vector.early.exit.check ] ; 2 uses
  store i32 %storemerge.sink.i, ptr %5, align 4
  %i.bm = add nsw i32 %.sink.i, %0
  %.not34 = icmp slt i32 %i.bm, %1
  %i.bn = xor i32 %0, -1
  %i.bo = add i32 %1, %i.bn
  %.0 = select i1 %.not34, i32 %.sink.i, i32 %i.bo
  store i32 %.sink93.i, ptr %3, align 4
  store i32 %.0, ptr %4, align 4
  br label %bb.k

bb.k:                                             ; preds = %search_tree.exit, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local range(i32 0, -2147483648) i32 @reverse_tree_direct_children(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph.i.preheader, label %dep.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.d = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %2, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %int_pow.exit.i
  %indvar = phi i32 [ %indvar.next, %int_pow.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.09.i = phi i32 [ %i.l, %int_pow.exit.i ], [ 0, %.lr.ph.i.preheader ]
  %.078.i = phi i32 [ %i.m, %int_pow.exit.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %i.e = icmp samesign ugt i32 %.078.i, 1
  br i1 %i.e, label %.lr.ph.i.i.preheader, label %int_pow.exit.i

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i32 %indvar, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %indvar, -4                    ; 3 uses
  %i.f = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.d, %vector.ph ], [ %i.g, %vector.body ]
  %i.g = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.h = icmp eq i32 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.g) ; 2 uses
  %cmp.n = icmp eq i32 %indvar, %n.vec
  br i1 %cmp.n, label %int_pow.exit.i, label %.lr.ph.i.i.preheader63

.lr.ph.i.i.preheader63:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.013.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.f, %middle.block ]
  %.01012.i.i.ph = phi i32 [ %2, %.lr.ph.i.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader63, %.lr.ph.i.i
  %.013.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %.013.i.i.ph, %.lr.ph.i.i.preheader63 ]
  %.01012.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader63 ]
  %i.j = mul nsw i32 %.01012.i.i, %2              ; 2 uses
  %i.k = add nuw nsw i32 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.k, %.078.i
  br i1 %exitcond.not.i.i, label %int_pow.exit.i, label %.lr.ph.i.i, !llvm.loop !20

int_pow.exit.i:                                   ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.i
  %.1.i.i = phi i32 [ %2, %.lr.ph.i ], [ %i.i, %middle.block ], [ %i.j, %.lr.ph.i.i ]
  %i.l = add nsw i32 %.1.i.i, %.09.i              ; 2 uses
  %i.m = add nuw nsw i32 %.078.i, 1
  %i.n = icmp slt i32 %i.l, %i.b
  %indvar.next = add i32 %indvar, 1
  br i1 %i.n, label %.lr.ph.i, label %dep.exit, !llvm.loop !0

dep.exit:                                         ; preds = %int_pow.exit.i, %bb.b
  %.07.lcssa.i = phi i32 [ 0, %bb.b ], [ %.078.i, %int_pow.exit.i ] ; 2 uses
  %i.o = icmp eq i32 %.07.lcssa.i, %3
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %dep.exit
  %i.p = sub i32 %.07.lcssa.i, %3                 ; 7 uses
  %i.q = icmp eq i32 %2, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %i.p, 1
  br label %geometric_series.exit

bb.e:                                             ; preds = %bb.c
  switch i32 %i.p, label %.preheader.i.i [
    i32 -1, label %int_pow.exit.i28
    i32 0, label %bb.f
  ]

.preheader.i.i:                                   ; preds = %bb.e
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph.i.i30.preheader, label %int_pow.exit.i28

.lr.ph.i.i30.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check48 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check48, label %.lr.ph.i.i30.preheader61, label %vector.ph49

vector.ph49:                                      ; preds = %.lr.ph.i.i30.preheader
  %n.vec50 = and i32 %i.p, 2147483644             ; 3 uses
  %i.t = or disjoint i32 %n.vec50, 1
  %i.u = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %2, i64 0
  %broadcast.splatinsert51 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat52 = shufflevector <4 x i32> %broadcast.splatinsert51, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph49
  %index54 = phi i32 [ 0, %vector.ph49 ], [ %index.next56, %vector.body53 ]
  %vec.phi55 = phi <4 x i32> [ %i.u, %vector.ph49 ], [ %i.v, %vector.body53 ]
  %i.v = mul <4 x i32> %vec.phi55, %broadcast.splat52 ; 2 uses
  %index.next56 = add nuw i32 %index54, 4         ; 2 uses
  %i.w = icmp eq i32 %index.next56, %n.vec50
  br i1 %i.w, label %middle.block57, label %vector.body53, !llvm.loop !21

middle.block57:                                   ; preds = %vector.body53
  %i.x = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.v) ; 2 uses
  %cmp.n58 = icmp eq i32 %i.p, %n.vec50
  br i1 %cmp.n58, label %int_pow.exit.i28, label %.lr.ph.i.i30.preheader61

.lr.ph.i.i30.preheader61:                         ; preds = %.lr.ph.i.i30.preheader, %middle.block57
  %.013.i.i31.ph = phi i32 [ 1, %.lr.ph.i.i30.preheader ], [ %i.t, %middle.block57 ]
  %.01012.i.i32.ph = phi i32 [ %2, %.lr.ph.i.i30.preheader ], [ %i.x, %middle.block57 ]
  br label %.lr.ph.i.i30

bb.f:                                             ; preds = %bb.e
  br label %int_pow.exit.i28

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader61, %.lr.ph.i.i30
  %.013.i.i31 = phi i32 [ %i.z, %.lr.ph.i.i30 ], [ %.013.i.i31.ph, %.lr.ph.i.i30.preheader61 ] ; 2 uses
  %.01012.i.i32 = phi i32 [ %i.y, %.lr.ph.i.i30 ], [ %.01012.i.i32.ph, %.lr.ph.i.i30.preheader61 ]
  %i.y = mul nsw i32 %.01012.i.i32, %2            ; 2 uses
  %i.z = add nuw nsw i32 %.013.i.i31, 1
  %exitcond.not.i.i33 = icmp eq i32 %.013.i.i31, %i.p
  br i1 %exitcond.not.i.i33, label %int_pow.exit.i28, label %.lr.ph.i.i30, !llvm.loop !22

int_pow.exit.i28:                                 ; preds = %.lr.ph.i.i30, %middle.block57, %bb.f, %.preheader.i.i, %bb.e
  %.1.i.i29 = phi i32 [ 1, %bb.e ], [ %2, %bb.f ], [ %2, %.preheader.i.i ], [ %i.x, %middle.block57 ], [ %i.y, %.lr.ph.i.i30 ]
  %i.aa = sub nsw i32 1, %.1.i.i29
  %i.ab = sub nsw i32 1, %2
  %i.ac = sdiv i32 %i.aa, %i.ab
  br label %geometric_series.exit

geometric_series.exit:                            ; preds = %bb.d, %int_pow.exit.i28
  %i.ad = phi i32 [ %i.r, %bb.d ], [ %i.ac, %int_pow.exit.i28 ]
  %i.ae = add nsw i32 %0, 1                       ; 2 uses
  %i.af = sdiv i32 %i.ad, %2
  %i.ag = icmp sgt i32 %2, 0
  %i.ah = icmp slt i32 %i.ae, %1
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %geometric_series.exit
  %i.aj = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02335 = phi i32 [ %i.ae, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %.02335, ptr %i.ak, align 4
  %i.al = add nsw i32 %.02335, %i.af              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.aj
  %i.an = icmp slt i32 %i.al, %1
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !23

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ap = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %geometric_series.exit, %dep.exit, %bb.a
  %.024 = phi i32 [ 0, %dep.exit ], [ 0, %bb.a ], [ 0, %geometric_series.exit ], [ %i.ap, %.loopexit.loopexit ]
  ret i32 %.024
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9, !10}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10, !11, !12}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !10, !11, !12}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !9, !10, !11, !12}
!18 = distinct !{!18, !9, !10, !11}
!19 = distinct !{!19, !9, !10, !11, !12}
!20 = distinct !{!20, !9, !10, !11}
!21 = distinct !{!21, !9, !10, !11, !12}
!22 = distinct !{!22, !9, !10, !11}
!23 = distinct !{!23, !9, !10}
end_hunk_0
