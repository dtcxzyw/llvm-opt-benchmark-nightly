Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_BandGBTRF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call i64 @SUNDlsMat_bandGBTRF(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, ptr noundef %1)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNDlsMat_bandGBTRF(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %4, %2
  %i.b = icmp sgt i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit145

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
  %.0126150 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.ac = add nuw nsw i64 %.0126150, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit145.loopexit.unr-lcssa, label %.lr.ph

.loopexit145.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit145, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit145.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0126150.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %.loopexit145.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0126150.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.0126150.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.d, i1 false), !tbaa !21
  %i.af = add nuw nsw i64 %.0126150.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit145, label %.lr.ph.epil, !llvm.loop !26

.loopexit145:                                     ; preds = %.loopexit145.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.ag = add i64 %1, -1                          ; 9 uses
  %i.ah = icmp sgt i64 %1, 1
  br i1 %i.ah, label %.lr.ph180.preheader, label %._crit_edge181

.lr.ph180.preheader:                              ; preds = %.loopexit145
  %.not141166.not = icmp slt i64 %3, 1
  %i.ai = shl nsw i64 %4, 3                       ; 2 uses
  %i.aj = add i64 %i.ai, 8
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %._crit_edge176
  %indvars.iv189 = phi i64 [ %4, %.lr.ph180.preheader ], [ %indvars.iv.next190, %._crit_edge176 ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph180.preheader ], [ %indvars.iv.next, %._crit_edge176 ] ; 4 uses
  %.0120178 = phi i64 [ 0, %.lr.ph180.preheader ], [ %i.av, %._crit_edge176 ] ; 19 uses
  %.0127177 = phi ptr [ %5, %.lr.ph180.preheader ], [ %i.dt, %._crit_edge176 ] ; 2 uses
  %smin231 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 2 uses
  %.neg = add nuw i64 %.0120178, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.ak = add nuw i64 %.0120178, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %smin, i64 %i.ak)
  %i.al = xor i64 %.0120178, -1
  %i.am = add i64 %smax, %i.al
  %i.an = shl i64 %i.am, 3                        ; 2 uses
  %i.ao = add i64 %i.aj, %i.an
  %smin191 = tail call i64 @llvm.smin.i64(i64 %indvars.iv189, i64 %i.ag)
  %smin187 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120178
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %4 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 10 uses
  %i.at = add nsw i64 %.0120178, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %i.ag) ; 2 uses
  %i.au = load double, ptr %i.ar, align 8, !tbaa !21 ; 3 uses
  %i.av = add nuw nsw i64 %.0120178, 1            ; 13 uses
  %.not137152.not = icmp slt i64 %.0120178, %.    ; 2 uses
  br i1 %.not137152.not, label %.lr.ph158.preheader, label %._crit_edge159

