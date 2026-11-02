Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/whetstone?download=true
inline.NumInlined: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", align 1
@T = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@T1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@T2 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@E1 = dso_local local_unnamed_addr global [5 x double] zeroinitializer, align 16
@J = dso_local local_unnamed_addr global i32 0, align 4
@K = dso_local local_unnamed_addr global i32 0, align 4
@L = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %sub_0.preheader, label %.preheader

sub_0.preheader:                                  ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %sub_0

.preheader.loopexit:                              ; preds = %bb.c
  %i.b = icmp eq i32 %.1, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0142.lcssa = phi i64 [ 100000, %bb.a ], [ %.1143, %.preheader.loopexit ] ; 8 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.b, %.preheader.loopexit ]
  %i.c = mul i64 %.0142.lcssa, 12                 ; 5 uses
  %i.d = mul i64 %.0142.lcssa, 14                 ; 3 uses
  %i.e = mul i64 %.0142.lcssa, 345                ; 3 uses
  %i.f = mul i64 %.0142.lcssa, 210
  %i.g = shl i64 %.0142.lcssa, 5                  ; 2 uses
  %i.h = mul nsw i64 %.0142.lcssa, 899
  %i.i = mul i64 %.0142.lcssa, 616                ; 3 uses
  %i.j = mul i64 %.0142.lcssa, 93                 ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 1)
  %smax287 = tail call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %smax289 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 1) ; 3 uses
  %smax293 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 1)
  %smax295 = tail call i64 @llvm.smax.i64(i64 %i.i, i64 1) ; 3 uses
  %smax297 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 1)
  %min.iters.check = icmp slt i64 %i.e, 8
  %n.vec = and i64 %smax289, 9223372036854775800  ; 3 uses
  %i.k = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %smax289, %n.vec
  %xtraiter = and i64 %smax295, 1
  %i.l = icmp slt i64 %i.i, 8
  %unroll_iter = and i64 %smax295, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod348 = trunc i64 %smax295 to i1
  br label %.lr.ph

sub_0:                                            ; preds = %sub_0.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %sub_0.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0185 = phi i32 [ 0, %sub_0.preheader ], [ %.1, %bb.c ]
  %.0142184 = phi i64 [ 100000, %sub_0.preheader ], [ %.1143, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %.thread [
    i8 45, label %.tail
    i8 99, label %bb.c
  ]

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 99
  br i1 %i.r, label %bb.c, label %.thread

.thread:                                          ; preds = %sub_0, %.tail
  %i.s = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.n, ptr noundef null, i32 noundef 10) #12, !inline_history !10 ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.u) #13 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %sub_0, %.thread, %.tail
  %.1143 = phi i64 [ %.0142184, %.tail ], [ %.0142184, %sub_0 ], [ %i.s, %.thread ] ; 2 uses
  %.1 = phi i32 [ 1, %.tail ], [ 1, %sub_0 ], [ %.0185, %.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %sub_0, !llvm.loop !11

.lr.ph:                                           ; preds = %._crit_edge267, %.preheader
  %2 = tail call i64 @time(ptr noundef null) #12  ; 0 uses
  store double 4.999750e-01, ptr @T, align 8, !tbaa !9
  store double 5.002500e-01, ptr @T1, align 8, !tbaa !9
  store double 2.000000e+00, ptr @T2, align 8, !tbaa !9
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef 0, i64 noundef 0, i64 noundef 0, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) ; 0 uses
  %i.v = load double, ptr @T, align 8, !tbaa !9   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.1154191 = phi i64 [ 1, %.lr.ph ], [ %i.aq, %bb.d ] ; 2 uses
  %i.w = phi double [ 1.000000e+00, %.lr.ph ], [ %i.ad, %bb.d ]
  %i.x = phi double [ -1.000000e+00, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %i.y = phi double [ -1.000000e+00, %.lr.ph ], [ %i.al, %bb.d ] ; 3 uses
  %i.z = phi double [ -1.000000e+00, %.lr.ph ], [ %i.ap, %bb.d ] ; 4 uses
  %i.aa = fadd double %i.w, %i.x
  %i.ab = fadd double %i.aa, %i.y
  %i.ac = fsub double %i.ab, %i.z
  %i.ad = fmul double %i.ac, %i.v                 ; 6 uses
  %i.ae = fadd double %i.x, %i.ad
  %i.af = fsub double %i.ae, %i.y
  %i.ag = fadd double %i.z, %i.af
  %i.ah = fmul double %i.v, %i.ag                 ; 5 uses
  %i.ai = fsub double %i.ad, %i.ah
  %i.aj = fadd double %i.y, %i.ai
  %i.ak = fadd double %i.z, %i.aj
  %i.al = fmul double %i.v, %i.ak                 ; 4 uses
  %i.am = fsub double %i.ah, %i.ad
  %i.an = fadd double %i.am, %i.al
  %i.ao = fadd double %i.z, %i.an
  %i.ap = fmul double %i.v, %i.ao                 ; 3 uses
  %i.aq = add nuw nsw i64 %.1154191, 1
  %exitcond286.not = icmp eq i64 %.1154191, %smax
  br i1 %exitcond286.not, label %.lr.ph211, label %bb.d, !llvm.loop !12

.lr.ph211:                                        ; preds = %bb.d
  store double %i.ad, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store double %i.ah, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  store double %i.al, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  store double %i.ap, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.c, double noundef %i.ad, double noundef %i.ah, double noundef %i.al, double noundef %i.ap) ; 0 uses
  %.promoted202.a = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16
  %.promoted200.a = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8
  %.promoted198 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16
  %.promoted196 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8
  %i.ar = load double, ptr @T, align 8, !tbaa !9  ; 18 uses
  %i.as = load double, ptr @T2, align 8, !tbaa !9 ; 6 uses
  store i32 6, ptr @J, align 4, !tbaa !7
  br label %PA.exit

