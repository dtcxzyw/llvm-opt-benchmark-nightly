Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lls?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@avpriv_solve_lls:bb.a
  %indvars.iv.next193.epil = add nuw nsw i64 %indvars.iv192.epil, 1
  %epil.iter239.next = add i64 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i64 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !21

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.f
  %.0116.lcssa = phi double [ %i.bo, %bb.f ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %bb.h ]
  %i.cv = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv196
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv196
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13
  %i.cy = fdiv nsz double %.0116.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv196
  store double %i.cy, ptr %i.cz, align 8, !tbaa !13
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.preheader131, label %bb.f, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge160
  %.not.not = icmp sgt i64 %indvars.iv.next219, %i.bm
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, -1
  br i1 %.not.not, label %.preheader, label %._crit_edge171, !llvm.loop !23

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv218 = phi i64 [ %i.bl, %.preheader.lr.ph ], [ %indvars.iv.next219, %.loopexit ] ; 2 uses
  %indvars.iv201 = phi i64 [ %i.bk, %.preheader.lr.ph ], [ %indvars.iv.next202, %.loopexit ] ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, -1 ; 6 uses
  %i.da = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next219 ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge151
  %indvars.iv203 = phi i64 [ %indvars.iv201, %.preheader ], [ %indvars.iv.next204, %._crit_edge151 ] ; 9 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv203
  %i.dc = load double, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %invariant.gep144 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv203
  %i.dd = trunc nuw i64 %indvars.iv203 to i32
  %sext = shl i64 %indvars.iv203, 32
  %i.de = ashr exact i64 %sext, 32
  %.not.not128146 = icmp slt i64 %i.de, %indvars.iv.next219
  br i1 %.not.not128146, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.i, %.lr.ph150
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.lr.ph150 ], [ %indvars.iv203, %bb.i ]
  %.0115148 = phi double [ %i.dj, %.lr.ph150 ], [ %i.dc, %bb.i ]
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 4 uses
  %gep145 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep144, i64 %indvars.iv.next206
  %i.df = load double, ptr %gep145, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next206
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !13
  %i.di = fneg nsz double %i.df
  %i.dj = tail call nsz double @llvm.fmuladd.f64(double %i.di, double %i.dh, double %.0115148) ; 2 uses
  %i.dk = shl i64 %indvars.iv.next206, 32
  %i.dl = ashr exact i64 %i.dk, 32
  %.not.not128 = icmp slt i64 %i.dl, %indvars.iv.next219
  br i1 %.not.not128, label %.lr.ph150, label %._crit_edge151, !llvm.loop !24

._crit_edge151:                                   ; preds = %.lr.ph150, %bb.i
  %.0115.lcssa = phi double [ %i.dc, %bb.i ], [ %i.dj, %.lr.ph150 ]
  %i.dm = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv203
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv203
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13
  %i.dp = fdiv nsz double %.0115.lcssa, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv203
  store double %i.dp, ptr %i.dq, align 8, !tbaa !13
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, -1
  %i.dr = icmp sgt i32 %i.dd, 0
  br i1 %i.dr, label %bb.i, label %.lr.ph166, !llvm.loop !25

.lr.ph166:                                        ; preds = %._crit_edge151
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next219 ; 2 uses
  store double %i.bh, ptr %i.ds, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph166, %._crit_edge160
  %indvars.iv213 = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next214, %._crit_edge160 ] ; 10 uses
  %storemerge163 = phi double [ %i.bh, %.lr.ph166 ], [ %i.es, %._crit_edge160 ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv213
  %i.du = load double, ptr %i.dt, align 8, !tbaa !13 ; 2 uses
  %i.dv = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %indvars.iv213
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv213
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !13
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next214
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !13
  %i.ea = fmul nsz double %i.dz, -2.000000e+00
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.du, double %i.dx, double %i.ea) ; 3 uses
  %invariant.gep154 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv213 ; 3 uses
  %.not = icmp eq i64 %indvars.iv213, 0
  br i1 %.not, label %._crit_edge160, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %bb.j
  %xtraiter245 = and i64 %indvars.iv213, 1
  %i.ec = icmp eq i64 %indvars.iv213, 1
  br i1 %i.ec, label %.lr.ph159.epil.preheader, label %.lr.ph159.preheader.new

.lr.ph159.preheader.new:                          ; preds = %.lr.ph159.preheader
  %unroll_iter250 = and i64 %indvars.iv213, 9223372036854775806
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159, %.lr.ph159.preheader.new
  %indvars.iv209 = phi i64 [ 0, %.lr.ph159.preheader.new ], [ %indvars.iv.next210.1, %.lr.ph159 ] ; 4 uses
  %.0157 = phi double [ %i.eb, %.lr.ph159.preheader.new ], [ %i.em, %.lr.ph159 ]
  %niter251 = phi i64 [ 0, %.lr.ph159.preheader.new ], [ %niter251.next.1, %.lr.ph159 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv209
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13
  %i.ef = fmul nsz double %i.ee, 2.000000e+00
  %gep155 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep154, i64 %indvars.iv209
  %i.eg = load double, ptr %gep155, align 8, !tbaa !13
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %.0157)
  %indvars.iv.next210 = or disjoint i64 %indvars.iv209, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next210
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13
  %i.ek = fmul nsz double %i.ej, 2.000000e+00
  %gep155.1 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep154, i64 %indvars.iv.next210
  %i.el = load double, ptr %gep155.1, align 8, !tbaa !13
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.ek, double %i.el, double %i.eh) ; 3 uses
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %._crit_edge160.loopexit.unr-lcssa, label %.lr.ph159, !llvm.loop !26

