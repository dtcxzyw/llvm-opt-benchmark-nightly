begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Crystal_Cholesky(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

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
  br i1 %.not, label %._crit_edge, label %.lr.ph149

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
  %i.ad = extractelement <2 x double> %i.ab, i64 1
  store double %i.ac, ptr %i.u, align 8, !tbaa !8
  store double %i.ad, ptr %i.w, align 8, !tbaa !8
  %index.next242 = add nuw i64 %index241, 2       ; 2 uses
  %i.ae = icmp eq i64 %index.next242, %n.vec239
  br i1 %i.ae, label %middle.block243, label %vector.body240, !llvm.loop !16

middle.block243:                                  ; preds = %vector.body240
  %cmp.n244 = icmp eq i64 %i.p, %n.vec239
  br i1 %cmp.n244, label %.preheader144.preheader, label %scalar.ph235.preheader

scalar.ph235.preheader:                           ; preds = %.lr.ph149, %middle.block243
  %indvars.iv176.ph = phi i64 [ 1, %.lr.ph149 ], [ %i.q, %middle.block243 ]
  br label %scalar.ph235

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ag, ptr %i.ah, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.aj, ptr %i.ak, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.am, ptr %i.an, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.ap, ptr %i.aq, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader146, label %.lr.ph, !llvm.loop !17

.preheader144.preheader:                          ; preds = %scalar.ph235, %middle.block243
  %i.ar = zext nneg i32 %0 to i64
  %wide.trip.count206 = zext nneg i32 %0 to i64   ; 2 uses
  br label %.preheader144

scalar.ph235:                                     ; preds = %scalar.ph235.preheader, %scalar.ph235
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph235 ], [ %indvars.iv176.ph, %scalar.ph235.preheader ] ; 2 uses
  %.idx140 = mul nuw nsw i64 %indvars.iv176, 96
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.idx140 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !8
  %i.au = fdiv double %i.at, %i.o
  store double %i.au, ptr %i.as, align 8, !tbaa !8
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
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.idx138 ; 12 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv203 ; 11 uses
  %xtraiter250 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.aw = icmp ult i64 %indvar, 3
  br i1 %i.aw, label %.epil.preheader, label %.preheader144.new

.preheader144.new:                                ; preds = %.preheader144
  %unroll_iter = and i64 %indvars.iv203, 9223372036854775804
  br label %bb.b

.preheader141.preheader:                          ; preds = %.loopexit
  %wide.trip.count216 = zext nneg i32 %0 to i64
  br label %.preheader141

