Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgefa?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !25     ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %.not = icmp eq i32 %i.a, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.a, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp sgt i32 %i.a, 1
  br i1 %i.g, label %.lr.ph108.preheader, label %.loopexit96

.lr.ph108.preheader:                              ; preds = %bb.b
  %i.h = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count127 = zext nneg i32 %i.d to i64
  %i.i = add nsw i32 %i.a, -2                     ; 5 uses
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvar.next, %.loopexit ] ; 8 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next125.pre-phi, %.loopexit ] ; 8 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph108.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.084107 = phi i32 [ 0, %.lr.ph108.preheader ], [ %.185, %.loopexit ] ; 2 uses
  %.090105 = phi ptr [ %1, %.lr.ph108.preheader ], [ %i.es, %.loopexit ] ; 2 uses
  %2 = trunc i64 %indvar to i32
  %3 = sub i32 %i.i, %2                           ; 2 uses
  %4 = trunc i64 %indvar to i32
  %5 = sub i32 %i.i, %4                           ; 2 uses
  %i.j = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.k = add nuw i64 %i.j, 8
  %i.l = trunc i64 %indvar to i32
  %i.m = sub i32 %i.i, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = add i64 %i.k, %i.o                       ; 2 uses
  %i.q = trunc i64 %indvar to i32
  %6 = sub i32 %i.i, %i.q                         ; 2 uses
  %i.r = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.s = add nuw i64 %i.r, 8
  %i.t = trunc i64 %indvar to i32
  %i.u = sub i32 %i.i, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.s, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv124 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv124 ; 5 uses
  %i.ab = trunc i64 %indvars.iv124 to i32
  %i.ac = sub i32 %i.a, %i.ab
  %i.ad = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %i.ac, ptr noundef %i.aa, i32 noundef 1) #3 ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv124 to i32 ; 2 uses
  %i.af = add nsw i32 %i.ad, %i.ae                ; 2 uses
  store i32 %i.af, ptr %.090105, align 4, !tbaa !7
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !31 ; 3 uses
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  br i1 %i.ak, label %.lr.ph108..loopexit_crit_edge, label %bb.c

.lr.ph108..loopexit_crit_edge:                    ; preds = %.lr.ph108
  %.pre129 = add nuw nsw i64 %indvars.iv124, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph108
  %.not94 = icmp eq i32 %i.ad, 0                  ; 2 uses
  %.pre = load float, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  br i1 %.not94, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.ai, align 4, !tbaa !31
  store float %i.aj, ptr %i.aa, align 4, !tbaa !31
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.al = phi float [ %i.aj, %bb.d ], [ %.pre, %bb.c ]
  %i.am = fdiv float -1.000000e+00, %i.al         ; 2 uses
  %i.an = add nuw nsw i64 %indvars.iv124, 1       ; 4 uses
  %i.ao = getelementptr i8, ptr %i.aa, i64 4      ; 13 uses
  %i.ap = trunc nuw nsw i64 %i.an to i32          ; 2 uses
  %i.aq = zext i32 %3 to i64
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check171 = icmp ult i32 %3, 7
  br i1 %min.iters.check171, label %.lr.ph.preheader187, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.preheader
  %n.vec173 = and i64 %i.ar, 8589934584           ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec173, 2
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = trunc i64 %n.vec173 to i32
  %i.av = add i32 %i.ap, %i.au
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.ao, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !31
  %wide.load180 = load <4 x float>, ptr %i.ax, align 4, !tbaa !31
  %i.ay = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.az = fmul <4 x float> %broadcast.splat175, %wide.load180
  store <4 x float> %i.ay, ptr %next.gep178, align 4, !tbaa !31
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !31
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.ba, label %middle.block182, label %vector.body176, !llvm.loop !8

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %i.ar, %n.vec173
  br i1 %cmp.n183, label %.lr.ph104, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block182
  %.098.ph = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.at, %middle.block182 ]
  %.08897.ph = phi i32 [ %i.ap, %.lr.ph.preheader ], [ %i.av, %middle.block182 ]
  br label %.lr.ph

.lr.ph104:                                        ; preds = %.lr.ph, %middle.block182
  %i.bb = trunc nuw nsw i64 %i.an to i32          ; 6 uses
  br i1 %.not94, label %.lr.ph102.us.us.preheader, label %.lr.ph102.us.preheader

