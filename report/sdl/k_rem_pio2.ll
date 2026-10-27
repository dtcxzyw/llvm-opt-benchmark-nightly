Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/k_rem_pio2?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@init_jk = internal unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 6], align 16
@PIo2 = internal unnamed_addr constant [8 x double] [double f0x3FF921FB40000000, double f0x3E74442D00000000, double f0x3CF8469880000000, double f0x3B78CC5160000000, double f0x39F01B8380000000, double f0x387A252040000000, double f0x36E3822280000000, double f0x3569F31D00000000], align 16

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 8) i32 @__kernel_rem_pio2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i32], align 16              ; 22 uses
  %i.b = alloca [20 x double], align 16           ; 15 uses
  %i.c = alloca [20 x double], align 16           ; 43 uses
  %i.d = alloca [20 x double], align 16           ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = icmp slt i32 %3, 1
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %4 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @init_jk, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4              ; 8 uses
  %i.i = add nsw i32 %3, -1                       ; 3 uses
  %i.j = add nsw i32 %2, -3
  %i.k = sdiv i32 %i.j, 24
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0) ; 3 uses
  %.neg = mul nsw i32 %spec.store.select, -24     ; 2 uses
  %.neg275 = add i32 %2, -24
  %i.l = add i32 %.neg275, %.neg                  ; 10 uses
  %i.m = add nsw i32 %i.h, %i.i
  %.not316 = icmp slt i32 %i.m, 0
  br i1 %.not316, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = add i32 %i.h, %3
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = sub nsw i32 %spec.store.select, %i.i     ; 2 uses
  %i.o = add i32 %i.h, %3                         ; 5 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.0241318 = phi i32 [ %i.n, %.lr.ph.preheader.new ], [ %i.ag, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.q = icmp slt i32 %.0241318, 0
  br i1 %i.q, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = zext nneg i32 %.0241318 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sitofp i32 %i.t to double
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %i.v = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.v, ptr %i.w, align 16
  %i.x = icmp slt i32 %.0241318, -1
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.y = sext i32 %.0241318 to i64
  %i.z = getelementptr [4 x i8], ptr %5, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sitofp i32 %i.ab to double
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.ad = phi double [ %i.ac, %bb.d ], [ 0.000000e+00, %.lr.ph.1 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.ad, ptr %i.af, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = add nsw i32 %.0241318, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0241318.epil.init = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod561 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod561)
  %i.ah = icmp slt i32 %.0241318.epil.init, 0
  br i1 %i.ah, label %._crit_edge.loopexit.epilog-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.ai = zext nneg i32 %.0241318.epil.init to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = sitofp i32 %i.ak to double
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.f, %.lr.ph.epil.preheader
  %i.am = phi double [ %i.al, %bb.f ], [ 0.000000e+00, %.lr.ph.epil.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store double %i.am, ptr %i.an, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %._crit_edge.loopexit.epilog-lcssa ] ; 2 uses
  %i.ao = icmp ult i32 %.pre-phi, 20
  br i1 %i.ao, label %bb.g, label %.preheader306.us.preheader

bb.g:                                             ; preds = %._crit_edge
  %i.ap = zext nneg i32 %.pre-phi to i64          ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = sub nuw nsw i64 160, %i.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.as, i1 false)
  br label %.preheader306.us.preheader

.preheader306.us.preheader:                       ; preds = %bb.g, %._crit_edge
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.at = add nuw i32 %smax, 1
  %wide.trip.count419 = zext i32 %i.at to i64
  %wide.trip.count414 = zext nneg i32 %3 to i64   ; 4 uses
  %xtraiter562 = and i64 %wide.trip.count414, 1
  %i.au = icmp eq i32 %3, 1
  %unroll_iter566 = and i64 %wide.trip.count414, 2147483646
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  %lcmp.mod565 = trunc i32 %3 to i1
  br label %.preheader306.us

