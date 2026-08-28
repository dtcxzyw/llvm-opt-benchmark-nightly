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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.ac = add nuw nsw i64 %.0126150, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit145.loopexit.unr-lcssa, label %.lr.ph

.loopexit145.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit145, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit145.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0126150.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %.loopexit145.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0126150.epil = phi i64 [ %i.af, %.lr.ph.epil ], [ %.0126150.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0126150.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.d, i1 false), !tbaa !20
  %i.af = add nuw nsw i64 %.0126150.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit145, label %.lr.ph.epil, !llvm.loop !22

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
  %.0120178 = phi i64 [ 0, %.lr.ph180.preheader ], [ %i.aw, %._crit_edge176 ] ; 19 uses
  %.0127177 = phi ptr [ %5, %.lr.ph180.preheader ], [ %i.dr, %._crit_edge176 ] ; 2 uses
  %smin204 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 2 uses
  %i.ak = add nuw i64 %.0120178, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag)
  %i.al = add nuw i64 %.0120178, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %smin, i64 %i.al)
  %i.am = xor i64 %.0120178, -1
  %i.an = add i64 %smax, %i.am
  %i.ao = shl i64 %i.an, 3                        ; 2 uses
  %i.ap = add i64 %i.aj, %i.ao
  %smin191 = tail call i64 @llvm.smin.i64(i64 %indvars.iv189, i64 %i.ag)
  %smin187 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.ag) ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0120178
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %4 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 10 uses
  %i.au = add nsw i64 %.0120178, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.au, i64 %i.ag) ; 2 uses
  %i.av = load double, ptr %i.as, align 8, !tbaa !20 ; 3 uses
  %i.aw = add nuw nsw i64 %.0120178, 1            ; 13 uses
  %.not137152.not = icmp slt i64 %.0120178, %.    ; 2 uses
  br i1 %.not137152.not, label %.lr.ph158.preheader, label %._crit_edge159

.lr.ph158.preheader:                              ; preds = %.lr.ph180
  %i.ax = sub i64 %smin204, %.0120178
  %i.ay = tail call double @llvm.fabs.f64(double %i.av) ; 3 uses
  %xtraiter235 = and i64 %i.ax, 1
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader
  %i.az = load double, ptr %i.at, align 8, !tbaa !20
  %i.ba = tail call double @llvm.fabs.f64(double %i.az) ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %i.ay            ; 2 uses
  %.1119.prol = select i1 %i.bb, i64 %i.aw, i64 %.0120178 ; 2 uses
  %.1.prol = select i1 %i.bb, double %i.ba, double %i.ay
  %i.bc = add nuw i64 %.0120178, 2
  %i.bd = getelementptr i8, ptr %i.as, i64 16
  br label %.lr.ph158.prol.loopexit

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader
  %.1119.lcssa.unr = phi i64 [ poison, %.lr.ph158.preheader ], [ %.1119.prol, %.lr.ph158.prol ]
  %.0156.unr = phi double [ %i.ay, %.lr.ph158.preheader ], [ %.1.prol, %.lr.ph158.prol ]
  %.0116155.unr = phi ptr [ %i.at, %.lr.ph158.preheader ], [ %i.bd, %.lr.ph158.prol ]
  %.0118154.unr = phi i64 [ %.0120178, %.lr.ph158.preheader ], [ %.1119.prol, %.lr.ph158.prol ]
  %.0122153.unr = phi i64 [ %i.aw, %.lr.ph158.preheader ], [ %i.bc, %.lr.ph158.prol ]
  %i.be = icmp eq i64 %smin204, %i.ak
  br i1 %i.be, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %.0156 = phi double [ %.1.1, %.lr.ph158 ], [ %.0156.unr, %.lr.ph158.prol.loopexit ] ; 2 uses
  %.0116155 = phi ptr [ %i.bo, %.lr.ph158 ], [ %.0116155.unr, %.lr.ph158.prol.loopexit ] ; 3 uses
  %.0118154 = phi i64 [ %.1119.1, %.lr.ph158 ], [ %.0118154.unr, %.lr.ph158.prol.loopexit ]
  %.0122153 = phi i64 [ %i.bn, %.lr.ph158 ], [ %.0122153.unr, %.lr.ph158.prol.loopexit ] ; 3 uses
  %i.bf = load double, ptr %.0116155, align 8, !tbaa !20
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf) ; 2 uses
  %i.bh = fcmp ogt double %i.bg, %.0156           ; 2 uses
  %.1119 = select i1 %i.bh, i64 %.0122153, i64 %.0118154
  %.1 = select i1 %i.bh, double %i.bg, double %.0156 ; 2 uses
  %i.bi = add nuw i64 %.0122153, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0116155, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk) ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %.1              ; 2 uses
  %.1119.1 = select i1 %i.bm, i64 %i.bi, i64 %.1119 ; 2 uses
  %.1.1 = select i1 %i.bm, double %i.bl, double %.1
  %i.bn = add nuw i64 %.0122153, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.0116155, i64 16
  %exitcond186.not.1 = icmp eq i64 %i.bi, %smin187
  br i1 %exitcond186.not.1, label %._crit_edge159, label %.lr.ph158

