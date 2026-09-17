Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lz77?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Ptngc_comp_to_lz77:vector.ph
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
  br i1 %i.i, label %.preheader161, label %vector.body, !llvm.loop !12

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
  %spec.store.select = add nsw i32 %i.l, -65535
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
  %invariant.gep243 = getelementptr [4 x i8], ptr %0, i64 %i.m
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge173.split.us.us
  %.0112181.us = phi i32 [ %i.ba, %._crit_edge173.split.us.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
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

.preheader160.us:                                 ; preds = %.lr.ph.split.us
  %i.al = icmp slt i32 %i.aj, %.1123198
  br i1 %i.al, label %.lr.ph169.us.preheader, label %._crit_edge173.split.us.us

.lr.ph169.us.preheader:                           ; preds = %.preheader160.us
  %i.am = zext nneg i32 %i.aj to i64
  br label %.lr.ph169.us

.lr.ph169.us:                                     ; preds = %.lr.ph169.us.preheader, %bb.f
  %indvars.iv218 = phi i64 [ %i.am, %.lr.ph169.us.preheader ], [ %indvars.iv.next219, %bb.f ] ; 5 uses
  %.1168.us.us = phi i32 [ %.0113180.us, %.lr.ph169.us.preheader ], [ %.2.us.us, %bb.f ] ; 3 uses
  %.1115167.us.us = phi i32 [ %.0114179.us, %.lr.ph169.us.preheader ], [ %.2116.us.us, %bb.f ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv218
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = icmp eq i32 %i.ao, %i.o
  br i1 %i.ap, label %.preheader.us.us.preheader, label %._crit_edge173.split.us.us

.preheader.us.us.preheader:                       ; preds = %.lr.ph169.us
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %indvars.iv218
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %bb.b
  %indvars.iv214 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next215, %bb.b ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv214
  %i.aq = load i32, ptr %gep, align 4, !tbaa !8
  %gep244 = getelementptr [4 x i8], ptr %invariant.gep243, i64 %indvars.iv214
  %i.ar = load i32, ptr %gep244, align 4, !tbaa !8
  %.not144.us.us = icmp eq i32 %i.aq, %i.ar
  br i1 %.not144.us.us, label %bb.b, label %._crit_edge.us.us.split.loop.exit241

bb.b:                                             ; preds = %.preheader.us.us
  %indvars.iv.next215 = add i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, %i.aa
  br i1 %exitcond217.not, label %._crit_edge.us.us, label %.preheader.us.us, !llvm.loop !13

._crit_edge.us.us.split.loop.exit241:             ; preds = %.preheader.us.us
  %i.as = trunc i64 %indvars.iv214 to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.split.loop.exit241
  %.0119.lcssa.us.us = phi i32 [ %i.as, %._crit_edge.us.us.split.loop.exit241 ], [ %i.z, %bb.b ] ; 4 uses
  %i.at = icmp sgt i32 %.0119.lcssa.us.us, %.1115167.us.us
  br i1 %i.at, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.au = sub nuw nsw i64 %i.m, %indvars.iv218    ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 16
  %i.aw = zext nneg i32 %.0119.lcssa.us.us to i64
  %.not145.us.us = icmp sgt i64 %i.av, %i.aw
  br i1 %.not145.us.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = icmp samesign ugt i32 %.0119.lcssa.us.us, 4
  %i.ay = icmp eq i64 %i.au, 1
  %or.cond.us.us = and i1 %i.ay, %i.ax
  br i1 %or.cond.us.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = trunc nsw i64 %indvars.iv218 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.us.us
  %.2116.us.us = phi i32 [ %.0119.lcssa.us.us, %bb.e ], [ %.1115167.us.us, %._crit_edge.us.us ], [ %.1115167.us.us, %bb.d ] ; 2 uses
  %.2.us.us = phi i32 [ %i.az, %bb.e ], [ %.1168.us.us, %._crit_edge.us.us ], [ %.1168.us.us, %bb.d ] ; 2 uses
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next219 to i32
  %exitcond221.not = icmp eq i32 %.1123198, %lftr.wideiv
  br i1 %exitcond221.not, label %._crit_edge173.split.us.us, label %.lr.ph169.us, !llvm.loop !14

._crit_edge173.split.us.us:                       ; preds = %bb.f, %.lr.ph169.us, %.preheader160.us
  %.1115.lcssa.us = phi i32 [ %.0114179.us, %.preheader160.us ], [ %.1115167.us.us, %.lr.ph169.us ], [ %.2116.us.us, %bb.f ] ; 2 uses
  %.1.lcssa.us = phi i32 [ %.0113180.us, %.preheader160.us ], [ %.1168.us.us, %.lr.ph169.us ], [ %.2.us.us, %bb.f ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0112181.us, 1         ; 2 uses
  %exitcond222.not = icmp eq i32 %i.ba, %i.s
  br i1 %exitcond222.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !15

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
  %8 = add nsw i32 %.0126197, 1
  %i.bh = sext i32 %.0126197 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bh
  store i32 %spec.store.select1, ptr %i.bi, align 4, !tbaa !8
  %wide.trip.count226 = zext nneg i32 %spec.store.select1 to i64
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %add_circular.exit
  %indvars.iv223 = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next224, %add_circular.exit ] ; 2 uses
  %i.bj = add nsw i64 %indvars.iv223, %i.m        ; 4 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = mul nsw i32 %i.bl, 7                    ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %i.a, i64 %i.bn ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8      ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = trunc i64 %i.bj to i32
  %i.bs = add i32 %i.br, -1
  %.not.i = icmp eq i32 %i.bq, %i.bs
  br i1 %.not.i, label %.lr.ph192.add_circular.exit_crit_edge, label %bb.j

.lr.ph192.add_circular.exit_crit_edge:            ; preds = %.lr.ph192
  %.pre = trunc nsw i64 %i.bj to i32
  br label %add_circular.exit

bb.j:                                             ; preds = %.lr.ph192
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bu = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 3)
  %spec.select.i = add nsw i32 %i.bu, 1
  store i32 %spec.select.i, ptr %i.bo, align 4, !tbaa !8
  %i.bv = add nsw i32 %i.bm, 3
  %i.bw = getelementptr i8, ptr %i.bo, i64 4      ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = add nsw i32 %i.bv, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bz
  %i.cb = trunc nsw i64 %i.bj to i32              ; 2 uses
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !8
  %i.cc = load i32, ptr %i.bw, align 4, !tbaa !8  ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = icmp sgt i32 %i.cc, 2
  %spec.store.select.i = select i1 %i.ce, i32 0, i32 %i.cd
  store i32 %spec.store.select.i, ptr %i.bw, align 4
  br label %add_circular.exit

add_circular.exit:                                ; preds = %.lr.ph192.add_circular.exit_crit_edge, %bb.j
  %.pre-phi = phi i32 [ %.pre, %.lr.ph192.add_circular.exit_crit_edge ], [ %i.cb, %bb.j ]
  store i32 %.pre-phi, ptr %i.bp, align 4, !tbaa !8
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %._crit_edge, label %.lr.ph192, !llvm.loop !16

._crit_edge:                                      ; preds = %add_circular.exit
  %i.cf = add i32 %.1123198, -1
  %i.cg = add i32 %i.cf, %spec.store.select1
  br label %bb.l

.critedge.thread:                                 ; preds = %.lr.ph, %bb.a, %.critedge
  %i.ch = add i32 %i.o, 2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv228
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !8
  %i.cj = load i32, ptr %i.n, align 4, !tbaa !8
  %i.ck = mul nsw i32 %i.cj, 7                    ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [4 x i8], ptr %i.a, i64 %i.cl ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = add nsw i32 %.1123198, -1
  %.not.i147 = icmp eq i32 %i.co, %i.cp
  br i1 %.not.i147, label %add_circular.exit150, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !8
  %i.cr = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 3)
  %spec.select.i148 = add nsw i32 %i.cr, 1
  store i32 %spec.select.i148, ptr %i.cm, align 4, !tbaa !8
  %i.cs = add nsw i32 %i.ck, 3
  %i.ct = getelementptr i8, ptr %i.cm, i64 4      ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = add nsw i32 %i.cs, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw
  store i32 %.1123198, ptr %i.cx, align 4, !tbaa !8
  %i.cy = load i32, ptr %i.ct, align 4, !tbaa !8  ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.cy, 2
  %spec.store.select.i149 = select i1 %i.da, i32 0, i32 %i.cz
  store i32 %spec.store.select.i149, ptr %i.ct, align 4
  br label %add_circular.exit150

