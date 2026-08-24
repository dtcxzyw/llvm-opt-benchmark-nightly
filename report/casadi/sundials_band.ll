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
  %i.ag = add i64 %1, -1                          ; 10 uses
  %i.ah = icmp sgt i64 %1, 1
  br i1 %i.ah, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %.loopexit144
  %.not140165.not = icmp slt i64 %3, 1
  %i.ai = shl nsw i64 %4, 3                       ; 2 uses
  %i.aj = add i64 %i.ai, 8
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %._crit_edge175
  %indvars.iv188 = phi i64 [ %4, %.lr.ph179.preheader ], [ %indvars.iv.next189, %._crit_edge175 ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph179.preheader ], [ %indvars.iv.next, %._crit_edge175 ] ; 5 uses
  %.0120177 = phi i64 [ 0, %.lr.ph179.preheader ], [ %i.az, %._crit_edge175 ] ; 16 uses
  %.0127176 = phi ptr [ %5, %.lr.ph179.preheader ], [ %i.dj, %._crit_edge175 ] ; 2 uses
  %smin212 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.ak = sub i64 %smin212, %.0120177             ; 3 uses
  %smin204 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.al = add nuw i64 %.0120177, 1
  %smax205 = tail call i64 @llvm.smax.i64(i64 %smin204, i64 %i.al)
  %i.am = sub nsw i64 %smax205, %.0120177         ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.an = add nuw i64 %.0120177, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %smin, i64 %i.an)
  %i.ao = xor i64 %.0120177, -1
  %i.ap = add nsw i64 %smax, %i.ao
  %i.aq = shl i64 %i.ap, 3                        ; 2 uses
  %i.ar = add i64 %i.aj, %i.aq
  %smin190 = tail call i64 @llvm.smin.i64(i64 %indvars.iv188, i64 %i.ag)
  %smin186 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120177
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %4 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8      ; 9 uses
  %i.aw = add nsw i64 %.0120177, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.ag) ; 2 uses
  %i.ax = load double, ptr %i.au, align 8, !tbaa !20
  %i.ay = tail call double @SUNRabs(double noundef %i.ax) #7
  %i.az = add nuw nsw i64 %.0120177, 1            ; 11 uses
  %.not136151.not = icmp slt i64 %.0120177, %.    ; 2 uses
  br i1 %.not136151.not, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %.lr.ph179, %bb.c
  %.0155 = phi double [ %.1, %bb.c ], [ %i.ay, %.lr.ph179 ] ; 2 uses
  %.0116154 = phi ptr [ %i.bg, %bb.c ], [ %i.av, %.lr.ph179 ] ; 3 uses
  %.0118153 = phi i64 [ %.1119, %bb.c ], [ %.0120177, %.lr.ph179 ]
  %.0122152 = phi i64 [ %i.bf, %bb.c ], [ %i.az, %.lr.ph179 ] ; 3 uses
  %i.ba = load double, ptr %.0116154, align 8, !tbaa !20
  %i.bb = tail call double @SUNRabs(double noundef %i.ba) #7
  %i.bc = fcmp ogt double %i.bb, %.0155
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph157
  %i.bd = load double, ptr %.0116154, align 8, !tbaa !20
  %i.be = tail call double @SUNRabs(double noundef %i.bd) #7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %bb.b
  %.1119 = phi i64 [ %.0122152, %bb.b ], [ %.0118153, %.lr.ph157 ] ; 2 uses
  %.1 = phi double [ %i.be, %bb.b ], [ %.0155, %.lr.ph157 ]
  %i.bf = add nuw i64 %.0122152, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.0116154, i64 8
  %exitcond185.not = icmp eq i64 %.0122152, %smin186
  br i1 %exitcond185.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !26

._crit_edge158:                                   ; preds = %bb.c, %.lr.ph179
  %.0118.lcssa = phi i64 [ %.0120177, %.lr.ph179 ], [ %.1119, %bb.c ] ; 4 uses
  %i.bh = sub nsw i64 %.0118.lcssa, %.0120177
  store i64 %.0118.lcssa, ptr %.0127176, align 8, !tbaa !27
  %i.bi = getelementptr [8 x i8], ptr %i.at, i64 %i.bh
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %4 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  %i.bl = fcmp oeq double %i.bk, 0.000000e+00
  br i1 %i.bl, label %.loopexit143, label %bb.d

