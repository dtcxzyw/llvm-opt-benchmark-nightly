Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgefa?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 14 uses
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
  %i.h = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count127 = zext nneg i32 %i.d to i64
  %i.i = add nsw i32 %i.a, -2                     ; 5 uses
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvar.next, %.loopexit ] ; 8 uses
  %indvars.iv124 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next125.pre-phi, %.loopexit ] ; 8 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph108.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.084107 = phi i32 [ 0, %.lr.ph108.preheader ], [ %.185, %.loopexit ] ; 2 uses
  %.090105 = phi ptr [ %1, %.lr.ph108.preheader ], [ %i.er, %.loopexit ] ; 2 uses
  %i.j = trunc i64 %indvar to i32
  %i.k = sub i32 %i.i, %i.j                       ; 2 uses
  %i.l = trunc i64 %indvar to i32
  %i.m = sub i32 %i.i, %i.l                       ; 2 uses
  %i.n = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.o = add nuw i64 %i.n, 8
  %i.p = trunc i64 %indvar to i32
  %i.q = sub i32 %i.i, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add i64 %i.o, %i.s                       ; 2 uses
  %i.u = trunc i64 %indvar to i32
  %i.v = sub i32 %i.i, %i.u                       ; 2 uses
  %i.w = shl nuw nsw i64 %indvar, 2               ; 2 uses
  %i.x = add nuw i64 %i.w, 8
  %i.y = trunc i64 %indvar to i32
  %i.z = sub i32 %i.i, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add i64 %i.x, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv124 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv124 ; 5 uses
  %i.ag = trunc i64 %indvars.iv124 to i32
  %i.ah = sub i32 %i.a, %i.ag
  %i.ai = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %i.ah, ptr noundef %i.af, i32 noundef 1) #3 ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv124 to i32 ; 2 uses
  %i.ak = add nsw i32 %i.ai, %i.aj                ; 2 uses
  store i32 %i.ak, ptr %.090105, align 4, !tbaa !4
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.am = sext i32 %i.ak to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !14 ; 3 uses
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.lr.ph108..loopexit_crit_edge, label %bb.c

.lr.ph108..loopexit_crit_edge:                    ; preds = %.lr.ph108
  %.pre129 = add nuw nsw i64 %indvars.iv124, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph108
  %.not94 = icmp eq i32 %i.ai, 0                  ; 2 uses
  %.pre = load float, ptr %i.af, align 4, !tbaa !14 ; 2 uses
  br i1 %.not94, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.an, align 4, !tbaa !14
  store float %i.ao, ptr %i.af, align 4, !tbaa !14
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  %i.aq = phi float [ %i.ao, %bb.d ], [ %.pre, %bb.c ]
  %i.ar = fdiv float -1.000000e+00, %i.aq         ; 2 uses
  %i.as = add nuw nsw i64 %indvars.iv124, 1       ; 4 uses
  %i.at = getelementptr i8, ptr %i.af, i64 4      ; 13 uses
  %i.au = trunc nuw nsw i64 %i.as to i32          ; 2 uses
  %2 = zext i32 %i.k to i64
  %3 = add nuw nsw i64 %2, 1                      ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.k, 7
  br i1 %min.iters.check171, label %.lr.ph.preheader187, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.preheader
  %n.vec173 = and i64 %3, 8589934584              ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec173, 2
  %i.aw = getelementptr i8, ptr %i.at, i64 %i.av
  %i.ax = trunc i64 %n.vec173 to i32
  %i.ay = add i32 %i.au, %i.ax
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body176 ] ; 2 uses
  %i.az = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.at, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !14
  %wide.load180 = load <4 x float>, ptr %i.ba, align 4, !tbaa !14
  %i.bb = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.bc = fmul <4 x float> %broadcast.splat175, %wide.load180
  store <4 x float> %i.bb, ptr %next.gep178, align 4, !tbaa !14
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !14
  %index.next181 = add nuw i64 %index177, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next181, %n.vec173
  br i1 %i.bd, label %middle.block182, label %vector.body176, !llvm.loop !16

middle.block182:                                  ; preds = %vector.body176
  %cmp.n183 = icmp eq i64 %3, %n.vec173
  br i1 %cmp.n183, label %.lr.ph104, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block182
  %.098.ph = phi ptr [ %i.at, %.lr.ph.preheader ], [ %i.aw, %middle.block182 ]
  %.08897.ph = phi i32 [ %i.au, %.lr.ph.preheader ], [ %i.ay, %middle.block182 ]
  br label %.lr.ph

.lr.ph104:                                        ; preds = %.lr.ph, %middle.block182
  %i.be = trunc nuw nsw i64 %i.as to i32          ; 6 uses
  br i1 %.not94, label %.lr.ph102.us.us.preheader, label %.lr.ph102.us.preheader