add_circular.exit150:                             ; preds = %.critedge.thread, %bb.k
  store i32 %.1123198, ptr %i.cn, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %add_circular.exit150, %._crit_edge
  %.2135 = phi i32 [ %.1134, %._crit_edge ], [ %.0133193, %add_circular.exit150 ]
  %.1127 = phi i32 [ %8, %._crit_edge ], [ %.0126197, %add_circular.exit150 ]
  %.2124 = phi i32 [ %i.cg, %._crit_edge ], [ %.1123198, %add_circular.exit150 ]
  %i.db = add i32 %.2124, 1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph200
  %i.dc = load i32, ptr %0, align 4, !tbaa !8
  %i.dd = add i32 %i.dc, 2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv228
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !8
  %i.df = load i32, ptr %0, align 4, !tbaa !8
  %i.dg = mul nsw i32 %i.df, 7                    ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.a, i64 %i.dh ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8      ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8
  %.not.i151 = icmp eq i32 %i.dk, -1
  br i1 %.not.i151, label %add_circular.exit154, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dm = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 3)
  %spec.select.i152 = add nsw i32 %i.dm, 1
  store i32 %spec.select.i152, ptr %i.di, align 4, !tbaa !8
  %i.dn = add nsw i32 %i.dg, 3
  %i.do = getelementptr i8, ptr %i.di, i64 4      ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8
  %i.dq = add nsw i32 %i.dn, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dr
  store i32 0, ptr %i.ds, align 4, !tbaa !8
  %i.dt = load i32, ptr %i.do, align 4, !tbaa !8  ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  %i.dv = icmp sgt i32 %i.dt, 2
  %spec.store.select.i153 = select i1 %i.dv, i32 0, i32 %i.du
  store i32 %spec.store.select.i153, ptr %i.do, align 4
  br label %add_circular.exit154

