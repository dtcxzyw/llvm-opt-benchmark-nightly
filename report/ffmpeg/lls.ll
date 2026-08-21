loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@avpriv_solve_lls:bb.a
  %.0116142.epil.init = phi double [ %i.bo, %.lr.ph ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter241, 0
  tail call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader240
  %indvars.iv195.epil = phi i64 [ %indvars.iv195.epil.init, %.epil.preheader240 ], [ %indvars.iv.next196.epil, %bb.h ] ; 3 uses
  %.0116142.epil = phi double [ %.0116142.epil.init, %.epil.preheader240 ], [ %i.cu, %bb.h ]
  %epil.iter242 = phi i64 [ 0, %.epil.preheader240 ], [ %epil.iter242.next, %bb.h ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv195.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv195.epil
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !12
  %i.ct = fneg nsz double %i.cq
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %.0116142.epil) ; 2 uses
  %indvars.iv.next196.epil = add nuw nsw i64 %indvars.iv195.epil, 1
  %epil.iter242.next = add i64 %epil.iter242, 1   ; 2 uses
  %epil.iter242.cmp.not = icmp eq i64 %epil.iter242.next, %xtraiter241
  br i1 %epil.iter242.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.f
  %.0116.lcssa = phi double [ %i.bo, %bb.f ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %bb.h ]
  %i.cv = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv199
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv199
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !12
  %i.cy = fdiv nsz double %.0116.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv199
  store double %i.cy, ptr %i.cz, align 8, !tbaa !12
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %.preheader132, label %bb.f, !llvm.loop !24

.loopexit:                                        ; preds = %._crit_edge163
  %.not.not = icmp sgt i64 %indvars.iv.next222, %i.bm
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1
  br i1 %.not.not, label %.lr.ph155, label %._crit_edge174, !llvm.loop !25

.lr.ph155:                                        ; preds = %.loopexit, %.preheader.lr.ph
  %indvars.iv221 = phi i64 [ %i.bl, %.preheader.lr.ph ], [ %indvars.iv.next222, %.loopexit ] ; 2 uses
  %indvars.iv204 = phi i64 [ %i.bk, %.preheader.lr.ph ], [ %indvars.iv.next205, %.loopexit ] ; 2 uses
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, -1 ; 7 uses
  %i.da = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next222 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph155, %._crit_edge152
  %indvars.iv206 = phi i64 [ %indvars.iv204, %.lr.ph155 ], [ %indvars.iv.next207, %._crit_edge152 ] ; 9 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv206
  %i.dc = load double, ptr %i.db, align 8, !tbaa !12 ; 2 uses
  %invariant.gep145 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv206
  %.not.not129147 = icmp slt i64 %indvars.iv206, %indvars.iv.next222
  br i1 %.not.not129147, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.i, %.lr.ph151
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %.lr.ph151 ], [ %indvars.iv206, %bb.i ]
  %.0115149 = phi double [ %i.dh, %.lr.ph151 ], [ %i.dc, %bb.i ]
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 4 uses
  %gep146 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep145, i64 %indvars.iv.next209
  %i.dd = load double, ptr %gep146, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next209
  %i.df = load double, ptr %i.de, align 8, !tbaa !12
  %i.dg = fneg nsz double %i.dd
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.df, double %.0115149) ; 2 uses
  %sext = shl i64 %indvars.iv.next209, 32
  %i.di = ashr exact i64 %sext, 32
  %.not.not129 = icmp slt i64 %i.di, %indvars.iv.next222
  br i1 %.not.not129, label %.lr.ph151, label %._crit_edge152, !llvm.loop !26

._crit_edge152:                                   ; preds = %.lr.ph151, %bb.i
  %.0115.lcssa = phi double [ %i.dc, %bb.i ], [ %i.dh, %.lr.ph151 ]
  %i.dj = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv206
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv206
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !12
  %i.dm = fdiv nsz double %.0115.lcssa, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv206
  store double %i.dm, ptr %i.dn, align 8, !tbaa !12
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, -1
  %i.do = icmp sgt i64 %indvars.iv206, 0
  br i1 %i.do, label %bb.i, label %.lr.ph169, !llvm.loop !27