bb.b:                                             ; preds = %bb.b, %.preheader144.new
  %indvars.iv181 = phi i64 [ 0, %.preheader144.new ], [ %indvars.iv.next182.3, %bb.b ] ; 6 uses
  %.0151 = phi double [ 0.000000e+00, %.preheader144.new ], [ %i.bm, %bb.b ]
  %niter = phi i64 [ 0, %.preheader144.new ], [ %niter.next.3, %bb.b ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv181
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !8
  %.idx139 = mul nuw nsw i64 %indvars.iv181, 96
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139
  %i.az = load double, ptr %gep, align 8, !tbaa !8
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %.0151)
  %indvars.iv.next182 = or disjoint i64 %indvars.iv181, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next182
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8
  %.idx139.1 = mul nuw nsw i64 %indvars.iv.next182, 96
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.1
  %i.bd = load double, ptr %gep.1, align 8, !tbaa !8
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bd, double %i.ba)
  %indvars.iv.next182.1 = or disjoint i64 %indvars.iv181, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next182.1
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8
  %.idx139.2 = mul nuw nsw i64 %indvars.iv.next182.1, 96
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.2
  %i.bh = load double, ptr %gep.2, align 8, !tbaa !8
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bh, double %i.be)
  %indvars.iv.next182.2 = or disjoint i64 %indvars.iv181, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next182.2
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %.idx139.3 = mul nuw nsw i64 %indvars.iv.next182.2, 96
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.3
  %i.bl = load double, ptr %gep.3, align 8, !tbaa !8
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.bi) ; 3 uses
  %indvars.iv.next182.3 = add nuw nsw i64 %indvars.iv181, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !20

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader144
  %indvars.iv181.epil.init = phi i64 [ 0, %.preheader144 ], [ %indvars.iv.next182.3, %.unr-lcssa ]
  %.0151.epil.init = phi double [ 0.000000e+00, %.preheader144 ], [ %i.bm, %.unr-lcssa ]
  %lcmp.mod253 = icmp ne i64 %xtraiter250, 0
  tail call void @llvm.assume(i1 %lcmp.mod253)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv181.epil = phi i64 [ %indvars.iv181.epil.init, %.epil.preheader ], [ %indvars.iv.next182.epil, %bb.c ] ; 3 uses
  %.0151.epil = phi double [ %.0151.epil.init, %.epil.preheader ], [ %i.bq, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv181.epil
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  %.idx139.epil = mul nuw nsw i64 %indvars.iv181.epil, 96
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx139.epil
  %i.bp = load double, ptr %gep.epil, align 8, !tbaa !8
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %.0151.epil) ; 2 uses
  %indvars.iv.next182.epil = add nuw nsw i64 %indvars.iv181.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter250
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !21

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa246 = phi double [ %i.bm, %.unr-lcssa ], [ %i.bq, %bb.c ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv203 ; 3 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8
  %i.bt = fsub double %i.bs, %.lcssa246
  store double %i.bt, ptr %i.br, align 8, !tbaa !8
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 3 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next204, %i.ar
  br i1 %i.bu, label %.preheader143.preheader, label %.loopexit

.preheader143.preheader:                          ; preds = %.epilog-lcssa
  %xtraiter256 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.bv = icmp ult i64 %indvar, 3
  %unroll_iter262 = and i64 %indvars.iv203, 9223372036854775804
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod261 = icmp ne i64 %xtraiter256, 0
  %xtraiter266 = and i64 %indvars.iv203, 3        ; 3 uses
  %i.bw = icmp ult i64 %indvar, 3
  %unroll_iter272 = and i64 %indvars.iv203, 9223372036854775804
  %lcmp.mod268.not = icmp eq i64 %xtraiter266, 0
  %lcmp.mod271 = icmp ne i64 %xtraiter266, 0
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.preheader, %.epilog-lcssa269
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %.epilog-lcssa269 ], [ %indvars.iv196, %.preheader143.preheader ] ; 4 uses
  %invariant.gep152 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv198 ; 5 uses
  br i1 %i.bv, label %.epil.preheader255, label %.preheader143.new

end_hunk_0
begin_hunk_1_@Crystal_Cholesky:bb.a
  %i.by = load double, ptr %i.bx, align 8, !tbaa !8
  %.idx137 = mul nuw nsw i64 %indvars.iv186, 96
  %gep153 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137
  %i.bz = load double, ptr %gep153, align 8, !tbaa !8
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %.1155)
  %indvars.iv.next187 = or disjoint i64 %indvars.iv186, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next187
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !8
  %.idx137.1 = mul nuw nsw i64 %indvars.iv.next187, 96
  %gep153.1 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.1
  %i.cd = load double, ptr %gep153.1, align 8, !tbaa !8
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.ca)
  %indvars.iv.next187.1 = or disjoint i64 %indvars.iv186, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next187.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !8
  %.idx137.2 = mul nuw nsw i64 %indvars.iv.next187.1, 96
  %gep153.2 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.2
  %i.ch = load double, ptr %gep153.2, align 8, !tbaa !8
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.ce)
  %indvars.iv.next187.2 = or disjoint i64 %indvars.iv186, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next187.2
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %.idx137.3 = mul nuw nsw i64 %indvars.iv.next187.2, 96
  %gep153.3 = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.3
  %i.cl = load double, ptr %gep153.3, align 8, !tbaa !8
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cl, double %i.ci) ; 3 uses
  %indvars.iv.next187.3 = add nuw nsw i64 %indvars.iv186, 4 ; 2 uses
  %niter263.next.3 = add i64 %niter263, 4         ; 2 uses
  %niter263.ncmp.3 = icmp eq i64 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3, label %.unr-lcssa254, label %.preheader143.new, !llvm.loop !22

.unr-lcssa254:                                    ; preds = %.preheader143.new
  br i1 %lcmp.mod258.not, label %.epilog-lcssa259, label %.epil.preheader255