PA.exit:                                          ; preds = %.lr.ph211, %PA.exit
  %.2209 = phi i64 [ 1, %.lr.ph211 ], [ %i.el, %PA.exit ] ; 2 uses
  %.lcssa180197208 = phi double [ %.promoted196, %.lr.ph211 ], [ %i.dy, %PA.exit ]
  %.lcssa179199207 = phi double [ %.promoted198, %.lr.ph211 ], [ %i.ec, %PA.exit ] ; 2 uses
  %.lcssa178201206 = phi double [ %.promoted200.a, %.lr.ph211 ], [ %i.eg, %PA.exit ] ; 3 uses
  %.lcssa203205 = phi double [ %.promoted202.a, %.lr.ph211 ], [ %i.ek, %PA.exit ] ; 4 uses
  %i.at = fadd double %.lcssa179199207, %.lcssa180197208
  %i.au = fadd double %.lcssa178201206, %i.at
  %i.av = fsub double %i.au, %.lcssa203205
  %i.aw = fmul double %i.ar, %i.av                ; 4 uses
  %i.ax = fadd double %.lcssa179199207, %i.aw
  %i.ay = fsub double %i.ax, %.lcssa178201206
  %i.az = fadd double %.lcssa203205, %i.ay
  %i.ba = fmul double %i.ar, %i.az                ; 4 uses
  %i.bb = fsub double %i.aw, %i.ba
  %i.bc = fadd double %.lcssa178201206, %i.bb
  %i.bd = fadd double %.lcssa203205, %i.bc
  %i.be = fmul double %i.ar, %i.bd                ; 4 uses
  %i.bf = fsub double %i.ba, %i.aw
  %i.bg = fadd double %i.bf, %i.be
  %i.bh = fadd double %.lcssa203205, %i.bg
  %i.bi = fdiv double %i.bh, %i.as                ; 4 uses
  %i.bj = fadd double %i.ba, %i.aw
  %i.bk = fadd double %i.be, %i.bj
  %i.bl = fsub double %i.bk, %i.bi
  %i.bm = fmul double %i.ar, %i.bl                ; 4 uses
  %i.bn = fadd double %i.ba, %i.bm
  %i.bo = fsub double %i.bn, %i.be
  %i.bp = fadd double %i.bi, %i.bo
  %i.bq = fmul double %i.ar, %i.bp                ; 4 uses
  %i.br = fsub double %i.bm, %i.bq
  %i.bs = fadd double %i.be, %i.br
  %i.bt = fadd double %i.bi, %i.bs
  %i.bu = fmul double %i.ar, %i.bt                ; 4 uses
  %i.bv = fsub double %i.bq, %i.bm
  %i.bw = fadd double %i.bv, %i.bu
  %i.bx = fadd double %i.bi, %i.bw
  %i.by = fdiv double %i.bx, %i.as                ; 4 uses
  %i.bz = fadd double %i.bq, %i.bm
  %i.ca = fadd double %i.bu, %i.bz
  %i.cb = fsub double %i.ca, %i.by
  %i.cc = fmul double %i.ar, %i.cb                ; 4 uses
  %i.cd = fadd double %i.bq, %i.cc
  %i.ce = fsub double %i.cd, %i.bu
  %i.cf = fadd double %i.by, %i.ce
  %i.cg = fmul double %i.ar, %i.cf                ; 4 uses
  %i.ch = fsub double %i.cc, %i.cg
  %i.ci = fadd double %i.bu, %i.ch
  %i.cj = fadd double %i.by, %i.ci
  %i.ck = fmul double %i.ar, %i.cj                ; 4 uses
  %i.cl = fsub double %i.cg, %i.cc
  %i.cm = fadd double %i.cl, %i.ck
  %i.cn = fadd double %i.by, %i.cm
  %i.co = fdiv double %i.cn, %i.as                ; 4 uses
  %i.cp = fadd double %i.cg, %i.cc
  %i.cq = fadd double %i.ck, %i.cp
  %i.cr = fsub double %i.cq, %i.co
  %i.cs = fmul double %i.ar, %i.cr                ; 4 uses
  %i.ct = fadd double %i.cg, %i.cs
  %i.cu = fsub double %i.ct, %i.ck
  %i.cv = fadd double %i.co, %i.cu
  %i.cw = fmul double %i.ar, %i.cv                ; 4 uses
  %i.cx = fsub double %i.cs, %i.cw
  %i.cy = fadd double %i.ck, %i.cx
  %i.cz = fadd double %i.co, %i.cy
  %i.da = fmul double %i.ar, %i.cz                ; 4 uses
  %i.db = fsub double %i.cw, %i.cs
  %i.dc = fadd double %i.db, %i.da
  %i.dd = fadd double %i.co, %i.dc
  %i.de = fdiv double %i.dd, %i.as                ; 4 uses
  %i.df = fadd double %i.cw, %i.cs
  %i.dg = fadd double %i.da, %i.df
  %i.dh = fsub double %i.dg, %i.de
  %i.di = fmul double %i.ar, %i.dh                ; 4 uses
  %i.dj = fadd double %i.cw, %i.di
  %i.dk = fsub double %i.dj, %i.da
  %i.dl = fadd double %i.de, %i.dk
  %i.dm = fmul double %i.ar, %i.dl                ; 4 uses
  %i.dn = fsub double %i.di, %i.dm
  %i.do = fadd double %i.da, %i.dn
  %i.dp = fadd double %i.de, %i.do
  %i.dq = fmul double %i.ar, %i.dp                ; 4 uses
  %i.dr = fsub double %i.dm, %i.di
  %i.ds = fadd double %i.dr, %i.dq
  %i.dt = fadd double %i.de, %i.ds
  %i.du = fdiv double %i.dt, %i.as                ; 4 uses
  %i.dv = fadd double %i.dm, %i.di
  %i.dw = fadd double %i.dq, %i.dv
  %i.dx = fsub double %i.dw, %i.du
  %i.dy = fmul double %i.ar, %i.dx                ; 6 uses
  %i.dz = fadd double %i.dm, %i.dy
  %i.ea = fsub double %i.dz, %i.dq
  %i.eb = fadd double %i.du, %i.ea
  %i.ec = fmul double %i.ar, %i.eb                ; 5 uses
  %i.ed = fsub double %i.dy, %i.ec
  %i.ee = fadd double %i.dq, %i.ed
  %i.ef = fadd double %i.du, %i.ee
  %i.eg = fmul double %i.ar, %i.ef                ; 4 uses
  %i.eh = fsub double %i.ec, %i.dy
  %i.ei = fadd double %i.eh, %i.eg
  %i.ej = fadd double %i.du, %i.ei
  %i.ek = fdiv double %i.ej, %i.as                ; 3 uses
  %i.el = add nuw nsw i64 %.2209, 1
  %exitcond288.not = icmp eq i64 %.2209, %smax287
  br i1 %exitcond288.not, label %.lr.ph218.preheader, label %PA.exit, !llvm.loop !13

