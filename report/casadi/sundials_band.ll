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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.ac = add nuw nsw i64 %.0126149, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit144.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

.loopexit144.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit144, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit144.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0126149.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %.loopexit144.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0126149.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.0126149.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126149.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.af = add nuw nsw i64 %.0126149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit144, label %.lr.ph.epil, !llvm.loop !24

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
  %.0127176 = phi ptr [ %5, %.lr.ph179.preheader ], [ %i.dg, %._crit_edge175 ] ; 2 uses
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %4 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 9 uses
  %i.at = add nsw i64 %.0120177, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %i.ag) ; 2 uses
  %i.au = load double, ptr %i.ar, align 8, !tbaa !20
  %i.av = tail call double @SUNRabs(double noundef %i.au) #7
  %i.aw = add nuw nsw i64 %.0120177, 1            ; 12 uses
  %.not136151.not = icmp slt i64 %.0120177, %.    ; 2 uses
  br i1 %.not136151.not, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %.lr.ph179, %bb.c
  %.0155 = phi double [ %.1, %bb.c ], [ %i.av, %.lr.ph179 ] ; 2 uses
  %.0116154 = phi ptr [ %i.bd, %bb.c ], [ %i.as, %.lr.ph179 ] ; 3 uses
  %.0118153 = phi i64 [ %.1119, %bb.c ], [ %.0120177, %.lr.ph179 ]
  %.0122152 = phi i64 [ %i.bc, %bb.c ], [ %i.aw, %.lr.ph179 ] ; 3 uses
  %i.ax = load double, ptr %.0116154, align 8, !tbaa !20
  %i.ay = tail call double @SUNRabs(double noundef %i.ax) #7
  %i.az = fcmp ogt double %i.ay, %.0155
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph157
  %i.ba = load double, ptr %.0116154, align 8, !tbaa !20
  %i.bb = tail call double @SUNRabs(double noundef %i.ba) #7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %bb.b
  %.1119 = phi i64 [ %.0122152, %bb.b ], [ %.0118153, %.lr.ph157 ] ; 2 uses
  %.1 = phi double [ %i.bb, %bb.b ], [ %.0155, %.lr.ph157 ]
  %i.bc = add nuw i64 %.0122152, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0116154, i64 8
  %exitcond185.not = icmp eq i64 %.0122152, %smin186
  br i1 %exitcond185.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !26

._crit_edge158:                                   ; preds = %bb.c, %.lr.ph179
  %.0118.lcssa = phi i64 [ %.0120177, %.lr.ph179 ], [ %.1119, %bb.c ] ; 4 uses
  %i.be = sub nsw i64 %.0118.lcssa, %.0120177
  store i64 %.0118.lcssa, ptr %.0127176, align 8, !tbaa !27
  %i.bf = getelementptr [8 x i8], ptr %i.aq, i64 %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %4 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20 ; 3 uses
  %i.bi = fcmp oeq double %i.bh, 0.000000e+00
  br i1 %i.bi, label %.loopexit143, label %bb.d

bb.d:                                             ; preds = %._crit_edge158
  %.not137 = icmp eq i64 %.0118.lcssa, %.0120177  ; 2 uses
  %.pre = load double, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %.pre, ptr %i.bg, align 8, !tbaa !20
  store double %i.bh, ptr %i.ar, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = phi double [ %i.bh, %bb.e ], [ %.pre, %bb.d ]
  %i.bk = fdiv double -1.000000e+00, %i.bj        ; 2 uses
  br i1 %.not136151.not, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.f
  %6 = sub i64 %smin186, %.0120177                ; 3 uses
  %min.iters.check214 = icmp ult i64 %6, 4
  br i1 %min.iters.check214, label %.lr.ph163.preheader230, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph163.preheader
  %n.vec216 = and i64 %6, -4                      ; 4 uses
  %i.bl = shl i64 %n.vec216, 3
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bl
  %i.bn = add i64 %i.aw, %n.vec216
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.bo = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.as, i64 %i.bo ; 3 uses
  %i.bp = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !20
  %wide.load223 = load <2 x double>, ptr %i.bp, align 8, !tbaa !20
  %i.bq = fmul <2 x double> %broadcast.splat218, %wide.load222
  %i.br = fmul <2 x double> %broadcast.splat218, %wide.load223
  store <2 x double> %i.bq, ptr %next.gep221, align 8, !tbaa !20
  store <2 x double> %i.br, ptr %i.bp, align 8, !tbaa !20
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next224, %n.vec216
  br i1 %i.bs, label %middle.block225, label %vector.body219, !llvm.loop !28

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %6, %n.vec216
  br i1 %cmp.n226, label %._crit_edge164, label %.lr.ph163.preheader230

