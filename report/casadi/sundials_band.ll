Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @BandGBTRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i64 @bandGBTRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, ptr noundef %1)
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define i64 @bandGBTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %4, %2
  %i.b = icmp sgt i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit144

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = sub i64 %4, %2
  %i.d = shl i64 %i.c, 3                          ; 9 uses
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.e = icmp ult i64 %1, 8
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 9223372036854775800
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0126149 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.ac = add nuw nsw i64 %.0126149, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit144.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

.loopexit144.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit144, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit144.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0126149.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %.loopexit144.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0126149.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.0126149.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.d, i1 false), !tbaa !26
  %i.af = add nuw nsw i64 %.0126149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit144, label %.lr.ph.epil, !llvm.loop !33

.loopexit144:                                     ; preds = %.loopexit144.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.ag = add i64 %1, -1                          ; 8 uses
  %i.ah = icmp sgt i64 %1, 1
  br i1 %i.ah, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %.loopexit144
  %.not140165.not = icmp slt i64 %3, 1
  %i.ai = shl nsw i64 %4, 3                       ; 2 uses
  %i.aj = add i64 %i.ai, 8
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %._crit_edge175
  %indvars.iv188 = phi i64 [ %4, %.lr.ph179.preheader ], [ %indvars.iv.next189, %._crit_edge175 ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph179.preheader ], [ %indvars.iv.next, %._crit_edge175 ] ; 3 uses
  %.0120177 = phi i64 [ 0, %.lr.ph179.preheader ], [ %i.aw, %._crit_edge175 ] ; 15 uses
  %.0127176 = phi ptr [ %5, %.lr.ph179.preheader ], [ %i.dj, %._crit_edge175 ] ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.ak = add nuw i64 %.0120177, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %smin, i64 %i.ak)
  %i.al = xor i64 %.0120177, -1
  %i.am = add i64 %smax, %i.al
  %i.an = shl i64 %i.am, 3                        ; 2 uses
  %i.ao = add i64 %i.aj, %i.an
  %smin190 = tail call i64 @llvm.smin.i64(i64 %indvars.iv188, i64 %i.ag)
  %smin186 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120177
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %4 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 9 uses
  %i.at = add nsw i64 %.0120177, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %i.ag) ; 2 uses
  %i.au = load double, ptr %i.ar, align 8, !tbaa !26
  %i.av = tail call double @SUNRabs(double noundef %i.au) #7
  %i.aw = add nuw nsw i64 %.0120177, 1            ; 12 uses
  %.not136151.not = icmp slt i64 %.0120177, %.    ; 2 uses
  br i1 %.not136151.not, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %.lr.ph179, %bb.c
  %.0155 = phi double [ %.1, %bb.c ], [ %i.av, %.lr.ph179 ] ; 2 uses
  %.0116154 = phi ptr [ %i.bd, %bb.c ], [ %i.as, %.lr.ph179 ] ; 3 uses
  %.0118153 = phi i64 [ %.1119, %bb.c ], [ %.0120177, %.lr.ph179 ]
  %.0122152 = phi i64 [ %i.bc, %bb.c ], [ %i.aw, %.lr.ph179 ] ; 3 uses
  %i.ax = load double, ptr %.0116154, align 8, !tbaa !26
  %i.ay = tail call double @SUNRabs(double noundef %i.ax) #7
  %i.az = fcmp ogt double %i.ay, %.0155
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph157
  %i.ba = load double, ptr %.0116154, align 8, !tbaa !26
  %i.bb = tail call double @SUNRabs(double noundef %i.ba) #7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %bb.b
  %.1119 = phi i64 [ %.0122152, %bb.b ], [ %.0118153, %.lr.ph157 ] ; 2 uses
  %.1 = phi double [ %i.bb, %bb.b ], [ %.0155, %.lr.ph157 ]
  %i.bc = add nuw i64 %.0122152, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0116154, i64 8
  %exitcond185.not = icmp eq i64 %.0122152, %smin186
  br i1 %exitcond185.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !34

._crit_edge158:                                   ; preds = %bb.c, %.lr.ph179
  %.0118.lcssa = phi i64 [ %.0120177, %.lr.ph179 ], [ %.1119, %bb.c ] ; 4 uses
  %i.be = sub nsw i64 %.0118.lcssa, %.0120177
  store i64 %.0118.lcssa, ptr %.0127176, align 8, !tbaa !29
  %i.bf = getelementptr [8 x i8], ptr %i.aq, i64 %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %4 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !26 ; 3 uses
  %i.bi = fcmp oeq double %i.bh, 0.000000e+00
  br i1 %i.bi, label %.loopexit143, label %bb.d

