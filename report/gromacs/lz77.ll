inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/src/external/tng_io/src/compression/lz77.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"too many vals.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Ptngc_comp_to_lz77(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
vector.ph:
  %i.a = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 3670016, ptr noundef nonnull @.str, i32 noundef 195) #8 ; 14 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next.3, %vector.body ] ; 5 uses
  %i.b = mul nuw nsw <8 x i64> %vec.ind, splat (i64 28)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.a, <8 x i64> %i.b ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep246 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep246, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -2), <8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true)), !tbaa !8
  %i.c = mul nuw <8 x i64> %vec.ind, splat (i64 28)
  %i.d = add nuw <8 x i64> %i.c, splat (i64 224)
  %wide.gep.1 = getelementptr inbounds nuw i8, ptr %i.a, <8 x i64> %i.d ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep.1, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep246.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep246.1, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep247.1 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.1, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -2), <8 x ptr> align 4 %wide.gep247.1, <8 x i1> splat (i1 true)), !tbaa !8
  %i.e = mul nuw <8 x i64> %vec.ind, splat (i64 28)
  %i.f = add nuw <8 x i64> %i.e, splat (i64 448)
  %wide.gep.2 = getelementptr inbounds nuw i8, ptr %i.a, <8 x i64> %i.f ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep.2, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep246.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep246.2, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep247.2 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.2, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -2), <8 x ptr> align 4 %wide.gep247.2, <8 x i1> splat (i1 true)), !tbaa !8
  %i.g = mul nuw <8 x i64> %vec.ind, splat (i64 28)
  %i.h = add nuw <8 x i64> %i.g, splat (i64 672)
  %wide.gep.3 = getelementptr inbounds nuw i8, ptr %i.a, <8 x i64> %i.h ; 3 uses
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep.3, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep246.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep246.3, <8 x i1> splat (i1 true)), !tbaa !8
  %wide.gep247.3 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep.3, i64 8
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -2), <8 x ptr> align 4 %wide.gep247.3, <8 x i1> splat (i1 true)), !tbaa !8
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %vec.ind.next.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.i = icmp eq i64 %index.next.3, 131072
  br i1 %i.i, label %.preheader161, label %vector.body, !llvm.loop !9

.preheader161:                                    ; preds = %vector.body
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph200.preheader, label %._crit_edge201

.lr.ph200.preheader:                              ; preds = %.preheader161
  %i.k = zext nneg i32 %1 to i64
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %bb.o
  %indvars.iv228 = phi i64 [ 0, %.lr.ph200.preheader ], [ %indvars.iv.next229, %bb.o ] ; 4 uses
  %.1123198 = phi i32 [ 0, %.lr.ph200.preheader ], [ %.3125, %bb.o ] ; 13 uses
  %.0126197 = phi i32 [ 0, %.lr.ph200.preheader ], [ %.2128, %bb.o ] ; 4 uses
  %.0133193 = phi i32 [ 0, %.lr.ph200.preheader ], [ %.3136, %bb.o ] ; 5 uses
  %i.l = tail call i32 @llvm.smax.i32(i32 %.1123198, i32 65535)
  %spec.store.select = add nsw i32 %i.l, -65535   ; 2 uses
  %.not = icmp eq i32 %.1123198, 0
  br i1 %.not, label %bb.m, label %bb.a

