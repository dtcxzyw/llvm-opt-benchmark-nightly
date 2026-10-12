Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/solve?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@str = private unnamed_addr constant [16 x i8] c"ill-conditioned\00", align 1

; Function Attrs: nounwind uwtable
define void @solve(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %3, %3                           ; 8 uses
  %mul.ov.i = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef %i.a, i64 noundef 8) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.a, 0                      ; 3 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #12 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.h = shl nuw i64 %i.a, 3
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.2, i64 noundef %i.h) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

gv_calloc.exit:                                   ; preds = %bb.c
  %mul.ov.i174 = icmp ugt i64 %3, 2305843009213693951
  br i1 %mul.ov.i174, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gv_calloc.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef 8) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

bb.f:                                             ; preds = %gv_calloc.exit
  %i.l = icmp ne i64 %3, 0                        ; 3 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 8) #12 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  %or.cond3.i175 = and i1 %i.l, %i.n
  br i1 %or.cond3.i175, label %bb.g, label %gv_calloc.exit176.preheader

gv_calloc.exit176.preheader:                      ; preds = %bb.f
  br i1 %i.l, label %.preheader186, label %.preheader184.preheader

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.p = shl nuw i64 %3, 3
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, i64 noundef %i.p) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

.preheader186:                                    ; preds = %gv_calloc.exit176.preheader
  %i.r = shl nuw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %2, i64 %i.r, i1 false), !tbaa !27
  br i1 %i.d, label %.lr.ph189.preheader, label %._crit_edge

.lr.ph189.preheader:                              ; preds = %.preheader186
  %i.s = shl nuw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %0, i64 %i.s, i1 false), !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph189.preheader, %.preheader186
  %i.t = add nsw i64 %3, -1                       ; 2 uses
  %.not220 = icmp eq i64 %i.t, 0
  br i1 %.not220, label %._crit_edge206, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %gv_calloc.exit176.preheader, %._crit_edge
  %i.u = phi i64 [ %i.t, %._crit_edge ], [ -1, %gv_calloc.exit176.preheader ] ; 3 uses
  %i.v = shl nuw i64 %3, 3                        ; 3 uses
  %i.w = add i64 %i.v, 8
  %i.x = shl nuw i64 %3, 3
  %i.y = getelementptr i8, ptr %0, i64 %i.v
  %i.z = add nsw i64 %3, -4
  %or.cond = icmp ult i64 %i.z, 1152921504606846972
  %n.vec = and i64 %3, 1152921504606846972        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter275 = and i64 %3, 1
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %._crit_edge204
  %.0168205 = phi i64 [ %.0160200, %._crit_edge204 ], [ 0, %.preheader184.preheader ] ; 20 uses
  %i.aa = sub i64 %3, %.0168205                   ; 3 uses
  %i.ab = shl i64 %.0168205, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ab
  %i.ac = mul i64 %i.w, %.0168205
  %scevgep252 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = mul i64 %i.x, %.0168205
  %scevgep253 = getelementptr i8, ptr %i.y, i64 %i.ad
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %.0168205 ; 3 uses
  %i.ae = icmp ult i64 %.0168205, %3
  br i1 %i.ae, label %.lr.ph193.preheader, label %.loopexit185

.lr.ph193.preheader:                              ; preds = %.preheader184
  %xtraiter = and i64 %i.aa, 1
  %i.af = icmp eq i64 %i.u, %.0168205
  br i1 %i.af, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph193

._crit_edge194.unr-lcssa:                         ; preds = %.lr.ph193
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge194, label %.lr.ph193.epil.preheader

