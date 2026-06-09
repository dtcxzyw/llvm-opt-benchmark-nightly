begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Crystal_div(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x double], align 16           ; 6 uses
  %i.b = alloca [12 x double], align 16           ; 5 uses
  %i.c = alloca [12 x double], align 16           ; 3 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge100

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp eq i32 %0, 1
  br i1 %min.iters.check, label %.lr.ph.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !8
  %i.f = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.g = fmul nnan <2 x double> %i.f, splat (double 2.000000e-01)
  %i.h = fdiv <2 x double> %i.g, splat (double 1.200000e+01)
  %i.i = fadd <2 x double> %i.h, splat (double 9.000000e-01)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.i, ptr %i.j, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph89.preheader, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph89.preheader:                               ; preds = %.lr.ph, %middle.block
  %wide.trip.count106 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check134 = icmp eq i32 %0, 1
  br i1 %min.iters.check134, label %.lr.ph89.preheader168, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph89.preheader
  %n.vec137 = and i64 %wide.trip.count106, 2147483646 ; 3 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next141, %vector.body138 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index139
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index139
  %wide.load140 = load <2 x double>, ptr %i.m, align 16, !tbaa !8
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %wide.load140, <2 x double> splat (double f0x3EB0C6F7A0B5ED8D))
  %i.o = fdiv <2 x double> splat (double 1.000000e+00), %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index139
  store <2 x double> %i.o, ptr %i.p, align 16, !tbaa !8
  %index.next141 = add nuw i64 %index139, 2       ; 2 uses
  %i.q = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.q, label %middle.block142, label %vector.body138, !llvm.loop !14

middle.block142:                                  ; preds = %vector.body138
  %cmp.n143 = icmp eq i64 %n.vec137, %wide.trip.count106
  br i1 %cmp.n143, label %.lr.ph93, label %.lr.ph89.preheader168

.lr.ph89.preheader168:                            ; preds = %.lr.ph89.preheader, %middle.block142
  %indvars.iv103.ph = phi i64 [ 0, %.lr.ph89.preheader ], [ %n.vec137, %middle.block142 ]
  br label %.lr.ph89

.lr.ph:                                           ; preds = %.lr.ph.preheader169, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader169 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !8
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = fmul nnan double %i.t, 2.000000e-01
  %i.v = fdiv double %i.u, 1.200000e+01
  %i.w = fadd double %i.v, 9.000000e-01
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.w, ptr %i.x, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph89.preheader, label %.lr.ph, !llvm.loop !15

.lr.ph93:                                         ; preds = %.lr.ph89, %middle.block142
  %i.y = fmul double %1, 1.200000e+00
  %wide.trip.count116 = zext nneg i32 %0 to i64   ; 2 uses
  %min.iters.check146 = icmp ult i32 %0, 4
  %n.vec149 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec149, %wide.trip.count
  br label %.lr.ph91.us

.lr.ph91.us:                                      ; preds = %._crit_edge.us, %.lr.ph93
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge.us ], [ 0, %.lr.ph93 ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv113
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8 ; 2 uses
  %i.ab = fmul double %i.aa, 3.000000e+01
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv113
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8 ; 2 uses
  %i.ae = fmul double %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv113 ; 2 uses
  store double %i.ae, ptr %i.af, align 8, !tbaa !8
  %i.ag = fmul double %i.y, %i.aa                 ; 2 uses
  %.idx83.us = mul nuw nsw i64 %indvars.iv113, 96
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 %.idx83.us ; 3 uses
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph91.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index151 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ai, align 8, !tbaa !8
  store <2 x double> %broadcast.splat, ptr %i.aj, align 8, !tbaa !8
  %index.next152 = add nuw i64 %index151, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next152, %n.vec149
  br i1 %i.ak, label %middle.block153, label %vector.body150, !llvm.loop !16

middle.block153:                                  ; preds = %vector.body150
  br i1 %cmp.n154, label %._crit_edge.us, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.lr.ph91.us, %middle.block153
  %indvars.iv108.ph = phi i64 [ 0, %.lr.ph91.us ], [ %n.vec149, %middle.block153 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph145 ], [ %indvars.iv108.ph, %scalar.ph145.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv108
  store double %i.ag, ptr %i.al, align 8, !tbaa !8
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count116
  br i1 %exitcond112.not, label %._crit_edge.us, label %scalar.ph145, !llvm.loop !17

._crit_edge.us:                                   ; preds = %scalar.ph145, %middle.block153
  %i.am = load double, ptr %i.af, align 8, !tbaa !8
  %i.an = fmul double %i.am, 1.000000e-02
  %i.ao = fmul double %i.ad, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv113
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv113 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %i.as)
  store double %i.at, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.lr.ph95.preheader, label %.lr.ph91.us, !llvm.loop !18

.lr.ph89:                                         ; preds = %.lr.ph89.preheader168, %.lr.ph89
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.lr.ph89 ], [ %indvars.iv103.ph, %.lr.ph89.preheader168 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.av = load double, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv103
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ax, double f0x3EB0C6F7A0B5ED8D)
  %i.az = fdiv double 1.000000e+00, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv103
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.lr.ph93, label %.lr.ph89, !llvm.loop !19