.lr.ph218.preheader:                              ; preds = %PA.exit
  store double %i.dy, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store double %i.ec, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  store double %i.eg, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  store double %i.ek, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.d, i64 noundef %i.c, i64 noundef %i.c, double noundef %i.dy, double noundef %i.ec, double noundef %i.eg, double noundef %i.ek) ; 0 uses
  br i1 %min.iters.check, label %.lr.ph218.preheader330, label %vector.body

vector.body:                                      ; preds = %.lr.ph218.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph218.preheader ]
  %vec.phi = phi <4 x i32> [ %i.em, %vector.body ], [ <i32 1, i32 0, i32 0, i32 0>, %.lr.ph218.preheader ] ; 2 uses
  %vec.phi329 = phi <4 x i32> [ %i.en, %vector.body ], [ zeroinitializer, %.lr.ph218.preheader ] ; 2 uses
  %i.em = xor <4 x i32> %vec.phi, splat (i32 1)
  %i.en = xor <4 x i32> %vec.phi329, splat (i32 1)
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %vec.phi329, %vec.phi
  %6 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.lr.ph224.preheader, label %.lr.ph218.preheader330

.lr.ph218.preheader330:                           ; preds = %.lr.ph218.preheader, %middle.block
  %.3216.ph = phi i64 [ 1, %.lr.ph218.preheader ], [ %i.k, %middle.block ]
  %storemerge176213215.ph = phi i32 [ 1, %.lr.ph218.preheader ], [ %6, %middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader330, %.lr.ph218
  %.3216 = phi i64 [ %i.ep, %.lr.ph218 ], [ %.3216.ph, %.lr.ph218.preheader330 ] ; 2 uses
  %storemerge176213215 = phi i32 [ %storemerge176, %.lr.ph218 ], [ %storemerge176213215.ph, %.lr.ph218.preheader330 ]
  %storemerge176 = xor i32 %storemerge176213215, 1 ; 2 uses
  %i.ep = add nuw i64 %.3216, 1
  %exitcond290.not = icmp eq i64 %.3216, %smax289
  br i1 %exitcond290.not, label %.lr.ph224.preheader, label %.lr.ph218, !llvm.loop !15

.lr.ph224.preheader:                              ; preds = %.lr.ph218, %middle.block
  %storemerge176.lcssa = phi i32 [ %6, %middle.block ], [ %storemerge176, %.lr.ph218 ] ; 2 uses
  store i32 %storemerge176.lcssa, ptr @J, align 4, !tbaa !7
  %i.eq = zext nneg i32 %storemerge176.lcssa to i64 ; 2 uses
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.e, i64 noundef %i.eq, i64 noundef %i.eq, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) ; 0 uses
  store <2 x double> splat (double 6.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store i32 1, ptr @J, align 4, !tbaa !7
  store i32 2, ptr @K, align 4, !tbaa !7
  store i32 3, ptr @L, align 4, !tbaa !7
  %i.er = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  %i.es = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  %i.et = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.f, i64 noundef 1, i64 noundef 2, double noundef 6.000000e+00, double noundef %i.er, double noundef %i.es, double noundef %i.et) ; 0 uses
  %i.eu = load double, ptr @T, align 8, !tbaa !9  ; 2 uses
  %i.ev = load double, ptr @T2, align 8, !tbaa !9 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph224.preheader, %bb.e
  %.0146232 = phi double [ 5.000000e-01, %.lr.ph224.preheader ], [ %i.fj, %bb.e ] ; 6 uses
  %.0147231 = phi double [ 5.000000e-01, %.lr.ph224.preheader ], [ %i.fc, %bb.e ] ; 4 uses
  %.5230 = phi i64 [ 1, %.lr.ph224.preheader ], [ %i.fk, %bb.e ] ; 2 uses
  %9 = tail call double @sin(double noundef %.0147231) #12, !tbaa !7
  %10 = fmul double %i.ev, %9
  %11 = tail call double @cos(double noundef %.0147231) #12, !tbaa !7
  %i.ew = fmul double %10, %11
  %i.ex = fadd double %.0147231, %.0146232
  %12 = tail call double @cos(double noundef %i.ex) #12, !tbaa !7
  %i.ey = fsub double %.0147231, %.0146232
  %13 = tail call double @cos(double noundef %i.ey) #12, !tbaa !7
  %i.ez = fadd double %12, %13
  %i.fa = fadd double %i.ez, -1.000000e+00
  %i.fb = fdiv double %i.ew, %i.fa
  %14 = tail call double @atan(double noundef %i.fb) #12, !tbaa !7
  %i.fc = fmul double %i.eu, %14                  ; 5 uses
  %15 = tail call double @sin(double noundef %.0146232) #12, !tbaa !7
  %16 = fmul double %i.ev, %15
  %17 = tail call double @cos(double noundef %.0146232) #12, !tbaa !7
  %i.fd = fmul double %16, %17
  %i.fe = fadd double %.0146232, %i.fc
  %18 = tail call double @cos(double noundef %i.fe) #12, !tbaa !7
  %i.ff = fsub double %i.fc, %.0146232
  %19 = tail call double @cos(double noundef %i.ff) #12, !tbaa !7
  %i.fg = fadd double %18, %19
  %i.fh = fadd double %i.fg, -1.000000e+00
  %i.fi = fdiv double %i.fd, %i.fh
  %20 = tail call double @atan(double noundef %i.fi) #12, !tbaa !7
  %i.fj = fmul double %i.eu, %20                  ; 3 uses
  %i.fk = add nuw nsw i64 %.5230, 1
  %exitcond294.not = icmp eq i64 %.5230, %smax293
  br i1 %exitcond294.not, label %.lr.ph257.preheader, label %bb.e, !llvm.loop !16