bb.a:                                             ; preds = %.lr.ph200
  %i.m = sext i32 %.1123198 to i64                ; 5 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8    ; 3 uses
  %i.p = mul i32 %i.o, 7                          ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.u = add i32 %i.p, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %spec.select = add i32 %i.p, 3
  %i.y = icmp slt i32 %.1123198, %1
  br i1 %i.y, label %.lr.ph.split.us.preheader, label %.critedge.thread

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = sub i32 %1, %.1123198
  %i.aa = sub nsw i64 %i.k, %i.m
  %8 = zext nneg i32 %spec.store.select to i64
  %invariant.gep243 = getelementptr [4 x i8], ptr %0, i64 %i.m
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge173.split.us.us
  %.0112181.us = phi i32 [ %i.al, %._crit_edge173.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.0113180.us = phi i32 [ %.1.lcssa.us, %._crit_edge173.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %.0114179.us = phi i32 [ %.1115.lcssa.us, %._crit_edge173.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.ab = xor i32 %.0112181.us, -1
  %i.ac = add i32 %i.x, %i.ab                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 29
  %i.ae = and i32 %i.ad, 4
  %i.af = add i32 %spec.select, %i.ac
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %spec.store.select
  br i1 %i.ak, label %.critedge, label %.preheader160.us

._crit_edge173.split.us.us:                       ; preds = %bb.f, %.lr.ph169.us, %.preheader160.us
  %.1115.lcssa.us = phi i32 [ %.0114179.us, %.preheader160.us ], [ %.1115167.us.us, %.lr.ph169.us ], [ %.2116.us.us, %bb.f ] ; 2 uses
  %.1.lcssa.us = phi i32 [ %.0113180.us, %.preheader160.us ], [ %.1168.us.us, %.lr.ph169.us ], [ %.2.us.us, %bb.f ] ; 2 uses
  %i.al = add nuw nsw i32 %.0112181.us, 1         ; 2 uses
  %exitcond222.not = icmp eq i32 %i.al, %i.s
  br i1 %exitcond222.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !13

.preheader160.us:                                 ; preds = %.lr.ph.split.us
  %i.am = icmp slt i32 %i.aj, %.1123198
  br i1 %i.am, label %.lr.ph169.us.preheader, label %._crit_edge173.split.us.us

.lr.ph169.us.preheader:                           ; preds = %.preheader160.us
  %i.an = zext nneg i32 %i.aj to i64
  br label %.lr.ph169.us

.lr.ph169.us:                                     ; preds = %.lr.ph169.us.preheader, %bb.f
  %indvars.iv218 = phi i64 [ %i.an, %.lr.ph169.us.preheader ], [ %indvars.iv.next219, %bb.f ] ; 6 uses
  %.1168.us.us = phi i32 [ %.0113180.us, %.lr.ph169.us.preheader ], [ %.2.us.us, %bb.f ] ; 4 uses
  %.1115167.us.us = phi i32 [ %.0114179.us, %.lr.ph169.us.preheader ], [ %.2116.us.us, %bb.f ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv218
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = icmp eq i32 %i.ap, %i.o
  br i1 %i.aq, label %9, label %._crit_edge173.split.us.us

9:                                                ; preds = %.lr.ph169.us
  %.not143.us.us = icmp samesign ult i64 %indvars.iv218, %8
  br i1 %.not143.us.us, label %bb.f, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %9
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %indvars.iv218
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %bb.b
  %indvars.iv214 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next215, %bb.b ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv214
  %i.ar = load i32, ptr %gep, align 4, !tbaa !8
  %gep244 = getelementptr [4 x i8], ptr %invariant.gep243, i64 %indvars.iv214
  %i.as = load i32, ptr %gep244, align 4, !tbaa !8
  %.not144.us.us = icmp eq i32 %i.ar, %i.as
  br i1 %.not144.us.us, label %bb.b, label %._crit_edge.us.us.split.loop.exit241

bb.b:                                             ; preds = %.preheader.us.us
  %indvars.iv.next215 = add i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, %i.aa
  br i1 %exitcond217.not, label %._crit_edge.us.us, label %.preheader.us.us, !llvm.loop !14

._crit_edge.us.us.split.loop.exit241:             ; preds = %.preheader.us.us
  %i.at = trunc i64 %indvars.iv214 to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.split.loop.exit241
  %.0119.lcssa.us.us = phi i32 [ %i.at, %._crit_edge.us.us.split.loop.exit241 ], [ %i.z, %bb.b ] ; 4 uses
  %i.au = icmp sgt i32 %.0119.lcssa.us.us, %.1115167.us.us
  br i1 %i.au, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.av = sub nsw i64 %i.m, %indvars.iv218        ; 2 uses
  %i.aw = add nsw i64 %i.av, 16
  %i.ax = zext nneg i32 %.0119.lcssa.us.us to i64
  %.not145.us.us = icmp sgt i64 %i.aw, %i.ax
  br i1 %.not145.us.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = icmp samesign ugt i32 %.0119.lcssa.us.us, 4
  %i.az = icmp eq i64 %i.av, 1
  %or.cond.us.us = and i1 %i.az, %i.ay
  br i1 %or.cond.us.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = trunc nsw i64 %indvars.iv218 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.us.us, %9
  %.2116.us.us = phi i32 [ %.0119.lcssa.us.us, %bb.e ], [ %.1115167.us.us, %9 ], [ %.1115167.us.us, %bb.d ], [ %.1115167.us.us, %._crit_edge.us.us ] ; 2 uses
  %.2.us.us = phi i32 [ %i.ba, %bb.e ], [ %.1168.us.us, %9 ], [ %.1168.us.us, %bb.d ], [ %.1168.us.us, %._crit_edge.us.us ] ; 2 uses
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next219 to i32
  %exitcond221.not = icmp eq i32 %.1123198, %lftr.wideiv
  br i1 %exitcond221.not, label %._crit_edge173.split.us.us, label %.lr.ph169.us, !llvm.loop !15

.critedge:                                        ; preds = %._crit_edge173.split.us.us, %.lr.ph.split.us
  %.0114.lcssa = phi i32 [ %.1115.lcssa.us, %._crit_edge173.split.us.us ], [ %.0114179.us, %.lr.ph.split.us ] ; 2 uses
  %.0113.lcssa = phi i32 [ %.1.lcssa.us, %._crit_edge173.split.us.us ], [ %.0113180.us, %.lr.ph.split.us ]
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %.0114.lcssa, i32 65535) ; 3 uses
  %.not146 = icmp eq i32 %.0114.lcssa, 0
  br i1 %.not146, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bb = sub nsw i32 %.1123198, %.0113.lcssa     ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv228 ; 2 uses
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bd, align 4, !tbaa !8
  br label %.lr.ph192.preheader

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr %i.bd, align 4, !tbaa !8
  %i.be = add nsw i32 %.0133193, 1
  %i.bf = sext i32 %.0133193 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bf
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !8
  br label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %bb.h, %bb.i
  %.1134 = phi i32 [ %.0133193, %bb.h ], [ %i.be, %bb.i ]
  %i.bh = add nsw i32 %.0126197, 1
  %i.bi = sext i32 %.0126197 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  store i32 %spec.store.select1, ptr %i.bj, align 4, !tbaa !8
  %wide.trip.count226 = zext nneg i32 %spec.store.select1 to i64
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %add_circular.exit
  %indvars.iv223 = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next224, %add_circular.exit ] ; 2 uses
  %i.bk = add nsw i64 %indvars.iv223, %i.m        ; 4 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = mul nsw i32 %i.bm, 7                    ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.a, i64 %i.bo ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = trunc i64 %i.bk to i32
  %i.bt = add i32 %i.bs, -1
  %.not.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not.i, label %.lr.ph192.add_circular.exit_crit_edge, label %bb.j

.lr.ph192.add_circular.exit_crit_edge:            ; preds = %.lr.ph192
  %.pre = trunc nsw i64 %i.bk to i32
  br label %add_circular.exit

bb.j:                                             ; preds = %.lr.ph192
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 3)
  %spec.select.i = add nsw i32 %i.bv, 1
  store i32 %spec.select.i, ptr %i.bp, align 4, !tbaa !8
  %i.bw = add nsw i32 %i.bn, 3
  %i.bx = getelementptr i8, ptr %i.bp, i64 4      ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = add nsw i32 %i.bw, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ca
  %i.cc = trunc nsw i64 %i.bk to i32              ; 2 uses
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !8
  %i.cd = load i32, ptr %i.bx, align 4, !tbaa !8  ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = icmp sgt i32 %i.cd, 2
  %spec.store.select.i = select i1 %i.cf, i32 0, i32 %i.ce
  store i32 %spec.store.select.i, ptr %i.bx, align 4
  br label %add_circular.exit

add_circular.exit:                                ; preds = %.lr.ph192.add_circular.exit_crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %.lr.ph192.add_circular.exit_crit_edge ], [ %i.cc, %bb.j ]
  store i32 %.pre-phi, ptr %i.bq, align 4, !tbaa !8
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %._crit_edge, label %.lr.ph192, !llvm.loop !16