.lr.ph169:                                        ; preds = %._crit_edge152
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next222 ; 2 uses
  store double %i.bh, ptr %i.dp, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next222 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph169, %._crit_edge163
  %indvars.iv216 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next217, %._crit_edge163 ] ; 10 uses
  %storemerge166 = phi double [ %i.bh, %.lr.ph169 ], [ %i.eq, %._crit_edge163 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv216
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %indvars.iv216
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv216
  %i.dv = load double, ptr %i.du, align 8, !tbaa !12
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next217
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !12
  %i.dy = fmul nsz double %i.dx, -2.000000e+00
  %i.dz = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %i.dv, double %i.dy) ; 3 uses
  %invariant.gep157 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv216 ; 3 uses
  %.not = icmp eq i64 %indvars.iv216, 0
  br i1 %.not, label %._crit_edge163, label %.lr.ph162.preheader

.lr.ph162.preheader:                              ; preds = %bb.j
  %xtraiter248 = and i64 %indvars.iv216, 1
  %i.ea = icmp eq i64 %indvars.iv216, 1
  br i1 %i.ea, label %.lr.ph162.epil.preheader, label %.lr.ph162.preheader.new

.lr.ph162.preheader.new:                          ; preds = %.lr.ph162.preheader
  %unroll_iter253 = and i64 %indvars.iv216, 9223372036854775806
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162, %.lr.ph162.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.lr.ph162.preheader.new ], [ %indvars.iv.next213.1, %.lr.ph162 ] ; 4 uses
  %.0160 = phi double [ %i.dz, %.lr.ph162.preheader.new ], [ %i.ek, %.lr.ph162 ]
  %niter254 = phi i64 [ 0, %.lr.ph162.preheader.new ], [ %niter254.next.1, %.lr.ph162 ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv212
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !12
  %i.ed = fmul nsz double %i.ec, 2.000000e+00
  %gep158 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep157, i64 %indvars.iv212
  %i.ee = load double, ptr %gep158, align 8, !tbaa !12
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %.0160)
  %indvars.iv.next213 = or disjoint i64 %indvars.iv212, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next213
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !12
  %i.ei = fmul nsz double %i.eh, 2.000000e+00
  %gep158.1 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep157, i64 %indvars.iv.next213
  %i.ej = load double, ptr %gep158.1, align 8, !tbaa !12
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.ef) ; 3 uses
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2 ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %._crit_edge163.loopexit.unr-lcssa, label %.lr.ph162, !llvm.loop !28

._crit_edge163.loopexit.unr-lcssa:                ; preds = %.lr.ph162
  %lcmp.mod250.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod250.not, label %._crit_edge163, label %.lr.ph162.epil.preheader

.lr.ph162.epil.preheader:                         ; preds = %._crit_edge163.loopexit.unr-lcssa, %.lr.ph162.preheader
  %indvars.iv212.epil.init = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next213.1, %._crit_edge163.loopexit.unr-lcssa ] ; 2 uses
  %.0160.epil.init = phi double [ %i.dz, %.lr.ph162.preheader ], [ %i.ek, %._crit_edge163.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i64 %indvars.iv216 to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv212.epil.init
  %i.em = load double, ptr %i.el, align 8, !tbaa !12
  %i.en = fmul nsz double %i.em, 2.000000e+00
  %gep158.epil = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep157, i64 %indvars.iv212.epil.init
  %i.eo = load double, ptr %gep158.epil, align 8, !tbaa !12
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %.0160.epil.init)
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %.lr.ph162.epil.preheader, %._crit_edge163.loopexit.unr-lcssa, %bb.j
  %.0.lcssa = phi double [ %i.dz, %bb.j ], [ %i.ek, %._crit_edge163.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph162.epil.preheader ]
  %i.eq = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %.0.lcssa, double %storemerge166) ; 2 uses
  store double %i.eq, ptr %i.dp, align 8, !tbaa !12
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %indvars.iv221
  br i1 %exitcond220.not, label %.loopexit, label %bb.j, !llvm.loop !29