.lr.ph158.preheader:                              ; preds = %.lr.ph180
  %i.aw = sub i64 %smin231, %.0120178
  %i.ax = tail call double @llvm.fabs.f64(double %i.au) ; 3 uses
  %xtraiter232 = and i64 %i.aw, 1
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader
  %i.ay = load double, ptr %i.as, align 8, !tbaa !21
  %i.az = tail call double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp ogt double %i.az, %i.ax            ; 2 uses
  %.1119.prol = select i1 %i.ba, i64 %i.av, i64 %.0120178 ; 2 uses
  %.1.prol = select i1 %i.ba, double %i.az, double %i.ax
  %i.bb = add nuw i64 %.0120178, 2
  %i.bc = getelementptr i8, ptr %i.ar, i64 16
  br label %.lr.ph158.prol.loopexit

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader
  %.1119.lcssa.unr = phi i64 [ poison, %.lr.ph158.preheader ], [ %.1119.prol, %.lr.ph158.prol ]
  %.0156.unr = phi double [ %i.ax, %.lr.ph158.preheader ], [ %.1.prol, %.lr.ph158.prol ]
  %.0116155.unr = phi ptr [ %i.as, %.lr.ph158.preheader ], [ %i.bc, %.lr.ph158.prol ]
  %.0118154.unr = phi i64 [ %.0120178, %.lr.ph158.preheader ], [ %.1119.prol, %.lr.ph158.prol ]
  %.0122153.unr = phi i64 [ %i.av, %.lr.ph158.preheader ], [ %i.bb, %.lr.ph158.prol ]
  %i.bd = icmp eq i64 %smin231, %.neg
  br i1 %i.bd, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %.0156 = phi double [ %.1.1, %.lr.ph158 ], [ %.0156.unr, %.lr.ph158.prol.loopexit ] ; 2 uses
  %.0116155 = phi ptr [ %i.bn, %.lr.ph158 ], [ %.0116155.unr, %.lr.ph158.prol.loopexit ] ; 3 uses
  %.0118154 = phi i64 [ %.1119.1, %.lr.ph158 ], [ %.0118154.unr, %.lr.ph158.prol.loopexit ]
  %.0122153 = phi i64 [ %i.bm, %.lr.ph158 ], [ %.0122153.unr, %.lr.ph158.prol.loopexit ] ; 3 uses
  %i.be = load double, ptr %.0116155, align 8, !tbaa !21
  %i.bf = tail call double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = fcmp ogt double %i.bf, %.0156           ; 2 uses
  %.1119 = select i1 %i.bg, i64 %.0122153, i64 %.0118154
  %.1 = select i1 %i.bg, double %i.bf, double %.0156 ; 2 uses
  %i.bh = add nuw i64 %.0122153, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0116155, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !21
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj) ; 2 uses
  %i.bl = fcmp ogt double %i.bk, %.1              ; 2 uses
  %.1119.1 = select i1 %i.bl, i64 %i.bh, i64 %.1119 ; 2 uses
  %.1.1 = select i1 %i.bl, double %i.bk, double %.1
  %i.bm = add nuw i64 %.0122153, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.0116155, i64 16
  %exitcond186.not.1 = icmp eq i64 %i.bh, %smin187
  br i1 %exitcond186.not.1, label %._crit_edge159, label %.lr.ph158

._crit_edge159:                                   ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.lr.ph180
  %.0118.lcssa = phi i64 [ %.0120178, %.lr.ph180 ], [ %.1119.lcssa.unr, %.lr.ph158.prol.loopexit ], [ %.1119.1, %.lr.ph158 ] ; 4 uses
  %i.bo = sub nsw i64 %.0118.lcssa, %.0120178
  store i64 %.0118.lcssa, ptr %.0127177, align 8, !tbaa !23
  %i.bp = getelementptr [8 x i8], ptr %i.aq, i64 %i.bo
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %4 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !21 ; 3 uses
  %i.bs = fcmp oeq double %i.br, 0.000000e+00
  br i1 %i.bs, label %.loopexit144, label %bb.b

bb.b:                                             ; preds = %._crit_edge159
  %.not138 = icmp eq i64 %.0118.lcssa, %.0120178  ; 2 uses
  br i1 %.not138, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.au, ptr %i.bq, align 8, !tbaa !21
  store double %i.br, ptr %i.ar, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = phi double [ %i.br, %bb.c ], [ %i.au, %bb.b ]
  %i.bu = fdiv double -1.000000e+00, %i.bt        ; 2 uses
  br i1 %.not137152.not, label %.lr.ph164.preheader, label %._crit_edge165

