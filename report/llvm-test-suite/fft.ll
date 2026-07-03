inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
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
  %.0100 = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 29 uses
  %i.b = lshr i32 %.0100, 2                       ; 5 uses
  %i.c = load i32, ptr @fft.last_n, align 4, !tbaa !4
  %i.d = icmp ne i32 %.0100, %i.c
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i32 %.0100, ptr @fft.last_n, align 4, !tbaa !4
  %i.f = load ptr, ptr @fft.sintbl, align 8, !tbaa !8
  %i.g = add nuw nsw i32 %i.b, %.0100
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.i) #7 ; 24 uses
  store ptr %i.j, ptr @fft.sintbl, align 8, !tbaa !8
  %i.k = load ptr, ptr @fft.bitrev, align 8, !tbaa !11
  %i.l = zext nneg i32 %.0100 to i64              ; 2 uses
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
  %i.r = lshr i32 %.0100, 1                       ; 3 uses
  %i.s = lshr i32 %.0100, 3                       ; 3 uses
  %i.t = uitofp nneg i32 %.0100 to double
  %i.u = fdiv double f0x400921FB54442D18, %i.t
  %i.v = tail call double @sin(double noundef %i.u) #8, !tbaa !4 ; 2 uses
  %i.w = fmul double %i.v, 2.000000e+00
  %i.x = fmul double %i.v, %i.w                   ; 4 uses
  %i.y = fsub double 2.000000e+00, %i.x
  %i.z = fmul double %i.x, %i.y
  %i.aa = tail call double @sqrt(double noundef %i.z) #8, !tbaa !4
  %i.ab = fmul double %i.x, 2.000000e+00          ; 2 uses
  %i.ac = zext nneg i32 %i.b to i64               ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !15
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !15
  %i.ae = icmp samesign ugt i32 %.0100, 15
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = fneg double %i.ab
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.061.i = phi double [ %i.aa, %.lr.ph.i ], [ %i.aj, %bb.e ] ; 2 uses
  %.05160.i = phi double [ %i.x, %.lr.ph.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.05259.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ai, %bb.e ]
  %.05358.i = phi double [ 1.000000e+00, %.lr.ph.i ], [ %i.ag, %bb.e ]
  %i.ag = fsub double %.05358.i, %.05160.i        ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ag, double %.05160.i)
  %i.ai = fadd double %.061.i, %.05259.i          ; 3 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ai, double %.061.i)
  %i.ak = fptrunc double %i.ai to float
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !15
  %i.am = fptrunc double %i.ag to float
  %i.an = sub nsw i64 %i.ac, %indvars.iv.i
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.an
  store float %i.am, ptr %i.ao, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.ap = zext nneg i32 %i.s to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ap
  store float f0x3F3504F3, ptr %i.aq, align 4, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.not68.i = icmp eq i32 %i.b, 0
  br i1 %.not68.i, label %.preheader.i, label %.lr.ph64.preheader.i

.lr.ph64.preheader.i:                             ; preds = %bb.g
  %i.ar = zext nneg i32 %i.r to i64               ; 5 uses
  %xtraiter = and i64 %i.ac, 3                    ; 3 uses
  %i.as = icmp samesign ult i32 %.0100, 16
  br i1 %i.as, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.preheader.i.new

