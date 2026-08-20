inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fft.last_n = internal unnamed_addr global i32 0, align 4
@fft.bitrev = internal unnamed_addr global ptr null, align 8
@fft.sintbl = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fft(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %.0106 = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 28 uses
  %i.b = lshr i32 %.0106, 2                       ; 5 uses
  %i.c = load i32, ptr @fft.last_n, align 4, !tbaa !4
  %i.d = icmp ne i32 %.0106, %i.c
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i32 %.0106, ptr @fft.last_n, align 4, !tbaa !4
  %i.f = load ptr, ptr @fft.sintbl, align 8, !tbaa !8
  %i.g = add nuw nsw i32 %i.b, %.0106
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.i) #7 ; 28 uses
  store ptr %i.j, ptr @fft.sintbl, align 8, !tbaa !8
  %i.k = load ptr, ptr @fft.bitrev, align 8, !tbaa !11
  %i.l = zext nneg i32 %.0106 to i64              ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.m) #7 ; 6 uses
  store ptr %i.n, ptr @fft.bitrev, align 8, !tbaa !11
  %i.o = icmp eq ptr %i.j, null
  %i.p = icmp eq ptr %i.n, null
  %or.cond3 = or i1 %i.o, %i.p
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc = tail call i32 @fputc(i32 10, ptr %i.q) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i32 %.0106, 1                       ; 3 uses
  %i.s = lshr i32 %.0106, 3                       ; 4 uses
  %i.t = uitofp nneg i32 %.0106 to double
  %i.u = fdiv double f0x400921FB54442D18, %i.t
  %i.v = tail call double @sin(double noundef %i.u) #8, !tbaa !4 ; 2 uses
  %i.w = fmul double %i.v, 2.000000e+00
  %i.x = fmul double %i.v, %i.w                   ; 4 uses
  %i.y = fsub double 2.000000e+00, %i.x
  %i.z = fmul double %i.x, %i.y
  %i.aa = tail call double @sqrt(double noundef %i.z) #8, !tbaa !4
  %i.ab = zext nneg i32 %i.b to i64               ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !15
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !15
  %i.ad = icmp samesign ugt i32 %.0106, 15
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = fmul double %i.x, 2.000000e+00          ; 2 uses
  %i.af = fneg double %i.ae
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  %i.ag = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.x, i64 1 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ae, i64 1 ; 2 uses
  %i.ak = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i32 %i.s, 2
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 4 uses
  %i.am = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph.i.new ], [ %i.ba, %bb.e ] ; 2 uses
  %i.an = phi <2 x double> [ %i.ah, %.lr.ph.i.new ], [ %i.bb, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.ao = fadd <2 x double> %i.am, %i.an
  %i.ap = fsub <2 x double> %i.am, %i.an
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.aq, <2 x double> %i.an) ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.at = fptrunc <2 x double> %i.aq to <2 x float> ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  store float %i.au, ptr %i.as, align 4, !tbaa !15
  %i.av = sub nsw i64 %i.ab, %indvars.iv.i
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = extractelement <2 x float> %i.at, i64 1
  store float %i.ax, ptr %i.aw, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = fadd <2 x double> %i.aq, %i.ar
  %i.az = fsub <2 x double> %i.aq, %i.ar
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> %i.az, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ba, <2 x double> %i.ar) ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bd = fptrunc <2 x double> %i.ba to <2 x float> ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  store float %i.be, ptr %i.bc, align 4, !tbaa !15
  %i.bf = sub nsw i64 %i.ab, %indvars.iv.next.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bf
  %i.bh = extractelement <2 x float> %i.bd, i64 1
  store float %i.bh, ptr %i.bg, align 4, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph.i ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init189 = phi <2 x double> [ %i.ah, %.lr.ph.i ], [ %i.bb, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod190 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.bi = fadd <2 x double> %.epil.init, %.epil.init189
  %i.bj = fsub <2 x double> %.epil.init, %.epil.init189
  %i.bk = shufflevector <2 x double> %i.bi, <2 x double> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.bm = fptrunc <2 x double> %i.bk to <2 x float> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  store float %i.bn, ptr %i.bl, align 4, !tbaa !15
  %i.bo = sub nsw i64 %i.ab, %indvars.iv.i.epil.init
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bo
  %i.bq = extractelement <2 x float> %i.bm, i64 1
  store float %i.bq, ptr %i.bp, align 4, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.br = zext nneg i32 %i.s to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.br
  store float f0x3F3504F3, ptr %i.bs, align 4, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.not68.i = icmp eq i32 %i.b, 0
  br i1 %.not68.i, label %.preheader.i, label %.lr.ph64.preheader.i

.lr.ph64.preheader.i:                             ; preds = %bb.g
  %i.bt = zext nneg i32 %i.r to i64               ; 5 uses
  %xtraiter191 = and i64 %i.ab, 3                 ; 3 uses
  %i.bu = icmp samesign ult i32 %.0106, 16
  br i1 %i.bu, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.preheader.i.new

.lr.ph64.preheader.i.new:                         ; preds = %.lr.ph64.preheader.i
  %unroll_iter194 = and i64 %i.ab, 536870908
  br label %.lr.ph64.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph64.i
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.preheader.i, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph64.preheader.i
  %indvars.iv71.i.epil.init = phi i64 [ 0, %.lr.ph64.preheader.i ], [ %indvars.iv.next72.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter191, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph64.i.epil

.lr.ph64.i.epil:                                  ; preds = %.lr.ph64.i.epil, %.lr.ph64.i.epil.preheader
  %indvars.iv71.i.epil = phi i64 [ %indvars.iv71.i.epil.init, %.lr.ph64.i.epil.preheader ], [ %indvars.iv.next72.i.epil, %.lr.ph64.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph64.i.epil.preheader ], [ %epil.iter.next, %.lr.ph64.i.epil ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv71.i.epil
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !15
  %i.bx = sub nsw i64 %i.bt, %indvars.iv71.i.epil
  %i.by = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bx
  store float %i.bw, ptr %i.by, align 4, !tbaa !15
  %indvars.iv.next72.i.epil = add nuw nsw i64 %indvars.iv71.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter191
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph64.i.epil, !llvm.loop !19

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph64.i.epil, %bb.g
  %i.bz = add nuw nsw i32 %i.r, %i.b              ; 3 uses
  %.not69.i = icmp eq i32 %i.bz, 0
  br i1 %.not69.i, label %make_sintbl.exit, label %.lr.ph66.preheader.i

.lr.ph66.preheader.i:                             ; preds = %.preheader.i
  %i.ca = zext nneg i32 %i.r to i64               ; 2 uses
  %wide.trip.count79.i = zext nneg i32 %i.bz to i64 ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ca ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.bz, 8
  br i1 %min.iters.check, label %.lr.ph66.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader.i
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = add nsw i64 %i.cb, -1
  %diff.check = icmp ult i64 %i.cc, 31
  br i1 %diff.check, label %.lr.ph66.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count79.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <4 x float>, ptr %i.cd, align 4, !tbaa !15
  %wide.load177 = load <4 x float>, ptr %i.ce, align 4, !tbaa !15
  %i.cf = fneg <4 x float> %wide.load
  %i.cg = fneg <4 x float> %wide.load177
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> %i.cf, ptr %i.ch, align 4, !tbaa !15
  store <4 x float> %i.cg, ptr %i.ci, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79.i
  br i1 %cmp.n, label %make_sintbl.exit, label %.lr.ph66.i.preheader

.lr.ph66.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph66.preheader.i, %middle.block
  %indvars.iv76.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter196 = and i64 %wide.trip.count79.i, 3  ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol

.lr.ph66.i.prol:                                  ; preds = %.lr.ph66.i.preheader, %.lr.ph66.i.prol
  %indvars.iv76.i.prol = phi i64 [ %indvars.iv.next77.i.prol, %.lr.ph66.i.prol ], [ %indvars.iv76.i.ph, %.lr.ph66.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.i.prol ], [ 0, %.lr.ph66.i.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv76.i.prol
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cm = fneg float %i.cl
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i.prol
  store float %i.cm, ptr %gep.i.prol, align 4, !tbaa !15
  %indvars.iv.next77.i.prol = add nuw nsw i64 %indvars.iv76.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter196
  br i1 %prol.iter.cmp.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol, !llvm.loop !24

.lr.ph66.i.prol.loopexit:                         ; preds = %.lr.ph66.i.prol, %.lr.ph66.i.preheader
  %indvars.iv76.i.unr = phi i64 [ %indvars.iv76.i.ph, %.lr.ph66.i.preheader ], [ %indvars.iv.next77.i.prol, %.lr.ph66.i.prol ]
  %i.cn = sub nsw i64 %indvars.iv76.i.ph, %wide.trip.count79.i
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %make_sintbl.exit, label %.lr.ph66.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i.new
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %indvars.iv.next72.i.3, %.lr.ph64.i ] ; 6 uses
  %niter195 = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %niter195.next.3, %.lr.ph64.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv71.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = sub nsw i64 %i.bt, %indvars.iv71.i
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cr
  store float %i.cq, ptr %i.cs, align 4, !tbaa !15
  %indvars.iv.next72.i = or disjoint i64 %indvars.iv71.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !15
  %i.cv = sub nsw i64 %i.bt, %indvars.iv.next72.i
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cv
  store float %i.cu, ptr %i.cw, align 4, !tbaa !15
  %indvars.iv.next72.i.1 = or disjoint i64 %indvars.iv71.i, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.1
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15
  %i.cz = sub nsw i64 %i.bt, %indvars.iv.next72.i.1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !15
  %indvars.iv.next72.i.2 = or disjoint i64 %indvars.iv71.i, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.2
  %i.dc = load float, ptr %i.db, align 4, !tbaa !15
  %i.dd = sub nsw i64 %i.bt, %indvars.iv.next72.i.2
  %i.de = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.dd
  store float %i.dc, ptr %i.de, align 4, !tbaa !15
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %niter195.next.3 = add i64 %niter195, 4         ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph64.i, !llvm.loop !25

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i.3, %.lr.ph66.i ], [ %indvars.iv76.i.unr, %.lr.ph66.i.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv76.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !15
  %i.dh = fneg float %i.dg
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  store float %i.dh, ptr %gep.i, align 4, !tbaa !15
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !15
  %i.dk = fneg float %i.dj
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i
  store float %i.dk, ptr %gep.i.1, align 4, !tbaa !15
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.1
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !15
  %i.dn = fneg float %i.dm
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.1
  store float %i.dn, ptr %gep.i.2, align 4, !tbaa !15
  %indvars.iv.next77.i.2 = add nuw nsw i64 %indvars.iv76.i, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.2
  %i.dp = load float, ptr %i.do, align 4, !tbaa !15
  %i.dq = fneg float %i.dp
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.2
  store float %i.dq, ptr %gep.i.3, align 4, !tbaa !15
  %indvars.iv.next77.i.3 = add nuw nsw i64 %indvars.iv76.i, 4 ; 2 uses
  %exitcond80.not.i.3 = icmp eq i64 %indvars.iv.next77.i.3, %wide.trip.count79.i
  br i1 %exitcond80.not.i.3, label %make_sintbl.exit, label %.lr.ph66.i, !llvm.loop !26

make_sintbl.exit:                                 ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i, %middle.block, %.preheader.i
  store i32 0, ptr %i.n, align 4, !tbaa !4
  %.not17.i = icmp samesign ugt i32 %.0106, 1
  br i1 %.not17.i, label %.preheader.i113.preheader, label %make_bitrev.exit

.preheader.i113.preheader:                        ; preds = %make_sintbl.exit
  %i.dr = add nsw i64 %i.l, -1                    ; 3 uses
  %xtraiter198 = and i64 %i.dr, 1
  %i.ds = icmp eq i32 %.0106, 2
  br i1 %i.ds, label %.preheader.i113.epil.preheader, label %.preheader.i113.preheader.new

.preheader.i113.preheader.new:                    ; preds = %.preheader.i113.preheader
  %unroll_iter202 = and i64 %i.dr, -2
  br label %.preheader.i113

.preheader.i113:                                  ; preds = %bb.j, %.preheader.i113.preheader.new
  %indvars.iv.i114 = phi i64 [ 1, %.preheader.i113.preheader.new ], [ %indvars.iv.next.i115.1, %bb.j ] ; 3 uses
  %.01318.i = phi i32 [ 0, %.preheader.i113.preheader.new ], [ %i.dx, %bb.j ]
  %niter203 = phi i64 [ 0, %.preheader.i113.preheader.new ], [ %niter203.next.1, %bb.j ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i113
  %.1.i = phi i32 [ %i.dt, %bb.h ], [ %.01318.i, %.preheader.i113 ] ; 3 uses
  %.0.in.i = phi i32 [ %.0.i, %bb.h ], [ %.0106, %.preheader.i113 ]
  %.0.i = lshr i32 %.0.in.i, 1                    ; 4 uses
  %.not16.i = icmp sgt i32 %.0.i, %.1.i
  %i.dt = sub nsw i32 %.1.i, %.0.i
  br i1 %.not16.i, label %.preheader.i113.1, label %bb.h, !llvm.loop !27

.preheader.i113.1:                                ; preds = %bb.h
  %i.du = add nsw i32 %.0.i, %.1.i                ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i113.1
  %.1.i.1 = phi i32 [ %i.dw, %bb.i ], [ %i.du, %.preheader.i113.1 ] ; 3 uses
  %.0.in.i.1 = phi i32 [ %.0.i.1, %bb.i ], [ %.0106, %.preheader.i113.1 ]
  %.0.i.1 = lshr i32 %.0.in.i.1, 1                ; 4 uses
  %.not16.i.1 = icmp sgt i32 %.0.i.1, %.1.i.1
  %i.dw = sub nsw i32 %.1.i.1, %.0.i.1
  br i1 %.not16.i.1, label %bb.j, label %bb.i, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  %i.dx = add nsw i32 %.0.i.1, %.1.i.1            ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !4
  %indvars.iv.next.i115.1 = add nuw nsw i64 %indvars.iv.i114, 2 ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %make_bitrev.exit.loopexit.unr-lcssa, label %.preheader.i113

make_bitrev.exit.loopexit.unr-lcssa:              ; preds = %bb.j
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %make_bitrev.exit, label %.preheader.i113.epil.preheader

.preheader.i113.epil.preheader:                   ; preds = %make_bitrev.exit.loopexit.unr-lcssa, %.preheader.i113.preheader
  %indvars.iv.i114.epil.init = phi i64 [ 1, %.preheader.i113.preheader ], [ %indvars.iv.next.i115.1, %make_bitrev.exit.loopexit.unr-lcssa ]
  %.01318.i.epil.init = phi i32 [ 0, %.preheader.i113.preheader ], [ %i.dx, %make_bitrev.exit.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i64 %i.dr to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i113.epil.preheader
  %.1.i.epil = phi i32 [ %i.ea, %bb.k ], [ %.01318.i.epil.init, %.preheader.i113.epil.preheader ] ; 3 uses
  %.0.in.i.epil = phi i32 [ %.0.i.epil, %bb.k ], [ %.0106, %.preheader.i113.epil.preheader ]
  %.0.i.epil = lshr i32 %.0.in.i.epil, 1          ; 4 uses
  %.not16.i.epil = icmp sgt i32 %.0.i.epil, %.1.i.epil
  %i.ea = sub nsw i32 %.1.i.epil, %.0.i.epil
  br i1 %.not16.i.epil, label %make_bitrev.exit.loopexit.epilog-lcssa, label %bb.k, !llvm.loop !27

make_bitrev.exit.loopexit.epilog-lcssa:           ; preds = %bb.k
  %i.eb = add nsw i32 %.0.i.epil, %.1.i.epil
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114.epil.init
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !4
  br label %make_bitrev.exit

make_bitrev.exit:                                 ; preds = %make_bitrev.exit.loopexit.epilog-lcssa, %make_bitrev.exit.loopexit.unr-lcssa, %make_sintbl.exit
  br i1 %i.e, label %.preheader118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %make_bitrev.exit
  %i.ed = load ptr, ptr @fft.bitrev, align 8, !tbaa !11
  %wide.trip.count = zext nneg i32 %.0106 to i64
  br label %bb.m

.preheader118:                                    ; preds = %bb.o, %make_bitrev.exit
  %i.ee = icmp samesign ugt i32 %.0106, 1
  br i1 %i.ee, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.preheader118
  %i.ef = load ptr, ptr @fft.sintbl, align 8      ; 3 uses
  %i.eg = zext nneg i32 %i.b to i64
  %invariant.gep174 = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  br i1 %i.a, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %.loopexit117.us
  %.0102126.us = phi i32 [ %i.eh, %.loopexit117.us ], [ 1, %.lr.ph127 ] ; 3 uses
  %i.eh = shl i32 %.0102126.us, 1                 ; 4 uses
  %i.ei = icmp sgt i32 %.0102126.us, 0
  br i1 %i.ei, label %.lr.ph125.us.preheader, label %.loopexit117.us

.lr.ph125.us.preheader:                           ; preds = %.lr.ph127.split.us
  %i.ej = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.eh, i1 true)
  %i.ek = lshr i32 %.0106, %i.ej
  %i.el = zext i32 %i.eh to i64
  %i.em = zext nneg i32 %.0102126.us to i64       ; 2 uses
  %i.en = zext nneg i32 %i.ek to i64
  %invariant.gep172 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.em
  br label %.lr.ph125.us

.loopexit117.us:                                  ; preds = %._crit_edge.us.us, %.lr.ph127.split.us
  %i.eo = icmp slt i32 %i.eh, %.0106
  br i1 %i.eo, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !28

.lr.ph125.us:                                     ; preds = %.lr.ph125.us.preheader, %._crit_edge.us.us
  %indvars.iv151 = phi i64 [ 0, %.lr.ph125.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv146 = phi i64 [ 0, %.lr.ph125.us.preheader ], [ %indvars.iv.next147, %._crit_edge.us.us ] ; 3 uses
  %indvars155 = trunc i64 %indvars.iv146 to i32
  %i.ep = icmp samesign ugt i32 %.0106, %indvars155
  br i1 %i.ep, label %.lr.ph121.us.us, label %._crit_edge.us.us

bb.l:                                             ; preds = %.lr.ph121.us.us, %bb.l
  %indvars.iv148 = phi i64 [ %indvars.iv146, %.lr.ph121.us.us ], [ %indvars.iv.next149, %bb.l ] ; 3 uses
  %gep173 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep172, i64 %indvars.iv148 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep173, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !29
  %i.es = load double, ptr %gep173, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv148 ; 2 uses
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.ev, %i.fo
  %i.ex = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.ey, <2 x double> %i.ew)
  %i.fa = fptrunc <2 x double> %i.ez to <2 x float>
  %i.fb = load <2 x double>, ptr %i.et, align 8, !tbaa !33 ; 2 uses
end_hunk_0
