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
  %indvar = phi i32 [ 0, %.lr.ph108.preheader ], [ %indvar.next, %.loopexit ] ; 6 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next125.pre-phi, %.loopexit ] ; 10 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph108.preheader ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.084107 = phi i32 [ 0, %.lr.ph108.preheader ], [ %.185, %.loopexit ] ; 2 uses
  %.090105 = phi ptr [ %1, %.lr.ph108.preheader ], [ %i.el, %.loopexit ] ; 2 uses
  %i.i = sub i32 %i.h, %indvar                    ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.l = sub i32 %i.h, %indvar                    ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = shl nuw nsw i64 %indvars.iv, 2
  %i.p = sub i32 %i.h, %indvar
  %i.q = zext i32 %i.p to i64
  %2 = add i64 %indvars.iv124, %i.q
  %3 = shl i64 %2, 2
  %4 = add i64 %3, 8                              ; 2 uses
  %i.r = sub i32 %i.h, %indvar                    ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = shl nuw nsw i64 %indvars.iv, 2
  %5 = sub i32 %i.h, %indvar
  %6 = zext i32 %5 to i64
  %7 = add i64 %indvars.iv124, %6
  %i.v = shl i64 %7, 2
  %i.w = add i64 %i.v, 8                          ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv124 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv124 ; 5 uses
  %i.aa = trunc i64 %indvars.iv124 to i32
  %i.ab = sub i32 %i.a, %i.aa
  %i.ac = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %i.ab, ptr noundef %i.z, i32 noundef 1) #3 ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv124 to i32 ; 2 uses
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  store i32 %i.ae, ptr %.090105, align 4, !tbaa !4
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %i.aj = fcmp oeq float %i.ai, 0.000000e+00
  br i1 %i.aj, label %.lr.ph108..loopexit_crit_edge, label %bb.c

.lr.ph108..loopexit_crit_edge:                    ; preds = %.lr.ph108
  %.pre129 = add nuw nsw i64 %indvars.iv124, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph108
  %.not94 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.pre = load float, ptr %i.z, align 4, !tbaa !14 ; 2 uses
  br i1 %.not94, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.ah, align 4, !tbaa !14
  store float %i.ai, ptr %i.z, align 4, !tbaa !14
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.ak = phi float [ %i.ai, %bb.d ], [ %.pre, %bb.c ]
  %i.al = fdiv float -1.000000e+00, %i.ak         ; 2 uses
  %i.am = add nuw nsw i64 %indvars.iv124, 1       ; 4 uses
  %i.an = getelementptr i8, ptr %i.z, i64 4       ; 13 uses
  %i.ao = trunc nuw nsw i64 %i.am to i32          ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.i, 7
  br i1 %min.iters.check171, label %.lr.ph.preheader187, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.preheader
  %n.vec173 = and i64 %i.k, 8589934584            ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec173, 2
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap
  %i.ar = trunc i64 %n.vec173 to i32
  %i.as = add i32 %i.ao, %i.ar
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.at = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.an, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !14
  %wide.load180 = load <4 x float>, ptr %i.au, align 4, !tbaa !14
  %i.av = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.aw = fmul <4 x float> %broadcast.splat175, %wide.load180
  store <4 x float> %i.av, ptr %next.gep178, align 4, !tbaa !14
  store <4 x float> %i.aw, ptr %i.au, align 4, !tbaa !14
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.ax, label %middle.block182, label %vector.body176, !llvm.loop !16

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %i.k, %n.vec173
  br i1 %cmp.n183, label %.lr.ph104, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block182
  %.098.ph = phi ptr [ %i.an, %.lr.ph.preheader ], [ %i.aq, %middle.block182 ]
  %.08897.ph = phi i32 [ %i.ao, %.lr.ph.preheader ], [ %i.as, %middle.block182 ]
  br label %.lr.ph

.lr.ph104:                                        ; preds = %.lr.ph, %middle.block182
  %i.ay = trunc nuw nsw i64 %i.am to i32          ; 6 uses
  br i1 %.not94, label %.lr.ph102.us.us.preheader, label %.lr.ph102.us.preheader

.lr.ph102.us.preheader:                           ; preds = %.lr.ph104
  %scevgep146 = getelementptr i8, ptr %i.y, i64 %4
  %min.iters.check151 = icmp ult i32 %i.l, 7
  %n.vec153 = and i64 %i.n, 8589934584            ; 4 uses
  %i.az = shl nuw nsw i64 %n.vec153, 2            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.an, i64 %i.az
  %i.bb = trunc i64 %n.vec153 to i32
  %i.bc = add i32 %i.ay, %i.bb
  %cmp.n166 = icmp eq i64 %i.n, %n.vec153
  br label %.lr.ph102.us