.lr.ph95.preheader:                               ; preds = %._crit_edge.us
  %wide.trip.count121 = zext nneg i32 %0 to i64   ; 5 uses
  %min.iters.check157 = icmp eq i32 %0, 1
  br i1 %min.iters.check157, label %.lr.ph95.preheader167, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph95.preheader
  %n.vec160 = and i64 %wide.trip.count121, 2147483646 ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph158
  %index162 = phi i64 [ 0, %vector.ph158 ], [ %index.next163, %vector.body161 ] ; 5 uses
  %i.bb = or disjoint i64 %index162, 1            ; 2 uses
  %i.bc = mul nuw nsw i64 %index162, 96
  %i.bd = mul nuw nsw i64 %i.bb, 96
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 %i.bd
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index162
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bb
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !8
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !8
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1
  %i.bm = fdiv <2 x double> splat (double 1.000000e+00), %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index162
  store <2 x double> %i.bm, ptr %i.bn, align 16, !tbaa !8
  %index.next163 = add nuw i64 %index162, 2       ; 2 uses
  %i.bo = icmp eq i64 %index.next163, %n.vec160
  br i1 %i.bo, label %middle.block164, label %vector.body161, !llvm.loop !20

middle.block164:                                  ; preds = %vector.body161
  %cmp.n165 = icmp eq i64 %n.vec160, %wide.trip.count121
  br i1 %cmp.n165, label %.lr.ph97.us.preheader, label %.lr.ph95.preheader167

.lr.ph95.preheader167:                            ; preds = %.lr.ph95.preheader, %middle.block164
  %indvars.iv118.ph = phi i64 [ 0, %.lr.ph95.preheader ], [ %n.vec160, %middle.block164 ]
  br label %.lr.ph95

.lr.ph97.us.preheader:                            ; preds = %.lr.ph95, %middle.block164
  %wide.trip.count131 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count121, 1
  %i.bp = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count121, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod171 = trunc i32 %0 to i1
  br label %.lr.ph97.us

.lr.ph97.us:                                      ; preds = %.lr.ph97.us.preheader, %._crit_edge.us101
  %indvars.iv128 = phi i64 [ 0, %.lr.ph97.us.preheader ], [ %indvars.iv.next129, %._crit_edge.us101 ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv128
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8 ; 2 uses
  %i.bs = mul nuw nsw i64 %indvars.iv128, 12      ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bs ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv128
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8 ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bs ; 3 uses
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph97.us.new

.lr.ph97.us.new:                                  ; preds = %.lr.ph97.us, %.lr.ph97.us.new
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.lr.ph97.us.new ], [ 0, %.lr.ph97.us ] ; 6 uses
  %i.by = phi double [ %i.cp, %.lr.ph97.us.new ], [ %i.br, %.lr.ph97.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph97.us.new ], [ 0, %.lr.ph97.us ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv123
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !8
  %i.cb = fmul double %1, %i.ca                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv123
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !8
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.by)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv123
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !8
  %i.ch = fsub double %i.cg, %i.cb
  %i.ci = fmul double %i.ch, %i.bw
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv123
  store double %i.ci, ptr %i.cj, align 8, !tbaa !8
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next124
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !8
  %i.cm = fmul double %1, %i.cl                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next124
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.co, double %i.ce) ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next124
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !8
  %i.cs = fsub double %i.cr, %i.cm
  %i.ct = fmul double %i.cs, %i.bw
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.next124
  store double %i.ct, ptr %i.cu, align 8, !tbaa !8
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us101.unr-lcssa, label %.lr.ph97.us.new, !llvm.loop !21

._crit_edge.us101.unr-lcssa:                      ; preds = %.lr.ph97.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us101, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us101.unr-lcssa, %.lr.ph97.us
  %indvars.iv123.epil.init = phi i64 [ 0, %.lr.ph97.us ], [ %indvars.iv.next124.1, %._crit_edge.us101.unr-lcssa ] ; 4 uses
  %.epil.init = phi double [ %i.br, %.lr.ph97.us ], [ %i.cp, %._crit_edge.us101.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv123.epil.init
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  %i.cx = fmul double %1, %i.cw                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv123.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cz, double %.epil.init)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv123.epil.init
  %i.dc = load double, ptr %i.db, align 8, !tbaa !8
  %i.dd = fsub double %i.dc, %i.cx
  %i.de = fmul double %i.dd, %i.bw
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv123.epil.init
  store double %i.de, ptr %i.df, align 8, !tbaa !8
  br label %._crit_edge.us101

._crit_edge.us101:                                ; preds = %._crit_edge.us101.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.cp, %._crit_edge.us101.unr-lcssa ], [ %i.da, %.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv128
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !8
  %i.di = fsub double %.lcssa, %i.dh
  %i.dj = fmul double %i.di, %i.bw
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv128
  store double %i.dj, ptr %i.dk, align 8, !tbaa !8
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge100, label %.lr.ph97.us, !llvm.loop !22

.lr.ph95:                                         ; preds = %.lr.ph95.preheader167, %.lr.ph95
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph95 ], [ %indvars.iv118.ph, %.lr.ph95.preheader167 ] ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv118, 96
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv118
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !8
  %i.do = fdiv double 1.000000e+00, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv118
  store double %i.do, ptr %i.dp, align 8, !tbaa !8
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.lr.ph97.us.preheader, label %.lr.ph95, !llvm.loop !23

._crit_edge100:                                   ; preds = %._crit_edge.us101, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !13, !12}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11, !13, !12}
!20 = distinct !{!20, !11, !12, !13}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !13, !12}
end_hunk_0