.preheader306.us:                                 ; preds = %.preheader306.us.preheader, %._crit_edge323.us
  %indvars.iv416 = phi i64 [ 0, %.preheader306.us.preheader ], [ %indvars.iv.next417, %._crit_edge323.us ] ; 3 uses
  %i.av = trunc i64 %indvars.iv416 to i32
  %i.aw = add i32 %i.i, %i.av                     ; 3 uses
  br i1 %i.au, label %.epil.preheader, label %.preheader306.us.new

.preheader306.us.new:                             ; preds = %.preheader306.us, %.preheader306.us.new
  %indvars.iv411 = phi i64 [ %indvars.iv.next412.1, %.preheader306.us.new ], [ 0, %.preheader306.us ] ; 4 uses
  %.0321.us = phi double [ %i.bm, %.preheader306.us.new ], [ 0.000000e+00, %.preheader306.us ]
  %niter567 = phi i64 [ %niter567.next.1, %.preheader306.us.new ], [ 0, %.preheader306.us ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv411
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = trunc nuw nsw i64 %indvars.iv411 to i32
  %i.ba = sub i32 %i.aw, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bd, double %.0321.us)
  %indvars.iv.next412 = or disjoint i64 %indvars.iv411, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next412
  %i.bg = load double, ptr %i.bf, align 8
  %i.bh = trunc nuw nsw i64 %indvars.iv.next412 to i32
  %i.bi = sub i32 %i.aw, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bl, double %i.be) ; 3 uses
  %indvars.iv.next412.1 = add nuw nsw i64 %indvars.iv411, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge323.us.unr-lcssa, label %.preheader306.us.new, !llvm.loop !4

._crit_edge323.us.unr-lcssa:                      ; preds = %.preheader306.us.new
  br i1 %lcmp.mod563.not, label %._crit_edge323.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge323.us.unr-lcssa, %.preheader306.us
  %indvars.iv411.epil.init = phi i64 [ 0, %.preheader306.us ], [ %indvars.iv.next412.1, %._crit_edge323.us.unr-lcssa ] ; 2 uses
  %.0321.us.epil.init = phi double [ 0.000000e+00, %.preheader306.us ], [ %i.bm, %._crit_edge323.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv411.epil.init
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = trunc nuw nsw i64 %indvars.iv411.epil.init to i32
  %i.bq = sub i32 %i.aw, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bt, double %.0321.us.epil.init)
  br label %._crit_edge323.us