.lr.ph102.us.us.preheader:                        ; preds = %.lr.ph104
  %scevgep136 = getelementptr i8, ptr %i.y, i64 %i.w
  %min.iters.check = icmp ult i32 %i.r, 7
  %n.vec = and i64 %i.t, 8589934584               ; 4 uses
  %i.bd = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.be = getelementptr i8, ptr %i.an, i64 %i.bd
  %i.bf = trunc i64 %n.vec to i32
  %i.bg = add i32 %i.ay, %i.bf
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br label %.lr.ph102.us.us

.lr.ph102.us.us:                                  ; preds = %.lr.ph102.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us ], [ %indvars.iv, %.lr.ph102.us.us.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv119
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv124 ; 5 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph102.us.us
  %i.bl = getelementptr i8, ptr %i.bi, i64 %i.u
  %scevgep135 = getelementptr i8, ptr %i.bi, i64 %i.w
  %bound0 = icmp ult ptr %i.bl, %scevgep136
  %bound1 = icmp ult ptr %i.an, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = getelementptr i8, ptr %i.bj, i64 %i.bd
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.bn ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.bj, i64 %i.bn ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep137, i64 4 ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !20
  %wide.load138 = load <4 x float>, ptr %i.bp, align 4, !tbaa !14, !alias.scope !20
  %i.bq = getelementptr inbounds nuw i8, ptr %next.gep137, i64 20 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.bo, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %wide.load140 = load <4 x float>, ptr %i.bq, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load139)
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load138, <4 x float> %wide.load140)
  store <4 x float> %i.br, ptr %i.bo, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  store <4 x float> %i.bs, ptr %i.bq, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph102.us.us, %middle.block
  %.1101.us.us.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph102.us.us ], [ %i.be, %middle.block ] ; 2 uses
  %.pn100.us.us.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph102.us.us ], [ %i.bm, %middle.block ] ; 2 uses
  %.18999.us.us.ph = phi i32 [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph102.us.us ], [ %i.bg, %middle.block ] ; 4 uses
  %i.bu = sub i32 %i.a, %.18999.us.us.ph
  %xtraiter189 = and i32 %i.bu, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1101.us.us.prol = phi ptr [ %i.bz, %scalar.ph.prol ], [ %.1101.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn100.us.us.prol = phi ptr [ %.080.us.us.prol, %scalar.ph.prol ], [ %.pn100.us.us.ph, %scalar.ph.preheader ]
  %.18999.us.us.prol = phi i32 [ %i.by, %scalar.ph.prol ], [ %.18999.us.us.ph, %scalar.ph.preheader ]
  %prol.iter191 = phi i32 [ %prol.iter191.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.080.us.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.us.prol, i64 4 ; 4 uses
  %i.bv = load float, ptr %.1101.us.us.prol, align 4, !tbaa !14
  %i.bw = load float, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bv, float %i.bw)
  store float %i.bx, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.by = add nuw nsw i32 %.18999.us.us.prol, 1   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1101.us.us.prol, i64 4 ; 2 uses
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !26

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1101.us.us.unr = phi ptr [ %.1101.us.us.ph, %scalar.ph.preheader ], [ %i.bz, %scalar.ph.prol ]
  %.pn100.us.us.unr = phi ptr [ %.pn100.us.us.ph, %scalar.ph.preheader ], [ %.080.us.us.prol, %scalar.ph.prol ]
  %.18999.us.us.unr = phi i32 [ %.18999.us.us.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %i.ca = sub i32 %.18999.us.us.ph, %i.a
  %i.cb = icmp ugt i32 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1101.us.us = phi ptr [ %i.cs, %scalar.ph ], [ %.1101.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.pn100.us.us = phi ptr [ %.080.us.us.3, %scalar.ph ], [ %.pn100.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.18999.us.us = phi i32 [ %i.cr, %scalar.ph ], [ %.18999.us.us.unr, %scalar.ph.prol.loopexit ]
  %.080.us.us = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 4 ; 2 uses
  %i.cc = load float, ptr %.1101.us.us, align 4, !tbaa !14
  %i.cd = load float, ptr %.080.us.us, align 4, !tbaa !14
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cc, float %i.cd)
  store float %i.ce, ptr %.080.us.us, align 4, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 4
  %.080.us.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 8 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !14
  %i.ch = load float, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cg, float %i.ch)
  store float %i.ci, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 8
  %.080.us.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 12 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !14
  %i.cl = load float, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ck, float %i.cl)
  store float %i.cm, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 12
  %.080.us.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 16 ; 3 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14
  %i.cp = load float, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.co, float %i.cp)
  store float %i.cq, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cr = add nuw nsw i32 %.18999.us.us, 4        ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 16
  %exitcond118.not.3 = icmp eq i32 %i.cr, %i.a
  br i1 %exitcond118.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !28

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph102.us.us, !llvm.loop !29

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us ], [ %indvars.iv, %.lr.ph102.us.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv114
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv124 ; 6 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !14
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ag ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !14 ; 7 uses
  store float %i.cy, ptr %i.cv, align 4, !tbaa !14
  store float %i.cw, ptr %i.cx, align 4, !tbaa !14
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph102.us
  %i.cz = getelementptr i8, ptr %i.cu, i64 %i.o
  %scevgep145 = getelementptr i8, ptr %i.cu, i64 %4
  %bound0147 = icmp ult ptr %i.cz, %scevgep146
  %bound1148 = icmp ult ptr %i.an, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.az
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.db = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.an, i64 %i.db ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.cv, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep159, i64 4 ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !14, !alias.scope !30
  %wide.load161 = load <4 x float>, ptr %i.dd, align 4, !tbaa !14, !alias.scope !30
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep159, i64 20 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.dc, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %wide.load163 = load <4 x float>, ptr %i.de, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load160, <4 x float> %wide.load162)
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load161, <4 x float> %wide.load163)
  store <4 x float> %i.df, ptr %i.dc, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  store <4 x float> %i.dg, ptr %i.de, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.dh, label %middle.block165, label %vector.body156, !llvm.loop !35

