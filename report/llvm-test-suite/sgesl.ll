Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgesl?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @sgesl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 10 uses
  %i.b = add nsw i32 %i.a, -1                     ; 3 uses
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.preheader130, label %.preheader132

.preheader132:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph138, label %.loopexit

.lr.ph138:                                        ; preds = %.preheader132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.d

.preheader130:                                    ; preds = %bb.a
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %.lr.ph160, label %.preheader

.lr.ph160:                                        ; preds = %.preheader130
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count188 = zext nneg i32 %i.b to i64
  %wide.trip.count183 = zext nneg i32 %i.a to i64 ; 5 uses
  %i.h = shl nuw nsw i64 %wide.trip.count183, 2   ; 2 uses
  %scevgep208 = getelementptr i8, ptr %2, i64 %i.h
  %i.i = add nsw i64 %wide.trip.count183, -1
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge157, %.preheader130
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %.lr.ph167, label %.loopexit

.lr.ph167:                                        ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = zext nneg i32 %i.b to i64                ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !13
  %i.s = fdiv float %i.r, %i.p
  store float %i.s, ptr %i.q, align 4, !tbaa !13
  %.not203206 = icmp eq i32 %i.b, 0
  br i1 %.not203206, label %.loopexit, label %.lr.ph164.preheader

bb.b:                                             ; preds = %.lr.ph160, %._crit_edge157
  %indvars.iv185 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next186, %._crit_edge157 ] ; 6 uses
  %indvars.iv178 = phi i64 [ 1, %.lr.ph160 ], [ %indvars.iv.next179, %._crit_edge157 ] ; 6 uses
  %.0123158 = phi ptr [ %1, %.lr.ph160 ], [ %i.bh, %._crit_edge157 ] ; 2 uses
  %i.t = xor i64 %indvars.iv185, -1
  %i.u = add nsw i64 %i.t, %wide.trip.count183    ; 3 uses
  %i.v = shl nuw nsw i64 %indvars.iv178, 2        ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.v
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv185
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv185 ; 4 uses
  %i.z = load i32, ptr %.0123158, align 4, !tbaa !4 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !13 ; 5 uses
  %i.ad = zext i32 %i.z to i64
  %.not = icmp eq i64 %indvars.iv185, %i.ad
  br i1 %.not, label %.lr.ph156.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv185 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !13
  store float %i.af, ptr %i.ab, align 4, !tbaa !13
  store float %i.ac, ptr %i.ae, align 4, !tbaa !13
  br label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %bb.b, %bb.c
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph156.preheader239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph156.preheader
  %scevgep209 = getelementptr i8, ptr %i.x, i64 %i.v
  %scevgep210 = getelementptr i8, ptr %i.x, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %scevgep210
  %bound1 = icmp ult ptr %scevgep209, %scevgep208
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph156.preheader239, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -8                       ; 4 uses
  %i.ag = add i64 %indvars.iv178, %n.vec
  %i.ah = shl i64 %n.vec, 2
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv178
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %wide.load = load <4 x float>, ptr %i.al, align 4, !tbaa !13, !alias.scope !15
  %wide.load211 = load <4 x float>, ptr %i.am, align 4, !tbaa !13, !alias.scope !15
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load212 = load <4 x float>, ptr %i.an, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  %wide.load213 = load <4 x float>, ptr %i.ao, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load212)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load211, <4 x float> %broadcast.splat, <4 x float> %wide.load213)
  store <4 x float> %i.ap, ptr %i.an, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  store <4 x float> %i.aq, ptr %i.ao, align 4, !tbaa !13, !alias.scope !18, !noalias !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge157, label %.lr.ph156.preheader239