._crit_edge323.us:                                ; preds = %._crit_edge323.us.unr-lcssa, %.epil.preheader
  %.lcssa560 = phi double [ %i.bm, %._crit_edge323.us.unr-lcssa ], [ %i.bu, %.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv416
  store double %.lcssa560, ptr %i.bv, align 8
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %.preheader305, label %.preheader306.us, !llvm.loop !5

.preheader305:                                    ; preds = %._crit_edge323.us
  %i.bw = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.bx = icmp eq i32 %i.l, 0
  %i.by = sub nsw i32 24, %i.l                    ; 2 uses
  %i.bz = sub nsw i32 23, %i.l
  %i.ca = sext i32 %i.h to i64                    ; 3 uses
  %i.cb = zext nneg i32 %spec.store.select to i64
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %i.cb
  %xtraiter580 = and i64 %wide.trip.count414, 3   ; 3 uses
  %i.cc = icmp ult i32 %3, 4
  %unroll_iter584 = and i64 %wide.trip.count414, 2147483644
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
end_hunk_0
begin_hunk_1_@__kernel_rem_pio2:bb.a
bb.v:                                             ; preds = %bb.u
  %i.fi = fsub double 1.000000e+00, %i.dy         ; 2 uses
  br i1 %.0256.lcssa, label %.thread293, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = tail call double @SDL_uclibc_scalbn(double noundef 1.000000e+00, i32 noundef %i.l) #6
  %i.fk = fsub double %i.fi, %i.fj
  br label %.thread293

.thread293:                                       ; preds = %bb.m, %bb.u, %bb.w, %bb.v, %bb.n
  %.0236291 = phi i32 [ 2, %bb.w ], [ 2, %bb.v ], [ %.0236292, %bb.u ], [ %.0236, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.1255 = phi i32 [ %i.en, %bb.w ], [ %i.en, %bb.v ], [ %i.en, %bb.u ], [ %.0254, %bb.n ], [ %i.dw, %bb.m ]
  %.1235 = phi double [ %i.fk, %bb.w ], [ %i.fi, %bb.v ], [ %i.dy, %bb.u ], [ %i.dy, %bb.n ], [ %i.dy, %bb.m ] ; 2 uses
  %i.fl = fcmp oeq double %.1235, 0.000000e+00
  br i1 %i.fl, label %.preheader304, label %.critedge287

.preheader304:                                    ; preds = %.thread293
  %.not278.not337 = icmp sgt i32 %.0258, %i.h
  br i1 %.not278.not337, label %.lr.ph340.preheader, label %.preheader303.preheader

.lr.ph340.preheader:                              ; preds = %.preheader304
  %i.fm = sub nsw i64 %i.cd, %i.ca                ; 3 uses
  %min.iters.check = icmp ult i64 %i.fm, 8
  br i1 %min.iters.check, label %.lr.ph340.preheader545, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph340.preheader
  %n.vec = and i64 %i.fm, -8                      ; 3 uses
  %i.fn = sub nsw i64 %i.cd, %n.vec
  %invariant.gep635 = getelementptr [4 x i8], ptr %i.a, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fo = xor i64 %index, -1
  %gep636 = getelementptr [4 x i8], ptr %invariant.gep635, i64 %i.fo ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %gep636, i64 -12
  %i.fq = getelementptr inbounds i8, ptr %gep636, i64 -28
  %wide.load = load <4 x i32>, ptr %i.fp, align 4
  %wide.load536 = load <4 x i32>, ptr %i.fq, align 4
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse537 = shufflevector <4 x i32> %wide.load536, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fr = or <4 x i32> %reverse, %vec.phi         ; 2 uses
  %i.fs = or <4 x i32> %reverse537, %vec.phi535   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %._crit_edge341, label %.lr.ph340.preheader545

.lr.ph340.preheader545:                           ; preds = %.lr.ph340.preheader, %middle.block
  %indvars.iv435.ph = phi i64 [ %i.cd, %.lr.ph340.preheader ], [ %i.fn, %middle.block ]
  %.3244339.ph = phi i32 [ 0, %.lr.ph340.preheader ], [ %i.fu, %middle.block ]
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader545, %.lr.ph340
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %.lr.ph340 ], [ %indvars.iv435.ph, %.lr.ph340.preheader545 ]
  %.3244339 = phi i32 [ %i.fx, %.lr.ph340 ], [ %.3244339.ph, %.lr.ph340.preheader545 ]
  %indvars.iv.next436 = add nsw i64 %indvars.iv435, -1 ; 3 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next436
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = or i32 %i.fw, %.3244339                 ; 2 uses
  %.not278.not = icmp sgt i64 %indvars.iv.next436, %i.ca
  br i1 %.not278.not, label %.lr.ph340, label %._crit_edge341, !llvm.loop !10

._crit_edge341:                                   ; preds = %.lr.ph340, %middle.block
  %.lcssa524 = phi i32 [ %i.fu, %middle.block ], [ %i.fx, %.lr.ph340 ]
  %i.fy = icmp eq i32 %.lcssa524, 0
  br i1 %i.fy, label %.preheader303.preheader, label %.preheader300

.preheader303.preheader:                          ; preds = %.preheader304, %._crit_edge341
  br label %.preheader303

.preheader303:                                    ; preds = %.preheader303.preheader, %.preheader303
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %.preheader303 ], [ 1, %.preheader303.preheader ] ; 3 uses
  %i.fz = sub nsw i64 %i.ca, %indvars.iv438
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = icmp eq i32 %i.gb, 0
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1
  br i1 %i.gc, label %.preheader303, label %.preheader301, !llvm.loop !11