middle.block165:                                  ; preds = %vector.body156
  br i1 %cmp.n166, label %._crit_edge.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck143, %.lr.ph102.us, %middle.block165
  %.1101.us.ph = phi ptr [ %i.an, %vector.memcheck143 ], [ %i.an, %.lr.ph102.us ], [ %i.ba, %middle.block165 ] ; 2 uses
  %.pn100.us.ph = phi ptr [ %i.cv, %vector.memcheck143 ], [ %i.cv, %.lr.ph102.us ], [ %i.da, %middle.block165 ] ; 2 uses
  %.18999.us.ph = phi i32 [ %i.ay, %vector.memcheck143 ], [ %i.ay, %.lr.ph102.us ], [ %i.bc, %middle.block165 ] ; 4 uses
  %i.di = sub i32 %i.a, %.18999.us.ph
  %xtraiter = and i32 %i.di, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %.1101.us.prol = phi ptr [ %i.dn, %scalar.ph150.prol ], [ %.1101.us.ph, %scalar.ph150.preheader ] ; 2 uses
  %.pn100.us.prol = phi ptr [ %.080.us.prol, %scalar.ph150.prol ], [ %.pn100.us.ph, %scalar.ph150.preheader ]
  %.18999.us.prol = phi i32 [ %i.dm, %scalar.ph150.prol ], [ %.18999.us.ph, %scalar.ph150.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %.080.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.prol, i64 4 ; 4 uses
  %i.dj = load float, ptr %.1101.us.prol, align 4, !tbaa !14
  %i.dk = load float, ptr %.080.us.prol, align 4, !tbaa !14
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.dj, float %i.dk)
  store float %i.dl, ptr %.080.us.prol, align 4, !tbaa !14
  %i.dm = add nuw nsw i32 %.18999.us.prol, 1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1101.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !36

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %.1101.us.unr = phi ptr [ %.1101.us.ph, %scalar.ph150.preheader ], [ %i.dn, %scalar.ph150.prol ]
  %.pn100.us.unr = phi ptr [ %.pn100.us.ph, %scalar.ph150.preheader ], [ %.080.us.prol, %scalar.ph150.prol ]
  %.18999.us.unr = phi i32 [ %.18999.us.ph, %scalar.ph150.preheader ], [ %i.dm, %scalar.ph150.prol ]
  %i.do = sub i32 %.18999.us.ph, %i.a
  %i.dp = icmp ugt i32 %i.do, -4
  br i1 %i.dp, label %._crit_edge.us, label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %.1101.us = phi ptr [ %i.eg, %scalar.ph150 ], [ %.1101.us.unr, %scalar.ph150.prol.loopexit ] ; 5 uses
  %.pn100.us = phi ptr [ %.080.us.3, %scalar.ph150 ], [ %.pn100.us.unr, %scalar.ph150.prol.loopexit ] ; 4 uses
  %.18999.us = phi i32 [ %i.ef, %scalar.ph150 ], [ %.18999.us.unr, %scalar.ph150.prol.loopexit ]
  %.080.us = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 4 ; 2 uses
  %i.dq = load float, ptr %.1101.us, align 4, !tbaa !14
  %i.dr = load float, ptr %.080.us, align 4, !tbaa !14
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.dq, float %i.dr)
  store float %i.ds, ptr %.080.us, align 4, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %.1101.us, i64 4
  %.080.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 8 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !14
  %i.dv = load float, ptr %.080.us.1, align 4, !tbaa !14
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.du, float %i.dv)
  store float %i.dw, ptr %.080.us.1, align 4, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %.1101.us, i64 8
  %.080.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 12 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !14
  %i.dz = load float, ptr %.080.us.2, align 4, !tbaa !14
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.dy, float %i.dz)
  store float %i.ea, ptr %.080.us.2, align 4, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %.1101.us, i64 12
  %.080.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 16 ; 3 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !14
  %i.ed = load float, ptr %.080.us.3, align 4, !tbaa !14
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.ec, float %i.ed)
  store float %i.ee, ptr %.080.us.3, align 4, !tbaa !14
  %i.ef = add nuw nsw i32 %.18999.us, 4           ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1101.us, i64 16
  %exitcond113.not.3 = icmp eq i32 %i.ef, %i.a
  br i1 %exitcond113.not.3, label %._crit_edge.us, label %scalar.ph150, !llvm.loop !37

