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
  %i.a = mul i64 %3, %3                           ; 9 uses
  %mul.ov.i = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef %i.a, i64 noundef 8) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.a, 0
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
  %i.l = icmp ne i64 %3, 0
  %i.m = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 8) #12 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  %or.cond3.i175 = and i1 %i.l, %i.n
  br i1 %or.cond3.i175, label %bb.g, label %gv_calloc.exit176.preheader

gv_calloc.exit176.preheader:                      ; preds = %bb.f
  %.not = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %.not, label %.preheader184.preheader, label %.preheader186

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.p = shl nuw i64 %3, 3
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, i64 noundef %i.p) #10 ; 0 uses
  tail call fastcc void @graphviz_exit() #11
  unreachable

.preheader186:                                    ; preds = %gv_calloc.exit176.preheader
  %i.r = shl nuw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %2, i64 %i.r, i1 false), !tbaa !27
  %.not219 = icmp eq i64 %i.a, 0                  ; 3 uses
  br i1 %.not219, label %._crit_edge, label %.lr.ph189.preheader

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
  %.not219238241 = phi i1 [ %.not219, %._crit_edge ], [ true, %gv_calloc.exit176.preheader ]
  %i.v = shl nuw i64 %3, 3                        ; 3 uses
  %i.w = add i64 %i.v, 8
  %i.x = shl nuw i64 %3, 3
  %i.y = getelementptr i8, ptr %0, i64 %i.v
  %i.z = add nsw i64 %3, -4
  %or.cond = icmp ult i64 %i.z, 1152921504606846972
  %n.vec = and i64 %3, 1152921504606846972        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter277 = and i64 %3, 1
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %._crit_edge204
  %.0168205 = phi i64 [ %.0160200, %._crit_edge204 ], [ 0, %.preheader184.preheader ] ; 20 uses
  %i.aa = sub i64 %3, %.0168205                   ; 3 uses
  %i.ab = sub i64 %3, %.0168205                   ; 3 uses
  %i.ac = shl i64 %.0168205, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = mul i64 %i.w, %.0168205
  %scevgep254 = getelementptr i8, ptr %0, i64 %i.ad
  %i.ae = mul i64 %i.x, %.0168205
  %scevgep255 = getelementptr i8, ptr %i.y, i64 %i.ae
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %.0168205 ; 3 uses
  %i.af = icmp ult i64 %.0168205, %3
  br i1 %i.af, label %.lr.ph193.preheader, label %.loopexit185

.lr.ph193.preheader:                              ; preds = %.preheader184
  %xtraiter = and i64 %i.aa, 1
  %i.ag = icmp eq i64 %i.u, %.0168205
  br i1 %i.ag, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph193

._crit_edge194.unr-lcssa:                         ; preds = %.lr.ph193
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge194, label %.lr.ph193.epil.preheader