.lr.ph193.epil.preheader:                         ; preds = %._crit_edge194.unr-lcssa, %.lr.ph193.preheader
  %.0162192.epil.init = phi i64 [ %.0168205, %.lr.ph193.preheader ], [ %i.br, %._crit_edge194.unr-lcssa ] ; 2 uses
  %.0163191.epil.init = phi i64 [ 0, %.lr.ph193.preheader ], [ %.0163..0162.1, %._crit_edge194.unr-lcssa ]
  %.0164190.epil.init = phi double [ 0.000000e+00, %.lr.ph193.preheader ], [ %.0164..1, %._crit_edge194.unr-lcssa ] ; 2 uses
  %lcmp.mod272 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.ag = mul i64 %.0162192.epil.init, %3
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ag
  %i.ah = load double, ptr %gep.epil, align 8, !tbaa !27
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.aj = fcmp olt double %i.ai, %.0164190.epil.init ; 2 uses
  %.0164..epil = select i1 %i.aj, double %.0164190.epil.init, double %i.ai
  %.0163..0162.epil = select i1 %i.aj, i64 %.0163191.epil.init, i64 %.0162192.epil.init
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %._crit_edge194.unr-lcssa, %.lr.ph193.epil.preheader
  %.0164..lcssa = phi double [ %.0164..1, %._crit_edge194.unr-lcssa ], [ %.0164..epil, %.lr.ph193.epil.preheader ]
  %.0163..0162.lcssa = phi i64 [ %.0163..0162.1, %._crit_edge194.unr-lcssa ], [ %.0163..0162.epil, %.lr.ph193.epil.preheader ] ; 4 uses
  %i.ak = fcmp uge double %.0164..lcssa, 1.000000e-10
  br i1 %i.ak, label %.lr.ph197, label %.loopexit185

.lr.ph197:                                        ; preds = %._crit_edge194
  %i.al = mul i64 %.0163..0162.lcssa, %3
  %i.am = getelementptr [8 x i8], ptr %0, i64 %i.al ; 4 uses
  %i.an = mul i64 %.0168205, %3
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %i.an ; 4 uses
  %4 = sub i64 %3, %.0168205                      ; 3 uses
  %min.iters.check256 = icmp ult i64 %4, 8
  br i1 %min.iters.check256, label %scalar.ph255.preheader, label %vector.memcheck249

vector.memcheck249:                               ; preds = %.lr.ph197
  %i.ap = mul i64 %i.v, %.0163..0162.lcssa
  %scevgep250 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %i.aq = shl i64 %.0163..0162.lcssa, 3
  %i.ar = add i64 %i.aq, 8
  %i.as = mul i64 %3, %i.ar
  %scevgep251 = getelementptr i8, ptr %0, i64 %i.as
  %bound0 = icmp ult ptr %scevgep250, %scevgep253
  %bound1254 = icmp ult ptr %scevgep252, %scevgep251
  %found.conflict = and i1 %bound0, %bound1254
  br i1 %found.conflict, label %scalar.ph255.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck249
  %n.vec258 = and i64 %4, -4                      ; 3 uses
  %i.at = add i64 %.0168205, %n.vec258
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.au = add nuw i64 %.0168205, %index260        ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.am, i64 %i.au ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load261 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !28, !noalias !29
  %wide.load262 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !28, !noalias !29
  %i.ax = getelementptr [8 x i8], ptr %i.ao, i64 %i.au ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load263 = load <2 x double>, ptr %i.ax, align 8, !tbaa !27, !alias.scope !29
  %wide.load264 = load <2 x double>, ptr %i.ay, align 8, !tbaa !27, !alias.scope !29
  %i.az = getelementptr i8, ptr %i.av, i64 16
  store <2 x double> %wide.load263, ptr %i.av, align 8, !tbaa !27, !alias.scope !28, !noalias !29
  store <2 x double> %wide.load264, ptr %i.az, align 8, !tbaa !27, !alias.scope !28, !noalias !29
  %i.ba = getelementptr i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load261, ptr %i.ax, align 8, !alias.scope !29
  store <2 x i64> %wide.load262, ptr %i.ba, align 8, !alias.scope !29
  %index.next265 = add nuw i64 %index260, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.bb, label %middle.block266, label %vector.body259, !llvm.loop !11

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %4, %n.vec258
  br i1 %cmp.n267, label %._crit_edge198, label %scalar.ph255.preheader

scalar.ph255.preheader:                           ; preds = %vector.memcheck249, %.lr.ph197, %middle.block266
  %.0161196.ph = phi i64 [ %.0168205, %vector.memcheck249 ], [ %.0168205, %.lr.ph197 ], [ %i.at, %middle.block266 ] ; 6 uses
  %i.bc = sub i64 %3, %.0161196.ph
  %.neg = add i64 %.0161196.ph, 1
  %xtraiter273 = and i64 %i.bc, 1
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %scalar.ph255.prol.loopexit, label %scalar.ph255.prol