.epil.preheader255:                               ; preds = %.unr-lcssa254, %.preheader143
  %indvars.iv186.epil.init = phi i64 [ 0, %.preheader143 ], [ %indvars.iv.next187.3, %.unr-lcssa254 ]
  %.1155.epil.init = phi double [ 0.000000e+00, %.preheader143 ], [ %i.cm, %.unr-lcssa254 ]
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader255
  %indvars.iv186.epil = phi i64 [ %indvars.iv186.epil.init, %.epil.preheader255 ], [ %indvars.iv.next187.epil, %bb.d ] ; 3 uses
  %.1155.epil = phi double [ %.1155.epil.init, %.epil.preheader255 ], [ %i.cq, %bb.d ]
  %epil.iter257 = phi i64 [ 0, %.epil.preheader255 ], [ %epil.iter257.next, %bb.d ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv186.epil
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8
  %.idx137.epil = mul nuw nsw i64 %indvars.iv186.epil, 96
  %gep153.epil = getelementptr inbounds nuw i8, ptr %invariant.gep152, i64 %.idx137.epil
  %i.cp = load double, ptr %gep153.epil, align 8, !tbaa !8
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %.1155.epil) ; 2 uses
  %indvars.iv.next187.epil = add nuw nsw i64 %indvars.iv186.epil, 1
  %epil.iter257.next = add i64 %epil.iter257, 1   ; 2 uses
  %epil.iter257.cmp.not = icmp eq i64 %epil.iter257.next, %xtraiter256
  br i1 %epil.iter257.cmp.not, label %.epilog-lcssa259, label %bb.d, !llvm.loop !23

.epilog-lcssa259:                                 ; preds = %bb.d, %.unr-lcssa254
  %.lcssa247 = phi double [ %i.cm, %.unr-lcssa254 ], [ %i.cq, %bb.d ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv198 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = fsub double %i.cs, %.lcssa247
  store double %i.ct, ptr %i.cr, align 8, !tbaa !8
  %.idx135 = mul nuw nsw i64 %indvars.iv198, 96   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx135 ; 5 uses
  br i1 %i.bw, label %.epil.preheader265, label %.new

.new:                                             ; preds = %.epilog-lcssa259, %.new
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %.new ], [ 0, %.epilog-lcssa259 ] ; 6 uses
  %.2159 = phi double [ %i.dk, %.new ], [ 0.000000e+00, %.epilog-lcssa259 ]
  %niter273 = phi i64 [ %niter273.next.3, %.new ], [ 0, %.epilog-lcssa259 ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv191
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  %.idx136 = mul nuw nsw i64 %indvars.iv191, 96
  %gep157 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx136
  %i.cx = load double, ptr %gep157, align 8, !tbaa !8
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cx, double %.2159)
  %indvars.iv.next192 = or disjoint i64 %indvars.iv191, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next192
  %i.da = load double, ptr %i.cz, align 8, !tbaa !8
  %.idx136.1 = mul nuw nsw i64 %indvars.iv.next192, 96
  %gep157.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx136.1
  %i.db = load double, ptr %gep157.1, align 8, !tbaa !8
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.da, double %i.db, double %i.cy)
  %indvars.iv.next192.1 = or disjoint i64 %indvars.iv191, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next192.1
  %i.de = load double, ptr %i.dd, align 8, !tbaa !8
  %.idx136.2 = mul nuw nsw i64 %indvars.iv.next192.1, 96
  %gep157.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx136.2
  %i.df = load double, ptr %gep157.2, align 8, !tbaa !8
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dc)
  %indvars.iv.next192.2 = or disjoint i64 %indvars.iv191, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next192.2
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %.idx136.3 = mul nuw nsw i64 %indvars.iv.next192.2, 96
  %gep157.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx136.3
  %i.dj = load double, ptr %gep157.3, align 8, !tbaa !8
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dg) ; 3 uses
  %indvars.iv.next192.3 = add nuw nsw i64 %indvars.iv191, 4 ; 2 uses
  %niter273.next.3 = add i64 %niter273, 4         ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %.unr-lcssa264, label %.new, !llvm.loop !24

.unr-lcssa264:                                    ; preds = %.new
  br i1 %lcmp.mod268.not, label %.epilog-lcssa269, label %.epil.preheader265