.lr.ph193.epil.preheader:                         ; preds = %._crit_edge194.unr-lcssa, %.lr.ph193.preheader
  %.0162192.epil.init = phi i64 [ %.0168205, %.lr.ph193.preheader ], [ %i.bs, %._crit_edge194.unr-lcssa ] ; 2 uses
  %.0163191.epil.init = phi i64 [ 0, %.lr.ph193.preheader ], [ %.0163..0162.1, %._crit_edge194.unr-lcssa ]
  %.0164190.epil.init = phi double [ 0.000000e+00, %.lr.ph193.preheader ], [ %.0164..1, %._crit_edge194.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.ah = mul i64 %.0162192.epil.init, %3
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ah
  %i.ai = load double, ptr %gep.epil, align 8, !tbaa !27
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp olt double %i.aj, %.0164190.epil.init ; 2 uses
  %.0164..epil = select i1 %i.ak, double %.0164190.epil.init, double %i.aj
  %.0163..0162.epil = select i1 %i.ak, i64 %.0163191.epil.init, i64 %.0162192.epil.init
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %._crit_edge194.unr-lcssa, %.lr.ph193.epil.preheader
  %.0164..lcssa = phi double [ %.0164..1, %._crit_edge194.unr-lcssa ], [ %.0164..epil, %.lr.ph193.epil.preheader ]
  %.0163..0162.lcssa = phi i64 [ %.0163..0162.1, %._crit_edge194.unr-lcssa ], [ %.0163..0162.epil, %.lr.ph193.epil.preheader ] ; 4 uses
  %i.al = fcmp uge double %.0164..lcssa, 1.000000e-10
  br i1 %i.al, label %.lr.ph197, label %.loopexit185

.lr.ph197:                                        ; preds = %._crit_edge194
  %i.am = mul i64 %.0163..0162.lcssa, %3
  %i.an = getelementptr [8 x i8], ptr %0, i64 %i.am ; 4 uses
  %i.ao = mul i64 %.0168205, %3
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.ao ; 4 uses
  %min.iters.check258 = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check258, label %scalar.ph257.preheader, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph197
  %i.aq = mul i64 %i.v, %.0163..0162.lcssa
  %scevgep252 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %i.ar = shl i64 %.0163..0162.lcssa, 3
  %i.as = add i64 %i.ar, 8
  %i.at = mul i64 %3, %i.as
  %scevgep253 = getelementptr i8, ptr %0, i64 %i.at
  %bound0 = icmp ult ptr %scevgep252, %scevgep255
  %bound1256 = icmp ult ptr %scevgep254, %scevgep253
  %found.conflict = and i1 %bound0, %bound1256
  br i1 %found.conflict, label %scalar.ph257.preheader, label %vector.ph259

vector.ph259:                                     ; preds = %vector.memcheck251
  %n.vec260 = and i64 %i.ab, -4                   ; 3 uses
  %i.au = add i64 %.0168205, %n.vec260
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.av = add nuw i64 %.0168205, %index262        ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.an, i64 %i.av ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load263 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !28, !noalias !29
  %wide.load264 = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !28, !noalias !29
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %i.av ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %wide.load265 = load <2 x double>, ptr %i.ay, align 8, !tbaa !27, !alias.scope !29
  %wide.load266 = load <2 x double>, ptr %i.az, align 8, !tbaa !27, !alias.scope !29
  %i.ba = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load265, ptr %i.aw, align 8, !tbaa !27, !alias.scope !28, !noalias !29
  store <2 x double> %wide.load266, ptr %i.ba, align 8, !tbaa !27, !alias.scope !28, !noalias !29
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  store <2 x i64> %wide.load263, ptr %i.ay, align 8, !alias.scope !29
  store <2 x i64> %wide.load264, ptr %i.bb, align 8, !alias.scope !29
  %index.next267 = add nuw i64 %index262, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.bc, label %middle.block268, label %vector.body261, !llvm.loop !11

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.ab, %n.vec260
  br i1 %cmp.n269, label %._crit_edge198, label %scalar.ph257.preheader

scalar.ph257.preheader:                           ; preds = %vector.memcheck251, %.lr.ph197, %middle.block268
  %.0161196.ph = phi i64 [ %.0168205, %vector.memcheck251 ], [ %.0168205, %.lr.ph197 ], [ %i.au, %middle.block268 ] ; 6 uses
  %i.bd = sub i64 %3, %.0161196.ph
  %.neg = add i64 %.0161196.ph, 1
  %xtraiter275 = and i64 %i.bd, 1
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod276.not, label %scalar.ph257.prol.loopexit, label %scalar.ph257.prol

scalar.ph257.prol:                                ; preds = %scalar.ph257.preheader
  %i.be = getelementptr [8 x i8], ptr %i.an, i64 %.0161196.ph ; 2 uses
  %.sroa.038.0.copyload.prol = load i64, ptr %i.be, align 8
  %i.bf = getelementptr [8 x i8], ptr %i.ap, i64 %.0161196.ph ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !27
  store double %i.bg, ptr %i.be, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload.prol, ptr %i.bf, align 8
  %i.bh = add nuw i64 %.0161196.ph, 1
  br label %scalar.ph257.prol.loopexit

scalar.ph257.prol.loopexit:                       ; preds = %scalar.ph257.prol, %scalar.ph257.preheader
  %.0161196.unr = phi i64 [ %.0161196.ph, %scalar.ph257.preheader ], [ %i.bh, %scalar.ph257.prol ]
  %i.bi = icmp eq i64 %3, %.neg
  br i1 %i.bi, label %._crit_edge198, label %scalar.ph257

.lr.ph193:                                        ; preds = %.lr.ph193, %.lr.ph193.preheader.new
  %.0162192 = phi i64 [ %.0168205, %.lr.ph193.preheader.new ], [ %i.bs, %.lr.ph193 ] ; 4 uses
  %.0163191 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %.0163..0162.1, %.lr.ph193 ]
  %.0164190 = phi double [ 0.000000e+00, %.lr.ph193.preheader.new ], [ %.0164..1, %.lr.ph193 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter.next.1, %.lr.ph193 ]
  %i.bj = mul i64 %.0162192, %3
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  %i.bk = load double, ptr %gep, align 8, !tbaa !27
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fcmp olt double %i.bl, %.0164190        ; 2 uses
  %.0164. = select i1 %i.bm, double %.0164190, double %i.bl ; 2 uses
  %.0163..0162 = select i1 %i.bm, i64 %.0163191, i64 %.0162192
  %i.bn = add nuw i64 %.0162192, 1                ; 2 uses
  %i.bo = mul i64 %i.bn, %3
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  %i.bp = load double, ptr %gep.1, align 8, !tbaa !27
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp) ; 2 uses
  %i.br = fcmp olt double %i.bq, %.0164.          ; 2 uses
  %.0164..1 = select i1 %i.br, double %.0164., double %i.bq ; 3 uses
  %.0163..0162.1 = select i1 %i.br, i64 %.0163..0162, i64 %i.bn ; 3 uses
  %i.bs = add nuw i64 %.0162192, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge194.unr-lcssa, label %.lr.ph193, !llvm.loop !12