.preheader301:                                    ; preds = %.preheader303
  %i.gd = trunc nuw nsw i64 %indvars.iv438 to i32
  %i.ge = add nsw i32 %.0258, %i.gd               ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  br label %.lr.ph347.preheader

.lr.ph347.preheader:                              ; preds = %._crit_edge348, %.preheader301
  %indvars.iv446 = phi i64 [ %i.cd, %.preheader301 ], [ %indvars.iv.next447, %._crit_edge348 ] ; 2 uses
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next447
  %i.gg = load i32, ptr %gep, align 4
  %i.gh = sitofp i32 %i.gg to double
  %i.gi = trunc nsw i64 %indvars.iv446 to i32
  %i.gj = add i32 %3, %i.gi
  %i.gk = sext i32 %i.gj to i64                   ; 6 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gk
  store double %i.gh, ptr %i.gl, align 8
  br i1 %i.cc, label %.lr.ph347.epil.preheader, label %.lr.ph347

.lr.ph347:                                        ; preds = %.lr.ph347.preheader, %.lr.ph347
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph347 ], [ 0, %.lr.ph347.preheader ] ; 6 uses
  %.1345 = phi double [ %i.hj, %.lr.ph347 ], [ 0.000000e+00, %.lr.ph347.preheader ]
  %niter585 = phi i64 [ %niter585.next.3, %.lr.ph347 ], [ 0, %.lr.ph347.preheader ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv441
  %i.gn = load double, ptr %i.gm, align 8
  %i.go = sub nsw i64 %i.gk, %indvars.iv441
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gq, double %.1345)
  %indvars.iv.next442 = or disjoint i64 %indvars.iv441, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next442
  %i.gt = load double, ptr %i.gs, align 8
  %i.gu = sub nsw i64 %i.gk, %indvars.iv.next442
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gw, double %i.gr)
  %indvars.iv.next442.1 = or disjoint i64 %indvars.iv441, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next442.1
  %i.gz = load double, ptr %i.gy, align 8
  %i.ha = sub nsw i64 %i.gk, %indvars.iv.next442.1
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.hc, double %i.gx)
  %indvars.iv.next442.2 = or disjoint i64 %indvars.iv441, 3 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next442.2
  %i.hf = load double, ptr %i.he, align 8
  %i.hg = sub nsw i64 %i.gk, %indvars.iv.next442.2
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hg
  %i.hi = load double, ptr %i.hh, align 8
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.hi, double %i.hd) ; 3 uses
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %niter585.next.3 = add i64 %niter585, 4         ; 2 uses
  %niter585.ncmp.3 = icmp eq i64 %niter585.next.3, %unroll_iter584
  br i1 %niter585.ncmp.3, label %._crit_edge348.unr-lcssa, label %.lr.ph347, !llvm.loop !12

._crit_edge348.unr-lcssa:                         ; preds = %.lr.ph347
  br i1 %lcmp.mod581.not, label %._crit_edge348, label %.lr.ph347.epil.preheader

.lr.ph347.epil.preheader:                         ; preds = %._crit_edge348.unr-lcssa, %.lr.ph347.preheader
  %indvars.iv441.epil.init = phi i64 [ 0, %.lr.ph347.preheader ], [ %indvars.iv.next442.3, %._crit_edge348.unr-lcssa ]
  %.1345.epil.init = phi double [ 0.000000e+00, %.lr.ph347.preheader ], [ %i.hj, %._crit_edge348.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod583)
  br label %.lr.ph347.epil

