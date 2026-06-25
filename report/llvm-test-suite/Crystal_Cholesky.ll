begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Crystal_Cholesky(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge172.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %0, 6
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader249, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x double>, ptr %i.e, align 8, !tbaa !8
  %wide.load234 = load <2 x double>, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x double> %wide.load, ptr %i.g, align 8, !tbaa !8
  store <2 x double> %wide.load234, ptr %i.h, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader146, label %.lr.ph.preheader249

.lr.ph.preheader249:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader249, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader249 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader249 ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.k, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !14

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader249
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader249 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.m = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %.preheader146, label %.lr.ph

.preheader146:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %._crit_edge172.critedge, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader146
  %i.o = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %wide.trip.count179 = zext nneg i32 %0 to i64
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check236 = icmp ult i32 %0, 3
  br i1 %min.iters.check236, label %scalar.ph235.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph149
  %n.vec239 = and i64 %i.p, -2                    ; 2 uses
  %i.q = or i64 %i.p, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph237
  %index241 = phi i64 [ 0, %vector.ph237 ], [ %index.next242, %vector.body240 ] ; 3 uses
  %i.r = mul nuw i64 %index241, 96
  %i.s = mul i64 %index241, 96
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 192      ; 2 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !8
  %i.y = load double, ptr %i.w, align 8, !tbaa !8
  %i.z = insertelement <2 x double> poison, double %i.x, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.y, i64 1
  %i.ab = fdiv <2 x double> %i.aa, %broadcast.splat ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  store double %i.ac, ptr %i.u, align 8, !tbaa !8
  %4 = extractelement <2 x double> %i.ab, i64 1
  store double %4, ptr %i.w, align 8, !tbaa !8
  %index.next242 = add nuw i64 %index241, 2       ; 2 uses
  %i.ad = icmp eq i64 %index.next242, %n.vec239
  br i1 %i.ad, label %middle.block243, label %vector.body240, !llvm.loop !16

middle.block243:                                  ; preds = %vector.body240
  %cmp.n244 = icmp eq i64 %i.p, %n.vec239
  br i1 %cmp.n244, label %.preheader144.preheader, label %scalar.ph235.preheader

scalar.ph235.preheader:                           ; preds = %.lr.ph149, %middle.block243
  %indvars.iv176.ph = phi i64 [ 1, %.lr.ph149 ], [ %i.q, %middle.block243 ]
  br label %scalar.ph235

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.af, ptr %i.ag, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ai, ptr %i.aj, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.al, ptr %i.am, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.ao, ptr %i.ap, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader146, label %.lr.ph, !llvm.loop !17

.preheader144.preheader:                          ; preds = %scalar.ph235, %middle.block243
  %i.aq = zext nneg i32 %0 to i64
  %wide.trip.count206 = zext nneg i32 %0 to i64   ; 2 uses
  br label %.preheader144

scalar.ph235:                                     ; preds = %scalar.ph235.preheader, %scalar.ph235
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph235 ], [ %indvars.iv176.ph, %scalar.ph235.preheader ] ; 2 uses
  %.idx140 = mul nuw nsw i64 %indvars.iv176, 96
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.idx140 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = fdiv double %i.as, %i.o
  store double %i.at, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.preheader144.preheader, label %scalar.ph235, !llvm.loop !18

.loopexit:                                        ; preds = %.epilog-lcssa269, %.epilog-lcssa
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond207.not, label %.preheader141.preheader, label %.preheader144, !llvm.loop !19

.preheader144:                                    ; preds = %.preheader144.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader144.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv203 = phi i64 [ 1, %.preheader144.preheader ], [ %indvars.iv.next204, %.loopexit ] ; 10 uses
  %indvars.iv196 = phi i64 [ 2, %.preheader144.preheader ], [ %indvars.iv.next197, %.loopexit ] ; 2 uses
  %.idx138 = mul nuw nsw i64 %indvars.iv203, 96
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.idx138 ; 12 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv203 ; 11 uses
  %xtraiter250 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.av = icmp ult i64 %indvar, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader144.new

.preheader144.new:                                ; preds = %.preheader144
  %unroll_iter = and i64 %indvars.iv203, 9223372036854775804
  br label %bb.b

.preheader141.preheader:                          ; preds = %.loopexit
  %wide.trip.count216 = zext nneg i32 %0 to i64
  br label %.preheader141

