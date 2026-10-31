Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgefa?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !25     ; 17 uses
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
  %i.i = add nsw i32 %i.a, -2                     ; 2 uses
  %i.j = add nsw i32 %i.a, -2
  %i.k = add nsw i32 %i.a, -2
  %i.l = add nsw i32 %i.a, -2
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.loopexit
  %indvar.a = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvar.next.a, %.loopexit ] ; 5 uses
  %indvar = phi i32 [ 0, %.lr.ph108.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next125.pre-phi, %.loopexit ] ; 8 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph108.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.084107 = phi i32 [ 0, %.lr.ph108.preheader ], [ %.185, %.loopexit ] ; 2 uses
  %.090105 = phi ptr [ %1, %.lr.ph108.preheader ], [ %i.ex, %.loopexit ] ; 2 uses
  %i.m = shl nuw nsw i64 %indvar.a, 2             ; 2 uses
  %i.n = add nuw i64 %i.m, 8
  %i.o = trunc i64 %indvar.a to i32
  %i.p = sub i32 %i.i, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add i64 %i.n, %i.r                       ; 2 uses
  %i.t = shl nuw nsw i64 %indvar.a, 2             ; 2 uses
  %i.u = add nuw i64 %i.t, 8
  %i.v = trunc i64 %indvar.a to i32
  %i.w = sub i32 %i.i, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = add i64 %i.u, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv124 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv124 ; 5 uses
  %i.ad = trunc i64 %indvars.iv124 to i32
  %i.ae = sub i32 %i.a, %i.ad
  %i.af = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %i.ae, ptr noundef %i.ac, i32 noundef 1) #3 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv124 to i32 ; 4 uses
  %i.ah = add nsw i32 %i.af, %i.ag                ; 2 uses
  store i32 %i.ah, ptr %.090105, align 4, !tbaa !7
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.aj = sext i32 %i.ah to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !31 ; 3 uses
  %i.am = fcmp oeq float %i.al, 0.000000e+00
  br i1 %i.am, label %.lr.ph108..loopexit_crit_edge, label %bb.c

.lr.ph108..loopexit_crit_edge:                    ; preds = %.lr.ph108
  %.pre129 = add nuw nsw i64 %indvars.iv124, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph108
  %.not94 = icmp eq i32 %i.af, 0                  ; 2 uses
  %.pre = load float, ptr %i.ac, align 4, !tbaa !31 ; 2 uses
  br i1 %.not94, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.ak, align 4, !tbaa !31
  store float %i.al, ptr %i.ac, align 4, !tbaa !31
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.an = phi float [ %i.al, %bb.d ], [ %.pre, %bb.c ]
  %i.ao = fdiv float -1.000000e+00, %i.an         ; 2 uses
  %i.ap = add nuw nsw i64 %indvars.iv124, 1       ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 4      ; 13 uses
  %i.ar = trunc nuw nsw i64 %i.ap to i32          ; 2 uses
  %i.as = sub i32 %i.j, %i.ag                     ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.as, 7
  br i1 %min.iters.check171, label %.lr.ph.preheader187, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.preheader
  %n.vec173 = and i64 %i.au, 8589934584           ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec173, 2
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = trunc i64 %n.vec173 to i32
  %i.ay = add i32 %i.ar, %i.ax
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.az = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.aq, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !31
  %wide.load180 = load <4 x float>, ptr %i.ba, align 4, !tbaa !31
  %i.bb = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.bc = fmul <4 x float> %broadcast.splat175, %wide.load180
  store <4 x float> %i.bb, ptr %next.gep178, align 4, !tbaa !31
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !31
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.bd, label %middle.block182, label %vector.body176, !llvm.loop !8

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %i.au, %n.vec173
  br i1 %cmp.n183, label %.lr.ph104, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block182
  %.098.ph = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.aw, %middle.block182 ]
  %.08897.ph = phi i32 [ %i.ar, %.lr.ph.preheader ], [ %i.ay, %middle.block182 ]
  br label %.lr.ph

.lr.ph104:                                        ; preds = %.lr.ph, %middle.block182
  %i.be = trunc nuw nsw i64 %i.ap to i32          ; 6 uses
  br i1 %.not94, label %.lr.ph102.us.us.preheader, label %.lr.ph102.us.preheader

.lr.ph102.us.preheader:                           ; preds = %.lr.ph104
  %scevgep146 = getelementptr i8, ptr %i.ab, i64 %i.s
  %i.bf = sub i32 %i.k, %i.ag                     ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check151 = icmp ult i32 %i.bf, 7
  %n.vec153 = and i64 %i.bh, 8589934584           ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec153, 2            ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aq, i64 %i.bi
  %i.bk = trunc i64 %n.vec153 to i32
  %i.bl = add i32 %i.be, %i.bk
  %cmp.n166 = icmp eq i64 %i.bh, %n.vec153
  br label %.lr.ph102.us