.lr.ph156.preheader239:                           ; preds = %vector.memcheck, %.lr.ph156.preheader, %middle.block
  %indvars.iv180.ph = phi i64 [ %indvars.iv178, %vector.memcheck ], [ %indvars.iv178, %.lr.ph156.preheader ], [ %i.ag, %middle.block ] ; 5 uses
  %.pn129153.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph156.preheader ], [ %i.ai, %middle.block ] ; 2 uses
  %i.as = sub i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter248 = and i64 %i.as, 1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader239
  %.0118.prol = getelementptr inbounds nuw i8, ptr %.pn129153.ph, i64 4 ; 2 uses
  %i.at = load float, ptr %.0118.prol, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv180.ph ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !13
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ac, float %i.av)
  store float %i.aw, ptr %i.au, align 4, !tbaa !13
  %indvars.iv.next181.prol = add nuw nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph156.prol.loopexit

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader239
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph156.preheader239 ], [ %indvars.iv.next181.prol, %.lr.ph156.prol ]
  %.pn129153.unr = phi ptr [ %.pn129153.ph, %.lr.ph156.preheader239 ], [ %.0118.prol, %.lr.ph156.prol ]
  %i.ax = icmp eq i64 %indvars.iv180.ph, %i.i
  br i1 %i.ax, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %indvars.iv180 = phi i64 [ %indvars.iv.next181.1, %.lr.ph156 ], [ %indvars.iv180.unr, %.lr.ph156.prol.loopexit ] ; 3 uses
  %.pn129153 = phi ptr [ %.0118.1, %.lr.ph156 ], [ %.pn129153.unr, %.lr.ph156.prol.loopexit ] ; 2 uses
  %.0118 = getelementptr inbounds nuw i8, ptr %.pn129153, i64 4
  %i.ay = load float, ptr %.0118, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv180 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ac, float %i.ba)
  store float %i.bb, ptr %i.az, align 4, !tbaa !13
  %.0118.1 = getelementptr inbounds nuw i8, ptr %.pn129153, i64 8 ; 2 uses
  %i.bc = load float, ptr %.0118.1, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv180
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ac, float %i.bf)
  store float %i.bg, ptr %i.be, align 4, !tbaa !13
  %indvars.iv.next181.1 = add nuw nsw i64 %indvars.iv180, 2 ; 2 uses
  %exitcond184.not.1 = icmp eq i64 %indvars.iv.next181.1, %wide.trip.count183
  br i1 %exitcond184.not.1, label %._crit_edge157, label %.lr.ph156, !llvm.loop !24

._crit_edge157:                                   ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block
  %i.bh = getelementptr inbounds nuw i8, ptr %.0123158, i64 4
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader, label %bb.b, !llvm.loop !25

.lr.ph164.preheader:                              ; preds = %.lr.ph167, %._crit_edge165
  %indvar.a = phi i64 [ %indvar.next.a, %._crit_edge165 ], [ 0, %.lr.ph167 ] ; 2 uses
  %i.bi = phi ptr [ %i.da, %._crit_edge165 ], [ %i.q, %.lr.ph167 ] ; 5 uses
  %i.bj = phi ptr [ %i.cx, %._crit_edge165 ], [ %i.n, %.lr.ph167 ] ; 6 uses
  %indvars.iv195207 = phi i64 [ %indvars.iv.next196, %._crit_edge165 ], [ %i.l, %.lr.ph167 ] ; 8 uses
  %i.bk = xor i64 %indvar.a, -1
  %i.bl = add i64 %i.bk, %i.l
  %min.iters.check221 = icmp ult i64 %indvars.iv195207, 8
  br i1 %min.iters.check221, label %.lr.ph164.preheader238, label %vector.memcheck215