._crit_edge159:                                   ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.lr.ph180
  %.0118.lcssa = phi i64 [ %.0120178, %.lr.ph180 ], [ %.1119.lcssa.unr, %.lr.ph158.prol.loopexit ], [ %.1119.1, %.lr.ph158 ] ; 4 uses
  %i.bp = sub nsw i64 %.0118.lcssa, %.0120178
  store i64 %.0118.lcssa, ptr %.0127177, align 8, !tbaa !24
  %i.bq = getelementptr [8 x i8], ptr %i.ar, i64 %i.bp
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %4 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !20 ; 3 uses
  %i.bt = fcmp oeq double %i.bs, 0.000000e+00
  br i1 %i.bt, label %.loopexit144, label %bb.b

bb.b:                                             ; preds = %._crit_edge159
  %.not138 = icmp eq i64 %.0118.lcssa, %.0120178  ; 2 uses
  br i1 %.not138, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.av, ptr %i.br, align 8, !tbaa !20
  store double %i.bs, ptr %i.as, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi double [ %i.bs, %bb.c ], [ %i.av, %bb.b ]
  %i.bv = fdiv double -1.000000e+00, %i.bu        ; 2 uses
  br i1 %.not137152.not, label %.lr.ph164.preheader, label %._crit_edge165

.lr.ph164.preheader:                              ; preds = %bb.d
  %6 = sub i64 %smin187, %.0120178                ; 3 uses
  %min.iters.check214 = icmp ult i64 %6, 4
  br i1 %min.iters.check214, label %.lr.ph164.preheader230, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph164.preheader
  %n.vec216 = and i64 %6, -4                      ; 4 uses
  %i.bw = shl i64 %n.vec216, 3
  %i.bx = getelementptr i8, ptr %i.at, i64 %i.bw
  %i.by = add i64 %i.aw, %n.vec216
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bv, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.bz = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.at, i64 %i.bz ; 3 uses
  %i.ca = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !20
  %wide.load223 = load <2 x double>, ptr %i.ca, align 8, !tbaa !20
  %i.cb = fmul <2 x double> %broadcast.splat218, %wide.load222
  %i.cc = fmul <2 x double> %broadcast.splat218, %wide.load223
  store <2 x double> %i.cb, ptr %next.gep221, align 8, !tbaa !20
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !20
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next224, %n.vec216
  br i1 %i.cd, label %middle.block225, label %vector.body219, !llvm.loop !25

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %6, %n.vec216
  br i1 %cmp.n226, label %._crit_edge165, label %.lr.ph164.preheader230

.lr.ph164.preheader230:                           ; preds = %.lr.ph164.preheader, %middle.block225
  %.1117162.ph = phi ptr [ %i.at, %.lr.ph164.preheader ], [ %i.bx, %middle.block225 ]
  %.1123161.ph = phi i64 [ %i.aw, %.lr.ph164.preheader ], [ %i.by, %middle.block225 ]
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader230, %.lr.ph164
  %.1117162 = phi ptr [ %i.ch, %.lr.ph164 ], [ %.1117162.ph, %.lr.ph164.preheader230 ] ; 3 uses
  %.1123161 = phi i64 [ %i.cg, %.lr.ph164 ], [ %.1123161.ph, %.lr.ph164.preheader230 ] ; 2 uses
  %i.ce = load double, ptr %.1117162, align 8, !tbaa !20
  %i.cf = fmul double %i.bv, %i.ce
  store double %i.cf, ptr %.1117162, align 8, !tbaa !20
  %i.cg = add nuw i64 %.1123161, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.1117162, i64 8
  %exitcond188.not = icmp eq i64 %.1123161, %smin187
  br i1 %exitcond188.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !28