bb.d:                                             ; preds = %._crit_edge158
  %.not137 = icmp eq i64 %.0118.lcssa, %.0120177  ; 2 uses
  %.pre = load double, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %.pre, ptr %i.bg, align 8, !tbaa !26
  store double %i.bh, ptr %i.ar, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = phi double [ %i.bh, %bb.e ], [ %.pre, %bb.d ]
  %i.bk = fdiv double -1.000000e+00, %i.bj        ; 2 uses
  br i1 %.not136151.not, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.f
  %i.bl = sub i64 %smin186, %.0120177             ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check211, label %.lr.ph163.preheader227, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph163.preheader
  %n.vec213 = and i64 %i.bl, -4                   ; 4 uses
  %i.bm = shl i64 %n.vec213, 3
  %i.bn = getelementptr i8, ptr %i.as, i64 %i.bm
  %i.bo = add i64 %i.aw, %n.vec213
  %broadcast.splatinsert214 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat215 = shufflevector <2 x double> %broadcast.splatinsert214, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next221, %vector.body216 ] ; 2 uses
  %i.bp = shl i64 %index217, 3
  %next.gep218 = getelementptr i8, ptr %i.as, i64 %i.bp ; 3 uses
  %i.bq = getelementptr i8, ptr %next.gep218, i64 16 ; 2 uses
  %wide.load219 = load <2 x double>, ptr %next.gep218, align 8, !tbaa !26
  %wide.load220 = load <2 x double>, ptr %i.bq, align 8, !tbaa !26
  %i.br = fmul <2 x double> %broadcast.splat215, %wide.load219
  %i.bs = fmul <2 x double> %broadcast.splat215, %wide.load220
  store <2 x double> %i.br, ptr %next.gep218, align 8, !tbaa !26
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !26
  %index.next221 = add nuw i64 %index217, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next221, %n.vec213
  br i1 %i.bt, label %middle.block222, label %vector.body216, !llvm.loop !35

middle.block222:                                  ; preds = %vector.body216
  %cmp.n223 = icmp eq i64 %i.bl, %n.vec213
  br i1 %cmp.n223, label %._crit_edge164, label %.lr.ph163.preheader227

.lr.ph163.preheader227:                           ; preds = %.lr.ph163.preheader, %middle.block222
  %.1117161.ph = phi ptr [ %i.as, %.lr.ph163.preheader ], [ %i.bn, %middle.block222 ]
  %.1123160.ph = phi i64 [ %i.aw, %.lr.ph163.preheader ], [ %i.bo, %middle.block222 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader227, %.lr.ph163
  %.1117161 = phi ptr [ %i.bx, %.lr.ph163 ], [ %.1117161.ph, %.lr.ph163.preheader227 ] ; 3 uses
  %.1123160 = phi i64 [ %i.bw, %.lr.ph163 ], [ %.1123160.ph, %.lr.ph163.preheader227 ] ; 2 uses
  %i.bu = load double, ptr %.1117161, align 8, !tbaa !26
  %i.bv = fmul double %i.bk, %i.bu
  store double %i.bv, ptr %.1117161, align 8, !tbaa !26
  %i.bw = add nuw i64 %.1123160, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1117161, i64 8
  %exitcond187.not = icmp eq i64 %.1123160, %smin186
  br i1 %exitcond187.not, label %._crit_edge164, label %.lr.ph163, !llvm.loop !36

._crit_edge164:                                   ; preds = %.lr.ph163, %middle.block222, %bb.f
  %i.by = add nsw i64 %.0120177, %4
  %.141 = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.ag)
  %.not139171.not = icmp slt i64 %.0120177, %.141
  br i1 %.not139171.not, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %._crit_edge164
  %i.bz = getelementptr i8, ptr %i.aq, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.bz, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.an
  %i.ca = tail call i64 @llvm.smax.i64(i64 %smin186, i64 %i.aw)
  %i.cb = sub nsw i64 %i.ca, %.0120177            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  %n.vec = and i64 %i.cb, -4                      ; 4 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.as, i64 %i.cc
  %i.ce = add i64 %i.aw, %n.vec
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.aw, %.lr.ph174.preheader ], [ %i.di, %.loopexit ] ; 6 uses
  %i.cf = shl i64 %indvar, 3
  %i.cg = sub i64 %i.ao, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 4 uses
  %i.cj = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %4 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !26 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.cn = sub nsw i64 %.0120177, %.0121172
  %i.co = getelementptr [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %4 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !26
  store double %i.cq, ptr %i.cl, align 8, !tbaa !26
  store double %i.cm, ptr %i.cp, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.cr = fcmp oeq double %i.cm, 0.000000e+00
  %brmerge = or i1 %i.cr, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cs = sub i64 %i.aw, %.0121172
  %i.ct = getelementptr [8 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.cg
  %bound0 = icmp ult ptr %i.cu, %scevgep203
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %next.gep204 = getelementptr i8, ptr %i.as, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load = load <2 x double>, ptr %next.gep204, align 8, !tbaa !26, !alias.scope !44
  %wide.load205 = load <2 x double>, ptr %i.cx, align 8, !tbaa !26, !alias.scope !44
  %i.cy = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load206 = load <2 x double>, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %wide.load207 = load <2 x double>, ptr %i.cy, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load206)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load205, <2 x double> %wide.load207)
  store <2 x double> %i.cz, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader226