._crit_edge198:                                   ; preds = %scalar.ph257.prol.loopexit, %scalar.ph257, %middle.block268
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0163..0162.lcssa ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0168205 ; 3 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !27
  store double %i.bv, ptr %i.bt, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload, ptr %i.bu, align 8
  %.0160200 = add nuw i64 %.0168205, 1            ; 4 uses
  %i.bw = icmp ult i64 %.0160200, %3
  br i1 %i.bw, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %._crit_edge198
  %i.bx = mul i64 %.0168205, %3
  %i.by = getelementptr [8 x i8], ptr %0, i64 %i.bx ; 5 uses
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.0168205
  br label %bb.h

scalar.ph257:                                     ; preds = %scalar.ph257.prol.loopexit, %scalar.ph257
  %.0161196 = phi i64 [ %i.ch, %scalar.ph257 ], [ %.0161196.unr, %scalar.ph257.prol.loopexit ] ; 4 uses
  %i.ca = getelementptr [8 x i8], ptr %i.an, i64 %.0161196 ; 2 uses
  %.sroa.038.0.copyload = load i64, ptr %i.ca, align 8
  %i.cb = getelementptr [8 x i8], ptr %i.ap, i64 %.0161196 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !27
  store double %i.cc, ptr %i.ca, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload, ptr %i.cb, align 8
  %i.cd = add nuw i64 %.0161196, 1                ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.an, i64 %i.cd ; 2 uses
  %.sroa.038.0.copyload.1 = load i64, ptr %i.ce, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.ap, i64 %i.cd ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  store double %i.cg, ptr %i.ce, align 8, !tbaa !27
  store i64 %.sroa.038.0.copyload.1, ptr %i.cf, align 8
  %i.ch = add nuw i64 %.0161196, 2                ; 2 uses
  %exitcond225.not.1 = icmp eq i64 %i.ch, %3
  br i1 %exitcond225.not.1, label %._crit_edge198, label %scalar.ph257, !llvm.loop !13

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.0160 = add nuw i64 %.0160201, 1               ; 2 uses
  %exitcond227.not = icmp eq i64 %.0160, %3
  br i1 %exitcond227.not, label %._crit_edge204, label %bb.h, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph203, %.loopexit
  %.0160201 = phi i64 [ %.0160200, %.lr.ph203 ], [ %.0160, %.loopexit ] ; 3 uses
  %i.ci = mul i64 %.0160201, %3
  %i.cj = getelementptr [8 x i8], ptr %0, i64 %i.ci ; 5 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %.0168205
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !27
  %i.cm = load double, ptr %i.bz, align 8, !tbaa !27
  %i.cn = load double, ptr %i.bu, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0160201 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !27
  %i.cq = fneg double %i.cl
  %i.cr = fdiv double %i.cq, %i.cm                ; 5 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cn, double %i.cp)
  store double %i.cs, ptr %i.co, align 8, !tbaa !27
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %bb.h
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cj, i64 %index ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ct, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %wide.load248 = load <2 x double>, ptr %i.cu, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %i.cv = getelementptr [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %wide.load249 = load <2 x double>, ptr %i.cv, align 8, !tbaa !27, !alias.scope !34
  %wide.load250 = load <2 x double>, ptr %i.cw, align 8, !tbaa !27, !alias.scope !34
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load249, <2 x double> %wide.load)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load250, <2 x double> %wide.load248)
  store <2 x double> %i.cx, ptr %i.ct, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <2 x double> %i.cy, ptr %i.cu, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.h, %middle.block
  %.0159199.ph = phi i64 [ 0, %bb.h ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg281 = or disjoint i64 %.0159199.ph, 1
  br i1 %lcmp.mod278.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.da = getelementptr [8 x i8], ptr %i.cj, i64 %.0159199.ph ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !27
  %i.dc = getelementptr [8 x i8], ptr %i.by, i64 %.0159199.ph
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dd, double %i.db)
  store double %i.de, ptr %i.da, align 8, !tbaa !27
  %i.df = or disjoint i64 %.0159199.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0159199.unr = phi i64 [ %.0159199.ph, %scalar.ph.preheader ], [ %i.df, %scalar.ph.prol ]
  %i.dg = icmp eq i64 %3, %.neg281
  br i1 %i.dg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0159199 = phi i64 [ %i.ds, %scalar.ph ], [ %.0159199.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr [8 x i8], ptr %i.cj, i64 %.0159199 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr [8 x i8], ptr %i.by, i64 %.0159199
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !27
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dk, double %i.di)
  store double %i.dl, ptr %i.dh, align 8, !tbaa !27
  %i.dm = add nuw i64 %.0159199, 1                ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.cj, i64 %i.dm ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr [8 x i8], ptr %i.by, i64 %i.dm
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !27
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.dq, double %i.do)
  store double %i.dr, ptr %i.dn, align 8, !tbaa !27
  %i.ds = add nuw i64 %.0159199, 2                ; 2 uses
  %exitcond226.not.1 = icmp eq i64 %i.ds, %3
  br i1 %exitcond226.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !19