bb.b:                                             ; preds = %bb.b, %.preheader144.new
  %indvars.iv181 = phi i64 [ 0, %.preheader144.new ], [ %indvars.iv.next182.3, %bb.b ] ; 6 uses
  %.0151 = phi double [ 0.000000e+00, %.preheader144.new ], [ %i.bl, %bb.b ]
  %niter = phi i64 [ 0, %.preheader144.new ], [ %niter.next.3, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv181
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8
  %.idx139 = mul nuw nsw i64 %indvars.iv181, 96
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139
  %i.ay = load double, ptr %gep, align 8, !tbaa !8
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ay, double %.0151)
  %indvars.iv.next182 = or disjoint i64 %indvars.iv181, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next182
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8
  %.idx139.1 = mul nuw nsw i64 %indvars.iv.next182, 96
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.1
  %i.bc = load double, ptr %gep.1, align 8, !tbaa !8
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.az)
  %indvars.iv.next182.1 = or disjoint i64 %indvars.iv181, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next182.1
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8
  %.idx139.2 = mul nuw nsw i64 %indvars.iv.next182.1, 96
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.2
  %i.bg = load double, ptr %gep.2, align 8, !tbaa !8
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double %i.bd)
  %indvars.iv.next182.2 = or disjoint i64 %indvars.iv181, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next182.2
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8
  %.idx139.3 = mul nuw nsw i64 %indvars.iv.next182.2, 96
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.3
  %i.bk = load double, ptr %gep.3, align 8, !tbaa !8
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bk, double %i.bh) ; 3 uses
  %indvars.iv.next182.3 = add nuw nsw i64 %indvars.iv181, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !20

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader144
  %indvars.iv181.epil.init = phi i64 [ 0, %.preheader144 ], [ %indvars.iv.next182.3, %.unr-lcssa ]
  %.0151.epil.init = phi double [ 0.000000e+00, %.preheader144 ], [ %i.bl, %.unr-lcssa ]
  %lcmp.mod253 = icmp ne i64 %xtraiter250, 0
  tail call void @llvm.assume(i1 %lcmp.mod253)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv181.epil = phi i64 [ %indvars.iv181.epil.init, %.epil.preheader ], [ %indvars.iv.next182.epil, %bb.c ] ; 3 uses
  %.0151.epil = phi double [ %.0151.epil.init, %.epil.preheader ], [ %i.bp, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv181.epil
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !8
  %.idx139.epil = mul nuw nsw i64 %indvars.iv181.epil, 96
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.epil
  %i.bo = load double, ptr %gep.epil, align 8, !tbaa !8
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bo, double %.0151.epil) ; 2 uses
  %indvars.iv.next182.epil = add nuw nsw i64 %indvars.iv181.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter250
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !21

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa246 = phi double [ %i.bl, %.unr-lcssa ], [ %i.bp, %bb.c ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv203 ; 3 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bs = fsub double %i.br, %.lcssa246
  store double %i.bs, ptr %i.bq, align 8, !tbaa !8
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next204, %i.aq
  br i1 %i.bt, label %.preheader143.preheader, label %.loopexit

.preheader143.preheader:                          ; preds = %.epilog-lcssa
  %xtraiter256 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.bu = icmp ult i64 %indvar, 3
  %unroll_iter262 = and i64 %indvars.iv203, 9223372036854775804
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod261 = icmp ne i64 %xtraiter256, 0
  %xtraiter266 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.bv = icmp ult i64 %indvar, 3
  %unroll_iter272 = and i64 %indvars.iv203, 9223372036854775804
  %lcmp.mod268.not = icmp eq i64 %xtraiter266, 0
  %lcmp.mod271 = icmp ne i64 %xtraiter266, 0
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.preheader, %.epilog-lcssa269
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %.epilog-lcssa269 ], [ %indvars.iv196, %.preheader143.preheader ] ; 4 uses
  %invariant.gep152 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv198 ; 5 uses
  br i1 %i.bu, label %.epil.preheader255, label %.preheader143.new

.preheader143.new:                                ; preds = %.preheader143, %.preheader143.new
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.3, %.preheader143.new ], [ 0, %.preheader143 ] ; 6 uses
  %.1155 = phi double [ %i.cl, %.preheader143.new ], [ 0.000000e+00, %.preheader143 ]
  %niter263 = phi i64 [ %niter263.next.3, %.preheader143.new ], [ 0, %.preheader143 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv186
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !8
  %.idx137 = mul nuw nsw i64 %indvars.iv186, 96
  %gep153 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137
  %i.by = load double, ptr %gep153, align 8, !tbaa !8
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %.1155)
  %indvars.iv.next187 = or disjoint i64 %indvars.iv186, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next187
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !8
  %.idx137.1 = mul nuw nsw i64 %indvars.iv.next187, 96
  %gep153.1 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.1
  %i.cc = load double, ptr %gep153.1, align 8, !tbaa !8
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cc, double %i.bz)
  %indvars.iv.next187.1 = or disjoint i64 %indvars.iv186, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next187.1
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !8
  %.idx137.2 = mul nuw nsw i64 %indvars.iv.next187.1, 96
  %gep153.2 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.2
  %i.cg = load double, ptr %gep153.2, align 8, !tbaa !8
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.cd)
  %indvars.iv.next187.2 = or disjoint i64 %indvars.iv186, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next187.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !8
  %.idx137.3 = mul nuw nsw i64 %indvars.iv.next187.2, 96
  %gep153.3 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.3
  %i.ck = load double, ptr %gep153.3, align 8, !tbaa !8
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.ck, double %i.ch) ; 3 uses
end_hunk_0
