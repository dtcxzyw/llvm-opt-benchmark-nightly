Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaneg?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dlaneg_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %i.c = alloca double, align 8                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds i8, ptr %2, i64 -8 ; 7 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8 ; 8 uses
  %i.f = load double, ptr %3, align 8, !tbaa !16  ; 2 uses
  %i.g = fneg double %i.f
  store double %i.g, ptr %i.b, align 8, !tbaa !16
  %i.h = load i32, ptr %5, align 4, !tbaa !17     ; 3 uses
  %.not.not143 = icmp sgt i32 %i.h, 1
  br i1 %.not.not143, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a, %.loopexit132
  %indvar = phi i64 [ %indvar.next, %.loopexit132 ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.loopexit132 ], [ 1, %bb.a ] ; 8 uses
  %.0102146 = phi i32 [ %i.ch, %.loopexit132 ], [ 0, %bb.a ]
  %6 = load double, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %7 = load i32, ptr %5, align 4, !tbaa !17       ; 2 uses
  %8 = trunc i64 %indvars.iv.a to i32
  %i.i = add i32 %8, 127                          ; 2 uses
  %9 = sext i32 %7 to i64
  %.not122133.not = icmp slt i64 %indvars.iv.a, %9
  br i1 %.not122133.not, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph148
  %i.j = mul i64 %indvar, -128                    ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = add nsw i32 %7, -1
  %i.m = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.l)
  %i.n = load double, ptr %3, align 8, !tbaa !16
  %i.o = fneg double %i.n                         ; 5 uses
  %i.p = sext i32 %i.m to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.p, i64 %indvars.iv.a) ; 3 uses
  %i.q = add i64 %smax, %i.k
  %xtraiter = and i64 %smax, 3                    ; 4 uses
  %i.r = icmp ult i64 %i.q, 3
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.s = add i64 %smax, %i.j
  %unroll_iter = sub i64 %i.s, %xtraiter
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv180 = phi i64 [ %indvars.iv.a, %.lr.ph.new ], [ %indvars.iv.next181.3, %bb.b ] ; 7 uses
  %.097135 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.b ]
  %i.t = phi double [ %6, %.lr.ph.new ], [ %i.bd, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv180
  %i.v = load double, ptr %i.u, align 8, !tbaa !16
  %i.w = fadd double %i.v, %i.t                   ; 2 uses
  %i.x = fcmp olt double %i.w, 0.000000e+00
  %i.y = zext i1 %i.x to i32
  %spec.select = add nuw nsw i32 %.097135, %i.y
  %i.z = fdiv double %i.t, %i.w
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv180
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !16
  %i.ac = call double @llvm.fmuladd.f64(double %i.z, double %i.ab, double %i.o) ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %1, i64 %indvars.iv180
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !16
  %i.af = fadd double %i.ae, %i.ac                ; 2 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  %i.ah = zext i1 %i.ag to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.ah
  %i.ai = fdiv double %i.ac, %i.af
  %i.aj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv180
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !16
  %i.al = call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.o) ; 2 uses
  %indvars.iv.next181.1 = add nuw nsw i64 %indvars.iv180, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next181.1
  %i.an = load double, ptr %i.am, align 8, !tbaa !16
  %i.ao = fadd double %i.an, %i.al                ; 2 uses
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  %i.aq = zext i1 %i.ap to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.aq
  %i.ar = fdiv double %i.al, %i.ao
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next181.1
  %i.at = load double, ptr %i.as, align 8, !tbaa !16
  %i.au = call double @llvm.fmuladd.f64(double %i.ar, double %i.at, double %i.o) ; 2 uses
  %indvars.iv.next181.2 = add nuw nsw i64 %indvars.iv180, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next181.2
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = fadd double %i.aw, %i.au                ; 2 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  %i.az = zext i1 %i.ay to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.az ; 3 uses
  %i.ba = fdiv double %i.au, %i.ax                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next181.2
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !16
  %i.bd = call double @llvm.fmuladd.f64(double %i.ba, double %i.bc, double %i.o) ; 3 uses
  %indvars.iv.next181.3 = add nuw nsw i64 %indvars.iv180, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv180.epil.init = phi i64 [ %indvars.iv.a, %.lr.ph ], [ %indvars.iv.next181.3, %._crit_edge.unr-lcssa ]
  %.097135.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.unr-lcssa ]
  %.epil.init = phi double [ %6, %.lr.ph ], [ %i.bd, %._crit_edge.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod223)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv180.epil = phi i64 [ %indvars.iv180.epil.init, %.epil.preheader ], [ %indvars.iv.next181.epil, %bb.c ] ; 3 uses
  %.097135.epil = phi i32 [ %.097135.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.c ]
  %i.be = phi double [ %.epil.init, %.epil.preheader ], [ %i.bn, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv180.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bh = fadd double %i.bg, %i.be                ; 2 uses
  %i.bi = fcmp olt double %i.bh, 0.000000e+00
  %i.bj = zext i1 %i.bi to i32
  %spec.select.epil = add nuw nsw i32 %.097135.epil, %i.bj ; 2 uses
  %i.bk = fdiv double %i.be, %i.bh                ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv180.epil
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !16
  %i.bn = call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.o) ; 2 uses
  %indvars.iv.next181.epil = add nuw nsw i64 %indvars.iv180.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %bb.c ]
  %.lcssa218 = phi double [ %i.ba, %._crit_edge.unr-lcssa ], [ %i.bk, %bb.c ]
  %.lcssa217 = phi double [ %i.bd, %._crit_edge.unr-lcssa ], [ %i.bn, %bb.c ]
  store double %.lcssa218, ptr %i.c, align 8, !tbaa !16
  store double %.lcssa217, ptr %i.b, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.lr.ph148
  %.097.lcssa = phi i32 [ %spec.select.lcssa, %._crit_edge ], [ 0, %.lr.ph148 ]
  %i.bo = call i32 @disnan_(ptr noundef nonnull %i.b) #5
  %.not123 = icmp eq i32 %i.bo, 0
  br i1 %.not123, label %.loopexit132, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %6, ptr %i.b, align 8, !tbaa !16
  %i.bp = load i32, ptr %5, align 4, !tbaa !17    ; 2 uses
  %10 = sext i32 %i.bp to i64
  %.not125137.not = icmp slt i64 %indvars.iv.a, %10
  br i1 %.not125137.not, label %.lr.ph141.preheader, label %.loopexit132