._crit_edge:                                      ; preds = %add_circular.exit
  %i.cg = add i32 %.1123198, -1
  %i.ch = add i32 %i.cg, %spec.store.select1
  br label %bb.l

.critedge.thread:                                 ; preds = %.lr.ph, %bb.a, %.critedge
  %i.ci = add i32 %i.o, 2
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv228
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !8
  %i.ck = load i32, ptr %i.n, align 4, !tbaa !8
  %i.cl = mul nsw i32 %i.ck, 7                    ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %i.a, i64 %i.cm ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8      ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = add nsw i32 %.1123198, -1
  %.not.i147 = icmp eq i32 %i.cp, %i.cq
  br i1 %.not.i147, label %add_circular.exit150, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cs = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 3)
  %spec.select.i148 = add nsw i32 %i.cs, 1
  store i32 %spec.select.i148, ptr %i.cn, align 4, !tbaa !8
  %i.ct = add nsw i32 %i.cl, 3
  %i.cu = getelementptr i8, ptr %i.cn, i64 4      ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = add nsw i32 %i.ct, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cx
  store i32 %.1123198, ptr %i.cy, align 4, !tbaa !8
  %i.cz = load i32, ptr %i.cu, align 4, !tbaa !8  ; 2 uses
  %i.da = add nsw i32 %i.cz, 1
  %i.db = icmp sgt i32 %i.cz, 2
  %spec.store.select.i149 = select i1 %i.db, i32 0, i32 %i.da
  store i32 %spec.store.select.i149, ptr %i.cu, align 4
  br label %add_circular.exit150