.lr.ph102.us.us.preheader:                        ; preds = %.lr.ph104
  %scevgep136 = getelementptr i8, ptr %i.ab, i64 %i.z
  %i.bm = sub i32 %i.l, %indvar                   ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 7
  %n.vec = and i64 %i.bo, 8589934584              ; 4 uses
  %i.bp = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bq = getelementptr i8, ptr %i.aq, i64 %i.bp
  %i.br = trunc i64 %n.vec to i32
  %i.bs = add i32 %i.be, %i.br
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br label %.lr.ph102.us.us

.lr.ph102.us.us:                                  ; preds = %.lr.ph102.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us ], [ %indvars.iv, %.lr.ph102.us.us.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv119
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29 ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv124 ; 5 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !31 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph102.us.us
  %i.bx = getelementptr i8, ptr %i.bu, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.bx, i64 4
  %scevgep135 = getelementptr i8, ptr %i.bu, i64 %i.z
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %i.aq, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = getelementptr i8, ptr %i.bv, i64 %i.bp
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bz ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.bv, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep137, i64 4 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !31, !alias.scope !35
  %wide.load138 = load <4 x float>, ptr %i.cb, align 4, !tbaa !31, !alias.scope !35
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep137, i64 20 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.ca, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %wide.load140 = load <4 x float>, ptr %i.cc, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load139)
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load138, <4 x float> %wide.load140)
  store <4 x float> %i.cd, ptr %i.ca, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  store <4 x float> %i.ce, ptr %i.cc, align 4, !tbaa !31, !alias.scope !36, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph102.us.us, %middle.block
  %.1101.us.us.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph102.us.us ], [ %i.bq, %middle.block ] ; 2 uses
  %.pn100.us.us.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph102.us.us ], [ %i.by, %middle.block ] ; 2 uses
  %.18999.us.us.ph = phi i32 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph102.us.us ], [ %i.bs, %middle.block ] ; 4 uses
  %i.cg = sub i32 %i.a, %.18999.us.us.ph
  %xtraiter189 = and i32 %i.cg, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1101.us.us.prol = phi ptr [ %i.cl, %scalar.ph.prol ], [ %.1101.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn100.us.us.prol = phi ptr [ %.080.us.us.prol, %scalar.ph.prol ], [ %.pn100.us.us.ph, %scalar.ph.preheader ]
  %.18999.us.us.prol = phi i32 [ %i.ck, %scalar.ph.prol ], [ %.18999.us.us.ph, %scalar.ph.preheader ]
  %prol.iter191 = phi i32 [ %prol.iter191.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.080.us.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.us.prol, i64 4 ; 4 uses
  %i.ch = load float, ptr %.1101.us.us.prol, align 4, !tbaa !31
  %i.ci = load float, ptr %.080.us.us.prol, align 4, !tbaa !31
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ch, float %i.ci)
  store float %i.cj, ptr %.080.us.us.prol, align 4, !tbaa !31
  %i.ck = add nuw nsw i32 %.18999.us.us.prol, 1   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1101.us.us.prol, i64 4 ; 2 uses
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !13

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1101.us.us.unr = phi ptr [ %.1101.us.us.ph, %scalar.ph.preheader ], [ %i.cl, %scalar.ph.prol ]
  %.pn100.us.us.unr = phi ptr [ %.pn100.us.us.ph, %scalar.ph.preheader ], [ %.080.us.us.prol, %scalar.ph.prol ]
  %.18999.us.us.unr = phi i32 [ %.18999.us.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %i.cm = sub i32 %.18999.us.us.ph, %i.a
  %i.cn = icmp ugt i32 %i.cm, -4
  br i1 %i.cn, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1101.us.us = phi ptr [ %i.de, %scalar.ph ], [ %.1101.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.pn100.us.us = phi ptr [ %.080.us.us.3, %scalar.ph ], [ %.pn100.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.18999.us.us = phi i32 [ %i.dd, %scalar.ph ], [ %.18999.us.us.unr, %scalar.ph.prol.loopexit ]
  %.080.us.us = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 4 ; 2 uses
  %i.co = load float, ptr %.1101.us.us, align 4, !tbaa !31
  %i.cp = load float, ptr %.080.us.us, align 4, !tbaa !31
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.co, float %i.cp)
  store float %i.cq, ptr %.080.us.us, align 4, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 4
  %.080.us.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 8 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !31
  %i.ct = load float, ptr %.080.us.us.1, align 4, !tbaa !31
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cs, float %i.ct)
  store float %i.cu, ptr %.080.us.us.1, align 4, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 8
  %.080.us.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 12 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !31
  %i.cx = load float, ptr %.080.us.us.2, align 4, !tbaa !31
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cw, float %i.cx)
  store float %i.cy, ptr %.080.us.us.2, align 4, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 12
  %.080.us.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 16 ; 3 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !31
  %i.db = load float, ptr %.080.us.us.3, align 4, !tbaa !31
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.da, float %i.db)
  store float %i.dc, ptr %.080.us.us.3, align 4, !tbaa !31
  %i.dd = add nuw nsw i32 %.18999.us.us, 4        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 16
  %exitcond118.not.3 = icmp eq i32 %i.dd, %i.a
  br i1 %exitcond118.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !14

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %i.h
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph102.us.us, !llvm.loop !15

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us ], [ %indvars.iv, %.lr.ph102.us.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv114
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv124 ; 6 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !31
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.aj ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !31 ; 7 uses
  store float %i.dk, ptr %i.dh, align 4, !tbaa !31
  store float %i.di, ptr %i.dj, align 4, !tbaa !31
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph102.us
  %i.dl = getelementptr i8, ptr %i.dg, i64 %i.m
  %scevgep144 = getelementptr i8, ptr %i.dl, i64 4
  %scevgep145 = getelementptr i8, ptr %i.dg, i64 %i.s
  %bound0147 = icmp ult ptr %scevgep144, %scevgep146
  %bound1148 = icmp ult ptr %i.aq, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %i.dm = getelementptr i8, ptr %i.dh, i64 %i.bi
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.dn = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.aq, i64 %i.dn ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.dh, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep159, i64 4 ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !31, !alias.scope !38
  %wide.load161 = load <4 x float>, ptr %i.dp, align 4, !tbaa !31, !alias.scope !38
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep159, i64 20 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.do, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %wide.load163 = load <4 x float>, ptr %i.dq, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load160, <4 x float> %wide.load162)
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load161, <4 x float> %wide.load163)
  store <4 x float> %i.dr, ptr %i.do, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  store <4 x float> %i.ds, ptr %i.dq, align 4, !tbaa !31, !alias.scope !39, !noalias !38
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.dt, label %middle.block165, label %vector.body156, !llvm.loop !19