.lr.ph102.us.preheader:                           ; preds = %.lr.ph104
  %scevgep146 = getelementptr i8, ptr %i.z, i64 %i.p
  %i.bc = zext i32 %5 to i64
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check151 = icmp ult i32 %5, 7
  %n.vec153 = and i64 %i.bd, 8589934584           ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec153, 2            ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ao, i64 %i.be
  %i.bg = trunc i64 %n.vec153 to i32
  %i.bh = add i32 %i.bb, %i.bg
  %cmp.n166 = icmp eq i64 %i.bd, %n.vec153
  br label %.lr.ph102.us

.lr.ph102.us.us.preheader:                        ; preds = %.lr.ph104
  %scevgep136 = getelementptr i8, ptr %i.z, i64 %i.x
  %i.bi = zext i32 %6 to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %6, 7
  %n.vec = and i64 %i.bj, 8589934584              ; 4 uses
  %i.bk = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bk
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %i.bb, %i.bm
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br label %.lr.ph102.us.us

.lr.ph102.us.us:                                  ; preds = %.lr.ph102.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us ], [ %indvars.iv, %.lr.ph102.us.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv119
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !29 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv124 ; 5 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !31 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph102.us.us
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.bs, i64 4
  %scevgep135 = getelementptr i8, ptr %i.bp, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %i.ao, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bk
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.bu ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.bq, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep137, i64 4 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !31, !alias.scope !35
  %wide.load138 = load <4 x float>, ptr %i.bw, align 4, !tbaa !31, !alias.scope !35
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep137, i64 20 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.bv, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %wide.load140 = load <4 x float>, ptr %i.bx, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load139)
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load138, <4 x float> %wide.load140)
  store <4 x float> %i.by, ptr %i.bv, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  store <4 x float> %i.bz, ptr %i.bx, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph102.us.us, %middle.block
  %.1101.us.us.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph102.us.us ], [ %i.bl, %middle.block ] ; 2 uses
  %.pn100.us.us.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph102.us.us ], [ %i.bt, %middle.block ] ; 2 uses
  %.18999.us.us.ph = phi i32 [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph102.us.us ], [ %i.bn, %middle.block ] ; 4 uses
  %i.cb = sub i32 %i.a, %.18999.us.us.ph
  %xtraiter189 = and i32 %i.cb, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1101.us.us.prol = phi ptr [ %i.cg, %scalar.ph.prol ], [ %.1101.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn100.us.us.prol = phi ptr [ %.080.us.us.prol, %scalar.ph.prol ], [ %.pn100.us.us.ph, %scalar.ph.preheader ]
  %.18999.us.us.prol = phi i32 [ %i.cf, %scalar.ph.prol ], [ %.18999.us.us.ph, %scalar.ph.preheader ]
  %prol.iter191 = phi i32 [ %prol.iter191.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.080.us.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.us.prol, i64 4 ; 4 uses
  %i.cc = load float, ptr %.1101.us.us.prol, align 4, !tbaa !31
  %i.cd = load float, ptr %.080.us.us.prol, align 4, !tbaa !31
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cc, float %i.cd)
  store float %i.ce, ptr %.080.us.us.prol, align 4, !tbaa !31
  %i.cf = add nuw nsw i32 %.18999.us.us.prol, 1   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1101.us.us.prol, i64 4 ; 2 uses
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !13

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1101.us.us.unr = phi ptr [ %.1101.us.us.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %.pn100.us.us.unr = phi ptr [ %.pn100.us.us.ph, %scalar.ph.preheader ], [ %.080.us.us.prol, %scalar.ph.prol ]
  %.18999.us.us.unr = phi i32 [ %.18999.us.us.ph, %scalar.ph.preheader ], [ %i.cf, %scalar.ph.prol ]
  %i.ch = sub i32 %.18999.us.us.ph, %i.a
  %i.ci = icmp ugt i32 %i.ch, -4
  br i1 %i.ci, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1101.us.us = phi ptr [ %i.cz, %scalar.ph ], [ %.1101.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.pn100.us.us = phi ptr [ %.080.us.us.3, %scalar.ph ], [ %.pn100.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.18999.us.us = phi i32 [ %i.cy, %scalar.ph ], [ %.18999.us.us.unr, %scalar.ph.prol.loopexit ]
  %.080.us.us = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 4 ; 2 uses
  %i.cj = load float, ptr %.1101.us.us, align 4, !tbaa !31
  %i.ck = load float, ptr %.080.us.us, align 4, !tbaa !31
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cj, float %i.ck)
  store float %i.cl, ptr %.080.us.us, align 4, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 4
  %.080.us.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 8 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !31
  %i.co = load float, ptr %.080.us.us.1, align 4, !tbaa !31
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cn, float %i.co)
  store float %i.cp, ptr %.080.us.us.1, align 4, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 8
  %.080.us.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 12 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !31
  %i.cs = load float, ptr %.080.us.us.2, align 4, !tbaa !31
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cr, float %i.cs)
  store float %i.ct, ptr %.080.us.us.2, align 4, !tbaa !31
  %i.cu = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 12
  %.080.us.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 16 ; 3 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !31
  %i.cw = load float, ptr %.080.us.us.3, align 4, !tbaa !31
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cv, float %i.cw)
  store float %i.cx, ptr %.080.us.us.3, align 4, !tbaa !31
  %i.cy = add nuw nsw i32 %.18999.us.us, 4        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 16
  %exitcond118.not.3 = icmp eq i32 %i.cy, %i.a
  br i1 %exitcond118.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !14

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %i.h
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph102.us.us, !llvm.loop !15

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us ], [ %indvars.iv, %.lr.ph102.us.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv114
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29 ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv124 ; 6 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !31
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ah ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !31 ; 7 uses
  store float %i.df, ptr %i.dc, align 4, !tbaa !31
  store float %i.dd, ptr %i.de, align 4, !tbaa !31
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph102.us
  %i.dg = getelementptr i8, ptr %i.db, i64 %i.j
  %scevgep144 = getelementptr i8, ptr %i.dg, i64 4
  %scevgep145 = getelementptr i8, ptr %i.db, i64 %i.p
  %bound0147 = icmp ult ptr %scevgep144, %scevgep146
  %bound1148 = icmp ult ptr %i.ao, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %i.dh = getelementptr i8, ptr %i.dc, i64 %i.be
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.di = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.ao, i64 %i.di ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.dc, i64 %i.di ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep159, i64 4 ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !31, !alias.scope !38
  %wide.load161 = load <4 x float>, ptr %i.dk, align 4, !tbaa !31, !alias.scope !38
  %i.dl = getelementptr inbounds nuw i8, ptr %next.gep159, i64 20 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.dj, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %wide.load163 = load <4 x float>, ptr %i.dl, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load160, <4 x float> %wide.load162)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load161, <4 x float> %wide.load163)
  store <4 x float> %i.dm, ptr %i.dj, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  store <4 x float> %i.dn, ptr %i.dl, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.do, label %middle.block165, label %vector.body156, !llvm.loop !19