.lr.ph64.preheader.i.new:                         ; preds = %.lr.ph64.preheader.i
  %unroll_iter = and i64 %i.ac, 536870908
  br label %.lr.ph64.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph64.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph64.preheader.i
  %indvars.iv71.i.epil.init = phi i64 [ 0, %.lr.ph64.preheader.i ], [ %indvars.iv.next72.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph64.i.epil

.lr.ph64.i.epil:                                  ; preds = %.lr.ph64.i.epil, %.lr.ph64.i.epil.preheader
  %indvars.iv71.i.epil = phi i64 [ %indvars.iv71.i.epil.init, %.lr.ph64.i.epil.preheader ], [ %indvars.iv.next72.i.epil, %.lr.ph64.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph64.i.epil.preheader ], [ %epil.iter.next, %.lr.ph64.i.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv71.i.epil
  %i.au = load float, ptr %i.at, align 4, !tbaa !15
  %i.av = sub nsw i64 %i.ar, %indvars.iv71.i.epil
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.av
  store float %i.au, ptr %i.aw, align 4, !tbaa !15
  %indvars.iv.next72.i.epil = add nuw nsw i64 %indvars.iv71.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph64.i.epil, !llvm.loop !19

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph64.i.epil, %bb.g
  %i.ax = add nuw nsw i32 %i.r, %i.b              ; 3 uses
  %.not69.i = icmp eq i32 %i.ax, 0
  br i1 %.not69.i, label %make_sintbl.exit, label %.lr.ph66.preheader.i

.lr.ph66.preheader.i:                             ; preds = %.preheader.i
  %i.ay = zext nneg i32 %i.r to i64
  %wide.trip.count79.i = zext nneg i32 %i.ax to i64 ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.ax, 8
  %diff.check = icmp samesign ult i32 %.0100, 16
  %or.cond187 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond187, label %.lr.ph66.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader.i
  %n.vec = and i64 %wide.trip.count79.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x float>, ptr %i.az, align 4, !tbaa !15
  %wide.load178 = load <4 x float>, ptr %i.ba, align 4, !tbaa !15
  %i.bb = fneg <4 x float> %wide.load
  %i.bc = fneg <4 x float> %wide.load178
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x float> %i.bb, ptr %i.bd, align 4, !tbaa !15
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79.i
  br i1 %cmp.n, label %make_sintbl.exit, label %.lr.ph66.i.preheader

.lr.ph66.i.preheader:                             ; preds = %.lr.ph66.preheader.i, %middle.block
  %indvars.iv76.i.ph = phi i64 [ 0, %.lr.ph66.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter191 = and i64 %wide.trip.count79.i, 3  ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol

.lr.ph66.i.prol:                                  ; preds = %.lr.ph66.i.preheader, %.lr.ph66.i.prol
  %indvars.iv76.i.prol = phi i64 [ %indvars.iv.next77.i.prol, %.lr.ph66.i.prol ], [ %indvars.iv76.i.ph, %.lr.ph66.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph66.i.prol ], [ 0, %.lr.ph66.i.preheader ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv76.i.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !15
  %i.bi = fneg float %i.bh
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i.prol
  store float %i.bi, ptr %gep.i.prol, align 4, !tbaa !15
  %indvars.iv.next77.i.prol = add nuw nsw i64 %indvars.iv76.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter191
  br i1 %prol.iter.cmp.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol, !llvm.loop !24

.lr.ph66.i.prol.loopexit:                         ; preds = %.lr.ph66.i.prol, %.lr.ph66.i.preheader
  %indvars.iv76.i.unr = phi i64 [ %indvars.iv76.i.ph, %.lr.ph66.i.preheader ], [ %indvars.iv.next77.i.prol, %.lr.ph66.i.prol ]
  %i.bj = sub nsw i64 %indvars.iv76.i.ph, %wide.trip.count79.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %make_sintbl.exit, label %.lr.ph66.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i.new
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %indvars.iv.next72.i.3, %.lr.ph64.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %niter.next.3, %.lr.ph64.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv71.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !15
  %i.bn = sub nsw i64 %i.ar, %indvars.iv71.i
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bn
  store float %i.bm, ptr %i.bo, align 4, !tbaa !15
  %indvars.iv.next72.i = or disjoint i64 %indvars.iv71.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !15
  %i.br = sub nsw i64 %i.ar, %indvars.iv.next72.i
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.br
  store float %i.bq, ptr %i.bs, align 4, !tbaa !15
  %indvars.iv.next72.i.1 = or disjoint i64 %indvars.iv71.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.1
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !15
  %i.bv = sub nsw i64 %i.ar, %indvars.iv.next72.i.1
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bv
  store float %i.bu, ptr %i.bw, align 4, !tbaa !15
  %indvars.iv.next72.i.2 = or disjoint i64 %indvars.iv71.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = sub nsw i64 %i.ar, %indvars.iv.next72.i.2
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bz
  store float %i.by, ptr %i.ca, align 4, !tbaa !15
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph64.i, !llvm.loop !25

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i.3, %.lr.ph66.i ], [ %indvars.iv76.i.unr, %.lr.ph66.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv76.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !15
  %i.cd = fneg float %i.cc
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  store float %i.cd, ptr %gep.i, align 4, !tbaa !15
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !15
  %i.cg = fneg float %i.cf
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i
  store float %i.cg, ptr %gep.i.1, align 4, !tbaa !15
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.1
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = fneg float %i.ci
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.1
  store float %i.cj, ptr %gep.i.2, align 4, !tbaa !15
  %indvars.iv.next77.i.2 = add nuw nsw i64 %indvars.iv76.i, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cm = fneg float %i.cl
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.2
  store float %i.cm, ptr %gep.i.3, align 4, !tbaa !15
  %indvars.iv.next77.i.3 = add nuw nsw i64 %indvars.iv76.i, 4 ; 2 uses
  %exitcond80.not.i.3 = icmp eq i64 %indvars.iv.next77.i.3, %wide.trip.count79.i
  br i1 %exitcond80.not.i.3, label %make_sintbl.exit, label %.lr.ph66.i, !llvm.loop !26

make_sintbl.exit:                                 ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i, %middle.block, %.preheader.i
  store i32 0, ptr %i.n, align 4, !tbaa !4
  %.not17.i = icmp samesign ugt i32 %.0100, 1
  br i1 %.not17.i, label %.preheader.i113.preheader, label %make_bitrev.exit

.preheader.i113.preheader:                        ; preds = %make_sintbl.exit
  %i.cn = add nsw i64 %i.l, -1                    ; 3 uses
  %xtraiter193 = and i64 %i.cn, 1
  %i.co = icmp eq i32 %.0100, 2
  br i1 %i.co, label %.preheader.i113.epil.preheader, label %.preheader.i113.preheader.new

.preheader.i113.preheader.new:                    ; preds = %.preheader.i113.preheader
  %unroll_iter197 = and i64 %i.cn, -2
  br label %.preheader.i113

.preheader.i113:                                  ; preds = %bb.j, %.preheader.i113.preheader.new
  %indvars.iv.i114 = phi i64 [ 1, %.preheader.i113.preheader.new ], [ %indvars.iv.next.i115.1, %bb.j ] ; 3 uses
  %.01418.i = phi i32 [ 0, %.preheader.i113.preheader.new ], [ %i.ct, %bb.j ]
  %niter198 = phi i64 [ 0, %.preheader.i113.preheader.new ], [ %niter198.next.1, %bb.j ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i113
  %.1.i = phi i32 [ %i.cp, %bb.h ], [ %.01418.i, %.preheader.i113 ] ; 3 uses
  %.013.in.i = phi i32 [ %.013.i, %bb.h ], [ %.0100, %.preheader.i113 ]
  %.013.i = lshr i32 %.013.in.i, 1                ; 4 uses
  %.not16.i = icmp sgt i32 %.013.i, %.1.i
  %i.cp = sub nsw i32 %.1.i, %.013.i
  br i1 %.not16.i, label %.preheader.i113.1, label %bb.h, !llvm.loop !27

.preheader.i113.1:                                ; preds = %bb.h
  %i.cq = add nsw i32 %.013.i, %.1.i              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i113.1
  %.1.i.1 = phi i32 [ %i.cs, %bb.i ], [ %i.cq, %.preheader.i113.1 ] ; 3 uses
  %.013.in.i.1 = phi i32 [ %.013.i.1, %bb.i ], [ %.0100, %.preheader.i113.1 ]
  %.013.i.1 = lshr i32 %.013.in.i.1, 1            ; 4 uses
  %.not16.i.1 = icmp sgt i32 %.013.i.1, %.1.i.1
  %i.cs = sub nsw i32 %.1.i.1, %.013.i.1
  br i1 %.not16.i.1, label %bb.j, label %bb.i, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  %i.ct = add nsw i32 %.013.i.1, %.1.i.1          ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next.i115.1 = add nuw nsw i64 %indvars.iv.i114, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %make_bitrev.exit.loopexit.unr-lcssa, label %.preheader.i113

make_bitrev.exit.loopexit.unr-lcssa:              ; preds = %bb.j
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %make_bitrev.exit, label %.preheader.i113.epil.preheader

.preheader.i113.epil.preheader:                   ; preds = %make_bitrev.exit.loopexit.unr-lcssa, %.preheader.i113.preheader
  %indvars.iv.i114.epil.init = phi i64 [ 1, %.preheader.i113.preheader ], [ %indvars.iv.next.i115.1, %make_bitrev.exit.loopexit.unr-lcssa ]
  %.01418.i.epil.init = phi i32 [ 0, %.preheader.i113.preheader ], [ %i.ct, %make_bitrev.exit.loopexit.unr-lcssa ]
  %lcmp.mod196 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i113.epil.preheader
  %.1.i.epil = phi i32 [ %i.cw, %bb.k ], [ %.01418.i.epil.init, %.preheader.i113.epil.preheader ] ; 3 uses
  %.013.in.i.epil = phi i32 [ %.013.i.epil, %bb.k ], [ %.0100, %.preheader.i113.epil.preheader ]
  %.013.i.epil = lshr i32 %.013.in.i.epil, 1      ; 4 uses
  %.not16.i.epil = icmp sgt i32 %.013.i.epil, %.1.i.epil
  %i.cw = sub nsw i32 %.1.i.epil, %.013.i.epil
  br i1 %.not16.i.epil, label %make_bitrev.exit.loopexit.epilog-lcssa, label %bb.k, !llvm.loop !27

make_bitrev.exit.loopexit.epilog-lcssa:           ; preds = %bb.k
  %i.cx = add nsw i32 %.013.i.epil, %.1.i.epil
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114.epil.init
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !4
  br label %make_bitrev.exit

make_bitrev.exit:                                 ; preds = %make_bitrev.exit.loopexit.epilog-lcssa, %make_bitrev.exit.loopexit.unr-lcssa, %make_sintbl.exit
  br i1 %i.e, label %.preheader118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %make_bitrev.exit
  %i.cz = load ptr, ptr @fft.bitrev, align 8, !tbaa !11
  %wide.trip.count = zext nneg i32 %.0100 to i64
  br label %bb.m

.preheader118:                                    ; preds = %bb.o, %make_bitrev.exit
  %i.da = icmp samesign ugt i32 %.0100, 1
  br i1 %i.da, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.preheader118
  %i.db = load ptr, ptr @fft.sintbl, align 8      ; 3 uses
  %i.dc = zext nneg i32 %i.b to i64
  %invariant.gep175 = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc ; 2 uses
  br i1 %i.a, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %.loopexit117.us
  %.0105126.us = phi i32 [ %i.dd, %.loopexit117.us ], [ 1, %.lr.ph127 ] ; 3 uses
  %i.dd = shl i32 %.0105126.us, 1                 ; 4 uses
  %i.de = icmp sgt i32 %.0105126.us, 0
  br i1 %i.de, label %.lr.ph125.us.preheader, label %.loopexit117.us

.lr.ph125.us.preheader:                           ; preds = %.lr.ph127.split.us
  %i.df = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.dd, i1 true)
  %i.dg = lshr i32 %.0100, %i.df
  %i.dh = zext i32 %i.dd to i64
  %i.di = zext nneg i32 %.0105126.us to i64       ; 2 uses
  %i.dj = zext nneg i32 %i.dg to i64
  %invariant.gep173 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.di
  br label %.lr.ph125.us

.loopexit117.us:                                  ; preds = %._crit_edge.us.us, %.lr.ph127.split.us
  %i.dk = icmp slt i32 %i.dd, %.0100
  br i1 %i.dk, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !28

.lr.ph125.us:                                     ; preds = %.lr.ph125.us.preheader, %._crit_edge.us.us
  %indvars.iv151 = phi i64 [ 0, %.lr.ph125.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us.us ] ; 3 uses
end_hunk_0
