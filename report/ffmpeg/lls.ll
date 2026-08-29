Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lls?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@avpriv_solve_lls:bb.a
  %lcmp.mod244 = icmp ne i64 %xtraiter240, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader239
  %indvars.iv194.epil = phi i64 [ %indvars.iv194.epil.init, %.epil.preheader239 ], [ %indvars.iv.next195.epil, %bb.h ] ; 3 uses
  %.0116141.epil = phi double [ %.0116141.epil.init, %.epil.preheader239 ], [ %i.cu, %bb.h ]
  %epil.iter241 = phi i64 [ 0, %.epil.preheader239 ], [ %epil.iter241.next, %bb.h ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv194.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv194.epil
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !12
  %i.ct = fneg nsz double %i.cq
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %.0116141.epil) ; 2 uses
  %indvars.iv.next195.epil = add nuw nsw i64 %indvars.iv194.epil, 1
  %epil.iter241.next = add i64 %epil.iter241, 1   ; 2 uses
  %epil.iter241.cmp.not = icmp eq i64 %epil.iter241.next, %xtraiter240
  br i1 %epil.iter241.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.f
  %.0116.lcssa = phi double [ %i.bo, %bb.f ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %bb.h ]
  %i.cv = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv198
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv198
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !12
  %i.cy = fdiv nsz double %.0116.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv198
  store double %i.cy, ptr %i.cz, align 8, !tbaa !12
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %.preheader131, label %bb.f, !llvm.loop !24

.loopexit:                                        ; preds = %._crit_edge162
  %.not.not = icmp sgt i64 %indvars.iv.next221, %i.bm
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, -1
  br i1 %.not.not, label %.lr.ph154, label %._crit_edge173, !llvm.loop !25

.lr.ph154:                                        ; preds = %.loopexit, %.preheader.lr.ph
  %indvars.iv220 = phi i64 [ %i.bl, %.preheader.lr.ph ], [ %indvars.iv.next221, %.loopexit ] ; 2 uses
  %indvars.iv203 = phi i64 [ %i.bk, %.preheader.lr.ph ], [ %indvars.iv.next204, %.loopexit ] ; 2 uses
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, -1 ; 7 uses
  %i.da = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next221 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge151
  %indvars.iv205 = phi i64 [ %indvars.iv203, %.lr.ph154 ], [ %indvars.iv.next206, %._crit_edge151 ] ; 9 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv205
  %i.dc = load double, ptr %i.db, align 8, !tbaa !12 ; 2 uses
  %invariant.gep144 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv205
  %.not.not128146 = icmp slt i64 %indvars.iv205, %indvars.iv.next221
  br i1 %.not.not128146, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.i, %.lr.ph150
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph150 ], [ %indvars.iv205, %bb.i ]
  %.0115148 = phi double [ %i.dh, %.lr.ph150 ], [ %i.dc, %bb.i ]
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 4 uses
  %gep145 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep144, i64 %indvars.iv.next208
  %i.dd = load double, ptr %gep145, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next208
  %i.df = load double, ptr %i.de, align 8, !tbaa !12
  %i.dg = fneg nsz double %i.dd
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.df, double %.0115148) ; 2 uses
  %sext = shl i64 %indvars.iv.next208, 32
  %i.di = ashr exact i64 %sext, 32
  %.not.not128 = icmp slt i64 %i.di, %indvars.iv.next221
  br i1 %.not.not128, label %.lr.ph150, label %._crit_edge151, !llvm.loop !26

._crit_edge151:                                   ; preds = %.lr.ph150, %bb.i
  %.0115.lcssa = phi double [ %i.dc, %bb.i ], [ %i.dh, %.lr.ph150 ]
  %i.dj = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv205
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv205
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !12
  %i.dm = fdiv nsz double %.0115.lcssa, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv205
  store double %i.dm, ptr %i.dn, align 8, !tbaa !12
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, -1
  %i.do = icmp sgt i64 %indvars.iv205, 0
  br i1 %i.do, label %bb.i, label %.lr.ph168, !llvm.loop !27