scalar.ph255.prol:                                ; preds = %scalar.ph255.preheader
  %i.bd = getelementptr [8 x i8], ptr %i.am, i64 %.0161196.ph ; 2 uses
  %.sroa.038.0.copyload.prol = load i64, ptr %i.bd, align 8
  %i.be = getelementptr [8 x i8], ptr %i.ao, i64 %.0161196.ph ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !27
  store double %i.bf, ptr %i.bd, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload.prol, ptr %i.be, align 8
  %i.bg = add nuw nsw i64 %.0161196.ph, 1
  br label %scalar.ph255.prol.loopexit

scalar.ph255.prol.loopexit:                       ; preds = %scalar.ph255.prol, %scalar.ph255.preheader
  %.0161196.unr = phi i64 [ %.0161196.ph, %scalar.ph255.preheader ], [ %i.bg, %scalar.ph255.prol ]
  %i.bh = icmp eq i64 %3, %.neg
  br i1 %i.bh, label %._crit_edge198, label %scalar.ph255

.lr.ph193:                                        ; preds = %.lr.ph193, %.lr.ph193.preheader.new
  %.0162192 = phi i64 [ %.0168205, %.lr.ph193.preheader.new ], [ %i.br, %.lr.ph193 ] ; 4 uses
  %.0163191 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %.0163..0162.1, %.lr.ph193 ]
  %.0164190 = phi double [ 0.000000e+00, %.lr.ph193.preheader.new ], [ %.0164..1, %.lr.ph193 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter.next.1, %.lr.ph193 ]
  %i.bi = mul i64 %.0162192, %3
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bi
  %i.bj = load double, ptr %gep, align 8, !tbaa !27
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj) ; 2 uses
  %i.bl = fcmp olt double %i.bk, %.0164190        ; 2 uses
  %.0164. = select i1 %i.bl, double %.0164190, double %i.bk ; 2 uses
  %.0163..0162 = select i1 %i.bl, i64 %.0163191, i64 %.0162192
  %i.bm = add nuw nsw i64 %.0162192, 1            ; 2 uses
  %i.bn = mul i64 %i.bm, %3
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bn
  %i.bo = load double, ptr %gep.1, align 8, !tbaa !27
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.bq = fcmp olt double %i.bp, %.0164.          ; 2 uses
  %.0164..1 = select i1 %i.bq, double %.0164., double %i.bp ; 3 uses
  %.0163..0162.1 = select i1 %i.bq, i64 %.0163..0162, i64 %i.bm ; 3 uses
  %i.br = add nuw nsw i64 %.0162192, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge194.unr-lcssa, label %.lr.ph193, !llvm.loop !12

._crit_edge198:                                   ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block266
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0163..0162.lcssa ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0168205 ; 3 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !27
  store double %i.bu, ptr %i.bs, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload, ptr %i.bt, align 8
  %.0160200 = add nuw i64 %.0168205, 1            ; 4 uses
  %i.bv = icmp ult i64 %.0160200, %3
  br i1 %i.bv, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %._crit_edge198
  %i.bw = mul i64 %.0168205, %3
  %i.bx = getelementptr [8 x i8], ptr %0, i64 %i.bw ; 5 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.0168205
  br label %bb.h