.lr.ph164.preheader:                              ; preds = %bb.d
  %i.bv = sub i64 %smin187, %.0120178             ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check211, label %.lr.ph164.preheader227, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph164.preheader
  %n.vec213 = and i64 %i.bv, -4                   ; 4 uses
  %i.bw = shl i64 %n.vec213, 3
  %i.bx = getelementptr i8, ptr %i.as, i64 %i.bw
  %i.by = add i64 %i.av, %n.vec213
  %broadcast.splatinsert214 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat215 = shufflevector <2 x double> %broadcast.splatinsert214, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next221, %vector.body216 ] ; 2 uses
  %i.bz = shl i64 %index217, 3
  %next.gep218 = getelementptr i8, ptr %i.as, i64 %i.bz ; 3 uses
  %i.ca = getelementptr i8, ptr %next.gep218, i64 16 ; 2 uses
  %wide.load219 = load <2 x double>, ptr %next.gep218, align 8, !tbaa !21
  %wide.load220 = load <2 x double>, ptr %i.ca, align 8, !tbaa !21
  %i.cb = fmul <2 x double> %broadcast.splat215, %wide.load219
  %i.cc = fmul <2 x double> %broadcast.splat215, %wide.load220
  store <2 x double> %i.cb, ptr %next.gep218, align 8, !tbaa !21
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !21
  %index.next221 = add nuw i64 %index217, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next221, %n.vec213
  br i1 %i.cd, label %middle.block222, label %vector.body216, !llvm.loop !27

middle.block222:                                  ; preds = %vector.body216
  %cmp.n223 = icmp eq i64 %i.bv, %n.vec213
  br i1 %cmp.n223, label %._crit_edge165, label %.lr.ph164.preheader227

.lr.ph164.preheader227:                           ; preds = %.lr.ph164.preheader, %middle.block222
  %.1117162.ph = phi ptr [ %i.as, %.lr.ph164.preheader ], [ %i.bx, %middle.block222 ]
  %.1123161.ph = phi i64 [ %i.av, %.lr.ph164.preheader ], [ %i.by, %middle.block222 ]
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader227, %.lr.ph164
  %.1117162 = phi ptr [ %i.ch, %.lr.ph164 ], [ %.1117162.ph, %.lr.ph164.preheader227 ] ; 3 uses
  %.1123161 = phi i64 [ %i.cg, %.lr.ph164 ], [ %.1123161.ph, %.lr.ph164.preheader227 ] ; 2 uses
  %i.ce = load double, ptr %.1117162, align 8, !tbaa !21
  %i.cf = fmul double %i.bu, %i.ce
  store double %i.cf, ptr %.1117162, align 8, !tbaa !21
  %i.cg = add nuw i64 %.1123161, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.1117162, i64 8
  %exitcond188.not = icmp eq i64 %.1123161, %smin187
  br i1 %exitcond188.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !28

._crit_edge165:                                   ; preds = %.lr.ph164, %middle.block222, %bb.d
  %i.ci = add nsw i64 %.0120178, %4
  %.142 = tail call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.ag)
  %.not140172.not = icmp slt i64 %.0120178, %.142
  br i1 %.not140172.not, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %._crit_edge165
  %i.cj = getelementptr i8, ptr %i.aq, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.cj, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.an
  %i.ck = tail call i64 @llvm.smax.i64(i64 %smin187, i64 %i.av)
  %i.cl = sub nsw i64 %i.ck, %.0120178            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cl, 4
  %n.vec = and i64 %i.cl, -4                      ; 4 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.as, i64 %i.cm
  %i.co = add i64 %i.av, %n.vec
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121173 = phi i64 [ %i.av, %.lr.ph175.preheader ], [ %i.ds, %.loopexit ] ; 6 uses
  %i.cp = shl i64 %indvar, 3
  %i.cq = sub i64 %i.ao, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121173
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19 ; 4 uses
  %i.ct = sub nsw i64 %.0118.lcssa, %.0121173
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %4 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !21 ; 4 uses
  br i1 %.not138, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph175
  %i.cx = sub nsw i64 %.0120178, %.0121173
  %i.cy = getelementptr [8 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %4 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !21
  store double %i.da, ptr %i.cv, align 8, !tbaa !21
  store double %i.cw, ptr %i.cz, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph175
  %i.db = fcmp oeq double %i.cw, 0.000000e+00
  %brmerge = or i1 %i.db, %.not141166.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.f
  %i.dc = sub i64 %i.av, %.0121173
  %i.dd = getelementptr [8 x i8], ptr %i.cs, i64 %i.dc
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph171.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph171.preheader
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.cq
  %bound0 = icmp ult ptr %i.de, %scevgep203
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph171.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cm
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dg ; 3 uses
  %next.gep204 = getelementptr i8, ptr %i.as, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load = load <2 x double>, ptr %next.gep204, align 8, !tbaa !21, !alias.scope !34
  %wide.load205 = load <2 x double>, ptr %i.dh, align 8, !tbaa !21, !alias.scope !34
  %i.di = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load206 = load <2 x double>, ptr %next.gep, align 8, !tbaa !21, !alias.scope !35, !noalias !34
  %wide.load207 = load <2 x double>, ptr %i.di, align 8, !tbaa !21, !alias.scope !35, !noalias !34
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load206)
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load205, <2 x double> %wide.load207)
  store <2 x double> %i.dj, ptr %next.gep, align 8, !tbaa !21, !alias.scope !35, !noalias !34
  store <2 x double> %i.dk, ptr %i.di, align 8, !tbaa !21, !alias.scope !35, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph171.preheader226