.lr.ph170.preheader226:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph170.preheader ], [ %i.cv, %middle.block ]
  %.2167.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph170.preheader ], [ %i.cd, %middle.block ]
  %.2124166.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph170.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader226, %.lr.ph170
  %.0115168 = phi ptr [ %i.dh, %.lr.ph170 ], [ %.0115168.ph, %.lr.ph170.preheader226 ] ; 3 uses
  %.2167 = phi ptr [ %i.dg, %.lr.ph170 ], [ %.2167.ph, %.lr.ph170.preheader226 ] ; 2 uses
  %.2124166 = phi i64 [ %i.df, %.lr.ph170 ], [ %.2124166.ph, %.lr.ph170.preheader226 ] ; 2 uses
  %i.dc = load double, ptr %.2167, align 8, !tbaa !26
  %i.dd = load double, ptr %.0115168, align 8, !tbaa !26
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.dc, double %i.dd)
  store double %i.de, ptr %.0115168, align 8, !tbaa !26
  %i.df = add nuw nsw i64 %.2124166, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.2167, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0115168, i64 8
  %.not140.not = icmp slt i64 %.2124166, %.
  br i1 %.not140.not, label %.lr.ph170, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.di = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !42

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dj = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !43

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dj, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !29
  %i.dk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !24
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %4
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !26
  %i.do = fcmp oeq double %i.dn, 0.000000e+00
  %.142 = select i1 %i.do, i64 %1, i64 0
  br label %.loopexit143

.loopexit143:                                     ; preds = %._crit_edge158, %._crit_edge180
  %.0128 = phi i64 [ %.142, %._crit_edge180 ], [ %i.aw, %._crit_edge158 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 5 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = xor i64 %i.f, -1
  %i.n = add i64 %i.d, %i.m
  %i.o = shl i64 %i.d, 3
  %i.p = add i64 %i.o, -8
  %i.q = shl nsw i64 %i.f, 3
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 3 uses
  %.05967.i = phi i64 [ %i.ah, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %i.r = shl i64 %.05967.i, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 8
  %i.t = getelementptr i8, ptr %2, i64 %i.r
  %scevgep7 = getelementptr i8, ptr %i.t, i64 16
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.u = xor i64 %.05967.i, -1
  %i.v = add i64 %smin, %i.u
  %i.w = shl i64 %i.v, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.w
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26 ; 5 uses
  %.not.i = icmp eq i64 %i.y, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !26
  store double %i.ac, ptr %i.z, align 8, !tbaa !26
  store double %i.aa, ptr %i.ab, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.f ; 4 uses
  %i.ag = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.i)
  %i.ah = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ai = sub i64 %smin.i, %.05967.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.ak, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.w
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.al = add i64 %i.ah, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add nuw i64 %i.ah, %index               ; 2 uses
  %i.an = sub nuw nsw i64 %i.am, %.05967.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !26, !alias.scope !56
  %wide.load12 = load <2 x double>, ptr %i.ap, align 8, !tbaa !26, !alias.scope !56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.aq, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %wide.load14 = load <2 x double>, ptr %i.ar, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 6 uses
  %i.av = add i64 %smin.i, %.066.i.ph
  %i.aw = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader40
  %i.ax = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !26
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !26
  %i.bd = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader40
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader40 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %smin.i, %.066.i.ph
  br i1 %i.be, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bf = sub nuw nsw i64 %.066.i, %.05967.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !26
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bh, double %i.bj)
  store double %i.bk, ptr %i.bi, align 8, !tbaa !26
  %i.bl = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bm = sub nuw nsw i64 %i.bl, %.05967.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !26
  %i.br = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bo, double %i.bq)
  store double %i.br, ptr %i.bp, align 8, !tbaa !26
  %i.bs = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bl, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 4 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.db, %._crit_edge.i ] ; 10 uses
  %i.bt = sub i64 %i.n, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0) ; 2 uses
  %i.bu = shl i64 %smax, 3
  %scevgep16 = getelementptr i8, ptr %2, i64 %i.bu
  %i.bv = shl i64 %indvar, 3
  %i.bw = sub i64 %i.p, %i.bv
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.bw
  %.reass = add i64 %indvar, %invariant.op
  %i.bx = add i64 %smax, %.reass
  %i.by = shl i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.f ; 4 uses
  %i.cc = sub nsw i64 %.16072.i, %i.f
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 5 uses
  %i.ce = load double, ptr %i.cb, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !26
  %i.ch = fdiv double %i.cg, %i.ce                ; 2 uses
  store double %i.ch, ptr %i.cf, align 8, !tbaa !26
end_hunk_0