._crit_edge.us:                                   ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150, %middle.block165
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond117.not, label %.loopexit, label %.lr.ph102.us, !llvm.loop !29

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %.098 = phi ptr [ %i.ek, %.lr.ph ], [ %.098.ph, %.lr.ph.preheader187 ] ; 3 uses
  %.08897 = phi i32 [ %i.ej, %.lr.ph ], [ %.08897.ph, %.lr.ph.preheader187 ]
  %i.eh = load float, ptr %.098, align 4, !tbaa !14
  %i.ei = fmul float %i.al, %i.eh
  store float %i.ei, ptr %.098, align 4, !tbaa !14
  %i.ej = add nuw nsw i32 %.08897, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.098, i64 4
  %exitcond.not = icmp eq i32 %i.ej, %i.a
  br i1 %exitcond.not, label %.lr.ph104, label %.lr.ph, !llvm.loop !38

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us.us, %.lr.ph108..loopexit_crit_edge
  %indvars.iv.next125.pre-phi = phi i64 [ %.pre129, %.lr.ph108..loopexit_crit_edge ], [ %i.am, %._crit_edge.us.us ], [ %i.am, %._crit_edge.us ] ; 2 uses
  %.185 = phi i32 [ %i.ad, %.lr.ph108..loopexit_crit_edge ], [ %.084107, %._crit_edge.us.us ], [ %.084107, %._crit_edge.us ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.090105, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125.pre-phi, %wide.trip.count127
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond128.not, label %.loopexit96, label %.lr.ph108, !llvm.loop !39

.loopexit96:                                      ; preds = %.loopexit, %bb.b
  %.191 = phi ptr [ %1, %bb.b ], [ %i.el, %.loopexit ]
  %.2 = phi i32 [ 0, %bb.b ], [ %.185, %.loopexit ]
  %.182 = phi ptr [ %i.f, %bb.b ], [ %i.z, %.loopexit ]
  store i32 %i.d, ptr %.191, align 4, !tbaa !4
  %i.em = load float, ptr %.182, align 4, !tbaa !14
  %i.en = fcmp oeq float %i.em, 0.000000e+00
  %.3 = select i1 %i.en, i32 %i.a, i32 %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit96
  %.092 = phi i32 [ %.3, %.loopexit96 ], [ -1, %bb.a ]
  ret i32 %.092
}

declare i32 @isamax(...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"FULL", !5, i64 0, !5, i64 4, !6, i64 8}
!10 = !{!9, !5, i64 4}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 float", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !17, !18, !19}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !17, !18}
!29 = distinct !{!29, !17}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !17, !18, !19}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !17, !18}
!38 = distinct !{!38, !17, !19, !18}
!39 = distinct !{!39, !17}
end_hunk_0