.lr.ph168:                                        ; preds = %._crit_edge151
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next221 ; 2 uses
  store double %i.bh, ptr %i.dp, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next221 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph168, %._crit_edge162
  %indvars.iv215 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next216, %._crit_edge162 ] ; 10 uses
  %storemerge165 = phi double [ %i.bh, %.lr.ph168 ], [ %i.eq, %._crit_edge162 ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv215
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %indvars.iv215
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv215
  %i.dv = load double, ptr %i.du, align 8, !tbaa !12
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next216
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !12
  %i.dy = fmul nsz double %i.dx, -2.000000e+00
  %i.dz = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %i.dv, double %i.dy) ; 3 uses
  %invariant.gep156 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv215 ; 3 uses
  %.not = icmp eq i64 %indvars.iv215, 0
  br i1 %.not, label %._crit_edge162, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %bb.j
  %xtraiter247 = and i64 %indvars.iv215, 1
  %i.ea = icmp eq i64 %indvars.iv215, 1
  br i1 %i.ea, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter252 = and i64 %indvars.iv215, 9223372036854775806
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next212.1, %.lr.ph161 ] ; 4 uses
  %.0159 = phi double [ %i.dz, %.lr.ph161.preheader.new ], [ %i.ek, %.lr.ph161 ]
  %niter253 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter253.next.1, %.lr.ph161 ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv211
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !12
  %i.ed = fmul nsz double %i.ec, 2.000000e+00
  %gep157 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv211
  %i.ee = load double, ptr %gep157, align 8, !tbaa !12
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %.0159)
  %indvars.iv.next212 = or disjoint i64 %indvars.iv211, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next212
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !12
  %i.ei = fmul nsz double %i.eh, 2.000000e+00
  %gep157.1 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv.next212
  %i.ej = load double, ptr %gep157.1, align 8, !tbaa !12
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.ef) ; 3 uses
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !28

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next212.1, %._crit_edge162.loopexit.unr-lcssa ] ; 2 uses
  %.0159.epil.init = phi double [ %i.dz, %.lr.ph161.preheader ], [ %i.ek, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod251 = trunc i64 %indvars.iv215 to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv211.epil.init
  %i.em = load double, ptr %i.el, align 8, !tbaa !12
  %i.en = fmul nsz double %i.em, 2.000000e+00
  %gep157.epil = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv211.epil.init
  %i.eo = load double, ptr %gep157.epil, align 8, !tbaa !12
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %.0159.epil.init)
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %.lr.ph161.epil.preheader, %._crit_edge162.loopexit.unr-lcssa, %bb.j
  %.0.lcssa = phi double [ %i.dz, %bb.j ], [ %i.ek, %._crit_edge162.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph161.epil.preheader ]
  %i.eq = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %.0.lcssa, double %storemerge165) ; 2 uses
  store double %i.eq, ptr %i.dp, align 8, !tbaa !12
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %indvars.iv220
  br i1 %exitcond219.not, label %.loopexit, label %bb.j, !llvm.loop !29

._crit_edge173:                                   ; preds = %.loopexit, %.preheader131
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
  %scevgep25 = getelementptr i8, ptr %1, i64 %i.d ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit ] ; 10 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %3 = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %4 = sub nsw i64 %wide.trip.count22, %indvars.iv ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.g = mul nuw nsw i64 %indvars.iv, 288
  %scevgep24 = getelementptr i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.h = mul nuw nsw i64 %indvars.iv, 296
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %2, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %scevgep, %scevgep25
  %bound127 = icmp ult ptr %1, %scevgep24
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.i = add i64 %indvars.iv, %n.vec
  %i.j = load double, ptr %2, align 8, !tbaa !12, !alias.scope !32
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add nuw i64 %indvars.iv, %index          ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !12, !alias.scope !35
  %wide.load29 = load <2 x double>, ptr %i.m, align 8, !tbaa !12, !alias.scope !35
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.k ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %wide.load30 = load <2 x double>, ptr %i.n, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %wide.load31 = load <2 x double>, ptr %i.o, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %i.p = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load30)
  %i.q = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load29, <2 x double> %wide.load31)
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !12, !alias.scope !37, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.i, %middle.block ] ; 6 uses
  %i.s = sub i64 %wide.trip.count22, %indvars.iv18.ph
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.t = load double, ptr %2, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18.ph
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv18.ph ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !12
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.t, double %i.v, double %i.x)
  store double %i.y, ptr %i.w, align 8, !tbaa !12
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv18.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.unr = phi i64 [ %indvars.iv18.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.prol, %scalar.ph.prol ]
  %i.z = icmp eq i64 %indvars.iv18.ph, %i.e
  br i1 %i.z, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %scalar.ph ], [ %indvars.iv18.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aa = load double, ptr %2, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv18 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !12
  %i.af = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.ae)
  store double %i.af, ptr %i.ad, align 8, !tbaa !12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.ag = load double, ptr %2, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next19
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next19 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !12
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.ag, double %i.ai, double %i.ak)
  store double %i.al, ptr %i.aj, align 8, !tbaa !12
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