.lr.ph171.preheader226:                           ; preds = %vector.memcheck, %.lr.ph171.preheader, %middle.block
  %.0115169.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph171.preheader ], [ %i.df, %middle.block ]
  %.2168.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph171.preheader ], [ %i.cn, %middle.block ]
  %.2124167.ph = phi i64 [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph171.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader226, %.lr.ph171
  %.0115169 = phi ptr [ %i.dr, %.lr.ph171 ], [ %.0115169.ph, %.lr.ph171.preheader226 ] ; 3 uses
  %.2168 = phi ptr [ %i.dq, %.lr.ph171 ], [ %.2168.ph, %.lr.ph171.preheader226 ] ; 2 uses
  %.2124167 = phi i64 [ %i.dp, %.lr.ph171 ], [ %.2124167.ph, %.lr.ph171.preheader226 ] ; 2 uses
  %i.dm = load double, ptr %.2168, align 8, !tbaa !21
  %i.dn = load double, ptr %.0115169, align 8, !tbaa !21
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.dm, double %i.dn)
  store double %i.do, ptr %.0115169, align 8, !tbaa !21
  %i.dp = add nuw nsw i64 %.2124167, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.2168, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0115169, i64 8
  %.not141.not = icmp slt i64 %.2124167, %.
  br i1 %.not141.not, label %.lr.ph171, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph171, %middle.block, %bb.f
  %i.ds = add nuw i64 %.0121173, 1
  %exitcond192.not = icmp eq i64 %.0121173, %smin191
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond192.not, label %._crit_edge176, label %.lr.ph175

._crit_edge176:                                   ; preds = %.loopexit, %._crit_edge165
  %i.dt = getelementptr inbounds nuw i8, ptr %.0127177, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %exitcond193.not = icmp eq i64 %i.av, %i.ag
  br i1 %exitcond193.not, label %._crit_edge181, label %.lr.ph180