._crit_edge160.loopexit.unr-lcssa:                ; preds = %.lr.ph159
  %lcmp.mod247.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod247.not, label %._crit_edge160, label %.lr.ph159.epil.preheader

.lr.ph159.epil.preheader:                         ; preds = %._crit_edge160.loopexit.unr-lcssa, %.lr.ph159.preheader
  %indvars.iv209.epil.init = phi i64 [ 0, %.lr.ph159.preheader ], [ %indvars.iv.next210.1, %._crit_edge160.loopexit.unr-lcssa ] ; 2 uses
  %.0157.epil.init = phi double [ %i.eb, %.lr.ph159.preheader ], [ %i.em, %._crit_edge160.loopexit.unr-lcssa ]
  %lcmp.mod249 = trunc i64 %indvars.iv213 to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv209.epil.init
  %i.eo = load double, ptr %i.en, align 8, !tbaa !13
  %i.ep = fmul nsz double %i.eo, 2.000000e+00
  %gep155.epil = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep154, i64 %indvars.iv209.epil.init
  %i.eq = load double, ptr %gep155.epil, align 8, !tbaa !13
  %i.er = tail call nsz double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %.0157.epil.init)
  br label %._crit_edge160

._crit_edge160:                                   ; preds = %.lr.ph159.epil.preheader, %._crit_edge160.loopexit.unr-lcssa, %bb.j
  %.0.lcssa = phi double [ %i.eb, %bb.j ], [ %i.em, %._crit_edge160.loopexit.unr-lcssa ], [ %i.er, %.lr.ph159.epil.preheader ]
  %i.es = tail call nsz double @llvm.fmuladd.f64(double %i.du, double %.0.lcssa, double %storemerge163) ; 2 uses
  store double %i.es, ptr %i.ds, align 8, !tbaa !13
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %indvars.iv218
  br i1 %exitcond217.not, label %.loopexit, label %bb.j, !llvm.loop !27

._crit_edge171:                                   ; preds = %.loopexit, %.preheader131
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
  store i32 %1, ptr %i.a, align 16, !tbaa !11
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
  %i.b = load i32, ptr %i.a, align 16, !tbaa !11  ; 3 uses
  %.not16 = icmp slt i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = add nuw i32 %i.b, 1
  %wide.trip.count22 = zext i32 %i.c to i64       ; 5 uses
  %i.d = shl nuw nsw i64 %wide.trip.count22, 3    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.d
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit ] ; 10 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.i = sub nsw i64 %wide.trip.count22, %indvars.iv ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.j = mul nuw nsw i64 %indvars.iv, 296
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = mul nuw nsw i64 %indvars.iv, 288
  %i.m = getelementptr i8, ptr %i.f, i64 %i.l     ; 2 uses
  %bound0 = icmp ult ptr %i.k, %scevgep
  %bound1 = icmp ult ptr %i.g, %i.m
  %bound129 = icmp ult ptr %1, %i.m
  %found.conflict3034 = or i1 %bound1, %bound129
  %conflict.rdx = and i1 %bound0, %found.conflict3034
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.n = add i64 %indvars.iv, %n.vec
  %i.o = load double, ptr %i.g, align 8, !tbaa !13, !alias.scope !39
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %indvars.iv, %index          ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !13, !alias.scope !40
  %wide.load31 = load <2 x double>, ptr %i.r, align 8, !tbaa !13, !alias.scope !40
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load32 = load <2 x double>, ptr %i.s, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %wide.load33 = load <2 x double>, ptr %i.t, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %i.u = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load32)
  %i.v = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load31, <2 x double> %wide.load33)
  store <2 x double> %i.u, ptr %i.s, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.n, %middle.block ] ; 6 uses
  %i.x = sub i64 %wide.trip.count22, %indvars.iv18.ph
  %xtraiter = and i64 %i.x, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = load double, ptr %i.g, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18.ph
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv18.ph ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ad = tail call nsz double @llvm.fmuladd.f64(double %i.y, double %i.aa, double %i.ac)
  store double %i.ad, ptr %i.ab, align 8, !tbaa !13
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv18.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.unr = phi i64 [ %indvars.iv18.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.prol, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %indvars.iv18.ph, %i.e
  br i1 %i.ae, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %scalar.ph ], [ %indvars.iv18.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.af = load double, ptr %i.g, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv18 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13
  %i.ak = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.ah, double %i.aj)
  store double %i.ak, ptr %i.ai, align 8, !tbaa !13
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.al = load double, ptr %i.g, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next19
  %i.an = load double, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next19 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = tail call nsz double @llvm.fmuladd.f64(double %i.al, double %i.an, double %i.ap)
  store double %i.aq, ptr %i.ao, align 8, !tbaa !13
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next19.1, %wide.trip.count22
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge, label %.preheader, !llvm.loop !38

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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"LLSModel", !5, i64 0, !5, i64 10368, !5, i64 18560, !6, i64 18816, !9, i64 18824, !9, i64 18832}
!11 = !{!10, !6, i64 18816}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !28}
!18 = distinct !{!18, !14, !29}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !28}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!10, !9, i64 18824}
!31 = !{!10, !9, i64 18832}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !14, !43, !44}
!37 = distinct !{!37, !14, !43}
!38 = distinct !{!38, !14}
!39 = !{!33}
!40 = !{!34}
!41 = !{!35}
!42 = !{!34, !33}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