._crit_edge165:                                   ; preds = %.lr.ph164, %middle.block225, %bb.d
  %i.ci = add nsw i64 %.0120178, %4
  %.142 = tail call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.ag)
  %.not140172.not = icmp slt i64 %.0120178, %.142
  br i1 %.not140172.not, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %._crit_edge165
  %i.cj = getelementptr i8, ptr %i.ar, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.cj, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.ao
  %7 = tail call i64 @llvm.smax.i64(i64 %smin187, i64 %i.aw)
  %8 = sub nsw i64 %7, %.0120178                  ; 3 uses
  %min.iters.check = icmp ult i64 %8, 4
  %n.vec = and i64 %8, -4                         ; 4 uses
  %i.ck = shl i64 %n.vec, 3                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.at, i64 %i.ck
  %i.cm = add i64 %i.aw, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121173 = phi i64 [ %i.aw, %.lr.ph175.preheader ], [ %i.dq, %.loopexit ] ; 6 uses
  %i.cn = shl i64 %indvar, 3
  %i.co = sub i64 %i.ap, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121173
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19 ; 4 uses
  %i.cr = sub nsw i64 %.0118.lcssa, %.0121173
  %i.cs = getelementptr [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %4 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !20 ; 4 uses
  br i1 %.not138, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph175
  %i.cv = sub nsw i64 %.0120178, %.0121173
  %i.cw = getelementptr [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %4 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  store double %i.cy, ptr %i.ct, align 8, !tbaa !20
  store double %i.cu, ptr %i.cx, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph175
  %i.cz = fcmp oeq double %i.cu, 0.000000e+00
  %brmerge = or i1 %i.cz, %.not141166.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.f
  %i.da = sub i64 %i.aw, %.0121173
  %i.db = getelementptr [8 x i8], ptr %i.cq, i64 %i.da
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph171.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph171.preheader
  %scevgep = getelementptr i8, ptr %i.cq, i64 %i.co
  %bound0 = icmp ult ptr %i.dc, %scevgep203
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph171.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.ck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.de ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.at, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <2 x double>, ptr %next.gep206, align 8, !tbaa !20, !alias.scope !29
  %wide.load207.a = load <2 x double>, ptr %i.df, align 8, !tbaa !20, !alias.scope !29
  %i.dg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %wide.load209 = load <2 x double>, ptr %i.dg, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load208)
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load207.a, <2 x double> %wide.load209)
  store <2 x double> %i.dh, ptr %next.gep, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph171.preheader229

.lr.ph171.preheader229:                           ; preds = %vector.memcheck, %.lr.ph171.preheader, %middle.block
  %.0115169.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph171.preheader ], [ %i.dd, %middle.block ]
  %.2168.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph171.preheader ], [ %i.cl, %middle.block ]
  %.2124167.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph171.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader229, %.lr.ph171
  %.0115169 = phi ptr [ %i.dp, %.lr.ph171 ], [ %.0115169.ph, %.lr.ph171.preheader229 ] ; 3 uses
  %.2168 = phi ptr [ %i.do, %.lr.ph171 ], [ %.2168.ph, %.lr.ph171.preheader229 ] ; 2 uses
  %.2124167 = phi i64 [ %i.dn, %.lr.ph171 ], [ %.2124167.ph, %.lr.ph171.preheader229 ] ; 2 uses
  %i.dk = load double, ptr %.2168, align 8, !tbaa !20
  %i.dl = load double, ptr %.0115169, align 8, !tbaa !20
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dk, double %i.dl)
  store double %i.dm, ptr %.0115169, align 8, !tbaa !20
  %i.dn = add nuw nsw i64 %.2124167, 1
  %i.do = getelementptr inbounds nuw i8, ptr %.2168, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0115169, i64 8
  %.not141.not = icmp slt i64 %.2124167, %.
  br i1 %.not141.not, label %.lr.ph171, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph171, %middle.block, %bb.f
  %i.dq = add nuw i64 %.0121173, 1
  %exitcond192.not = icmp eq i64 %.0121173, %smin191
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond192.not, label %._crit_edge176, label %.lr.ph175

