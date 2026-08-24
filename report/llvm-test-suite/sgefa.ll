Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgefa?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %.not = icmp eq i32 %i.a, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.a, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = icmp sgt i32 %i.a, 1
  br i1 %i.g, label %.lr.ph108.preheader, label %.loopexit96

.lr.ph108.preheader:                              ; preds = %bb.b
  %wide.trip.count127 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  %wide.trip.count122 = zext nneg i32 %i.a to i64
  %i.h = add nsw i32 %i.a, -2                     ; 5 uses
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvar.next, %.loopexit ] ; 8 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next125.pre-phi, %.loopexit ] ; 8 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph108.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.084107 = phi i32 [ 0, %.lr.ph108.preheader ], [ %.185, %.loopexit ] ; 2 uses
  %.090105 = phi ptr [ %1, %.lr.ph108.preheader ], [ %i.eq, %.loopexit ] ; 2 uses
  %i.i = trunc i64 %indvar to i32
  %i.j = sub i32 %i.h, %i.i                       ; 2 uses
  %2 = zext i32 %i.j to i64
  %3 = add nuw nsw i64 %2, 1                      ; 2 uses
  %i.k = trunc i64 %indvar to i32
  %i.l = sub i32 %i.h, %i.k                       ; 2 uses
  %4 = zext i32 %i.l to i64
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %i.m = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.n = add nuw i64 %i.m, 8
  %i.o = trunc i64 %indvar to i32
  %i.p = sub i32 %i.h, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add i64 %i.n, %i.r                       ; 2 uses
  %i.t = trunc i64 %indvar to i32
  %i.u = sub i32 %i.h, %i.t                       ; 2 uses
  %6 = zext i32 %i.u to i64
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %i.v = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.w = add nuw i64 %i.v, 8
  %i.x = trunc i64 %indvar to i32
  %i.y = sub i32 %i.h, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = add i64 %i.w, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv124 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv124 ; 5 uses
  %i.af = trunc i64 %indvars.iv124 to i32
  %i.ag = sub i32 %i.a, %i.af
  %i.ah = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %i.ag, ptr noundef %i.ae, i32 noundef 1) #3 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv124 to i32 ; 2 uses
  %i.aj = add nsw i32 %i.ah, %i.ai                ; 2 uses
  store i32 %i.aj, ptr %.090105, align 4, !tbaa !4
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %.lr.ph108..loopexit_crit_edge, label %bb.c

.lr.ph108..loopexit_crit_edge:                    ; preds = %.lr.ph108
  %.pre129 = add nuw nsw i64 %indvars.iv124, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph108
  %.not94 = icmp eq i32 %i.ah, 0                  ; 2 uses
  %.pre = load float, ptr %i.ae, align 4, !tbaa !14 ; 2 uses
  br i1 %.not94, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.am, align 4, !tbaa !14
  store float %i.an, ptr %i.ae, align 4, !tbaa !14
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.ap = phi float [ %i.an, %bb.d ], [ %.pre, %bb.c ]
  %i.aq = fdiv float -1.000000e+00, %i.ap         ; 2 uses
  %i.ar = add nuw nsw i64 %indvars.iv124, 1       ; 4 uses
  %i.as = getelementptr i8, ptr %i.ae, i64 4      ; 13 uses
  %i.at = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.j, 7
  br i1 %min.iters.check171, label %.lr.ph.preheader187, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.preheader
  %n.vec173 = and i64 %3, 8589934584              ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec173, 2
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au
  %i.aw = trunc i64 %n.vec173 to i32
  %i.ax = add i32 %i.at, %i.aw
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.ay = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.as, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !14
  %wide.load180 = load <4 x float>, ptr %i.az, align 4, !tbaa !14
  %i.ba = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.bb = fmul <4 x float> %broadcast.splat175, %wide.load180
  store <4 x float> %i.ba, ptr %next.gep178, align 4, !tbaa !14
  store <4 x float> %i.bb, ptr %i.az, align 4, !tbaa !14
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.bc, label %middle.block182, label %vector.body176, !llvm.loop !16

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %3, %n.vec173
  br i1 %cmp.n183, label %.lr.ph104, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block182
  %.098.ph = phi ptr [ %i.as, %.lr.ph.preheader ], [ %i.av, %middle.block182 ]
  %.08897.ph = phi i32 [ %i.at, %.lr.ph.preheader ], [ %i.ax, %middle.block182 ]
  br label %.lr.ph