.lr.ph347.epil:                                   ; preds = %.lr.ph347.epil, %.lr.ph347.epil.preheader
  %indvars.iv441.epil = phi i64 [ %indvars.iv441.epil.init, %.lr.ph347.epil.preheader ], [ %indvars.iv.next442.epil, %.lr.ph347.epil ] ; 3 uses
  %.1345.epil = phi double [ %.1345.epil.init, %.lr.ph347.epil.preheader ], [ %i.hp, %.lr.ph347.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph347.epil.preheader ], [ %epil.iter.next, %.lr.ph347.epil ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv441.epil
  %i.hl = load double, ptr %i.hk, align 8
  %i.hm = sub nsw i64 %i.gk, %indvars.iv441.epil
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.ho, double %.1345.epil) ; 2 uses
  %indvars.iv.next442.epil = add nuw nsw i64 %indvars.iv441.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter580
  br i1 %epil.iter.cmp.not, label %._crit_edge348, label %.lr.ph347.epil, !llvm.loop !13

._crit_edge348:                                   ; preds = %.lr.ph347.epil, %._crit_edge348.unr-lcssa
  %.lcssa551 = phi double [ %i.hj, %._crit_edge348.unr-lcssa ], [ %i.hp, %.lr.ph347.epil ]
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next447
  store double %.lcssa551, ptr %i.hq, align 8
  %.not282.not = icmp slt i64 %indvars.iv.next447, %i.gf
  br i1 %.not282.not, label %.lr.ph347.preheader, label %.loopexit302.loopexit, !llvm.loop !6

.preheader300:                                    ; preds = %._crit_edge341, %.preheader300
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %.preheader300 ], [ %i.cd, %._crit_edge341 ]
  %.0237.in = phi i32 [ %.0237, %.preheader300 ], [ %i.l, %._crit_edge341 ]
  %.0237 = add nsw i32 %.0237.in, -24             ; 2 uses
  %indvars.iv.next452 = add nsw i64 %indvars.iv451, -1 ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next452
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %.preheader300, label %.loopexit.loopexit, !llvm.loop !14

.critedge287:                                     ; preds = %.thread293
  %i.hu = sub nsw i32 0, %i.l
  %i.hv = tail call double @SDL_uclibc_scalbn(double noundef %.1235, i32 noundef %i.hu) #6 ; 4 uses
  %i.hw = fcmp ult double %i.hv, f0x4170000000000000
  br i1 %i.hw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge287
  %i.hx = fmul nnan double %i.hv, f0x3E70000000000000
  %i.hy = fptosi double %i.hx to i32              ; 2 uses
  %i.hz = sitofp i32 %i.hy to double
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double f0xC170000000000000, double %i.hv)
  %i.ib = fptosi double %i.ia to i32
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 %i.ib, ptr %i.ic, align 4
  %i.id = add nsw i32 %.0258, 1                   ; 2 uses
  %i.ie = add i32 %.neg, %2
  %i.if = sext i32 %i.id to i64
  %6 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.if
  store i32 %i.hy, ptr %6, align 4
  br label %.loopexit

bb.y:                                             ; preds = %.critedge287
  %i.ig = fptosi double %i.hv to i32
  %7 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 %i.ig, ptr %7, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader300
  %i.ih = trunc nsw i64 %indvars.iv.next452 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.x, %bb.y
  %.2260 = phi i32 [ %.0258, %bb.y ], [ %i.id, %bb.x ], [ %i.ih, %.loopexit.loopexit ] ; 18 uses
  %.1238 = phi i32 [ %i.l, %bb.y ], [ %i.ie, %bb.x ], [ %.0237, %.loopexit.loopexit ]
  %i.ii = tail call double @SDL_uclibc_scalbn(double noundef 1.000000e+00, i32 noundef %.1238) #6 ; 3 uses
  %i.ij = icmp sgt i32 %.2260, -1                 ; 3 uses
  br i1 %i.ij, label %.lr.ph356.preheader, label %._crit_edge357

.lr.ph356.preheader:                              ; preds = %.loopexit
  %i.ik = zext nneg i32 %.2260 to i64             ; 5 uses
  %i.il = and i64 %i.ik, 1
  %lcmp.mod587.not.not = icmp eq i64 %i.il, 0
  br i1 %lcmp.mod587.not.not, label %.lr.ph356.prol, label %.lr.ph356.prol.loopexit