._crit_edge181:                                   ; preds = %._crit_edge176, %.loopexit145
  %.0127.lcssa = phi ptr [ %5, %.loopexit145 ], [ %i.dt, %._crit_edge176 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !23
  %i.du = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !19
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %4
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !21
  %i.dy = fcmp oeq double %i.dx, 0.000000e+00
  %.143 = select i1 %i.dy, i64 %1, i64 0
  br label %.loopexit144

.loopexit144:                                     ; preds = %._crit_edge159, %._crit_edge181
  %.0128 = phi i64 [ %.143, %._crit_edge181 ], [ %i.av, %._crit_edge159 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
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
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %SUNDlsMat_bandGBTRS.exit

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !21 ; 5 uses
  %.not.i = icmp eq i64 %i.y, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !21
  store double %i.ac, ptr %i.z, align 8, !tbaa !21
  store double %i.aa, ptr %i.ab, align 8, !tbaa !21
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
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !21, !alias.scope !46
  %wide.load12 = load <2 x double>, ptr %i.ap, align 8, !tbaa !21, !alias.scope !46
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.aq, align 8, !tbaa !21, !alias.scope !47, !noalias !46
  %wide.load14 = load <2 x double>, ptr %i.ar, align 8, !tbaa !21, !alias.scope !47, !noalias !46
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !21, !alias.scope !47, !noalias !46
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !21, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !39

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
  %i.az = load double, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !21
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !21
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
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !21
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bh, double %i.bj)
  store double %i.bk, ptr %i.bi, align 8, !tbaa !21
  %i.bl = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bm = sub nuw nsw i64 %i.bl, %.05967.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !21
  %i.br = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bo, double %i.bq)
  store double %i.br, ptr %i.bp, align 8, !tbaa !21
  %i.bs = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bl, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !40

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
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.f ; 4 uses
  %i.cc = sub nsw i64 %.16072.i, %i.f
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 5 uses
  %i.ce = load double, ptr %i.cb, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !21
  %i.ch = fdiv double %i.cg, %i.ce                ; 2 uses
  store double %i.ch, ptr %i.cf, align 8, !tbaa !21
  %i.ci = fneg double %i.ch                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.cd, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.cj = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check24 = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check24, label %.lr.ph71.i.preheader39, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph71.i.preheader
  %scevgep18 = getelementptr i8, ptr %i.ca, i64 %i.q
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.by
  %bound020 = icmp ult ptr %scevgep16, %i.cb
  %bound121 = icmp ult ptr %scevgep19, %scevgep17
  %found.conflict22 = and i1 %bound020, %bound121
  br i1 %found.conflict22, label %.lr.ph71.i.preheader39, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck15
  %n.vec26 = and i64 %i.cj, -4                    ; 3 uses
  %i.ck = add i64 %i.cd, %n.vec26
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.cl = add nuw i64 %i.cd, %index30             ; 2 uses
  %i.cm = sub nsw i64 %i.cl, %.16072.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load31 = load <2 x double>, ptr %i.cn, align 8, !tbaa !21, !alias.scope !48
  %wide.load32 = load <2 x double>, ptr %i.co, align 8, !tbaa !21, !alias.scope !48
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load33 = load <2 x double>, ptr %i.cp, align 8, !tbaa !21, !alias.scope !49, !noalias !48
  %wide.load34 = load <2 x double>, ptr %i.cq, align 8, !tbaa !21, !alias.scope !49, !noalias !48
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load31, <2 x double> %wide.load33)
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load32, <2 x double> %wide.load34)
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !21, !alias.scope !49, !noalias !48
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !21, !alias.scope !49, !noalias !48
  %index.next35 = add nuw i64 %index30, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next35, %n.vec26
  br i1 %i.ct, label %middle.block36, label %vector.body29, !llvm.loop !44

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %i.cj, %n.vec26
  br i1 %cmp.n37, label %._crit_edge.i, label %.lr.ph71.i.preheader39