middle.block165:                                  ; preds = %vector.body156
  br i1 %cmp.n166, label %._crit_edge.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck143, %.lr.ph102.us, %middle.block165
  %.1101.us.ph = phi ptr [ %i.aq, %vector.memcheck143 ], [ %i.aq, %.lr.ph102.us ], [ %i.bj, %middle.block165 ] ; 2 uses
  %.pn100.us.ph = phi ptr [ %i.dh, %vector.memcheck143 ], [ %i.dh, %.lr.ph102.us ], [ %i.dm, %middle.block165 ] ; 2 uses
  %.18999.us.ph = phi i32 [ %i.be, %vector.memcheck143 ], [ %i.be, %.lr.ph102.us ], [ %i.bl, %middle.block165 ] ; 4 uses
  %i.du = sub i32 %i.a, %.18999.us.ph
  %xtraiter = and i32 %i.du, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %.1101.us.prol = phi ptr [ %i.dz, %scalar.ph150.prol ], [ %.1101.us.ph, %scalar.ph150.preheader ] ; 2 uses
  %.pn100.us.prol = phi ptr [ %.080.us.prol, %scalar.ph150.prol ], [ %.pn100.us.ph, %scalar.ph150.preheader ]
  %.18999.us.prol = phi i32 [ %i.dy, %scalar.ph150.prol ], [ %.18999.us.ph, %scalar.ph150.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %.080.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.prol, i64 4 ; 4 uses
  %i.dv = load float, ptr %.1101.us.prol, align 4, !tbaa !31
  %i.dw = load float, ptr %.080.us.prol, align 4, !tbaa !31
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dv, float %i.dw)
  store float %i.dx, ptr %.080.us.prol, align 4, !tbaa !31
  %i.dy = add nuw nsw i32 %.18999.us.prol, 1      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1101.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !20

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %.1101.us.unr = phi ptr [ %.1101.us.ph, %scalar.ph150.preheader ], [ %i.dz, %scalar.ph150.prol ]
  %.pn100.us.unr = phi ptr [ %.pn100.us.ph, %scalar.ph150.preheader ], [ %.080.us.prol, %scalar.ph150.prol ]
  %.18999.us.unr = phi i32 [ %.18999.us.ph, %scalar.ph150.preheader ], [ %i.dy, %scalar.ph150.prol ]
  %i.ea = sub i32 %.18999.us.ph, %i.a
  %i.eb = icmp ugt i32 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.us, label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %.1101.us = phi ptr [ %i.es, %scalar.ph150 ], [ %.1101.us.unr, %scalar.ph150.prol.loopexit ] ; 5 uses
  %.pn100.us = phi ptr [ %.080.us.3, %scalar.ph150 ], [ %.pn100.us.unr, %scalar.ph150.prol.loopexit ] ; 4 uses
  %.18999.us = phi i32 [ %i.er, %scalar.ph150 ], [ %.18999.us.unr, %scalar.ph150.prol.loopexit ]
  %.080.us = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 4 ; 2 uses
  %i.ec = load float, ptr %.1101.us, align 4, !tbaa !31
  %i.ed = load float, ptr %.080.us, align 4, !tbaa !31
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.ec, float %i.ed)
  store float %i.ee, ptr %.080.us, align 4, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %.1101.us, i64 4
  %.080.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !31
  %i.eh = load float, ptr %.080.us.1, align 4, !tbaa !31
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.eg, float %i.eh)
  store float %i.ei, ptr %.080.us.1, align 4, !tbaa !31
  %i.ej = getelementptr inbounds nuw i8, ptr %.1101.us, i64 8
  %.080.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 12 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !31
  %i.el = load float, ptr %.080.us.2, align 4, !tbaa !31
  %i.em = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.ek, float %i.el)
  store float %i.em, ptr %.080.us.2, align 4, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %.1101.us, i64 12
  %.080.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us, i64 16 ; 3 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !31
  %i.ep = load float, ptr %.080.us.3, align 4, !tbaa !31
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.eo, float %i.ep)
  store float %i.eq, ptr %.080.us.3, align 4, !tbaa !31
  %i.er = add nuw nsw i32 %.18999.us, 4           ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1101.us, i64 16
  %exitcond113.not.3 = icmp eq i32 %i.er, %i.a
  br i1 %exitcond113.not.3, label %._crit_edge.us, label %scalar.ph150, !llvm.loop !21