._crit_edge204:                                   ; preds = %.loopexit, %._crit_edge198
  %exitcond228.not = icmp eq i64 %.0160200, %i.u
  br i1 %exitcond228.not, label %._crit_edge206, label %.preheader184, !llvm.loop !20

._crit_edge206:                                   ; preds = %._crit_edge204, %._crit_edge
  %.not220244 = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge204 ]
  %i.dt = phi i64 [ 0, %._crit_edge ], [ %i.u, %._crit_edge204 ] ; 3 uses
  %.not219238242 = phi i1 [ %.not219, %._crit_edge ], [ %.not219238241, %._crit_edge204 ]
  %i.du = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !27 ; 2 uses
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp olt double %i.dx, 1.000000e-10
  br i1 %i.dy, label %.loopexit185, label %bb.i

bb.i:                                             ; preds = %._crit_edge206
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dt
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !27
  %i.eb = fdiv double %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dt
  store double %i.eb, ptr %i.ec, align 8, !tbaa !27
  br i1 %.not220244, label %.lr.ph215.preheader, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.i
  %i.ed = add nuw nsw i64 %3, 1
  br label %bb.j

.preheader182:                                    ; preds = %._crit_edge210
  br i1 %.not, label %.preheader, label %.lr.ph215.preheader

.lr.ph215.preheader:                              ; preds = %bb.i, %.preheader182
  %i.ee = shl nuw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.m, i64 %i.ee, i1 false), !tbaa !27
  br label %.preheader