.lr.ph257.preheader:                              ; preds = %bb.e
  %i.fl = load i32, ptr @J, align 4, !tbaa !7
  %i.fm = sext i32 %i.fl to i64
  %i.fn = load i32, ptr @K, align 4, !tbaa !7
  %i.fo = sext i32 %i.fn to i64
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.g, i64 noundef %i.fm, i64 noundef %i.fo, double noundef %i.fc, double noundef %i.fc, double noundef %i.fj, double noundef %i.fj) ; 0 uses
  %i.fp = load double, ptr @T, align 8, !tbaa !9  ; 2 uses
  %i.fq = fmul double %i.fp, 2.000000e+00         ; 2 uses
  %i.fr = fadd double %i.fq, 1.000000e+00
  %i.fs = fmul double %i.fp, %i.fr
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = load double, ptr @T2, align 8, !tbaa !9
  %i.fv = fdiv double %i.ft, %i.fu                ; 2 uses
  %i.fw = load i32, ptr @J, align 4, !tbaa !7
  %i.fx = sext i32 %i.fw to i64
  %i.fy = load i32, ptr @K, align 4, !tbaa !7
  %i.fz = sext i32 %i.fy to i64
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.h, i64 noundef %i.fx, i64 noundef %i.fz, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef %i.fv, double noundef %i.fv) ; 0 uses
  store i32 1, ptr @J, align 4, !tbaa !7
  store i32 2, ptr @K, align 4, !tbaa !7
  store i32 3, ptr @L, align 4, !tbaa !7
  br i1 %i.l, label %.lr.ph257.epil.preheader, label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %niter = phi i64 [ %niter.next.7, %.lr.ph257 ], [ 0, %.lr.ph257.preheader ]
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph266.unr-lcssa, label %.lr.ph257, !llvm.loop !17