.lr.ph356.prol:                                   ; preds = %.lr.ph356.preheader
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ik
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sitofp i32 %i.in to double
  %i.ip = fmul double %i.ii, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ik
  store double %i.ip, ptr %i.iq, align 8
  %i.ir = fmul double %i.ii, f0x3E70000000000000
  %indvars.iv.next455.prol = add nsw i64 %i.ik, -1
  br label %.lr.ph356.prol.loopexit

.lr.ph356.prol.loopexit:                          ; preds = %.lr.ph356.prol, %.lr.ph356.preheader
  %indvars.iv454.unr = phi i64 [ %i.ik, %.lr.ph356.preheader ], [ %indvars.iv.next455.prol, %.lr.ph356.prol ]
  %.2354.unr = phi double [ %i.ii, %.lr.ph356.preheader ], [ %i.ir, %.lr.ph356.prol ]
  %i.is = icmp eq i32 %.2260, 0
  br i1 %i.is, label %.preheader299.preheader, label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.prol.loopexit, %.lr.ph356
  %indvars.iv454 = phi i64 [ %indvars.iv.next455.1, %.lr.ph356 ], [ %indvars.iv454.unr, %.lr.ph356.prol.loopexit ] ; 4 uses
  %.2354 = phi double [ %i.je, %.lr.ph356 ], [ %.2354.unr, %.lr.ph356.prol.loopexit ] ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv454
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fmul double %.2354, %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv454
  store double %i.iw, ptr %i.ix, align 8
  %i.iy = fmul double %.2354, f0x3E70000000000000 ; 2 uses
  %indvars.iv.next455 = add nsw i64 %indvars.iv454, -1 ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next455
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = fmul double %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next455
  store double %i.jc, ptr %i.jd, align 8
  %i.je = fmul double %i.iy, f0x3E70000000000000
  %indvars.iv.next455.1 = add nsw i64 %indvars.iv454, -2
  %.not.1 = icmp eq i64 %indvars.iv.next455, 0
  br i1 %.not.1, label %.preheader299.preheader, label %.lr.ph356, !llvm.loop !15

._crit_edge357:                                   ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  br label %._crit_edge365

.preheader299.preheader:                          ; preds = %.lr.ph356, %.lr.ph356.prol.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  %i.jf = zext nneg i32 %.2260 to i64
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.preheader, %.critedge
  %indvars.iv462 = phi i64 [ %i.jf, %.preheader299.preheader ], [ %indvars.iv.next463, %.critedge ] ; 4 uses
  %i.jg = trunc i64 %indvars.iv462 to i32
  %i.jh = sub i32 %.2260, %i.jg
  %.fr = freeze i32 %i.jh                         ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %.fr) ; 3 uses
  %or.cond358 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond358, label %.critedge, label %.lr.ph361.preheader

.lr.ph361.preheader:                              ; preds = %.preheader299
  %i.ji = add nuw i32 %invariant.smin, 1
  %wide.trip.count460 = zext i32 %i.ji to i64     ; 2 uses
  %invariant.gep507 = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv462 ; 5 uses
  %xtraiter588 = and i64 %wide.trip.count460, 3   ; 3 uses
  %i.jj = icmp ult i32 %invariant.smin, 3
  br i1 %i.jj, label %.lr.ph361.epil.preheader, label %.lr.ph361.preheader.new

.lr.ph361.preheader.new:                          ; preds = %.lr.ph361.preheader
  %unroll_iter593 = and i64 %wide.trip.count460, 4294967292
  br label %.lr.ph361