bb.j:                                             ; preds = %.lr.ph213, %._crit_edge210
  %.0158211 = phi i64 [ 0, %.lr.ph213 ], [ %i.fb, %._crit_edge210 ] ; 4 uses
  %i.ef = sub i64 %3, %.0158211                   ; 3 uses
  %i.eg = add i64 %i.ef, -2                       ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !27 ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eg ; 5 uses
  store double %i.ei, ptr %i.ej, align 8, !tbaa !27
  %i.ek = add i64 %i.ef, -1                       ; 4 uses
  %i.el = icmp ult i64 %i.ek, %3
  br i1 %i.el, label %.lr.ph209, label %._crit_edge210

.lr.ph209:                                        ; preds = %bb.j
  %i.em = mul i64 %i.eg, %3
  %i.en = getelementptr [8 x i8], ptr %0, i64 %i.em ; 3 uses
  %i.eo = and i64 %.0158211, 1
  %lcmp.mod280.not.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod280.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph209
  %i.ep = getelementptr [8 x i8], ptr %i.en, i64 %i.ek
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !27
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ek
  %i.es = load double, ptr %i.er, align 8, !tbaa !27
  %i.et = fneg double %i.eq
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.es, double %i.ei) ; 3 uses
  store double %i.eu, ptr %i.ej, align 8, !tbaa !27
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph209
  %.lcssa.unr = phi double [ poison, %.lr.ph209 ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %i.ei, %.lr.ph209 ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.0157207.unr = phi i64 [ %i.ek, %.lr.ph209 ], [ %i.ef, %.prol.loopexit.unr-lcssa ]
  %i.ev = icmp eq i64 %.0158211, 0
  br i1 %i.ev, label %._crit_edge210, label %.lr.ph209.new

._crit_edge210:                                   ; preds = %.prol.loopexit, %.lr.ph209.new, %bb.j
  %i.ew = phi double [ %i.ei, %bb.j ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.fp, %.lr.ph209.new ]
  %i.ex = mul i64 %i.eg, %i.ed
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !27
  %i.fa = fdiv double %i.ew, %i.ez
  store double %i.fa, ptr %i.ej, align 8, !tbaa !27
  %i.fb = add nuw i64 %.0158211, 1                ; 2 uses
  %exitcond230.not = icmp eq i64 %i.fb, %i.dt
  br i1 %exitcond230.not, label %.preheader182, label %bb.j, !llvm.loop !21

.lr.ph209.new:                                    ; preds = %.prol.loopexit, %.lr.ph209.new
  %i.fc = phi double [ %i.fp, %.lr.ph209.new ], [ %.unr, %.prol.loopexit ]
  %.0157207 = phi i64 [ %i.fq, %.lr.ph209.new ], [ %.0157207.unr, %.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr [8 x i8], ptr %i.en, i64 %.0157207
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !27
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0157207
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !27
  %i.fh = fneg double %i.fe
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fg, double %i.fc) ; 2 uses
  store double %i.fi, ptr %i.ej, align 8, !tbaa !27
  %i.fj = add nuw i64 %.0157207, 1                ; 2 uses
  %i.fk = getelementptr [8 x i8], ptr %i.en, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fj
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !27
  %i.fo = fneg double %i.fl
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fn, double %i.fi) ; 3 uses
  store double %i.fp, ptr %i.ej, align 8, !tbaa !27
  %i.fq = add nuw i64 %.0157207, 2                ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %i.fq, %3
  br i1 %exitcond229.not.1, label %._crit_edge210, label %.lr.ph209.new, !llvm.loop !22

.preheader:                                       ; preds = %.lr.ph215.preheader, %.preheader182
  br i1 %.not219238242, label %.thread178, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %.preheader
  %i.fr = shl nuw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 8 %i.e, i64 %i.fr, i1 false), !tbaa !27
  br label %.thread178

.loopexit185:                                     ; preds = %.preheader184, %._crit_edge194, %._crit_edge206
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.thread178

.thread178:                                       ; preds = %.preheader, %.lr.ph217.preheader, %.loopexit185
  tail call void @free(ptr noundef %i.e) #13
  tail call void @free(ptr noundef %i.m) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

end_hunk_0