.lr.ph266.unr-lcssa:                              ; preds = %.lr.ph257
  br i1 %lcmp.mod.not, label %.lr.ph266, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %.lr.ph266.unr-lcssa, %.lr.ph257.preheader
  tail call void @llvm.assume(i1 %lcmp.mod348)
  br label %.lr.ph257.epil

.lr.ph257.epil:                                   ; preds = %.lr.ph257.epil, %.lr.ph257.epil.preheader
  %i.ga = phi double [ %i.gb, %.lr.ph257.epil ], [ 2.000000e+00, %.lr.ph257.epil.preheader ] ; 2 uses
  %i.gb = phi double [ %i.ga, %.lr.ph257.epil ], [ 3.000000e+00, %.lr.ph257.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph257.epil ], [ 0, %.lr.ph257.epil.preheader ] ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.lr.ph266, label %.lr.ph257.epil, !llvm.loop !18

.lr.ph266:                                        ; preds = %.lr.ph257.epil, %.lr.ph266.unr-lcssa
  %.lcssa342 = phi double [ 3.000000e+00, %.lr.ph266.unr-lcssa ], [ %i.ga, %.lr.ph257.epil ] ; 4 uses
  %.lcssa341 = phi double [ 2.000000e+00, %.lr.ph266.unr-lcssa ], [ %i.gb, %.lr.ph257.epil ] ; 2 uses
  store double %.lcssa342, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store double %.lcssa341, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  store double %.lcssa342, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  %i.gc = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.i, i64 noundef 1, i64 noundef 2, double noundef %.lcssa342, double noundef %.lcssa341, double noundef %.lcssa342, double noundef %i.gc) ; 0 uses
  store i32 2, ptr @J, align 4, !tbaa !7
  store i32 3, ptr @K, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef 0, i64 noundef 2, i64 noundef 3, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) ; 0 uses
  %i.gd = load double, ptr @T1, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph266, %bb.f
  %.1148264 = phi double [ 7.500000e-01, %.lr.ph266 ], [ %27, %bb.f ]
  %.9263 = phi i64 [ 1, %.lr.ph266 ], [ %i.gf, %bb.f ] ; 2 uses
  %25 = tail call double @log(double noundef %.1148264) #12, !tbaa !7
  %i.ge = fdiv double %25, %i.gd
  %26 = tail call double @exp(double noundef %i.ge) #12, !tbaa !7
  %27 = tail call double @sqrt(double noundef %26) #12, !tbaa !7 ; 5 uses
  %i.gf = add nuw i64 %.9263, 1
  %exitcond298.not = icmp eq i64 %.9263, %smax297
  br i1 %exitcond298.not, label %._crit_edge267, label %bb.f, !llvm.loop !19