.lr.ph163.preheader230:                           ; preds = %.lr.ph163.preheader, %middle.block225
  %.1117161.ph = phi ptr [ %i.as, %.lr.ph163.preheader ], [ %i.bm, %middle.block225 ]
  %.1123160.ph = phi i64 [ %i.aw, %.lr.ph163.preheader ], [ %i.bn, %middle.block225 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader230, %.lr.ph163
  %.1117161 = phi ptr [ %i.bw, %.lr.ph163 ], [ %.1117161.ph, %.lr.ph163.preheader230 ] ; 3 uses
  %.1123160 = phi i64 [ %i.bv, %.lr.ph163 ], [ %.1123160.ph, %.lr.ph163.preheader230 ] ; 2 uses
  %i.bt = load double, ptr %.1117161, align 8, !tbaa !20
  %i.bu = fmul double %i.bk, %i.bt
  store double %i.bu, ptr %.1117161, align 8, !tbaa !20
  %i.bv = add nuw i64 %.1123160, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.1117161, i64 8
  %exitcond187.not = icmp eq i64 %.1123160, %smin186
  br i1 %exitcond187.not, label %._crit_edge164, label %.lr.ph163, !llvm.loop !31

._crit_edge164:                                   ; preds = %.lr.ph163, %middle.block225, %bb.f
  %i.bx = add nsw i64 %.0120177, %4
  %.141 = tail call i64 @llvm.smin.i64(i64 %i.bx, i64 %i.ag)
  %.not139171.not = icmp slt i64 %.0120177, %.141
  br i1 %.not139171.not, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %._crit_edge164
  %i.by = getelementptr i8, ptr %i.aq, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.by, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.an
  %7 = tail call i64 @llvm.smax.i64(i64 %smin186, i64 %i.aw)
  %8 = sub nsw i64 %7, %.0120177                  ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  %n.vec = and i64 %8, -4                         ; 4 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.as, i64 %i.bz
  %i.cb = add i64 %i.aw, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.aw, %.lr.ph174.preheader ], [ %i.df, %.loopexit ] ; 6 uses
  %i.cc = shl i64 %indvar, 3
  %i.cd = sub i64 %i.ao, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19 ; 4 uses
  %i.cg = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ch = getelementptr [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %4 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !20 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.ck = sub nsw i64 %.0120177, %.0121172
  %i.cl = getelementptr [8 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %4 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  store double %i.cn, ptr %i.ci, align 8, !tbaa !20
  store double %i.cj, ptr %i.cm, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.co = fcmp oeq double %i.cj, 0.000000e+00
  %brmerge = or i1 %i.co, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cp = sub i64 %i.aw, %.0121172
  %i.cq = getelementptr [8 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cd
  %bound0 = icmp ult ptr %i.cr, %scevgep203
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bz
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %i.ct ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.as, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <2 x double>, ptr %next.gep206, align 8, !tbaa !20, !alias.scope !32
  %wide.load207.a = load <2 x double>, ptr %i.cu, align 8, !tbaa !20, !alias.scope !32
  %i.cv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %wide.load209 = load <2 x double>, ptr %i.cv, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load208)
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load207.a, <2 x double> %wide.load209)
  store <2 x double> %i.cw, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader229

.lr.ph170.preheader229:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph170.preheader ], [ %i.cs, %middle.block ]
  %.2167.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph170.preheader ], [ %i.ca, %middle.block ]
  %.2124166.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph170.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader229, %.lr.ph170
  %.0115168 = phi ptr [ %i.de, %.lr.ph170 ], [ %.0115168.ph, %.lr.ph170.preheader229 ] ; 3 uses
  %.2167 = phi ptr [ %i.dd, %.lr.ph170 ], [ %.2167.ph, %.lr.ph170.preheader229 ] ; 2 uses
  %.2124166 = phi i64 [ %i.dc, %.lr.ph170 ], [ %.2124166.ph, %.lr.ph170.preheader229 ] ; 2 uses
  %i.cz = load double, ptr %.2167, align 8, !tbaa !20
  %i.da = load double, ptr %.0115168, align 8, !tbaa !20
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cz, double %i.da)
  store double %i.db, ptr %.0115168, align 8, !tbaa !20
  %i.dc = add nuw nsw i64 %.2124166, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.2167, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0115168, i64 8
  %.not140.not = icmp slt i64 %.2124166, %.
  br i1 %.not140.not, label %.lr.ph170, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.df = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !39

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dg = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !40

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dg, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !27
  %i.dh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %4
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !20
  %i.dl = fcmp oeq double %i.dk, 0.000000e+00
  %.142 = select i1 %i.dl, i64 %1, i64 0
  br label %.loopexit143