.lr.ph104:                                        ; preds = %.lr.ph, %middle.block182
  %i.bd = trunc nuw nsw i64 %i.ar to i32          ; 6 uses
  br i1 %.not94, label %.lr.ph102.us.us.preheader, label %.lr.ph102.us.preheader

.lr.ph102.us.preheader:                           ; preds = %.lr.ph104
  %scevgep146 = getelementptr i8, ptr %i.ad, i64 %i.s
  %min.iters.check151 = icmp ult i32 %i.l, 7
  %n.vec153 = and i64 %5, 8589934584              ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec153, 2            ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 %i.be
  %i.bg = trunc i64 %n.vec153 to i32
  %i.bh = add i32 %i.bd, %i.bg
  %cmp.n166 = icmp eq i64 %5, %n.vec153
  br label %.lr.ph102.us

.lr.ph102.us.us.preheader:                        ; preds = %.lr.ph104
  %scevgep136 = getelementptr i8, ptr %i.ad, i64 %i.ab
  %min.iters.check = icmp ult i32 %i.u, 7
  %n.vec = and i64 %7, 8589934584                 ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bj = getelementptr i8, ptr %i.as, i64 %i.bi
  %i.bk = trunc i64 %n.vec to i32
  %i.bl = add i32 %i.bd, %i.bk
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %.lr.ph102.us.us

.lr.ph102.us.us:                                  ; preds = %.lr.ph102.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us ], [ %indvars.iv, %.lr.ph102.us.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv119
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv124 ; 5 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph102.us.us
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.bq, i64 4
  %scevgep135 = getelementptr i8, ptr %i.bn, i64 %i.ab
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %i.as, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bi
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bs ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.bo, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %next.gep137, i64 4 ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !20
  %wide.load138 = load <4 x float>, ptr %i.bu, align 4, !tbaa !14, !alias.scope !20
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep137, i64 20 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.bt, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %wide.load140 = load <4 x float>, ptr %i.bv, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load139)
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load138, <4 x float> %wide.load140)
  store <4 x float> %i.bw, ptr %i.bt, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  store <4 x float> %i.bx, ptr %i.bv, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph102.us.us, %middle.block
  %.1101.us.us.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph102.us.us ], [ %i.bj, %middle.block ] ; 2 uses
  %.pn100.us.us.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph102.us.us ], [ %i.br, %middle.block ] ; 2 uses
  %.18999.us.us.ph = phi i32 [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph102.us.us ], [ %i.bl, %middle.block ] ; 4 uses
  %i.bz = sub i32 %i.a, %.18999.us.us.ph
  %xtraiter189 = and i32 %i.bz, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1101.us.us.prol = phi ptr [ %i.ce, %scalar.ph.prol ], [ %.1101.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn100.us.us.prol = phi ptr [ %.080.us.us.prol, %scalar.ph.prol ], [ %.pn100.us.us.ph, %scalar.ph.preheader ]
  %.18999.us.us.prol = phi i32 [ %i.cd, %scalar.ph.prol ], [ %.18999.us.us.ph, %scalar.ph.preheader ]
  %prol.iter191 = phi i32 [ %prol.iter191.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.080.us.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.us.prol, i64 4 ; 4 uses
  %i.ca = load float, ptr %.1101.us.us.prol, align 4, !tbaa !14
  %i.cb = load float, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ca, float %i.cb)
  store float %i.cc, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.cd = add nuw nsw i32 %.18999.us.us.prol, 1   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1101.us.us.prol, i64 4 ; 2 uses
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !26

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1101.us.us.unr = phi ptr [ %.1101.us.us.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %.pn100.us.us.unr = phi ptr [ %.pn100.us.us.ph, %scalar.ph.preheader ], [ %.080.us.us.prol, %scalar.ph.prol ]
  %.18999.us.us.unr = phi i32 [ %.18999.us.us.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.cf = sub i32 %.18999.us.us.ph, %i.a
  %i.cg = icmp ugt i32 %i.cf, -4
  br i1 %i.cg, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1101.us.us = phi ptr [ %i.cx, %scalar.ph ], [ %.1101.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.pn100.us.us = phi ptr [ %.080.us.us.3, %scalar.ph ], [ %.pn100.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.18999.us.us = phi i32 [ %i.cw, %scalar.ph ], [ %.18999.us.us.unr, %scalar.ph.prol.loopexit ]
  %.080.us.us = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 4 ; 2 uses
  %i.ch = load float, ptr %.1101.us.us, align 4, !tbaa !14
  %i.ci = load float, ptr %.080.us.us, align 4, !tbaa !14
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ch, float %i.ci)
  store float %i.cj, ptr %.080.us.us, align 4, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 4
  %.080.us.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 8 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !14
  %i.cm = load float, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cl, float %i.cm)
  store float %i.cn, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 8
  %.080.us.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 12 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !14
  %i.cq = load float, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cp, float %i.cq)
  store float %i.cr, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 12
  %.080.us.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 16 ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !14
  %i.cu = load float, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ct, float %i.cu)
  store float %i.cv, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cw = add nuw nsw i32 %.18999.us.us, 4        ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 16
  %exitcond118.not.3 = icmp eq i32 %i.cw, %i.a
  br i1 %exitcond118.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !28

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph102.us.us, !llvm.loop !29

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us ], [ %indvars.iv, %.lr.ph102.us.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv114
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !11 ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv124 ; 6 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !14
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.al ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !14 ; 7 uses
  store float %i.dd, ptr %i.da, align 4, !tbaa !14
  store float %i.db, ptr %i.dc, align 4, !tbaa !14
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph102.us
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.m
  %scevgep144 = getelementptr i8, ptr %i.de, i64 4
  %scevgep145 = getelementptr i8, ptr %i.cz, i64 %i.s
  %bound0147 = icmp ult ptr %scevgep144, %scevgep146
  %bound1148 = icmp ult ptr %i.as, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %i.df = getelementptr i8, ptr %i.da, i64 %i.be
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.dg = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.as, i64 %i.dg ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.da, i64 %i.dg ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %next.gep159, i64 4 ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !14, !alias.scope !30
  %wide.load161 = load <4 x float>, ptr %i.di, align 4, !tbaa !14, !alias.scope !30
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep159, i64 20 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.dh, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %wide.load163 = load <4 x float>, ptr %i.dj, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load160, <4 x float> %wide.load162)
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load161, <4 x float> %wide.load163)
  store <4 x float> %i.dk, ptr %i.dh, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  store <4 x float> %i.dl, ptr %i.dj, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.dm, label %middle.block165, label %vector.body156, !llvm.loop !35