.lr.ph361:                                        ; preds = %.lr.ph361, %.lr.ph361.preheader.new
  %indvars.iv457 = phi i64 [ 0, %.lr.ph361.preheader.new ], [ %indvars.iv.next458.3, %.lr.ph361 ] ; 6 uses
  %.3360 = phi double [ 0.000000e+00, %.lr.ph361.preheader.new ], [ %i.jz, %.lr.ph361 ]
  %niter594 = phi i64 [ 0, %.lr.ph361.preheader.new ], [ %niter594.next.3, %.lr.ph361 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv457
  %i.jl = load double, ptr %i.jk, align 16
  %gep508 = getelementptr [8 x i8], ptr %invariant.gep507, i64 %indvars.iv457
  %i.jm = load double, ptr %gep508, align 8
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jm, double %.3360)
  %indvars.iv.next458 = or disjoint i64 %indvars.iv457, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next458
  %i.jp = load double, ptr %i.jo, align 8
  %gep508.1 = getelementptr [8 x i8], ptr %invariant.gep507, i64 %indvars.iv.next458
  %i.jq = load double, ptr %gep508.1, align 8
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.jq, double %i.jn)
  %indvars.iv.next458.1 = or disjoint i64 %indvars.iv457, 2 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next458.1
  %i.jt = load double, ptr %i.js, align 16
  %gep508.2 = getelementptr [8 x i8], ptr %invariant.gep507, i64 %indvars.iv.next458.1
  %i.ju = load double, ptr %gep508.2, align 8
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jt, double %i.ju, double %i.jr)
  %indvars.iv.next458.2 = or disjoint i64 %indvars.iv457, 3 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next458.2
  %i.jx = load double, ptr %i.jw, align 8
  %gep508.3 = getelementptr [8 x i8], ptr %invariant.gep507, i64 %indvars.iv.next458.2
  %i.jy = load double, ptr %gep508.3, align 8
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.jy, double %i.jv) ; 3 uses
  %indvars.iv.next458.3 = add nuw nsw i64 %indvars.iv457, 4 ; 2 uses
  %niter594.next.3 = add i64 %niter594, 4         ; 2 uses
  %niter594.ncmp.3 = icmp eq i64 %niter594.next.3, %unroll_iter593
  br i1 %niter594.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph361, !llvm.loop !16

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph361
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod590.not, label %.critedge, label %.lr.ph361.epil.preheader