vector.memcheck215:                               ; preds = %.lr.ph164.preheader
  %i.bm = shl nsw i64 %indvars.iv195207, 2
  %scevgep216 = getelementptr i8, ptr %i.bj, i64 %i.bm
  %bound0217 = icmp ult ptr %2, %scevgep216
  %bound1218 = icmp ult ptr %i.bj, %i.bi
  %found.conflict219 = and i1 %bound0217, %bound1218
  br i1 %found.conflict219, label %.lr.ph164.preheader238, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck215
  %n.vec223 = and i64 %indvars.iv195207, -8       ; 4 uses
  %i.bn = shl i64 %n.vec223, 2
  %i.bo = getelementptr i8, ptr %i.bj, i64 %i.bn
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next233, %vector.body224 ] ; 3 uses
  %i.bp = shl i64 %index225, 2
  %next.gep226 = getelementptr i8, ptr %i.bj, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep226, i64 16
  %wide.load227 = load <4 x float>, ptr %next.gep226, align 4, !tbaa !13, !alias.scope !26
  %wide.load228 = load <4 x float>, ptr %i.bq, align 4, !tbaa !13, !alias.scope !26
  %i.br = load float, ptr %i.bi, align 4, !tbaa !13, !alias.scope !29
  %broadcast.splatinsert231 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat232 = shufflevector <4 x float> %broadcast.splatinsert231, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index225 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load229 = load <4 x float>, ptr %i.bs, align 4, !tbaa !13, !alias.scope !31, !noalias !26
  %wide.load230 = load <4 x float>, ptr %i.bt, align 4, !tbaa !13, !alias.scope !31, !noalias !26
  %i.bu = fneg <4 x float> %wide.load227
  %i.bv = fneg <4 x float> %wide.load228
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %broadcast.splat232, <4 x float> %wide.load229)
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %broadcast.splat232, <4 x float> %wide.load230)
  store <4 x float> %i.bw, ptr %i.bs, align 4, !tbaa !13, !alias.scope !31, !noalias !26
  store <4 x float> %i.bx, ptr %i.bt, align 4, !tbaa !13, !alias.scope !31, !noalias !26
  %index.next233 = add nuw i64 %index225, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next233, %n.vec223
  br i1 %i.by, label %middle.block234, label %vector.body224, !llvm.loop !33

middle.block234:                                  ; preds = %vector.body224
  %cmp.n235 = icmp eq i64 %indvars.iv195207, %n.vec223
  br i1 %cmp.n235, label %._crit_edge165, label %.lr.ph164.preheader238

.lr.ph164.preheader238:                           ; preds = %vector.memcheck215, %.lr.ph164.preheader, %middle.block234
  %indvars.iv190.ph = phi i64 [ 0, %vector.memcheck215 ], [ 0, %.lr.ph164.preheader ], [ %n.vec223, %middle.block234 ] ; 4 uses
  %.0116161.ph = phi ptr [ %i.bj, %vector.memcheck215 ], [ %i.bj, %.lr.ph164.preheader ], [ %i.bo, %middle.block234 ] ; 3 uses
  %xtraiter251 = and i64 %indvars.iv195207, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph164.prol.loopexit, label %.lr.ph164.prol

.lr.ph164.prol:                                   ; preds = %.lr.ph164.preheader238
  %i.bz = load float, ptr %.0116161.ph, align 4, !tbaa !13
  %i.ca = load float, ptr %i.bi, align 4, !tbaa !13
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv190.ph ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !13
  %i.cd = fneg float %i.bz
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ca, float %i.cc)
  store float %i.ce, ptr %i.cb, align 4, !tbaa !13
  %indvars.iv.next191.prol = or disjoint i64 %indvars.iv190.ph, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.0116161.ph, i64 4
  br label %.lr.ph164.prol.loopexit

.lr.ph164.prol.loopexit:                          ; preds = %.lr.ph164.prol, %.lr.ph164.preheader238
  %indvars.iv190.unr = phi i64 [ %indvars.iv190.ph, %.lr.ph164.preheader238 ], [ %indvars.iv.next191.prol, %.lr.ph164.prol ]
  %.0116161.unr = phi ptr [ %.0116161.ph, %.lr.ph164.preheader238 ], [ %i.cf, %.lr.ph164.prol ]
  %i.cg = icmp eq i64 %i.bl, %indvars.iv190.ph
  br i1 %i.cg, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164
  %indvars.iv190 = phi i64 [ %indvars.iv.next191.1, %.lr.ph164 ], [ %indvars.iv190.unr, %.lr.ph164.prol.loopexit ] ; 3 uses
  %.0116161 = phi ptr [ %i.cv, %.lr.ph164 ], [ %.0116161.unr, %.lr.ph164.prol.loopexit ] ; 3 uses
  %i.ch = load float, ptr %.0116161, align 4, !tbaa !13
  %i.ci = load float, ptr %i.bi, align 4, !tbaa !13
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv190 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !13
  %i.cl = fneg float %i.ch
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ci, float %i.ck)
  store float %i.cm, ptr %i.cj, align 4, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.0116161, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !13
  %i.cp = load float, ptr %i.bi, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv190
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !13
  %i.ct = fneg float %i.co
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cp, float %i.cs)
  store float %i.cu, ptr %i.cr, align 4, !tbaa !13
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0116161, i64 8
  %exitcond194.not.1 = icmp eq i64 %indvars.iv.next191.1, %indvars.iv195207
  br i1 %exitcond194.not.1, label %._crit_edge165, label %.lr.ph164, !llvm.loop !34