._crit_edge174:                                   ; preds = %.loopexit, %.preheader132
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @avpriv_init_lls(ptr nofree noundef writeonly captures(none) initializes((0, 18848)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18848) %0, i8 0, i64 18848, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18816
  store i32 %1, ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18824
  store ptr @update_lls, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18832
  store ptr @evaluate_lls, ptr %i.c, align 16, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @update_lls(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18816
  %i.b = load i32, ptr %i.a, align 16, !tbaa !9   ; 3 uses
  %.not16 = icmp slt i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = add nuw i32 %i.b, 1
  %wide.trip.count22 = zext i32 %i.c to i64       ; 5 uses
  %i.d = shl nuw nsw i64 %wide.trip.count22, 3    ; 2 uses
  %scevgep26 = getelementptr i8, ptr %1, i64 %i.d ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.g = sub nsw i64 %wide.trip.count22, %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %2 = shl nuw nsw i64 %indvars.iv, 3
  %scevgep25 = getelementptr nuw i8, ptr %1, i64 %2
  %i.j = mul nuw nsw i64 %indvars.iv, 288
  %scevgep24 = getelementptr i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 296
  %scevgep = getelementptr i8, ptr %0, i64 %i.k   ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep26
  %bound1 = icmp ult ptr %scevgep25, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %scevgep, %scevgep26
  %bound128 = icmp ult ptr %1, %scevgep24
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.l = add i64 %indvars.iv, %n.vec
  %i.m = load double, ptr %i.h, align 8, !tbaa !12, !alias.scope !32
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add nuw i64 %indvars.iv, %index          ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !12, !alias.scope !35
  %wide.load30.a = load <2 x double>, ptr %i.p, align 8, !tbaa !12, !alias.scope !35
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load31.a = load <2 x double>, ptr %i.q, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %wide.load32 = load <2 x double>, ptr %i.r, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %i.s = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load31.a)
  %i.t = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load30.a, <2 x double> %wide.load32)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.l, %middle.block ] ; 6 uses
  %i.v = sub i64 %wide.trip.count22, %indvars.iv18.ph
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = load double, ptr %i.h, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18.ph
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv18.ph ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12
  %i.ab = tail call nsz double @llvm.fmuladd.f64(double %i.w, double %i.y, double %i.aa)
  store double %i.ab, ptr %i.z, align 8, !tbaa !12
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv18.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.unr = phi i64 [ %indvars.iv18.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.prol, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %indvars.iv18.ph, %i.e
  br i1 %i.ac, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %scalar.ph ], [ %indvars.iv18.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ad = load double, ptr %i.h, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv18 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double %i.af, double %i.ah)
  store double %i.ai, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.aj = load double, ptr %i.h, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next19
  %i.al = load double, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next19 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !12
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %i.an)
  store double %i.ao, ptr %i.am, align 8, !tbaa !12
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next19.1, %wide.trip.count22
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !43

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge, label %.preheader, !llvm.loop !44

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @evaluate_lls(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10368
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [256 x i8], ptr %i.a, i64 %i.b
  %i.d = add nsw i32 %2, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call nsz double @ff_scalarproduct_double_c(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %i.e) #7
  ret double %i.f
}

declare double @ff_scalarproduct_double_c(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 18816}
!10 = !{!"LLSModel", !7, i64 0, !7, i64 10368, !7, i64 18560, !6, i64 18816, !11, i64 18824, !11, i64 18832}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15, !20}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = !{!10, !11, i64 18824}
!31 = !{!10, !11, i64 18832}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = !{!38}
!38 = distinct !{!38, !34}
!39 = !{!36, !33}
!40 = distinct !{!40, !15, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !15, !41}
!44 = distinct !{!44, !15}
end_hunk_0