scalar.ph255:                                     ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255
  %.0161196 = phi i64 [ %i.cg, %scalar.ph255 ], [ %.0161196.unr, %scalar.ph255.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr [8 x i8], ptr %i.am, i64 %.0161196 ; 2 uses
  %.sroa.038.0.copyload = load i64, ptr %i.bz, align 8
  %i.ca = getelementptr [8 x i8], ptr %i.ao, i64 %.0161196 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !27
  store double %i.cb, ptr %i.bz, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload, ptr %i.ca, align 8
  %i.cc = add nuw nsw i64 %.0161196, 1            ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.am, i64 %i.cc ; 2 uses
  %.sroa.038.0.copyload.1 = load i64, ptr %i.cd, align 8
  %i.ce = getelementptr [8 x i8], ptr %i.ao, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !27
  store double %i.cf, ptr %i.cd, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload.1, ptr %i.ce, align 8
  %i.cg = add nuw nsw i64 %.0161196, 2            ; 2 uses
  %exitcond225.not.1 = icmp eq i64 %i.cg, %3
  br i1 %exitcond225.not.1, label %._crit_edge198, label %scalar.ph255, !llvm.loop !13

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.0160 = add nuw i64 %.0160201, 1               ; 2 uses
  %exitcond227.not = icmp eq i64 %.0160, %3
  br i1 %exitcond227.not, label %._crit_edge204, label %bb.h, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph203, %.loopexit
  %.0160201 = phi i64 [ %.0160200, %.lr.ph203 ], [ %.0160, %.loopexit ] ; 3 uses
  %i.ch = mul i64 %.0160201, %3
  %i.ci = getelementptr [8 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %.0168205
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !27
  %i.cl = load double, ptr %i.by, align 8, !tbaa !27
  %i.cm = load double, ptr %i.bt, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0160201 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !27
  %i.cp = fneg double %i.ck
  %i.cq = fdiv double %i.cp, %i.cl                ; 5 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cm, double %i.co)
  store double %i.cr, ptr %i.cn, align 8, !tbaa !27
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %bb.h
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ci, i64 %index ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cs, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %wide.load246 = load <2 x double>, ptr %i.ct, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %i.cu = getelementptr [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %wide.load247 = load <2 x double>, ptr %i.cu, align 8, !tbaa !27, !alias.scope !34
  %wide.load248 = load <2 x double>, ptr %i.cv, align 8, !tbaa !27, !alias.scope !34
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load247, <2 x double> %wide.load)
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load248, <2 x double> %wide.load246)
  store <2 x double> %i.cw, ptr %i.cs, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <2 x double> %i.cx, ptr %i.ct, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.h, %middle.block
  %.0159199.ph = phi i64 [ 0, %bb.h ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg279 = or disjoint i64 %.0159199.ph, 1
  br i1 %lcmp.mod276.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cz = getelementptr [8 x i8], ptr %i.ci, i64 %.0159199.ph ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !27
  %i.db = getelementptr [8 x i8], ptr %i.bx, i64 %.0159199.ph
  %i.dc = load double, ptr %i.db, align 8, !tbaa !27
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.dc, double %i.da)
  store double %i.dd, ptr %i.cz, align 8, !tbaa !27
  %i.de = or disjoint i64 %.0159199.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0159199.unr = phi i64 [ %.0159199.ph, %scalar.ph.preheader ], [ %i.de, %scalar.ph.prol ]
  %i.df = icmp eq i64 %3, %.neg279
  br i1 %i.df, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0159199 = phi i64 [ %i.dr, %scalar.ph ], [ %.0159199.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr [8 x i8], ptr %i.ci, i64 %.0159199 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !27
  %i.di = getelementptr [8 x i8], ptr %i.bx, i64 %.0159199
  %i.dj = load double, ptr %i.di, align 8, !tbaa !27
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.dj, double %i.dh)
  store double %i.dk, ptr %i.dg, align 8, !tbaa !27
  %i.dl = add nuw nsw i64 %.0159199, 1            ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %i.ci, i64 %i.dl ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !27
  %i.do = getelementptr [8 x i8], ptr %i.bx, i64 %i.dl
  %i.dp = load double, ptr %i.do, align 8, !tbaa !27
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.dp, double %i.dn)
  store double %i.dq, ptr %i.dm, align 8, !tbaa !27
  %i.dr = add nuw nsw i64 %.0159199, 2            ; 2 uses
  %exitcond226.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond226.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !19

._crit_edge204:                                   ; preds = %.loopexit, %._crit_edge198
  %exitcond228.not = icmp eq i64 %.0160200, %i.u
  br i1 %exitcond228.not, label %._crit_edge206, label %.preheader184, !llvm.loop !20

._crit_edge206:                                   ; preds = %._crit_edge204, %._crit_edge
  %.not220242 = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge204 ]
  %i.ds = phi i64 [ 0, %._crit_edge ], [ %i.u, %._crit_edge204 ] ; 3 uses
  %i.dt = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  %i.dv = load double, ptr %i.du, align 8, !tbaa !27 ; 2 uses
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp olt double %i.dw, 1.000000e-10
  br i1 %i.dx, label %.loopexit185, label %bb.i

bb.i:                                             ; preds = %._crit_edge206
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ds
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !27
  %i.ea = fdiv double %i.dz, %i.dv
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ds
  store double %i.ea, ptr %i.eb, align 8, !tbaa !27
  br i1 %.not220242, label %.preheader, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.i
  %i.ec = add nuw nsw i64 %3, 1
  br label %bb.j

.preheader182:                                    ; preds = %._crit_edge210
  br i1 %i.l, label %.preheader, label %.thread178
end_hunk_0