.lr.ph102.us.preheader:                           ; preds = %.lr.ph104
  %scevgep146 = getelementptr i8, ptr %i.ae, i64 %i.t
  %4 = zext i32 %i.m to i64
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check151 = icmp ult i32 %i.m, 7
  %n.vec153 = and i64 %5, 8589934584              ; 4 uses
  %i.bf = shl nuw nsw i64 %n.vec153, 2            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.bf
  %i.bh = trunc i64 %n.vec153 to i32
  %i.bi = add i32 %i.be, %i.bh
  %cmp.n166 = icmp eq i64 %5, %n.vec153
  br label %.lr.ph102.us

.lr.ph102.us.us.preheader:                        ; preds = %.lr.ph104
  %scevgep136 = getelementptr i8, ptr %i.ae, i64 %i.ac
  %6 = zext i32 %i.v to i64
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 7
  %n.vec = and i64 %7, 8589934584                 ; 4 uses
  %i.bj = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bk = getelementptr i8, ptr %i.at, i64 %i.bj
  %i.bl = trunc i64 %n.vec to i32
  %i.bm = add i32 %i.be, %i.bl
  %cmp.n = icmp eq i64 %7, %n.vec
  br label %.lr.ph102.us.us

.lr.ph102.us.us:                                  ; preds = %.lr.ph102.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge.us.us ], [ %indvars.iv, %.lr.ph102.us.us.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv119
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !11 ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv124 ; 5 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !14 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph102.us.us
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.w
  %scevgep = getelementptr i8, ptr %i.br, i64 4
  %scevgep135 = getelementptr i8, ptr %i.bo, i64 %i.ac
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %i.at, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.bj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bt ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep137, i64 4 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !20
  %wide.load138 = load <4 x float>, ptr %i.bv, align 4, !tbaa !14, !alias.scope !20
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep137, i64 20 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.bu, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %wide.load140 = load <4 x float>, ptr %i.bw, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load139)
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load138, <4 x float> %wide.load140)
  store <4 x float> %i.bx, ptr %i.bu, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  store <4 x float> %i.by, ptr %i.bw, align 4, !tbaa !14, !alias.scope !23, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph102.us.us, %middle.block
  %.1101.us.us.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph102.us.us ], [ %i.bk, %middle.block ] ; 2 uses
  %.pn100.us.us.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph102.us.us ], [ %i.bs, %middle.block ] ; 2 uses
  %.18999.us.us.ph = phi i32 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph102.us.us ], [ %i.bm, %middle.block ] ; 4 uses
  %i.ca = sub i32 %i.a, %.18999.us.us.ph
  %xtraiter189 = and i32 %i.ca, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1101.us.us.prol = phi ptr [ %i.cf, %scalar.ph.prol ], [ %.1101.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.pn100.us.us.prol = phi ptr [ %.080.us.us.prol, %scalar.ph.prol ], [ %.pn100.us.us.ph, %scalar.ph.preheader ]
  %.18999.us.us.prol = phi i32 [ %i.ce, %scalar.ph.prol ], [ %.18999.us.us.ph, %scalar.ph.preheader ]
  %prol.iter191 = phi i32 [ %prol.iter191.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.080.us.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.us.prol, i64 4 ; 4 uses
  %i.cb = load float, ptr %.1101.us.us.prol, align 4, !tbaa !14
  %i.cc = load float, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cb, float %i.cc)
  store float %i.cd, ptr %.080.us.us.prol, align 4, !tbaa !14
  %i.ce = add nuw nsw i32 %.18999.us.us.prol, 1   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1101.us.us.prol, i64 4 ; 2 uses
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !26

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1101.us.us.unr = phi ptr [ %.1101.us.us.ph, %scalar.ph.preheader ], [ %i.cf, %scalar.ph.prol ]
  %.pn100.us.us.unr = phi ptr [ %.pn100.us.us.ph, %scalar.ph.preheader ], [ %.080.us.us.prol, %scalar.ph.prol ]
  %.18999.us.us.unr = phi i32 [ %.18999.us.us.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %i.cg = sub i32 %.18999.us.us.ph, %i.a
  %i.ch = icmp ugt i32 %i.cg, -4
  br i1 %i.ch, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1101.us.us = phi ptr [ %i.cy, %scalar.ph ], [ %.1101.us.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.pn100.us.us = phi ptr [ %.080.us.us.3, %scalar.ph ], [ %.pn100.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.18999.us.us = phi i32 [ %i.cx, %scalar.ph ], [ %.18999.us.us.unr, %scalar.ph.prol.loopexit ]
  %.080.us.us = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 4 ; 2 uses
  %i.ci = load float, ptr %.1101.us.us, align 4, !tbaa !14
  %i.cj = load float, ptr %.080.us.us, align 4, !tbaa !14
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ci, float %i.cj)
  store float %i.ck, ptr %.080.us.us, align 4, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 4
  %.080.us.us.1 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 8 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14
  %i.cn = load float, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cm, float %i.cn)
  store float %i.co, ptr %.080.us.us.1, align 4, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 8
  %.080.us.us.2 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 12 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !14
  %i.cr = load float, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cq, float %i.cr)
  store float %i.cs, ptr %.080.us.us.2, align 4, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 12
  %.080.us.us.3 = getelementptr inbounds nuw i8, ptr %.pn100.us.us, i64 16 ; 3 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !14
  %i.cv = load float, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cu, float %i.cv)
  store float %i.cw, ptr %.080.us.us.3, align 4, !tbaa !14
  %i.cx = add nuw nsw i32 %.18999.us.us, 4        ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1101.us.us, i64 16
  %exitcond118.not.3 = icmp eq i32 %i.cx, %i.a
  br i1 %exitcond118.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !28

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %i.h
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph102.us.us, !llvm.loop !29