add_circular.exit150:                             ; preds = %.critedge.thread, %bb.k
  store i32 %.1123198, ptr %i.co, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %add_circular.exit150, %._crit_edge
  %.2135 = phi i32 [ %.1134, %._crit_edge ], [ %.0133193, %add_circular.exit150 ]
  %.1127 = phi i32 [ %i.bh, %._crit_edge ], [ %.0126197, %add_circular.exit150 ]
  %.2124 = phi i32 [ %i.ch, %._crit_edge ], [ %.1123198, %add_circular.exit150 ]
  %i.dc = add i32 %.2124, 1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph200
  %i.dd = load i32, ptr %0, align 4, !tbaa !8
  %i.de = add i32 %i.dd, 2
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv228
  store i32 %i.de, ptr %i.df, align 4, !tbaa !8
  %i.dg = load i32, ptr %0, align 4, !tbaa !8
  %i.dh = mul nsw i32 %i.dg, 7                    ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [4 x i8], ptr %i.a, i64 %i.di ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %.not.i151 = icmp eq i32 %i.dl, -1
  br i1 %.not.i151, label %add_circular.exit154, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !8
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 3)
  %spec.select.i152 = add nsw i32 %i.dn, 1
  store i32 %spec.select.i152, ptr %i.dj, align 4, !tbaa !8
  %i.do = add nsw i32 %i.dh, 3
  %i.dp = getelementptr i8, ptr %i.dj, i64 4      ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8
  %i.dr = add nsw i32 %i.do, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ds
  store i32 0, ptr %i.dt, align 4, !tbaa !8
  %i.du = load i32, ptr %i.dp, align 4, !tbaa !8  ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  %i.dw = icmp sgt i32 %i.du, 2
  %spec.store.select.i153 = select i1 %i.dw, i32 0, i32 %i.dv
  store i32 %spec.store.select.i153, ptr %i.dp, align 4
  br label %add_circular.exit154

add_circular.exit154:                             ; preds = %bb.m, %bb.n
  store i32 0, ptr %i.dk, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %add_circular.exit154, %bb.l
  %.3136 = phi i32 [ %.2135, %bb.l ], [ %.0133193, %add_circular.exit154 ] ; 2 uses
  %.2128 = phi i32 [ %.1127, %bb.l ], [ %.0126197, %add_circular.exit154 ] ; 2 uses
  %.3125 = phi i32 [ %i.dc, %bb.l ], [ 1, %add_circular.exit154 ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.dx = icmp slt i32 %.3125, %1
  br i1 %i.dx, label %.lr.ph200, label %._crit_edge201.loopexit, !llvm.loop !17

._crit_edge201.loopexit:                          ; preds = %bb.o
  %i.dy = trunc nuw i64 %indvars.iv.next229 to i32
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %.preheader161
  %.0133.lcssa = phi i32 [ 0, %.preheader161 ], [ %.3136, %._crit_edge201.loopexit ]
  %.0129.lcssa = phi i32 [ 0, %.preheader161 ], [ %i.dy, %._crit_edge201.loopexit ]
  %.0126.lcssa = phi i32 [ 0, %.preheader161 ], [ %.2128, %._crit_edge201.loopexit ]
  store i32 %.0133.lcssa, ptr %7, align 4, !tbaa !8
  store i32 %.0129.lcssa, ptr %3, align 4, !tbaa !8
  store i32 %.0126.lcssa, ptr %5, align 4, !tbaa !8
  tail call void @free(ptr noundef nonnull %i.a) #8
  ret void
}

declare ptr @Ptngc_warnmalloc_x(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
end_hunk_0