.lr.ph71.i.preheader39:                           ; preds = %vector.memcheck15, %.lr.ph71.i.preheader, %middle.block36
  %.170.i.ph = phi i64 [ %i.cd, %vector.memcheck15 ], [ %i.cd, %.lr.ph71.i.preheader ], [ %i.ck, %middle.block36 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader39, %.lr.ph71.i
  %.170.i = phi i64 [ %i.da, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader39 ] ; 3 uses
  %i.cu = sub nsw i64 %.170.i, %.16072.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !21
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cw, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !21
  %i.da = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.da, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block36, %.lr.ph73.i
  %i.db = add nsw i64 %.16072.i, -1
  %i.dc = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dc, label %.lr.ph73.i, label %SUNDlsMat_bandGBTRS.exit

SUNDlsMat_bandGBTRS.exit:                         ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
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
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68

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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !21 ; 5 uses
  %.not = icmp eq i64 %i.q, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !21
  store double %i.u, ptr %i.r, align 8, !tbaa !21
  store double %i.s, ptr %i.t, align 8, !tbaa !21
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
  %i.aa = sub i64 %smin, %.05967                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.ab, i64 8
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.ac, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.o
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ad = add i64 %i.z, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %i.z, %index                ; 2 uses
  %i.af = sub nuw nsw i64 %i.ae, %.05967
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !21, !alias.scope !60
  %wide.load83 = load <2 x double>, ptr %i.ah, align 8, !tbaa !21, !alias.scope !60
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load84 = load <2 x double>, ptr %i.ai, align 8, !tbaa !21, !alias.scope !61, !noalias !60
  %wide.load85 = load <2 x double>, ptr %i.aj, align 8, !tbaa !21, !alias.scope !61, !noalias !60
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load84)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load83, <2 x double> %wide.load85)
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !21, !alias.scope !61, !noalias !60
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !21, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 6 uses
  %i.an = add i64 %smin, %.066.ph
  %i.ao = and i64 %i.an, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader111
  %i.ap = sub nuw nsw i64 %.066.ph, %.05967
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !21
  %i.au = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ar, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !21
  %i.av = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader111
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader111 ], [ %i.av, %.lr.ph.prol ]
  %i.aw = icmp eq i64 %smin, %.066.ph
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bk, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ax = sub nuw nsw i64 %.066, %.05967
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !21
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !21
  %i.bd = add nuw i64 %.066, 1                    ; 3 uses
  %i.be = sub nuw nsw i64 %i.bd, %.05967
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bd ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !21
  %i.bk = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bd, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !54

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.ct, %._crit_edge ] ; 10 uses
  %i.bl = sub i64 %i.f, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bl, i64 0) ; 2 uses
  %i.bm = shl i64 %smax, 3
  %scevgep87 = getelementptr i8, ptr %5, i64 %i.bm
  %i.bn = shl i64 %indvar, 3
  %i.bo = sub i64 %i.h, %i.bn
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bo
  %.reass = add i64 %indvar, %invariant.op
  %i.bp = add i64 %smax, %.reass
  %i.bq = shl i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %2 ; 4 uses
  %i.bu = sub nsw i64 %.16072, %2
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 0) ; 5 uses
  %i.bw = load double, ptr %i.bt, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !21
  %i.bz = fdiv double %i.by, %i.bw                ; 2 uses
  store double %i.bz, ptr %i.bx, align 8, !tbaa !21
  %i.ca = fneg double %i.bz                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bv, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.cb = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check95 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check95, label %.lr.ph71.preheader110, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph71.preheader
  %scevgep89 = getelementptr i8, ptr %i.bs, i64 %i.i
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.bq
  %bound091 = icmp ult ptr %scevgep87, %i.bt
  %bound192 = icmp ult ptr %scevgep90, %scevgep88
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph71.preheader110, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck86
  %n.vec97 = and i64 %i.cb, -4                    ; 3 uses
  %i.cc = add i64 %i.bv, %n.vec97
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph96
  %index101 = phi i64 [ 0, %vector.ph96 ], [ %index.next106, %vector.body100 ] ; 2 uses
  %i.cd = add nuw i64 %i.bv, %index101            ; 2 uses
  %i.ce = sub nsw i64 %i.cd, %.16072
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load102 = load <2 x double>, ptr %i.cf, align 8, !tbaa !21, !alias.scope !62
  %wide.load103 = load <2 x double>, ptr %i.cg, align 8, !tbaa !21, !alias.scope !62
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load104 = load <2 x double>, ptr %i.ch, align 8, !tbaa !21, !alias.scope !63, !noalias !62
  %wide.load105 = load <2 x double>, ptr %i.ci, align 8, !tbaa !21, !alias.scope !63, !noalias !62
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load102, <2 x double> %wide.load104)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load103, <2 x double> %wide.load105)
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !21, !alias.scope !63, !noalias !62
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !21, !alias.scope !63, !noalias !62
  %index.next106 = add nuw i64 %index101, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next106, %n.vec97
  br i1 %i.cl, label %middle.block107, label %vector.body100, !llvm.loop !58

middle.block107:                                  ; preds = %vector.body100
end_hunk_0