.loopexit143:                                     ; preds = %._crit_edge158, %._crit_edge180
  %.0128 = phi i64 [ %.142, %._crit_edge180 ], [ %i.aw, %._crit_edge158 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 5 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !41

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20 ; 5 uses
  %.not.i = icmp eq i64 %i.y, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20
  store double %i.ac, ptr %i.z, align 8, !tbaa !20
  store double %i.aa, ptr %i.ab, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.f ; 4 uses
  %i.ag = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.i)
  %i.ah = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %smin.i, %.05967.i                 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.aj, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.w
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ak = add i64 %i.ah, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add nuw i64 %i.ah, %index               ; 2 uses
  %i.am = sub nuw nsw i64 %i.al, %.05967.i
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !20, !alias.scope !42
  %wide.load13.a = load <2 x double>, ptr %i.ao, align 8, !tbaa !20, !alias.scope !42
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load14.a = load <2 x double>, ptr %i.ap, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %wide.load15 = load <2 x double>, ptr %i.aq, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14.a)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13.a, <2 x double> %wide.load15)
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader41

.lr.ph.i.preheader41:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.preheader ], [ %i.ak, %middle.block ] ; 6 uses
  %i.au = add i64 %smin.i, %.066.i.ph
  %i.av = and i64 %i.au, 1
  %lcmp.mod.not.not = icmp eq i64 %i.av, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader41
  %i.aw = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ay, double %i.ba)
  store double %i.bb, ptr %i.az, align 8, !tbaa !20
  %i.bc = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader41
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader41 ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bd = icmp eq i64 %smin.i, %.066.i.ph
  br i1 %i.bd, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.br, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.be = sub nuw nsw i64 %.066.i, %.05967.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bl = sub nuw nsw i64 %i.bk, %.05967.i
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bn, double %i.bp)
  store double %i.bq, ptr %i.bo, align 8, !tbaa !20
  %i.br = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bk, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !48

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 4 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.da, %._crit_edge.i ] ; 10 uses
  %i.bs = sub i64 %i.n, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bs, i64 0) ; 2 uses
  %i.bt = shl i64 %smax, 3
  %scevgep17.a = getelementptr i8, ptr %2, i64 %i.bt
  %i.bu = shl i64 %indvar, 3
  %i.bv = sub i64 %i.p, %i.bu
  %scevgep18.a = getelementptr i8, ptr %2, i64 %i.bv
  %.reass = add i64 %indvar, %invariant.op
  %i.bw = add i64 %smax, %.reass
  %i.bx = shl i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.f ; 4 uses
  %i.cb = sub nsw i64 %.16072.i, %i.f
  %i.cc = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 0) ; 5 uses
  %i.cd = load double, ptr %i.ca, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20
  %i.cg = fdiv double %i.cf, %i.cd                ; 2 uses
  store double %i.cg, ptr %i.ce, align 8, !tbaa !20
  %i.ch = fneg double %i.cg                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.cc, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.ci = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check25, label %.lr.ph71.i.preheader40, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph71.i.preheader
  %scevgep19.a = getelementptr i8, ptr %i.bz, i64 %i.q
  %scevgep20 = getelementptr i8, ptr %scevgep19.a, i64 %i.bx
  %bound021 = icmp ult ptr %scevgep17.a, %i.ca
  %bound122 = icmp ult ptr %scevgep20, %scevgep18.a
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph71.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck16
  %n.vec27 = and i64 %i.ci, -4                    ; 3 uses
  %i.cj = add i64 %i.cc, %n.vec27
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.ck = add nuw i64 %i.cc, %index31             ; 2 uses
  %i.cl = sub nsw i64 %i.ck, %.16072.i
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load32.a = load <2 x double>, ptr %i.cm, align 8, !tbaa !20, !alias.scope !49
  %wide.load33.a = load <2 x double>, ptr %i.cn, align 8, !tbaa !20, !alias.scope !49
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load34.a = load <2 x double>, ptr %i.co, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %wide.load35 = load <2 x double>, ptr %i.cp, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load32.a, <2 x double> %wide.load34.a)
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load33.a, <2 x double> %wide.load35)
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.cs, label %middle.block37, label %vector.body30, !llvm.loop !54

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %i.ci, %n.vec27
  br i1 %cmp.n38, label %._crit_edge.i, label %.lr.ph71.i.preheader40