.epil.preheader265:                               ; preds = %.unr-lcssa264, %.epilog-lcssa259
  %indvars.iv191.epil.init = phi i64 [ 0, %.epilog-lcssa259 ], [ %indvars.iv.next192.3, %.unr-lcssa264 ]
  %.2159.epil.init = phi double [ 0.000000e+00, %.epilog-lcssa259 ], [ %i.dk, %.unr-lcssa264 ]
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader265
  %indvars.iv191.epil = phi i64 [ %indvars.iv191.epil.init, %.epil.preheader265 ], [ %indvars.iv.next192.epil, %bb.e ] ; 3 uses
  %.2159.epil = phi double [ %.2159.epil.init, %.epil.preheader265 ], [ %i.do, %bb.e ]
  %epil.iter267 = phi i64 [ 0, %.epil.preheader265 ], [ %epil.iter267.next, %bb.e ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv191.epil
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !8
  %.idx136.epil = mul nuw nsw i64 %indvars.iv191.epil, 96
  %gep157.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx136.epil
  %i.dn = load double, ptr %gep157.epil, align 8, !tbaa !8
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dn, double %.2159.epil) ; 2 uses
  %indvars.iv.next192.epil = add nuw nsw i64 %indvars.iv191.epil, 1
  %epil.iter267.next = add i64 %epil.iter267, 1   ; 2 uses
  %epil.iter267.cmp.not = icmp eq i64 %epil.iter267.next, %xtraiter266
  br i1 %epil.iter267.cmp.not, label %.epilog-lcssa269, label %bb.e, !llvm.loop !25

.epilog-lcssa269:                                 ; preds = %bb.e, %.unr-lcssa264
  %.lcssa248 = phi double [ %i.dk, %.unr-lcssa264 ], [ %i.do, %bb.e ]
  %gep161 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx135 ; 2 uses
  %i.dp = load double, ptr %gep161, align 8, !tbaa !8
  %i.dq = fsub double %i.dp, %.lcssa248
  %i.dr = load double, ptr %i.br, align 8, !tbaa !8
  %i.ds = fdiv double %i.dq, %i.dr
  store double %i.ds, ptr %gep161, align 8, !tbaa !8
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count206
  br i1 %exitcond202.not, label %.loopexit, label %.preheader143, !llvm.loop !26

.preheader141:                                    ; preds = %.preheader141.preheader, %bb.g
  %indvar276 = phi i64 [ 0, %.preheader141.preheader ], [ %indvar.next277, %bb.g ] ; 2 uses
  %indvars.iv213 = phi i64 [ 1, %.preheader141.preheader ], [ %indvars.iv.next214, %bb.g ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv213 ; 4 uses
  %.idx132 = mul nuw nsw i64 %indvars.iv213, 96
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %.idx132 ; 3 uses
  %.promoted = load double, ptr %i.dt, align 8, !tbaa !8 ; 2 uses
  %xtraiter278 = and i64 %indvars.iv213, 1
  %i.dv = icmp eq i64 %indvar276, 0
  br i1 %i.dv, label %.epil.preheader275, label %.preheader141.new

.preheader141.new:                                ; preds = %.preheader141
  %unroll_iter283 = and i64 %indvars.iv213, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader141.new
  %indvars.iv208 = phi i64 [ 0, %.preheader141.new ], [ %indvars.iv.next209.1, %bb.f ] ; 4 uses
  %i.dw = phi double [ %.promoted, %.preheader141.new ], [ %i.ei, %bb.f ]
  %niter284 = phi i64 [ 0, %.preheader141.new ], [ %niter284.next.1, %bb.f ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv208
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv208
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fneg double %i.dy
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ea, double %i.dw) ; 2 uses
  store double %i.ec, ptr %i.dt, align 8, !tbaa !8
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next209
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next209
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = fneg double %i.ee
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.eg, double %i.ec) ; 3 uses
  store double %i.ei, ptr %i.dt, align 8, !tbaa !8
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %.unr-lcssa274, label %bb.f, !llvm.loop !27

.unr-lcssa274:                                    ; preds = %bb.f
  %lcmp.mod280.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod280.not, label %bb.g, label %.epil.preheader275