.lr.ph102.us:                                     ; preds = %.lr.ph102.us.preheader, %._crit_edge.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us ], [ %indvars.iv, %.lr.ph102.us.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv114
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv124 ; 6 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !14
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.am ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !14 ; 7 uses
  store float %i.de, ptr %i.db, align 4, !tbaa !14
  store float %i.dc, ptr %i.dd, align 4, !tbaa !14
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph102.us
  %i.df = getelementptr i8, ptr %i.da, i64 %i.n
  %scevgep144 = getelementptr i8, ptr %i.df, i64 4
  %scevgep145 = getelementptr i8, ptr %i.da, i64 %i.t
  %bound0147 = icmp ult ptr %scevgep144, %scevgep146
  %bound1148 = icmp ult ptr %i.at, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %i.dg = getelementptr i8, ptr %i.db, i64 %i.bf
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.dh = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.at, i64 %i.dh ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.db, i64 %i.dh ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep159, i64 4 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !14, !alias.scope !30
  %wide.load161 = load <4 x float>, ptr %i.dj, align 4, !tbaa !14, !alias.scope !30
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep159, i64 20 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.di, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %wide.load163 = load <4 x float>, ptr %i.dk, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load160, <4 x float> %wide.load162)
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat155, <4 x float> %wide.load161, <4 x float> %wide.load163)
  store <4 x float> %i.dl, ptr %i.di, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  store <4 x float> %i.dm, ptr %i.dk, align 4, !tbaa !14, !alias.scope !33, !noalias !30
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.dn, label %middle.block165, label %vector.body156, !llvm.loop !35

middle.block165:                                  ; preds = %vector.body156
  br i1 %cmp.n166, label %._crit_edge.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck143, %.lr.ph102.us, %middle.block165
  %.1101.us.ph = phi ptr [ %i.at, %vector.memcheck143 ], [ %i.at, %.lr.ph102.us ], [ %i.bg, %middle.block165 ] ; 2 uses
  %.pn100.us.ph = phi ptr [ %i.db, %vector.memcheck143 ], [ %i.db, %.lr.ph102.us ], [ %i.dg, %middle.block165 ] ; 2 uses
  %.18999.us.ph = phi i32 [ %i.be, %vector.memcheck143 ], [ %i.be, %.lr.ph102.us ], [ %i.bi, %middle.block165 ] ; 4 uses
  %i.do = sub i32 %i.a, %.18999.us.ph
  %xtraiter = and i32 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %.1101.us.prol = phi ptr [ %i.dt, %scalar.ph150.prol ], [ %.1101.us.ph, %scalar.ph150.preheader ] ; 2 uses
  %.pn100.us.prol = phi ptr [ %.080.us.prol, %scalar.ph150.prol ], [ %.pn100.us.ph, %scalar.ph150.preheader ]
  %.18999.us.prol = phi i32 [ %i.ds, %scalar.ph150.prol ], [ %.18999.us.ph, %scalar.ph150.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %.080.us.prol = getelementptr inbounds nuw i8, ptr %.pn100.us.prol, i64 4 ; 4 uses
  %i.dp = load float, ptr %.1101.us.prol, align 4, !tbaa !14
  %i.dq = load float, ptr %.080.us.prol, align 4, !tbaa !14
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.de, float %i.dp, float %i.dq)
  store float %i.dr, ptr %.080.us.prol, align 4, !tbaa !14
  %i.ds = add nuw nsw i32 %.18999.us.prol, 1      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1101.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !36

end_hunk_0