add_circular.exit154:                             ; preds = %bb.m, %bb.n
  store i32 0, ptr %i.dj, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %add_circular.exit154, %bb.l
  %.3136 = phi i32 [ %.2135, %bb.l ], [ %.0133193, %add_circular.exit154 ] ; 2 uses
  %.2128 = phi i32 [ %.1127, %bb.l ], [ %.0126197, %add_circular.exit154 ] ; 2 uses
  %.3125 = phi i32 [ %i.db, %bb.l ], [ 1, %add_circular.exit154 ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.dw = icmp slt i32 %.3125, %1
  br i1 %i.dw, label %.lr.ph200, label %._crit_edge201.loopexit, !llvm.loop !17

._crit_edge201.loopexit:                          ; preds = %bb.o
  %i.dx = trunc nuw i64 %indvars.iv.next229 to i32
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %.preheader161
  %.0133.lcssa = phi i32 [ 0, %.preheader161 ], [ %.3136, %._crit_edge201.loopexit ]
  %.0129.lcssa = phi i32 [ 0, %.preheader161 ], [ %i.dx, %._crit_edge201.loopexit ]
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
define void @Ptngc_comp_from_lz77(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %bb.a, %.loopexit
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.loopexit ], [ 0, %bb.a ] ; 2 uses
  %.02440 = phi i32 [ %.1, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %.02638 = phi i32 [ %.2, %.loopexit ], [ 0, %bb.a ] ; 4 uses
  %.02837 = phi i32 [ %.230, %.loopexit ], [ 0, %bb.a ] ; 6 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv45
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 3 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph41
  %i.e = add nsw i32 %.02440, 1                   ; 2 uses
  %i.f = sext i32 %.02440 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %.fr56 = freeze i32 %i.h                        ; 3 uses
  %i.i = icmp eq i32 %i.c, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.02638, 1
  %i.k = sext i32 %.02638 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %4, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = sext i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.127 = phi i32 [ %i.j, %bb.c ], [ %.02638, %bb.b ] ; 2 uses
  %.023 = phi i64 [ %i.n, %bb.c ], [ 1, %bb.b ]   ; 3 uses
  %i.o = icmp sgt i32 %.fr56, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = sext i32 %.02837 to i64                  ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.02837, i32 %7)
  %i.q = sub i32 %smax, %.02837                   ; 2 uses
  %i.r = add nsw i32 %.fr56, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.q) ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 32
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = shl nsw i64 %.023, 2
  %i.w = add nsw i64 %i.v, -1
  %diff.check = icmp ult i64 %i.w, 127
  br i1 %diff.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i64 %i.u, 31                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 32, i64 %i.x
  %n.vec = sub nsw i64 %i.u, %i.z                 ; 3 uses
  %8 = add nsw i64 %n.vec, %i.p
  %9 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %index, %i.p                    ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %.023
  %i.ac = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %wide.load = load <8 x i32>, ptr %i.ac, align 4, !tbaa !8
  %wide.load52 = load <8 x i32>, ptr %i.ad, align 4, !tbaa !8
  %wide.load53 = load <8 x i32>, ptr %i.ae, align 4, !tbaa !8
  %wide.load54 = load <8 x i32>, ptr %i.af, align 4, !tbaa !8
  %i.ag = getelementptr inbounds [4 x i8], ptr %6, i64 %i.aa ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store <8 x i32> %wide.load, ptr %i.ag, align 4, !tbaa !8
  store <8 x i32> %wide.load52, ptr %i.ah, align 4, !tbaa !8
  store <8 x i32> %wide.load53, ptr %i.ai, align 4, !tbaa !8
  store <8 x i32> %wide.load54, ptr %i.aj, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph.preheader57, label %vector.body, !llvm.loop !18