._crit_edge267:                                   ; preds = %bb.f
  %i.gg = load i32, ptr @J, align 4, !tbaa !7
  %i.gh = sext i32 %i.gg to i64
  %i.gi = load i32, ptr @K, align 4, !tbaa !7
  %i.gj = sext i32 %i.gi to i64
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.j, i64 noundef %i.gh, i64 noundef %i.gj, double noundef %27, double noundef %27, double noundef %27, double noundef %27) ; 0 uses
  %29 = tail call i64 @time(ptr noundef null) #12 ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br i1 %.0.lcssa, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge267, %bb.b
  %.0155 = phi i32 [ 1, %bb.b ], [ 0, %._crit_edge267 ]
  ret i32 %.0155
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @POUT(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @PA(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted24 = load double, ptr %i.a, align 8, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted22 = load double, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted20 = load double, ptr %i.c, align 8, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load double, ptr %i.d, align 8, !tbaa !9
  %i.e = load double, ptr @T2, align 8, !tbaa !9  ; 6 uses
  %i.f = load double, ptr @T, align 8, !tbaa !9   ; 18 uses
  %i.g = fadd double %.promoted, %.promoted20
  %i.h = fadd double %i.g, %.promoted22
  %i.i = fsub double %i.h, %.promoted24
  %i.j = fmul double %i.i, %i.f                   ; 4 uses
  %i.k = fadd double %.promoted20, %i.j
  %i.l = fsub double %i.k, %.promoted22
  %i.m = fadd double %.promoted24, %i.l
  %i.n = fmul double %i.f, %i.m                   ; 4 uses
  %i.o = fsub double %i.j, %i.n
  %i.p = fadd double %.promoted22, %i.o
  %i.q = fadd double %.promoted24, %i.p
  %i.r = fmul double %i.f, %i.q                   ; 4 uses
  %i.s = fsub double %i.n, %i.j
  %i.t = fadd double %i.s, %i.r
  %i.u = fadd double %.promoted24, %i.t
  %i.v = fdiv double %i.u, %i.e                   ; 4 uses
  %i.w = fadd double %i.j, %i.n
  %i.x = fadd double %i.w, %i.r
  %i.y = fsub double %i.x, %i.v
  %i.z = fmul double %i.y, %i.f                   ; 4 uses
  %i.aa = fadd double %i.n, %i.z
  %i.ab = fsub double %i.aa, %i.r
  %i.ac = fadd double %i.v, %i.ab
  %i.ad = fmul double %i.f, %i.ac                 ; 4 uses
  %i.ae = fsub double %i.z, %i.ad
  %i.af = fadd double %i.r, %i.ae
  %i.ag = fadd double %i.v, %i.af
  %i.ah = fmul double %i.f, %i.ag                 ; 4 uses
  %i.ai = fsub double %i.ad, %i.z
  %i.aj = fadd double %i.ai, %i.ah
  %i.ak = fadd double %i.v, %i.aj
  %i.al = fdiv double %i.ak, %i.e                 ; 4 uses
  %i.am = fadd double %i.z, %i.ad
  %i.an = fadd double %i.am, %i.ah
  %i.ao = fsub double %i.an, %i.al
  %i.ap = fmul double %i.ao, %i.f                 ; 4 uses
  %i.aq = fadd double %i.ad, %i.ap
  %i.ar = fsub double %i.aq, %i.ah
  %i.as = fadd double %i.al, %i.ar
  %i.at = fmul double %i.f, %i.as                 ; 4 uses
  %i.au = fsub double %i.ap, %i.at
  %i.av = fadd double %i.ah, %i.au
  %i.aw = fadd double %i.al, %i.av
  %i.ax = fmul double %i.f, %i.aw                 ; 4 uses
  %i.ay = fsub double %i.at, %i.ap
  %i.az = fadd double %i.ay, %i.ax
  %i.ba = fadd double %i.al, %i.az
  %i.bb = fdiv double %i.ba, %i.e                 ; 4 uses
  %i.bc = fadd double %i.ap, %i.at
  %i.bd = fadd double %i.bc, %i.ax
  %i.be = fsub double %i.bd, %i.bb
  %i.bf = fmul double %i.be, %i.f                 ; 4 uses
  %i.bg = fadd double %i.at, %i.bf
  %i.bh = fsub double %i.bg, %i.ax
  %i.bi = fadd double %i.bb, %i.bh
  %i.bj = fmul double %i.f, %i.bi                 ; 4 uses
  %i.bk = fsub double %i.bf, %i.bj
  %i.bl = fadd double %i.ax, %i.bk
  %i.bm = fadd double %i.bb, %i.bl
  %i.bn = fmul double %i.f, %i.bm                 ; 4 uses
  %i.bo = fsub double %i.bj, %i.bf
  %i.bp = fadd double %i.bo, %i.bn
  %i.bq = fadd double %i.bb, %i.bp
  %i.br = fdiv double %i.bq, %i.e                 ; 4 uses
  %i.bs = fadd double %i.bf, %i.bj
  %i.bt = fadd double %i.bs, %i.bn
  %i.bu = fsub double %i.bt, %i.br
  %i.bv = fmul double %i.bu, %i.f                 ; 4 uses
  %i.bw = fadd double %i.bj, %i.bv
  %i.bx = fsub double %i.bw, %i.bn
  %i.by = fadd double %i.br, %i.bx
  %i.bz = fmul double %i.f, %i.by                 ; 4 uses
  %i.ca = fsub double %i.bv, %i.bz
  %i.cb = fadd double %i.bn, %i.ca
  %i.cc = fadd double %i.br, %i.cb
  %i.cd = fmul double %i.f, %i.cc                 ; 4 uses
  %i.ce = fsub double %i.bz, %i.bv
  %i.cf = fadd double %i.ce, %i.cd
  %i.cg = fadd double %i.br, %i.cf
  %i.ch = fdiv double %i.cg, %i.e                 ; 4 uses
  %i.ci = fadd double %i.bv, %i.bz
  %i.cj = fadd double %i.ci, %i.cd
  %i.ck = fsub double %i.cj, %i.ch
  %i.cl = fmul double %i.ck, %i.f                 ; 4 uses
  %i.cm = fadd double %i.bz, %i.cl
  %i.cn = fsub double %i.cm, %i.cd
  %i.co = fadd double %i.ch, %i.cn
  %i.cp = fmul double %i.f, %i.co                 ; 3 uses
  %i.cq = fsub double %i.cl, %i.cp
  %i.cr = fadd double %i.cd, %i.cq
  %i.cs = fadd double %i.ch, %i.cr
  %i.ct = fmul double %i.f, %i.cs                 ; 2 uses
  %i.cu = fsub double %i.cp, %i.cl
  %i.cv = fadd double %i.cu, %i.ct
  %i.cw = fadd double %i.ch, %i.cv
  %i.cx = fdiv double %i.cw, %i.e
  store double %i.cl, ptr %i.d, align 8, !tbaa !9
  store double %i.cp, ptr %i.c, align 8, !tbaa !9
  store double %i.ct, ptr %i.b, align 8, !tbaa !9
  store double %i.cx, ptr %i.a, align 8, !tbaa !9
  store i32 6, ptr @J, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @P3(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr @T, align 8, !tbaa !9   ; 2 uses
  %i.b = fadd double %0, %1
  %i.c = fmul double %i.b, %i.a                   ; 2 uses
  %i.d = fadd double %1, %i.c
  %i.e = fmul double %i.a, %i.d
  %i.f = fadd double %i.c, %i.e
  %i.g = load double, ptr @T2, align 8, !tbaa !9
  %i.h = fdiv double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @P0() local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @K, align 4, !tbaa !7
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @E1, i64 %i.b ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !9
  %i.e = load i32, ptr @J, align 4, !tbaa !7
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @E1, i64 %i.f ; 2 uses
  store double %i.d, ptr %i.g, align 8, !tbaa !9
  %i.h = load i32, ptr @L, align 4, !tbaa !7
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr @E1, i64 %i.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !9
  store double %i.k, ptr %i.c, align 8, !tbaa !9
  %i.l = load double, ptr %i.g, align 8, !tbaa !9
  store double %i.l, ptr %i.j, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{null}
!11 = distinct !{!11, !25}
!12 = distinct !{!12, !25}
!13 = distinct !{!13, !25}
!14 = distinct !{!14, !25, !26, !27}
!15 = distinct !{!15, !25, !27, !26}
!16 = distinct !{!16, !25}
!17 = distinct !{!17, !25}
!18 = distinct !{!18, !28}
!19 = distinct !{!19, !25}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