middle.block165:                                  ; preds = %vector.body156
  br i1 %cmp.n166, label %._crit_edge.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck143, %.lr.ph102.us, %middle.block165
  %.1101.us.ph = phi ptr [ %i.ao, %vector.memcheck143 ], [ %i.ao, %.lr.ph102.us ], [ %i.bf, %middle.block165 ] ; 2 uses
  %.pn100.us.ph = phi ptr [ %i.dc, %vector.memcheck143 ], [ %i.dc, %.lr.ph102.us ], [ %i.dh, %middle.block165 ] ; 2 uses
  %.18999.us.ph = phi i32 [ %i.bb, %vector.memcheck143 ], [ %i.bb, %.lr.ph102.us ], [ %i.bh, %middle.block165 ] ; 4 uses
  %i.dp = sub i32 %i.a, %.18999.us.ph
  %xtraiter = and i32 %i.dp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %.1101.us.prol = phi ptr [ %i.du, %scalar.ph150.prol ], [ %.1101.us.ph, %scalar.ph150.preheader ] ; 2 uses
  %.pn100.us.prol = phi ptr [ %.080.us.prol, %scalar.ph150.prol ], [ %.pn100.us.ph, %scalar.ph150.preheader ]
  %.18999.us.prol = phi i32 [ %i.dt, %scalar.ph150.prol ], [ %.18999.us.ph, %scalar.ph150.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %.080.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.prol, i64 4 ; 4 uses
  %i.dq = load float, ptr %.1101.us.prol, align 4, !tbaa !31
  %i.dr = load float, ptr %.080.us.prol, align 4, !tbaa !31
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dq, float %i.dr)
  store float %i.ds, ptr %.080.us.prol, align 4, !tbaa !31
  %i.dt = add nuw nsw i32 %.18999.us.prol, 1      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1101.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !20

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
end_hunk_0