.lr.ph.preheader57:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %8, %vector.body ]
  %.036.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %9, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 3 uses
  %.036 = phi i32 [ %i.aq, %bb.f ], [ %.036.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.al = sub nsw i64 %indvars.iv, %.023
  %i.am = getelementptr inbounds [4 x i8], ptr %6, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !8
  %exitcond.not = icmp eq i32 %.036, %i.q
  br i1 %exitcond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !23
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %i.ap) #9 ; 0 uses
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.aq, %.fr56
  br i1 %exitcond44.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !19

bb.g:                                             ; preds = %.lr.ph41
  %i.ar = add i32 %i.c, -2
  %i.as = add nsw i32 %.02837, 1
  %i.at = sext i32 %.02837 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %i.av = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.g
  %.230 = phi i32 [ %i.as, %bb.g ], [ %.02837, %bb.d ], [ %i.av, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.02638, %bb.g ], [ %.127, %bb.d ], [ %.127, %.loopexit.loopexit ]
  %.1 = phi i32 [ %.02440, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %.loopexit.loopexit ]
  %i.aw = icmp slt i32 %.230, %7
  br i1 %i.aw, label %.lr.ph41, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !10, !11}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !10, !11}
!19 = distinct !{!19, !9, !10}
!20 = distinct !{!20, !9}
!21 = !{!"any pointer", !4, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