.lr.ph71.i.preheader40:                           ; preds = %vector.memcheck16, %.lr.ph71.i.preheader, %middle.block37
  %.170.i.ph = phi i64 [ %i.cc, %vector.memcheck16 ], [ %i.cc, %.lr.ph71.i.preheader ], [ %i.cj, %middle.block37 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader40, %.lr.ph71.i
  %.170.i = phi i64 [ %i.cz, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader40 ] ; 3 uses
  %i.ct = sub nsw i64 %.170.i, %.16072.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !20
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cv, double %i.cx)
  store double %i.cy, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.cz, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block37, %.lr.ph73.i
  %i.da = add nsw i64 %.16072.i, -1
  %i.db = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.db, label %.lr.ph73.i, label %bandGBTRS.exit, !llvm.loop !56

bandGBTRS.exit:                                   ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.z, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68, !llvm.loop !41

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = xor i64 %2, -1
  %i.f = add i64 %1, %i.e
  %i.g = shl i64 %1, 3
  %i.h = add i64 %i.g, -8
  %i.i = shl nsw i64 %2, 3
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 3 uses
  %.05967 = phi i64 [ %i.z, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %i.j = shl i64 %.05967, 3                       ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 8
  %i.l = getelementptr i8, ptr %5, i64 %i.j
  %scevgep77 = getelementptr i8, ptr %i.l, i64 16
  %smin78 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.m = xor i64 %.05967, -1
  %i.n = add i64 %smin78, %i.m
  %i.o = shl i64 %i.n, 3                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep77, i64 %i.o
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !20 ; 5 uses
  %.not = icmp eq i64 %i.q, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !20
  store double %i.u, ptr %i.r, align 8, !tbaa !20
  store double %i.s, ptr %i.t, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %2 ; 4 uses
  %i.y = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.a)
  %i.z = add nuw nsw i64 %.05967, 1               ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %6 = sub i64 %smin, %.05967                     ; 3 uses
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.ab, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.o
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.ac = add i64 %i.z, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %i.z, %index                ; 2 uses
  %i.ae = sub nuw nsw i64 %i.ad, %.05967
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !20, !alias.scope !57
  %wide.load84.a = load <2 x double>, ptr %i.ag, align 8, !tbaa !20, !alias.scope !57
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ad ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load85.a = load <2 x double>, ptr %i.ah, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %wide.load86 = load <2 x double>, ptr %i.ai, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load85.a)
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load84.a, <2 x double> %wide.load86)
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.ac, %middle.block ] ; 6 uses
  %i.am = add i64 %smin, %.066.ph
  %i.an = and i64 %i.am, 1
  %lcmp.mod.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader112
  %i.ao = sub nuw nsw i64 %.066.ph, %.05967
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !20
  %i.at = tail call double @llvm.fmuladd.f64(double %i.s, double %i.aq, double %i.as)
  store double %i.at, ptr %i.ar, align 8, !tbaa !20
  %i.au = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader112
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader112 ], [ %i.au, %.lr.ph.prol ]
  %i.av = icmp eq i64 %smin, %.066.ph
  br i1 %i.av, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bj, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aw = sub nuw nsw i64 %.066, %.05967
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ay, double %i.ba)
  store double %i.bb, ptr %i.az, align 8, !tbaa !20
  %i.bc = add nuw i64 %.066, 1                    ; 3 uses
  %i.bd = sub nuw nsw i64 %i.bc, %.05967
  %i.be = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bc ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bf, double %i.bh)
  store double %i.bi, ptr %i.bg, align 8, !tbaa !20
  %i.bj = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bc, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !63

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.cs, %._crit_edge ] ; 10 uses
  %i.bk = sub i64 %i.f, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0) ; 2 uses
  %i.bl = shl i64 %smax, 3
  %scevgep88.a = getelementptr i8, ptr %5, i64 %i.bl
  %i.bm = shl i64 %indvar, 3
  %i.bn = sub i64 %i.h, %i.bm
  %scevgep89.a = getelementptr i8, ptr %5, i64 %i.bn
  %.reass = add i64 %indvar, %invariant.op
  %i.bo = add i64 %smax, %.reass
  %i.bp = shl i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !19 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %2 ; 4 uses
  %i.bt = sub nsw i64 %.16072, %2
  %i.bu = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0) ; 5 uses
  %i.bv = load double, ptr %i.bs, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !20
  %i.by = fdiv double %i.bx, %i.bv                ; 2 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !20
  %i.bz = fneg double %i.by                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bu, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.ca = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check96, label %.lr.ph71.preheader111, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph71.preheader
  %scevgep90.a = getelementptr i8, ptr %i.br, i64 %i.i
  %scevgep91 = getelementptr i8, ptr %scevgep90.a, i64 %i.bp
  %bound092 = icmp ult ptr %scevgep88.a, %i.bs
  %bound193 = icmp ult ptr %scevgep91, %scevgep89.a
  %found.conflict94 = and i1 %bound092, %bound193
  br i1 %found.conflict94, label %.lr.ph71.preheader111, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck87
  %n.vec98 = and i64 %i.ca, -4                    ; 3 uses
  %i.cb = add i64 %i.bu, %n.vec98
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph97
  %index102 = phi i64 [ 0, %vector.ph97 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.cc = add nuw i64 %i.bu, %index102            ; 2 uses
  %i.cd = sub nsw i64 %i.cc, %.16072
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load103.a = load <2 x double>, ptr %i.ce, align 8, !tbaa !20, !alias.scope !64
  %wide.load104.a = load <2 x double>, ptr %i.cf, align 8, !tbaa !20, !alias.scope !64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cc ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load105.a = load <2 x double>, ptr %i.cg, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %wide.load106 = load <2 x double>, ptr %i.ch, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load103.a, <2 x double> %wide.load105.a)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load104.a, <2 x double> %wide.load106)
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next107, %n.vec98
  br i1 %i.ck, label %middle.block108, label %vector.body101, !llvm.loop !69

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.ca, %n.vec98
  br i1 %cmp.n109, label %._crit_edge, label %.lr.ph71.preheader111