._crit_edge.us:                                   ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150, %middle.block165
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, %i.h
  br i1 %exitcond117.not, label %.loopexit, label %.lr.ph102.us, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %.098 = phi ptr [ %i.ew, %.lr.ph ], [ %.098.ph, %.lr.ph.preheader187 ] ; 3 uses
  %.08897 = phi i32 [ %i.ev, %.lr.ph ], [ %.08897.ph, %.lr.ph.preheader187 ]
  %i.et = load float, ptr %.098, align 4, !tbaa !31
  %i.eu = fmul float %i.ao, %i.et
  store float %i.eu, ptr %.098, align 4, !tbaa !31
  %i.ev = add nuw nsw i32 %.08897, 1              ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.098, i64 4
  %exitcond.not = icmp eq i32 %i.ev, %i.a
  br i1 %exitcond.not, label %.lr.ph104, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us.us, %.lr.ph108..loopexit_crit_edge
  %indvars.iv.next125.pre-phi = phi i64 [ %.pre129, %.lr.ph108..loopexit_crit_edge ], [ %i.ap, %._crit_edge.us.us ], [ %i.ap, %._crit_edge.us ] ; 2 uses
  %.185 = phi i32 [ %i.ag, %.lr.ph108..loopexit_crit_edge ], [ %.084107, %._crit_edge.us.us ], [ %.084107, %._crit_edge.us ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.090105, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125.pre-phi, %wide.trip.count127
  %indvar.next = add i32 %indvar, 1
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %exitcond128.not, label %.loopexit96, label %.lr.ph108, !llvm.loop !23

.loopexit96:                                      ; preds = %.loopexit, %bb.b
  %.191 = phi ptr [ %1, %bb.b ], [ %i.ex, %.loopexit ]
  %.2 = phi i32 [ 0, %bb.b ], [ %.185, %.loopexit ]
  %.182 = phi ptr [ %i.f, %bb.b ], [ %i.ac, %.loopexit ]
  store i32 %i.d, ptr %.191, align 4, !tbaa !7
  %i.ey = load float, ptr %.182, align 4, !tbaa !31
  %i.ez = fcmp oeq float %i.ey, 0.000000e+00
  %spec.select = select i1 %i.ez, i32 %i.a, i32 %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit96
  %.092 = phi i32 [ %spec.select, %.loopexit96 ], [ -1, %bb.a ]
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !32, !33, !34}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !32, !33, !34}
!13 = distinct !{!13, !37}
!14 = distinct !{!14, !32, !33}
!15 = distinct !{!15, !32}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !32, !33, !34}
!20 = distinct !{!20, !37}
!21 = distinct !{!21, !32, !33}
!22 = distinct !{!22, !32, !34, !33}
!23 = distinct !{!23, !32}
!24 = !{!"FULL", !6, i64 0, !6, i64 4, !5, i64 8}
!25 = !{!24, !6, i64 0}
!26 = !{!24, !6, i64 4}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"p1 float", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"float", !5, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!10}
!36 = !{!11}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!17}
!39 = !{!18}
end_hunk_0