._crit_edge176:                                   ; preds = %.loopexit, %._crit_edge165
  %i.dr = getelementptr inbounds nuw i8, ptr %.0127177, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %exitcond193.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond193.not, label %._crit_edge181, label %.lr.ph180

._crit_edge181:                                   ; preds = %._crit_edge176, %.loopexit145
  %.0127.lcssa = phi ptr [ %5, %.loopexit145 ], [ %i.dr, %._crit_edge176 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !24
  %i.ds = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !19
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %4
  %i.dv = load double, ptr %i.du, align 8, !tbaa !20
  %i.dw = fcmp oeq double %i.dv, 0.000000e+00
  %.143 = select i1 %i.dw, i64 %1, i64 0
  br label %.loopexit144

.loopexit144:                                     ; preds = %._crit_edge159, %._crit_edge181
  %.0128 = phi i64 [ %.143, %._crit_edge181 ], [ %i.aw, %._crit_edge159 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24   ; 2 uses
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
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !20, !alias.scope !36
  %wide.load13.a = load <2 x double>, ptr %i.ao, align 8, !tbaa !20, !alias.scope !36
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.al ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load14.a = load <2 x double>, ptr %i.ap, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %wide.load15 = load <2 x double>, ptr %i.aq, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14.a)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13.a, <2 x double> %wide.load15)
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !41

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
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aw
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
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bl = sub nuw nsw i64 %i.bk, %.05967.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.bn, double %i.bp)
  store double %i.bq, ptr %i.bo, align 8, !tbaa !20
  %i.br = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bk, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !42

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
  %wide.load32.a = load <2 x double>, ptr %i.cm, align 8, !tbaa !20, !alias.scope !43
  %wide.load33.a = load <2 x double>, ptr %i.cn, align 8, !tbaa !20, !alias.scope !43
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load34.a = load <2 x double>, ptr %i.co, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %wide.load35 = load <2 x double>, ptr %i.cp, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load32.a, <2 x double> %wide.load34.a)
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load33.a, <2 x double> %wide.load35)
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.cs, label %middle.block37, label %vector.body30, !llvm.loop !48

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
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block37, %.lr.ph73.i
  %i.da = add nsw i64 %.16072.i, -1
  %i.db = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.db, label %.lr.ph73.i, label %SUNDlsMat_bandGBTRS.exit

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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 2 uses
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
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !20, !alias.scope !50
  %wide.load84.a = load <2 x double>, ptr %i.ag, align 8, !tbaa !20, !alias.scope !50
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ad ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load85.a = load <2 x double>, ptr %i.ah, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %wide.load86 = load <2 x double>, ptr %i.ai, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load85.a)
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load84.a, <2 x double> %wide.load86)
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !55

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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ao
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
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ay, double %i.ba)
  store double %i.bb, ptr %i.az, align 8, !tbaa !20
  %i.bc = add nuw i64 %.066, 1                    ; 3 uses
  %i.bd = sub nuw nsw i64 %i.bc, %.05967
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bc ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.s, double %i.bf, double %i.bh)
  store double %i.bi, ptr %i.bg, align 8, !tbaa !20
  %i.bj = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bc, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !56

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
  %wide.load103.a = load <2 x double>, ptr %i.ce, align 8, !tbaa !20, !alias.scope !57
  %wide.load104.a = load <2 x double>, ptr %i.cf, align 8, !tbaa !20, !alias.scope !57
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cc ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load105.a = load <2 x double>, ptr %i.cg, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %wide.load106 = load <2 x double>, ptr %i.ch, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load103.a, <2 x double> %wide.load105.a)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load104.a, <2 x double> %wide.load106)
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next107, %n.vec98
  br i1 %i.ck, label %middle.block108, label %vector.body101, !llvm.loop !62

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
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block108, %.lr.ph73
  %i.cs = add nsw i64 %.16072, -1
  %i.ct = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.lr.ph73, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
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
  br i1 %i.l, label %.lr.ph24.i, label %SUNDlsMat_bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %SUNDlsMat_bandCopy.exit, label %.lr.ph.i.preheader

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
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.al = sub i64 %i.r, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

end_hunk_0