.lr.ph71.preheader111:                            ; preds = %vector.memcheck87, %.lr.ph71.preheader, %middle.block108
  %.170.ph = phi i64 [ %i.bu, %vector.memcheck87 ], [ %i.bu, %.lr.ph71.preheader ], [ %i.cb, %middle.block108 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader111, %.lr.ph71
  %.170 = phi i64 [ %i.cr, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader111 ] ; 3 uses
  %i.cl = sub nsw i64 %.170, %.16072
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !20
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cn, double %i.cp)
  store double %i.cq, ptr %i.co, align 8, !tbaa !20
  %i.cr = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cr, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block108, %.lr.ph73
  %i.cs = add nsw i64 %.16072, -1
  %i.ct = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.lr.ph73, label %._crit_edge74, !llvm.loop !56

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = add i64 %3, %2                           ; 2 uses
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %.lr.ph24.i, label %bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %bandCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph24.i
  %i.n = sub i64 %i.j, %i.h
  %i.o = shl i64 %i.n, 3
  %i.p = add i64 %3, %2
  %i.q = add i64 %i.p, 1
  %i.r = add i64 %3, %2
  %i.s = add i64 %3, %2
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 6
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.022.i = phi i64 [ %i.bh, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.m ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.j
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.m ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = ptrtoaddr ptr %i.v to i64
  %i.ae = add i64 %i.o, %i.ac
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !20
  %wide.load8 = load <2 x double>, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !20
  store <2 x double> %wide.load8, ptr %i.aj, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.al = sub i64 %i.r, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

end_hunk_0