.lr.ph141.preheader:                              ; preds = %bb.e
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.bq)
  %i.bs = sext i32 %i.br to i64
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %bb.g
  %i.bt = phi double [ %6, %.lr.ph141.preheader ], [ %i.cg, %bb.g ] ; 2 uses
  %indvars.iv183 = phi i64 [ %indvars.iv.a, %.lr.ph141.preheader ], [ %indvars.iv.next184, %bb.g ] ; 4 uses
  %.299139 = phi i32 [ 0, %.lr.ph141.preheader ], [ %spec.select127, %bb.g ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv183
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !16
  %i.bw = fadd double %i.bv, %i.bt                ; 2 uses
  %i.bx = fcmp olt double %i.bw, 0.000000e+00
  %i.by = zext i1 %i.bx to i32
  %spec.select127 = add nuw nsw i32 %.299139, %i.by ; 2 uses
  %i.bz = fdiv double %i.bt, %i.bw
  store double %i.bz, ptr %i.c, align 8, !tbaa !16
  %i.ca = call i32 @disnan_(ptr noundef nonnull %i.c) #5
  %.not126 = icmp eq i32 %i.ca, 0
  br i1 %.not126, label %.lr.ph141._crit_edge, label %bb.f

.lr.ph141._crit_edge:                             ; preds = %.lr.ph141
  %.pre = load double, ptr %i.c, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph141
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph141._crit_edge, %bb.f
  %i.cb = phi double [ %.pre, %.lr.ph141._crit_edge ], [ 1.000000e+00, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv183
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !16
  %i.ce = load double, ptr %3, align 8, !tbaa !16
  %i.cf = fneg double %i.ce
  %i.cg = call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.cf) ; 2 uses
  store double %i.cg, ptr %i.b, align 8, !tbaa !16
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %.not125.not = icmp slt i64 %indvars.iv183, %i.bs
  br i1 %.not125.not, label %.lr.ph141, label %.loopexit132, !llvm.loop !10

.loopexit132:                                     ; preds = %bb.g, %bb.e, %bb.d
  %.4101 = phi i32 [ %.097.lcssa, %bb.d ], [ 0, %bb.e ], [ %spec.select127, %bb.g ]
  %i.ch = add nsw i32 %.4101, %.0102146           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 128 ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32
  %.not.not = icmp sgt i32 %i.h, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %.lr.ph148, label %._crit_edge149.loopexit, !llvm.loop !11

._crit_edge149.loopexit:                          ; preds = %.loopexit132
  %.pre199.a = load double, ptr %3, align 8, !tbaa !16
  %.pre200.a = load i32, ptr %5, align 4, !tbaa !17
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %bb.a
  %i.ci = phi i32 [ %i.h, %bb.a ], [ %.pre200.a, %._crit_edge149.loopexit ] ; 2 uses
  %i.cj = phi double [ %i.f, %bb.a ], [ %.pre199.a, %._crit_edge149.loopexit ] ; 2 uses
  %.0102.lcssa = phi i32 [ 0, %bb.a ], [ %i.ch, %._crit_edge149.loopexit ] ; 2 uses
  %i.ck = load i32, ptr %0, align 4, !tbaa !17    ; 3 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !16
  %i.co = fsub double %i.cn, %i.cj                ; 2 uses
  store double %i.co, ptr %i.a, align 8, !tbaa !16
  %.not167.not = icmp sgt i32 %i.ck, %i.ci
  br i1 %.not167.not, label %.lr.ph172.preheader, label %._crit_edge173

.lr.ph172.preheader:                              ; preds = %._crit_edge149
  %i.cp = add nsw i32 %i.ck, -1
  %11 = sext i32 %i.cp to i64
  %i.cq = sext i32 %i.ci to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %.loopexit
  %indvars.iv187.a = phi i64 [ %11, %.lr.ph172.preheader ], [ %indvars.iv.next188, %.loopexit ] ; 6 uses
  %.1103170 = phi i32 [ %.0102.lcssa, %.lr.ph172.preheader ], [ %i.dw, %.loopexit ]
  %12 = load double, ptr %i.a, align 8, !tbaa !16 ; 3 uses
  %13 = load i32, ptr %5, align 4, !tbaa !17      ; 2 uses
  %14 = trunc i64 %indvars.iv187.a to i32
  %i.cr = add i32 %14, -127                       ; 2 uses
  %15 = sext i32 %13 to i64
  %.not116152 = icmp slt i64 %indvars.iv187.a, %15
  br i1 %.not116152, label %bb.i, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph172
  %. = call i32 @llvm.smax.i32(i32 %i.cr, i32 %13)
  %i.cs = load double, ptr %3, align 8, !tbaa !16
  %i.ct = fneg double %i.cs
  %i.cu = sext i32 %. to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph156, %bb.h
  %indvars.iv189 = phi i64 [ %indvars.iv187.a, %.lr.ph156 ], [ %indvars.iv.next190, %bb.h ] ; 4 uses
  %.0154 = phi i32 [ 0, %.lr.ph156 ], [ %spec.select128, %bb.h ]
  %i.cv = phi double [ %12, %.lr.ph156 ], [ %i.de, %bb.h ] ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv189
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !16
  %i.cy = fadd double %i.cx, %i.cv                ; 2 uses
  %i.cz = fcmp olt double %i.cy, 0.000000e+00
  %i.da = zext i1 %i.cz to i32
  %spec.select128 = add nuw nsw i32 %.0154, %i.da ; 2 uses
  %i.db = fdiv double %i.cv, %i.cy                ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv189
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !16
  %i.de = call double @llvm.fmuladd.f64(double %i.db, double %i.dd, double %i.ct) ; 2 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, -1
  %.not116.not = icmp sgt i64 %indvars.iv189, %i.cu
  br i1 %.not116.not, label %bb.h, label %._crit_edge157, !llvm.loop !12

._crit_edge157:                                   ; preds = %bb.h
  store double %i.db, ptr %i.c, align 8, !tbaa !16
  store double %i.de, ptr %i.a, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge157, %.lr.ph172
  %.0.lcssa = phi i32 [ %spec.select128, %._crit_edge157 ], [ 0, %.lr.ph172 ]
  %i.df = call i32 @disnan_(ptr noundef nonnull %i.a) #5
  %.not117 = icmp eq i32 %i.df, 0
  br i1 %.not117, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store double %12, ptr %i.a, align 8, !tbaa !16
  %i.dg = load i32, ptr %5, align 4, !tbaa !17    ; 2 uses
  %16 = sext i32 %i.dg to i64
  %.not119161 = icmp slt i64 %indvars.iv187.a, %16
  br i1 %.not119161, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %bb.j
  %.129 = call i32 @llvm.smax.i32(i32 %i.cr, i32 %i.dg)
  %i.dh = sext i32 %.129 to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.l
  %i.di = phi double [ %12, %.lr.ph165.preheader ], [ %i.dv, %bb.l ] ; 2 uses
  %indvars.iv193 = phi i64 [ %indvars.iv187.a, %.lr.ph165.preheader ], [ %indvars.iv.next194.a, %bb.l ] ; 4 uses
  %.2163 = phi i32 [ 0, %.lr.ph165.preheader ], [ %spec.select130, %bb.l ]
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv193
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  %i.dl = fadd double %i.dk, %i.di                ; 2 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00
  %i.dn = zext i1 %i.dm to i32
  %spec.select130 = add nuw nsw i32 %.2163, %i.dn ; 2 uses
  %i.do = fdiv double %i.di, %i.dl
  store double %i.do, ptr %i.c, align 8, !tbaa !16
  %i.dp = call i32 @disnan_(ptr noundef nonnull %i.c) #5
  %.not120 = icmp eq i32 %i.dp, 0
  br i1 %.not120, label %.lr.ph165._crit_edge, label %bb.k

.lr.ph165._crit_edge:                             ; preds = %.lr.ph165
  %.pre201 = load double, ptr %i.c, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph165
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph165._crit_edge, %bb.k
  %i.dq = phi double [ %.pre201, %.lr.ph165._crit_edge ], [ 1.000000e+00, %bb.k ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv193
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !16
  %i.dt = load double, ptr %3, align 8, !tbaa !16
  %i.du = fneg double %i.dt
  %i.dv = call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.du) ; 2 uses
  store double %i.dv, ptr %i.a, align 8, !tbaa !16
  %indvars.iv.next194.a = add nsw i64 %indvars.iv193, -1
  %.not119.not = icmp sgt i64 %indvars.iv193, %i.dh
  br i1 %.not119.not, label %.lr.ph165, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.l, %bb.j, %bb.i
  %.4 = phi i32 [ %.0.lcssa, %bb.i ], [ 0, %bb.j ], [ %spec.select130, %bb.l ]
  %i.dw = add nsw i32 %.4, %.1103170              ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187.a, -128 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next188, %i.cq
  br i1 %.not, label %._crit_edge173.loopexit, label %.lr.ph172, !llvm.loop !14

._crit_edge173.loopexit:                          ; preds = %.loopexit
  %.pre202 = load double, ptr %3, align 8, !tbaa !16
  %.pre203 = load double, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %._crit_edge149
  %i.dx = phi double [ %i.co, %._crit_edge149 ], [ %.pre203, %._crit_edge173.loopexit ]
  %i.dy = phi double [ %i.cj, %._crit_edge149 ], [ %.pre202, %._crit_edge173.loopexit ]
  %.1103.lcssa = phi i32 [ %.0102.lcssa, %._crit_edge149 ], [ %i.dw, %._crit_edge173.loopexit ]
  %i.dz = load double, ptr %i.b, align 8, !tbaa !16
  %i.ea = fadd double %i.dz, %i.dy
  %i.eb = fadd double %i.ea, %i.dx
  %i.ec = fcmp olt double %i.eb, 0.000000e+00
  %i.ed = zext i1 %i.ec to i32
  %spec.select131 = add nsw i32 %.1103.lcssa, %i.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %spec.select131
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = !{!"double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