.lr.ph361.epil.preheader:                         ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph361.preheader
  %indvars.iv457.epil.init = phi i64 [ 0, %.lr.ph361.preheader ], [ %indvars.iv.next458.3, %.critedge.loopexit.unr-lcssa ]
  %.3360.epil.init = phi double [ 0.000000e+00, %.lr.ph361.preheader ], [ %i.jz, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod592 = icmp ne i64 %xtraiter588, 0
  tail call void @llvm.assume(i1 %lcmp.mod592)
  br label %.lr.ph361.epil

.lr.ph361.epil:                                   ; preds = %.lr.ph361.epil, %.lr.ph361.epil.preheader
  %indvars.iv457.epil = phi i64 [ %indvars.iv457.epil.init, %.lr.ph361.epil.preheader ], [ %indvars.iv.next458.epil, %.lr.ph361.epil ] ; 3 uses
  %.3360.epil = phi double [ %.3360.epil.init, %.lr.ph361.epil.preheader ], [ %i.kd, %.lr.ph361.epil ]
  %epil.iter589 = phi i64 [ 0, %.lr.ph361.epil.preheader ], [ %epil.iter589.next, %.lr.ph361.epil ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv457.epil
  %i.kb = load double, ptr %i.ka, align 8
  %gep508.epil = getelementptr [8 x i8], ptr %invariant.gep507, i64 %indvars.iv457.epil
  %i.kc = load double, ptr %gep508.epil, align 8
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.kb, double %i.kc, double %.3360.epil) ; 2 uses
  %indvars.iv.next458.epil = add nuw nsw i64 %indvars.iv457.epil, 1
  %epil.iter589.next = add i64 %epil.iter589, 1   ; 2 uses
  %epil.iter589.cmp.not = icmp eq i64 %epil.iter589.next, %xtraiter588
  br i1 %epil.iter589.cmp.not, label %.critedge, label %.lr.ph361.epil, !llvm.loop !17

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph361.epil, %.preheader299
  %.3.lcssa = phi double [ 0.000000e+00, %.preheader299 ], [ %i.jz, %.critedge.loopexit.unr-lcssa ], [ %i.kd, %.lr.ph361.epil ]
  %i.ke = sext i32 %.fr to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ke
  store double %.3.lcssa, ptr %i.kf, align 8
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, -1
  %i.kg = icmp sgt i64 %indvars.iv462, 0
  br i1 %i.kg, label %.preheader299, label %._crit_edge365, !llvm.loop !18

._crit_edge365:                                   ; preds = %.critedge, %._crit_edge357
  switch i32 %4, label %bb.ac [
    i32 0, label %.preheader
    i32 1, label %bb.z
    i32 2, label %bb.z
    i32 3, label %.preheader298
  ]

.preheader298:                                    ; preds = %._crit_edge365
  %i.kh = icmp sgt i32 %.2260, 0
  br i1 %i.kh, label %.lr.ph367.preheader, label %._crit_edge373

.lr.ph367.preheader:                              ; preds = %.preheader298
  %i.ki = zext nneg i32 %.2260 to i64             ; 5 uses
  %i.kj = shl nuw nsw i64 %i.ki, 3
  %scevgep538 = getelementptr i8, ptr %i.c, i64 %i.kj
  %load_initial539 = load double, ptr %scevgep538, align 8 ; 3 uses
  %xtraiter595 = and i64 %i.ki, 1
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %.lr.ph367.prol.loopexit, label %.lr.ph367.prol

.lr.ph367.prol:                                   ; preds = %.lr.ph367.preheader
  %i.kk = getelementptr [8 x i8], ptr %i.c, i64 %i.ki ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kk, i64 -8     ; 2 uses
  %i.km = load double, ptr %i.kl, align 16        ; 2 uses
  %i.kn = fadd double %i.km, %load_initial539     ; 3 uses
  %i.ko = fsub double %i.km, %i.kn
  %i.kp = fadd double %load_initial539, %i.ko
  store double %i.kp, ptr %i.kk, align 8
  store double %i.kn, ptr %i.kl, align 16
  %indvars.iv.next466.prol = add nsw i64 %i.ki, -1
  br label %.lr.ph367.prol.loopexit

.lr.ph367.prol.loopexit:                          ; preds = %.lr.ph367.prol, %.lr.ph367.preheader
  %store_forwarded540.unr = phi double [ %load_initial539, %.lr.ph367.preheader ], [ %i.kn, %.lr.ph367.prol ]
  %indvars.iv465.unr = phi i64 [ %i.ki, %.lr.ph367.preheader ], [ %indvars.iv.next466.prol, %.lr.ph367.prol ]
  %cond = icmp eq i32 %.2260, 1
  br i1 %cond, label %._crit_edge373, label %.lr.ph367

.preheader:                                       ; preds = %._crit_edge365
  br i1 %i.ij, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %.preheader
  %i.kq = zext nneg i32 %.2260 to i64             ; 3 uses
  %i.kr = add nuw nsw i64 %i.kq, 1
  %xtraiter606 = and i64 %i.kr, 7                 ; 2 uses
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br i1 %lcmp.mod607.not, label %.lr.ph390.prol.loopexit, label %.lr.ph390.prol

.lr.ph390.prol:                                   ; preds = %.lr.ph390.preheader, %.lr.ph390.prol
  %indvars.iv482.prol = phi i64 [ %indvars.iv.next483.prol, %.lr.ph390.prol ], [ %i.kq, %.lr.ph390.preheader ] ; 2 uses
  %.4389.prol = phi double [ %i.ku, %.lr.ph390.prol ], [ 0.000000e+00, %.lr.ph390.preheader ]
  %prol.iter608 = phi i64 [ %prol.iter608.next, %.lr.ph390.prol ], [ 0, %.lr.ph390.preheader ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv482.prol
  %i.kt = load double, ptr %i.ks, align 8
end_hunk_1