.epil.preheader275:                               ; preds = %.unr-lcssa274, %.preheader141
  %indvars.iv208.epil.init = phi i64 [ 0, %.preheader141 ], [ %indvars.iv.next209.1, %.unr-lcssa274 ] ; 2 uses
  %.epil.init = phi double [ %.promoted, %.preheader141 ], [ %i.ei, %.unr-lcssa274 ]
  %lcmp.mod282 = trunc i64 %indvars.iv213 to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv208.epil.init
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv208.epil.init
  %i.em = load double, ptr %i.el, align 8, !tbaa !8
  %i.en = fneg double %i.ek
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double %i.em, double %.epil.init)
  store double %i.eo, ptr %i.dt, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa274, %.epil.preheader275
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  %indvar.next277 = add i64 %indvar276, 1
  br i1 %exitcond217.not, label %._crit_edge, label %.preheader141, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.g, %bb.a, %.preheader146
  %4 = phi i1 [ false, %.preheader146 ], [ false, %bb.a ], [ true, %bb.g ]
  %i.ep = add i32 %0, -1                          ; 2 uses
  %i.eq = sext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  %.idx = mul nsw i64 %i.eq, 96
  %i.et = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.eq
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = fdiv double %i.es, %i.ev
  store double %i.ew, ptr %i.er, align 8, !tbaa !8
  br i1 %4, label %.preheader.preheader, label %._crit_edge172

.preheader.preheader:                             ; preds = %._crit_edge
  %5 = add i32 %0, -2
  %6 = zext i32 %i.ep to i64
  %7 = zext i32 %5 to i64
  %8 = zext nneg i32 %0 to i64
  %invariant.op = add nsw i64 %8, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge169
  %indvars.iv223 = phi i64 [ %7, %.preheader.preheader ], [ %indvars.iv.next224, %._crit_edge169 ] ; 8 uses
  %indvars.iv218 = phi i64 [ %6, %.preheader.preheader ], [ %indvars.iv.next219, %._crit_edge169 ] ; 2 uses
  %i.ex = icmp slt i64 %indvars.iv223, %invariant.op
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv223 ; 3 uses
  br i1 %i.ex, label %.lr.ph168, label %.preheader.._crit_edge169_crit_edge

.preheader.._crit_edge169_crit_edge:              ; preds = %.preheader
  %.pre = load double, ptr %i.ey, align 8, !tbaa !8
  %.pre227 = mul nuw nsw i64 %indvars.iv223, 96
  br label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader
  %.idx131 = mul nuw nsw i64 %indvars.iv223, 96   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.idx131
  %.promoted170 = load double, ptr %i.ey, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph168, %bb.h
  %indvars.iv220 = phi i64 [ %indvars.iv218, %.lr.ph168 ], [ %indvars.iv.next221, %bb.h ] ; 3 uses
  %i.fa = phi double [ %.promoted170, %.lr.ph168 ], [ %i.fg, %bb.h ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv220
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv220
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = fneg double %i.fc
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fe, double %i.fa) ; 3 uses
  store double %i.fg, ptr %i.ey, align 8, !tbaa !8
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv.next221 to i32
  %i.fi = icmp sgt i32 %0, %i.fh
  br i1 %i.fi, label %bb.h, label %._crit_edge169, !llvm.loop !29

._crit_edge169:                                   ; preds = %bb.h, %.preheader.._crit_edge169_crit_edge
  %.idx130.pre-phi = phi i64 [ %.pre227, %.preheader.._crit_edge169_crit_edge ], [ %.idx131, %bb.h ]
  %i.fj = phi double [ %.pre, %.preheader.._crit_edge169_crit_edge ], [ %i.fg, %bb.h ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv223
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %.idx130.pre-phi
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv223
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !8
  %i.fo = fdiv double %i.fj, %i.fn
  store double %i.fo, ptr %i.fk, align 8, !tbaa !8
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, -1
  %i.fp = icmp sgt i64 %indvars.iv223, 0
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, -1
  br i1 %i.fp, label %.preheader, label %._crit_edge172, !llvm.loop !30

._crit_edge172:                                   ; preds = %._crit_edge169, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !13, !12}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
end_hunk_1
