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
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  switch i8 %i.o, label %.thread [
    i8 45, label %.tail
    i8 99, label %bb.c
  ]

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %2 = icmp eq i8 %i.q, 99
  %i.r = icmp eq i8 %i.o, 99
  %or.cond = or i1 %2, %i.r
  br i1 %or.cond, label %bb.c, label %.thread

.thread:                                          ; preds = %.tail, %sub_0
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
  %i.v = tail call i64 @time(ptr noundef null) #12 ; 0 uses
  store double 4.999750e-01, ptr @T, align 8, !tbaa !9
  store double 5.002500e-01, ptr @T1, align 8, !tbaa !9
  store double 2.000000e+00, ptr @T2, align 8, !tbaa !9
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef 0, i64 noundef 0, i64 noundef 0, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) ; 0 uses
  %i.x = load double, ptr @T, align 8, !tbaa !9   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.1154191 = phi i64 [ 1, %.lr.ph ], [ %i.as, %bb.d ] ; 2 uses
  %i.y = phi double [ 1.000000e+00, %.lr.ph ], [ %i.af, %bb.d ]
  %i.z = phi double [ -1.000000e+00, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %i.aa = phi double [ -1.000000e+00, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  %i.ab = phi double [ -1.000000e+00, %.lr.ph ], [ %i.ar, %bb.d ] ; 4 uses
  %i.ac = fadd double %i.y, %i.z
  %i.ad = fadd double %i.ac, %i.aa
  %i.ae = fsub double %i.ad, %i.ab
  %i.af = fmul double %i.ae, %i.x                 ; 6 uses
  %i.ag = fadd double %i.z, %i.af
  %i.ah = fsub double %i.ag, %i.aa
  %i.ai = fadd double %i.ab, %i.ah
  %i.aj = fmul double %i.x, %i.ai                 ; 5 uses
  %i.ak = fsub double %i.af, %i.aj
  %i.al = fadd double %i.aa, %i.ak
  %i.am = fadd double %i.ab, %i.al
  %i.an = fmul double %i.x, %i.am                 ; 4 uses
  %i.ao = fsub double %i.aj, %i.af
  %i.ap = fadd double %i.ao, %i.an
  %i.aq = fadd double %i.ab, %i.ap
  %i.ar = fmul double %i.x, %i.aq                 ; 3 uses
  %i.as = add nuw nsw i64 %.1154191, 1
  %exitcond286.not = icmp eq i64 %.1154191, %smax
  br i1 %exitcond286.not, label %.lr.ph211, label %bb.d, !llvm.loop !12

.lr.ph211:                                        ; preds = %bb.d
  store double %i.af, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store double %i.aj, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  store double %i.an, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  store double %i.ar, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.c, double noundef %i.af, double noundef %i.aj, double noundef %i.an, double noundef %i.ar) ; 0 uses
  %.promoted202 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16
  %.promoted200 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8
  %.promoted198 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16
  %.promoted196 = load double, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8
  %i.au = load double, ptr @T, align 8, !tbaa !9  ; 18 uses
  %i.av = load double, ptr @T2, align 8, !tbaa !9 ; 6 uses
  store i32 6, ptr @J, align 4, !tbaa !7
  br label %PA.exit

PA.exit:                                          ; preds = %.lr.ph211, %PA.exit
  %.2209 = phi i64 [ 1, %.lr.ph211 ], [ %i.eo, %PA.exit ] ; 2 uses
  %.lcssa180197208 = phi double [ %.promoted196, %.lr.ph211 ], [ %i.eb, %PA.exit ]
  %.lcssa179199207 = phi double [ %.promoted198, %.lr.ph211 ], [ %i.ef, %PA.exit ] ; 2 uses
  %.lcssa178201206 = phi double [ %.promoted200, %.lr.ph211 ], [ %i.ej, %PA.exit ] ; 3 uses
  %.lcssa203205 = phi double [ %.promoted202, %.lr.ph211 ], [ %i.en, %PA.exit ] ; 4 uses
  %i.aw = fadd double %.lcssa179199207, %.lcssa180197208
  %i.ax = fadd double %.lcssa178201206, %i.aw
  %i.ay = fsub double %i.ax, %.lcssa203205
  %i.az = fmul double %i.au, %i.ay                ; 4 uses
  %i.ba = fadd double %.lcssa179199207, %i.az
  %i.bb = fsub double %i.ba, %.lcssa178201206
  %i.bc = fadd double %.lcssa203205, %i.bb
  %i.bd = fmul double %i.au, %i.bc                ; 4 uses
  %i.be = fsub double %i.az, %i.bd
  %i.bf = fadd double %.lcssa178201206, %i.be
  %i.bg = fadd double %.lcssa203205, %i.bf
  %i.bh = fmul double %i.au, %i.bg                ; 4 uses
  %i.bi = fsub double %i.bd, %i.az
  %i.bj = fadd double %i.bi, %i.bh
  %i.bk = fadd double %.lcssa203205, %i.bj
  %i.bl = fdiv double %i.bk, %i.av                ; 4 uses
  %i.bm = fadd double %i.bd, %i.az
  %i.bn = fadd double %i.bh, %i.bm
  %i.bo = fsub double %i.bn, %i.bl
  %i.bp = fmul double %i.au, %i.bo                ; 4 uses
  %i.bq = fadd double %i.bd, %i.bp
  %i.br = fsub double %i.bq, %i.bh
  %i.bs = fadd double %i.bl, %i.br
  %i.bt = fmul double %i.au, %i.bs                ; 4 uses
  %i.bu = fsub double %i.bp, %i.bt
  %i.bv = fadd double %i.bh, %i.bu
  %i.bw = fadd double %i.bl, %i.bv
  %i.bx = fmul double %i.au, %i.bw                ; 4 uses
  %i.by = fsub double %i.bt, %i.bp
  %i.bz = fadd double %i.by, %i.bx
  %i.ca = fadd double %i.bl, %i.bz
  %i.cb = fdiv double %i.ca, %i.av                ; 4 uses
  %i.cc = fadd double %i.bt, %i.bp
  %i.cd = fadd double %i.bx, %i.cc
  %i.ce = fsub double %i.cd, %i.cb
  %i.cf = fmul double %i.au, %i.ce                ; 4 uses
  %i.cg = fadd double %i.bt, %i.cf
  %i.ch = fsub double %i.cg, %i.bx
  %i.ci = fadd double %i.cb, %i.ch
  %i.cj = fmul double %i.au, %i.ci                ; 4 uses
  %i.ck = fsub double %i.cf, %i.cj
  %i.cl = fadd double %i.bx, %i.ck
  %i.cm = fadd double %i.cb, %i.cl
  %i.cn = fmul double %i.au, %i.cm                ; 4 uses
  %i.co = fsub double %i.cj, %i.cf
  %i.cp = fadd double %i.co, %i.cn
  %i.cq = fadd double %i.cb, %i.cp
  %i.cr = fdiv double %i.cq, %i.av                ; 4 uses
  %i.cs = fadd double %i.cj, %i.cf
  %i.ct = fadd double %i.cn, %i.cs
  %i.cu = fsub double %i.ct, %i.cr
  %i.cv = fmul double %i.au, %i.cu                ; 4 uses
  %i.cw = fadd double %i.cj, %i.cv
  %i.cx = fsub double %i.cw, %i.cn
  %i.cy = fadd double %i.cr, %i.cx
  %i.cz = fmul double %i.au, %i.cy                ; 4 uses
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fadd double %i.cn, %i.da
  %i.dc = fadd double %i.cr, %i.db
  %i.dd = fmul double %i.au, %i.dc                ; 4 uses
  %i.de = fsub double %i.cz, %i.cv
  %i.df = fadd double %i.de, %i.dd
  %i.dg = fadd double %i.cr, %i.df
  %i.dh = fdiv double %i.dg, %i.av                ; 4 uses
  %i.di = fadd double %i.cz, %i.cv
  %i.dj = fadd double %i.dd, %i.di
  %i.dk = fsub double %i.dj, %i.dh
  %i.dl = fmul double %i.au, %i.dk                ; 4 uses
  %i.dm = fadd double %i.cz, %i.dl
  %i.dn = fsub double %i.dm, %i.dd
  %i.do = fadd double %i.dh, %i.dn
  %i.dp = fmul double %i.au, %i.do                ; 4 uses
  %i.dq = fsub double %i.dl, %i.dp
  %i.dr = fadd double %i.dd, %i.dq
  %i.ds = fadd double %i.dh, %i.dr
  %i.dt = fmul double %i.au, %i.ds                ; 4 uses
  %i.du = fsub double %i.dp, %i.dl
  %i.dv = fadd double %i.du, %i.dt
  %i.dw = fadd double %i.dh, %i.dv
  %i.dx = fdiv double %i.dw, %i.av                ; 4 uses
  %i.dy = fadd double %i.dp, %i.dl
  %i.dz = fadd double %i.dt, %i.dy
  %i.ea = fsub double %i.dz, %i.dx
  %i.eb = fmul double %i.au, %i.ea                ; 6 uses
  %i.ec = fadd double %i.dp, %i.eb
  %i.ed = fsub double %i.ec, %i.dt
  %i.ee = fadd double %i.dx, %i.ed
  %i.ef = fmul double %i.au, %i.ee                ; 5 uses
  %i.eg = fsub double %i.eb, %i.ef
  %i.eh = fadd double %i.dt, %i.eg
  %i.ei = fadd double %i.dx, %i.eh
  %i.ej = fmul double %i.au, %i.ei                ; 4 uses
  %i.ek = fsub double %i.ef, %i.eb
  %i.el = fadd double %i.ek, %i.ej
  %i.em = fadd double %i.dx, %i.el
  %i.en = fdiv double %i.em, %i.av                ; 3 uses
  %i.eo = add nuw nsw i64 %.2209, 1
  %exitcond288.not = icmp eq i64 %.2209, %smax287
  br i1 %exitcond288.not, label %.lr.ph218.preheader, label %PA.exit, !llvm.loop !13

.lr.ph218.preheader:                              ; preds = %PA.exit
  store double %i.eb, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 8), align 8, !tbaa !9
  store double %i.ef, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 16), align 16, !tbaa !9
  store double %i.ej, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 24), align 8, !tbaa !9
  store double %i.en, ptr getelementptr inbounds nuw (i8, ptr @E1, i64 32), align 16, !tbaa !9
  %i.ep = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.d, i64 noundef %i.c, i64 noundef %i.c, double noundef %i.eb, double noundef %i.ef, double noundef %i.ej, double noundef %i.en) ; 0 uses
  br i1 %min.iters.check, label %.lr.ph218.preheader330, label %vector.body

vector.body:                                      ; preds = %.lr.ph218.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph218.preheader ]
  %vec.phi = phi <4 x i32> [ %i.eq, %vector.body ], [ <i32 1, i32 0, i32 0, i32 0>, %.lr.ph218.preheader ] ; 2 uses
  %vec.phi329 = phi <4 x i32> [ %i.er, %vector.body ], [ zeroinitializer, %.lr.ph218.preheader ] ; 2 uses
  %i.eq = xor <4 x i32> %vec.phi, splat (i32 1)
  %i.er = xor <4 x i32> %vec.phi329, splat (i32 1)
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %vec.phi329, %vec.phi
  %i.et = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.lr.ph224.preheader, label %.lr.ph218.preheader330

.lr.ph218.preheader330:                           ; preds = %.lr.ph218.preheader, %middle.block
  %.3216.ph = phi i64 [ 1, %.lr.ph218.preheader ], [ %i.k, %middle.block ]
  %storemerge176213215.ph = phi i32 [ 1, %.lr.ph218.preheader ], [ %i.et, %middle.block ]
  br label %.lr.ph218

end_hunk_0