middle.block165:                                  ; preds = %vector.body156
  br i1 %cmp.n166, label %._crit_edge.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck143, %.lr.ph102.us, %middle.block165
  %.1101.us.ph = phi ptr [ %i.as, %vector.memcheck143 ], [ %i.as, %.lr.ph102.us ], [ %i.bf, %middle.block165 ] ; 2 uses
  %.pn100.us.ph = phi ptr [ %i.da, %vector.memcheck143 ], [ %i.da, %.lr.ph102.us ], [ %i.df, %middle.block165 ] ; 2 uses
  %.18999.us.ph = phi i32 [ %i.bd, %vector.memcheck143 ], [ %i.bd, %.lr.ph102.us ], [ %i.bh, %middle.block165 ] ; 4 uses
  %i.dn = sub i32 %i.a, %.18999.us.ph
  %xtraiter = and i32 %i.dn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %.1101.us.prol = phi ptr [ %i.ds, %scalar.ph150.prol ], [ %.1101.us.ph, %scalar.ph150.preheader ] ; 2 uses
  %.pn100.us.prol = phi ptr [ %.080.us.prol, %scalar.ph150.prol ], [ %.pn100.us.ph, %scalar.ph150.preheader ]
  %.18999.us.prol = phi i32 [ %i.dr, %scalar.ph150.prol ], [ %.18999.us.ph, %scalar.ph150.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %.080.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.prol, i64 4 ; 4 uses
  %i.do = load float, ptr %.1101.us.prol, align 4, !tbaa !14
  %i.dp = load float, ptr %.080.us.prol, align 4, !tbaa !14
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.do, float %i.dp)
  store float %i.dq, ptr %.080.us.prol, align 4, !tbaa !14
  %i.dr = add nuw nsw i32 %.18999.us.prol, 1      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1101.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !36

end_hunk_0