bb.d:                                             ; preds = %._crit_edge158
  %.not137 = icmp eq i64 %.0118.lcssa, %.0120177  ; 2 uses
  %.pre = load double, ptr %i.au, align 8, !tbaa !20 ; 2 uses
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %.pre, ptr %i.bj, align 8, !tbaa !20
  store double %i.bk, ptr %i.au, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bm = phi double [ %i.bk, %bb.e ], [ %.pre, %bb.d ]
  %i.bn = fdiv double -1.000000e+00, %i.bm        ; 2 uses
  br i1 %.not136151.not, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.f
  %min.iters.check214 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check214, label %.lr.ph163.preheader230, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph163.preheader
  %n.vec216 = and i64 %i.ak, -4                   ; 4 uses
  %i.bo = shl i64 %n.vec216, 3
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bo
  %i.bq = add i64 %i.az, %n.vec216
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.br = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.av, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !20
  %wide.load223 = load <2 x double>, ptr %i.bs, align 8, !tbaa !20
  %i.bt = fmul <2 x double> %broadcast.splat218, %wide.load222
  %i.bu = fmul <2 x double> %broadcast.splat218, %wide.load223
  store <2 x double> %i.bt, ptr %next.gep221, align 8, !tbaa !20
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !20
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next224, %n.vec216
  br i1 %i.bv, label %middle.block225, label %vector.body219, !llvm.loop !28

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.ak, %n.vec216
  br i1 %cmp.n226, label %._crit_edge164, label %.lr.ph163.preheader230

.lr.ph163.preheader230:                           ; preds = %.lr.ph163.preheader, %middle.block225
  %.1117161.ph = phi ptr [ %i.av, %.lr.ph163.preheader ], [ %i.bp, %middle.block225 ]
  %.1123160.ph = phi i64 [ %i.az, %.lr.ph163.preheader ], [ %i.bq, %middle.block225 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader230, %.lr.ph163
  %.1117161 = phi ptr [ %i.bz, %.lr.ph163 ], [ %.1117161.ph, %.lr.ph163.preheader230 ] ; 3 uses
  %.1123160 = phi i64 [ %i.by, %.lr.ph163 ], [ %.1123160.ph, %.lr.ph163.preheader230 ] ; 2 uses
  %i.bw = load double, ptr %.1117161, align 8, !tbaa !20
  %i.bx = fmul double %i.bn, %i.bw
  store double %i.bx, ptr %.1117161, align 8, !tbaa !20
  %i.by = add nuw i64 %.1123160, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.1117161, i64 8
  %exitcond187.not = icmp eq i64 %.1123160, %smin186
  br i1 %exitcond187.not, label %._crit_edge164, label %.lr.ph163, !llvm.loop !31

._crit_edge164:                                   ; preds = %.lr.ph163, %middle.block225, %bb.f
  %i.ca = add nsw i64 %.0120177, %4
  %.141 = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.ag)
  %.not139171.not = icmp slt i64 %.0120177, %.141
  br i1 %.not139171.not, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %._crit_edge164
  %i.cb = getelementptr i8, ptr %i.at, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.cb, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.aq
  %min.iters.check = icmp ult i64 %i.am, 4
  %n.vec = and i64 %i.am, -4                      ; 4 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.av, i64 %i.cc
  %i.ce = add i64 %i.az, %n.vec
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.az, %.lr.ph174.preheader ], [ %i.di, %.loopexit ] ; 6 uses
  %i.cf = shl i64 %indvar, 3
  %i.cg = sub i64 %i.ar, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 4 uses
  %i.cj = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %4 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !20 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.cn = sub nsw i64 %.0120177, %.0121172
  %i.co = getelementptr [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %4 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !20
  store double %i.cq, ptr %i.cl, align 8, !tbaa !20
  store double %i.cm, ptr %i.cp, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.cr = fcmp oeq double %i.cm, 0.000000e+00
  %brmerge = or i1 %i.cr, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cs = sub i64 %i.az, %.0121172
  %i.ct = getelementptr [8 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.cg
  %bound0 = icmp ult ptr %i.cu, %scevgep203
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.av, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <2 x double>, ptr %next.gep206, align 8, !tbaa !20, !alias.scope !32
  %wide.load207 = load <2 x double>, ptr %i.cx, align 8, !tbaa !20, !alias.scope !32
  %i.cy = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %wide.load209 = load <2 x double>, ptr %i.cy, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load208)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load207, <2 x double> %wide.load209)
  store <2 x double> %i.cz, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader229

.lr.ph170.preheader229:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph170.preheader ], [ %i.cv, %middle.block ]
end_hunk_0