._crit_edge165:                                   ; preds = %.lr.ph164.prol.loopexit, %.lr.ph164, %middle.block234
  %indvars.iv.next196 = add nsw i64 %indvars.iv195207, -1 ; 4 uses
  %i.cw = getelementptr [8 x i8], ptr %0, i64 %indvars.iv195207
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !10 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next196
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next196 ; 3 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !13
  %i.dc = fdiv float %i.db, %i.cz
  store float %i.dc, ptr %i.da, align 4, !tbaa !13
  %.not203 = icmp eq i64 %indvars.iv.next196, 0
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %.not203, label %.loopexit, label %.lr.ph164.preheader, !llvm.loop !35

bb.d:                                             ; preds = %.lr.ph138, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !10 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %.not168 = icmp eq i64 %indvars.iv, 0
  br i1 %.not168, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.dg = icmp samesign ult i64 %indvars.iv, 4
  br i1 %i.dg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0114135 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ea, %.lr.ph ] ; 5 uses
  %.1117134 = phi ptr [ %i.de, %.lr.ph.preheader.new ], [ %i.dz, %.lr.ph ] ; 5 uses
  %.0120133 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.dy, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.dh = load float, ptr %.1117134, align 4, !tbaa !13
  %i.di = load float, ptr %.0114135, align 4, !tbaa !13
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.di, float %.0120133)
  %i.dk = getelementptr inbounds nuw i8, ptr %.1117134, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.0114135, i64 4
  %i.dm = load float, ptr %i.dk, align 4, !tbaa !13
  %i.dn = load float, ptr %i.dl, align 4, !tbaa !13
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %i.dj)
  %i.dp = getelementptr inbounds nuw i8, ptr %.1117134, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0114135, i64 8
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !13
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !13
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.ds, float %i.do)
  %i.du = getelementptr inbounds nuw i8, ptr %.1117134, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %.0114135, i64 12
  %i.dw = load float, ptr %i.du, align 4, !tbaa !13
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !13
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.dt) ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1117134, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0114135, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0114135.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ea, %._crit_edge.loopexit.unr-lcssa ]
  %.1117134.epil.init = phi ptr [ %i.de, %.lr.ph.preheader ], [ %i.dz, %._crit_edge.loopexit.unr-lcssa ]
  %.0120133.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod243 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod243)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0114135.epil = phi ptr [ %i.ef, %.lr.ph.epil ], [ %.0114135.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.1117134.epil = phi ptr [ %i.ee, %.lr.ph.epil ], [ %.1117134.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0120133.epil = phi float [ %i.ed, %.lr.ph.epil ], [ %.0120133.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.eb = load float, ptr %.1117134.epil, align 4, !tbaa !13
  %i.ec = load float, ptr %.0114135.epil, align 4, !tbaa !13
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.ec, float %.0120133.epil) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1117134.epil, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.0114135.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %.0120.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ], [ %i.ed, %.lr.ph.epil ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !13
  %i.ei = fsub float %i.eh, %.0120.lcssa
  %i.ej = load float, ptr %i.df, align 4, !tbaa !13
  %i.ek = fdiv float %i.ei, %i.ej
  store float %i.ek, ptr %i.eg, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond172.not, label %._crit_edge139, label %bb.d, !llvm.loop !39

._crit_edge139:                                   ; preds = %._crit_edge
  %.not202 = icmp eq i32 %i.a, 1
  br i1 %.not202, label %.loopexit, label %.lr.ph152

.lr.ph152:                                        ; preds = %._crit_edge139
  %i.el = add nsw i32 %i.a, -2                    ; 2 uses
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = zext nneg i32 %i.el to i64
  %i.eq = zext nneg i32 %i.a to i64
  br label %bb.e

end_hunk_0
