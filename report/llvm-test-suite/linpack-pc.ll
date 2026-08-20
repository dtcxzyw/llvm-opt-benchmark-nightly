inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
  %i.awp = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.awf
  store float %i.awo, ptr %i.awp, align 4, !tbaa !11
  %i.awq = fdiv float 2.000000e+00, %i.awo
  %i.awr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.awf
  store float %i.awq, ptr %i.awr, align 4, !tbaa !11
  %i.aws = fdiv float %i.awj, 5.600000e-02
  %i.awt = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.awf
  store float %i.aws, ptr %i.awt, align 4, !tbaa !11
  %i.awu = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awv = fadd float %i.awu, %i.awo              ; 2 uses
  store float %i.awv, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.aww = add nsw i32 %i.awe, 1
  store i32 %i.aww, ptr @main.j, align 4, !tbaa !4
  %i.awx = icmp slt i32 %i.awe, 11
  br i1 %i.awx, label %bb.aj, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %._crit_edge433
  %i.awy = fdiv float %i.awv, 5.000000e+00
  store float %i.awy, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awz = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.axa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awz, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matgen(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !11
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader52.preheader, label %._crit_edge62.split

.preheader52.preheader:                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 7 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 2 uses
  %.04455 = phi i32 [ 1325, %.preheader52.preheader ], [ %i.e, %._crit_edge ]
  %i.c = mul nsw i64 %indvars.iv64, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14553 = phi i32 [ %.04455, %.preheader52 ], [ %i.e, %bb.b ]
  %i.d = mul nuw nsw i32 %.14553, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, f0x38800000        ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.h, ptr %gep, align 4, !tbaa !11
  %i.i = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %. = select i1 %i.j, float %i.h, float %i.i
  store float %., ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.preheader, label %.preheader52, !llvm.loop !15

.preheader.preheader:                             ; preds = %._crit_edge
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.l, i1 false), !tbaa !11
  %i.m = sext i32 %1 to i64
  %wide.trip.count80 = zext nneg i32 %2 to i64    ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count67, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.n
  %i.o = add nuw nsw i64 %wide.trip.count67, 4611686018427387903
  %i.p = mul i64 %i.o, %i.b
  %i.q = add i64 %i.p, %wide.trip.count67
  %i.r = shl i64 %i.q, 2
  %scevgep84 = getelementptr i8, ptr %0, i64 %i.r
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %3, %scevgep84
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %1, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter = and i64 %wide.trip.count80, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60
  %indvars.iv77 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next78, %._crit_edge60 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv77, %i.m
  %invariant.gep82 = getelementptr [4 x i8], ptr %0, i64 %i.t ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %wide.load85 = load <4 x float>, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %i.w = getelementptr [4 x i8], ptr %invariant.gep82, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load86 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !62
  %wide.load87 = load <4 x float>, ptr %i.x, align 4, !tbaa !11, !alias.scope !62
  %i.y = fadd <4 x float> %wide.load, %wide.load86
  %i.z = fadd <4 x float> %wide.load85, %wide.load87
  store <4 x float> %i.y, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  store <4 x float> %i.z, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge60, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %scalar.ph.prol ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72.prol ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %gep83.prol = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72.prol
  %i.ad = load float, ptr %gep83.prol, align 4, !tbaa !11
  %i.ae = fadd float %i.ac, %i.ad
  store float %i.ae, ptr %i.ab, align 4, !tbaa !11
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %scalar.ph.preheader ], [ %indvars.iv.next73.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv72.ph, %wide.trip.count80
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge60, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %scalar.ph ], [ %indvars.iv72.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72
  %i.aj = load float, ptr %gep83, align 4, !tbaa !11
  %i.ak = fadd float %i.ai, %i.aj
  store float %i.ak, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %gep83.1 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73
  %i.an = load float, ptr %gep83.1, align 4, !tbaa !11
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %i.al, align 4, !tbaa !11
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.1 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %gep83.2 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.1
  %i.ar = load float, ptr %gep83.2, align 4, !tbaa !11
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %i.ap, align 4, !tbaa !11
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.2 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %gep83.3 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.2
  %i.av = load float, ptr %gep83.3, align 4, !tbaa !11
  %i.aw = fadd float %i.au, %i.av
  store float %i.aw, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count80
  br i1 %exitcond76.not.3, label %._crit_edge60, label %scalar.ph, !llvm.loop !67

._crit_edge60:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge62.split, label %.preheader, !llvm.loop !16

._crit_edge62.split:                              ; preds = %._crit_edge60, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgefa(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.a = add i32 %2, -1                           ; 5 uses
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph103.preheader, label %.loopexit100

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64                  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4                      ; 2 uses
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep115 = getelementptr i8, ptr %i.j, i64 %i.g
  %5 = shl nsw i64 %i.c, 2
  %i.k = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.l = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 %i.f
  %7 = getelementptr i8, ptr %0, i64 %i.g
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 12 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.m = sub i64 %i.k, %indvars.iv107             ; 3 uses
  %i.n = mul i64 %i.f, %indvars.iv107             ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.n
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep116 = getelementptr i8, ptr %i.o, i64 4
  %8 = mul i64 %5, %indvars.iv107
  %scevgep119 = getelementptr i8, ptr %7, i64 %8
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %i.p = mul nsw i64 %indvars.iv107, %i.c
  %i.q = mul nsw i32 %1, %indvars109
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !11 ; 3 uses
  %i.v = tail call float @llvm.fabs.f32(float %i.u) ; 2 uses
  %xtraiter = and i64 %i.m, 1
  %i.w = icmp eq i64 %i.l, %indvars.iv107
  br i1 %i.w, label %.lr.ph48.i.epil.preheader, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.lr.ph103.new
  %indvars.iv52.i = phi i64 [ 1, %.lr.ph103.new ], [ %indvars.iv.next53.i.1, %.lr.ph48.i ] ; 4 uses
  %.247.i = phi i32 [ 0, %.lr.ph103.new ], [ %.3.i.1, %.lr.ph48.i ]
  %.23345.i = phi float [ %i.v, %.lr.ph103.new ], [ %.334.i.1, %.lr.ph48.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.new ], [ %niter.next.1, %.lr.ph48.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv52.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  %i.z = tail call float @llvm.fabs.f32(float %i.y) ; 2 uses
  %i.aa = fcmp ogt float %i.z, %.23345.i          ; 2 uses
  %.334.i = select i1 %i.aa, float %i.z, float %.23345.i ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.aa, i32 %i.ab, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next53.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.af, float %i.ae, float %.334.i ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.af, i32 %i.ag, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !27

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.loopexit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %indvars.iv52.i.epil.init = phi i64 [ 1, %.lr.ph103 ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %i.v, %.lr.ph103 ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv52.i.epil.init
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp ogt float %i.aj, %.23345.i.epil.init
  %i.al = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %.3.i.epil = select i1 %i.ak, i32 %i.al, i32 %.247.i.epil.init
  br label %idamax.exit.loopexit

idamax.exit.loopexit:                             ; preds = %idamax.exit.loopexit.unr-lcssa, %.lr.ph48.i.epil.preheader
  %.3.i.lcssa = phi i32 [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ], [ %.3.i.epil, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.am = add nsw i32 %.3.i.lcssa, %indvars109    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv107
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = sext i32 %i.am to i64                   ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11 ; 3 uses
  %i.as = fcmp une float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %idamax.exit.loopexit
  %.not = icmp eq i32 %.3.i.lcssa, 0              ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.u, ptr %i.aq, align 4, !tbaa !11
  store float %i.ar, ptr %i.t, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = phi float [ %i.ar, %bb.c ], [ %i.u, %bb.b ]
  %i.au = fdiv float -1.000000e+00, %i.at         ; 2 uses
  %i.av = sub nsw i64 %i.d, %indvars.iv.next108   ; 8 uses
  %i.aw = getelementptr i8, ptr %i.t, i64 4       ; 6 uses
  %min.iters.check124 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check124, label %.lr.ph25.i.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %bb.d
  %n.vec126 = and i64 %i.av, -8                   ; 3 uses
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat128 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body129 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index130 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load131 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %wide.load132 = load <4 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.az = fmul <4 x float> %broadcast.splat128, %wide.load131
  %i.ba = fmul <4 x float> %broadcast.splat128, %wide.load132
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !11
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !11
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.bb, label %middle.block134, label %vector.body129, !llvm.loop !68

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %i.av, %n.vec126
  br i1 %cmp.n135, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.d, %middle.block134
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec126, %middle.block134 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv28.i ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = fmul float %i.au, %i.bd
  store float %i.be, ptr %i.bc, align 4, !tbaa !11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.av
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block134
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ao
  %min.iters.check = icmp ult i64 %i.av, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep119
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  %i.bf = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.av, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  %i.bg = sub i64 %i.k, %indvars.iv107
  %xtraiter140 = and i64 %i.bg, 1
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bh = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bh ; 2 uses
  %i.bi = load float, ptr %gep, align 4, !tbaa !11 ; 6 uses
  %.pre = add nsw i64 %i.bh, %indvars.iv107       ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  store float %i.bk, ptr %gep, align 4, !tbaa !11
  store float %i.bi, ptr %i.bj, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.bl = getelementptr [4 x i8], ptr %0, i64 %.pre
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 4 uses
  %i.bn = fcmp oeq float %i.bi, 0.000000e+00
  br i1 %i.bn, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bf
  br i1 %brmerge, label %.lr.ph.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bo, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %wide.load120.a = load <4 x float>, ptr %i.bp, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load121 = load <4 x float>, ptr %i.bq, align 4, !tbaa !11, !alias.scope !73
  %wide.load122 = load <4 x float>, ptr %i.br, align 4, !tbaa !11, !alias.scope !73
  %i.bs = fmul <4 x float> %broadcast.splat, %wide.load121
  %i.bt = fmul <4 x float> %broadcast.splat, %wide.load122
  %i.bu = fadd <4 x float> %wide.load, %i.bs
  %i.bv = fadd <4 x float> %wide.load120.a, %i.bt
  store <4 x float> %i.bu, ptr %i.bo, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  store <4 x float> %i.bv, ptr %i.bp, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader137

.lr.ph.i.preheader137:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.bx = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod141.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader137
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.ph ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.ph
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = fmul float %i.bi, %i.cb
  %i.cd = fadd float %i.bz, %i.cc
  store float %i.cd, ptr %i.by, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader137
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader137 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ce = icmp eq i64 %i.l, %i.bx
  br i1 %i.ce, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = fmul float %i.bi, %i.ci
  %i.ck = fadd float %i.cg, %i.cj
  store float %i.ck, ptr %i.cf, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !11
  %i.cp = fmul float %i.bi, %i.co
  %i.cq = fadd float %i.cm, %i.cp
  store float %i.cq, ptr %i.cl, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i.1, %i.av
  br i1 %exitcond.not.i99.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !76

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !32

bb.g:                                             ; preds = %idamax.exit.loopexit
  store i32 %indvars109, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %daxpy.exit, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit100, label %.lr.ph103, !llvm.loop !33

.loopexit100:                                     ; preds = %.loopexit, %bb.a
  %i.cr = sext i32 %i.a to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cr
  store i32 %i.a, ptr %i.cs, align 4, !tbaa !4
  %i.ct = add i32 %1, 1
  %i.cu = mul i32 %i.a, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !11
  %i.cy = fcmp oeq float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit100
  store i32 %i.a, ptr %4, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %.preheader127

.preheader127:                                    ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.d = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph133, label %.loopexit124

.lr.ph133:                                        ; preds = %bb.b
  %i.f = add i32 %1, 1                            ; 2 uses
  %i.g = zext nneg i32 %2 to i64                  ; 5 uses
  %wide.trip.count149 = zext nneg i32 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %scevgep164 = getelementptr i8, ptr %4, i64 %i.h
  %scevgep165 = getelementptr i8, ptr %0, i64 4
  %i.i = add nsw i64 %i.g, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph133, %daxpy.exit
  %indvars.iv146 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next147, %daxpy.exit ] ; 10 uses
  %i.j = shl nuw nsw i64 %indvars.iv146, 2
  %i.k = getelementptr i8, ptr %4, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 4
  %i.l = trunc i64 %indvars.iv146 to i32
  %i.m = mul i32 %i.f, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.o
  %i.p = sub nsw i64 %i.g, %indvars.iv146
  %i.q = shl i64 %i.p, 2
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.o
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv146
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !11 ; 6 uses
  %i.w = zext i32 %i.s to i64
  %.not103 = icmp eq i64 %indvars.iv146, %i.w
  br i1 %.not103, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv146 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  store float %i.y, ptr %i.u, align 4, !tbaa !11
  store float %i.v, ptr %i.x, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 4 uses
  %i.z = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.aa = mul i32 %i.f, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4      ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next147 ; 4 uses
  %i.af = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.af, label %daxpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nsw i64 %i.g, %indvars.iv.next147   ; 4 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %bound0 = icmp ult ptr %scevgep, %scevgep168
  %bound1 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %wide.load169 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load170 = load <4 x float>, ptr %i.aj, align 4, !tbaa !11, !alias.scope !80
  %wide.load171 = load <4 x float>, ptr %i.ak, align 4, !tbaa !11, !alias.scope !80
  %i.al = fmul <4 x float> %broadcast.splat, %wide.load170
  %i.am = fmul <4 x float> %broadcast.splat, %wide.load171
  %i.an = fadd <4 x float> %wide.load, %i.al
  %i.ao = fadd <4 x float> %wide.load169, %i.am
  store <4 x float> %i.an, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  store <4 x float> %i.ao, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.f, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 5 uses
  %i.aq = add i64 %indvars.iv146, %indvars.iv.i.ph
  %i.ar = sub nsw i64 %indvars.iv146, %i.g
  %i.as = and i64 %i.ar, 1
  %lcmp.mod208.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod208.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.ph
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = fmul float %i.v, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.az = icmp eq i64 %i.i, %i.aq
  br i1 %i.az, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = fmul float %i.v, %i.bd
  %i.bf = fadd float %i.bb, %i.be
  store float %i.bf, ptr %i.ba, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %i.v, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  store float %i.bl, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ag
  br i1 %exitcond.not.i.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !83

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.e
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit124, label %bb.c, !llvm.loop !21

.loopexit124:                                     ; preds = %daxpy.exit, %bb.b
  %i.bm = icmp sgt i32 %2, 0
  br i1 %i.bm, label %.lr.ph136.preheader, label %.loopexit

.lr.ph136.preheader:                              ; preds = %.loopexit124
  %i.bn = zext nneg i32 %2 to i64
  %i.bo = sext i32 %1 to i64                      ; 4 uses
  %wide.trip.count154 = zext nneg i32 %2 to i64   ; 5 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count154, 2  ; 2 uses
  %i.bq = add nsw i64 %i.bp, -4
  %i.br = add nuw nsw i64 %wide.trip.count154, 4611686018427387903
  %i.bs = mul i64 %i.br, %i.bo
  %i.bt = shl i64 %i.bs, 2                        ; 2 uses
  %i.bu = mul nsw i64 %i.bo, -4
  %i.bv = shl nsw i64 %i.bo, 2
  %i.bw = sub nuw nsw i64 -4, %i.bv
  %i.bx = add nsw i64 %wide.trip.count154, -2
  %i.by = getelementptr i8, ptr %0, i64 %i.bt
  %i.bz = getelementptr i8, ptr %0, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bp
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %daxpy.exit110
  %indvars.iv151 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next152, %daxpy.exit110 ] ; 6 uses
  %i.cc = shl i64 %indvars.iv151, 2
  %i.cd = sub i64 %i.bq, %i.cc
  %scevgep173 = getelementptr i8, ptr %4, i64 %i.cd
  %i.ce = mul i64 %i.bu, %indvars.iv151
  %scevgep174 = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cf = mul i64 %i.bw, %indvars.iv151
  %scevgep175 = getelementptr i8, ptr %i.cb, i64 %i.cf
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next152 to i32
  %i.cg = sub nsw i64 %i.bn, %indvars.iv.next152  ; 8 uses
  %i.ch = sub nsw i32 %2, %indvars
  %i.ci = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cg ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11
  %i.ck = mul nsw i64 %i.cg, %i.bo
  %i.cl = mul nsw i32 %i.ch, %1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %0, i64 %i.cg
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load float, ptr %i.co, align 4, !tbaa !11
  %i.cq = fdiv float %i.cj, %i.cp                 ; 6 uses
  store float %i.cq, ptr %i.ci, align 4, !tbaa !11
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck ; 4 uses
  %i.cs = icmp slt i64 %i.cg, 1
  %i.ct = fcmp oeq float %i.cq, 0.000000e+00
  %or.cond41.i104 = or i1 %i.cs, %i.ct
  br i1 %or.cond41.i104, label %daxpy.exit110, label %.lr.ph.i106.preheader

.lr.ph.i106.preheader:                            ; preds = %.lr.ph136
  %min.iters.check180 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check180, label %.lr.ph.i106.preheader195, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i106.preheader
  %bound0176 = icmp ult ptr %4, %scevgep175
  %bound1177 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %.lr.ph.i106.preheader195, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck172
  %n.vec182 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph181
  %index186 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body185 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index186 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load187 = load <4 x float>, ptr %i.cu, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %wide.load188 = load <4 x float>, ptr %i.cv, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index186 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load189 = load <4 x float>, ptr %i.cw, align 4, !tbaa !11, !alias.scope !87
  %wide.load190 = load <4 x float>, ptr %i.cx, align 4, !tbaa !11, !alias.scope !87
  %i.cy = fmul <4 x float> %broadcast.splat184, %wide.load189
  %i.cz = fmul <4 x float> %broadcast.splat184, %wide.load190
  %i.da = fsub <4 x float> %wide.load187, %i.cy
  %i.db = fsub <4 x float> %wide.load188, %i.cz
  store <4 x float> %i.da, ptr %i.cu, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  store <4 x float> %i.db, ptr %i.cv, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.dc, label %middle.block192, label %vector.body185, !llvm.loop !89

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.cg, %n.vec182
  br i1 %cmp.n193, label %daxpy.exit110, label %.lr.ph.i106.preheader195

.lr.ph.i106.preheader195:                         ; preds = %vector.memcheck172, %.lr.ph.i106.preheader, %middle.block192
  %indvars.iv.i107.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.lr.ph.i106.preheader ], [ %n.vec182, %middle.block192 ] ; 5 uses
  %i.dd = add nuw i64 %indvars.iv151, %indvars.iv.i107.ph
  %i.de = sub nsw i64 %indvars.iv151, %wide.trip.count154
  %i.df = and i64 %i.de, 1
  %lcmp.mod210.not.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod210.not.not, label %.lr.ph.i106.prol, label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol:                                 ; preds = %.lr.ph.i106.preheader195
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107.ph ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !11
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i107.ph
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = fmul float %i.cq, %i.dj
  %i.dl = fsub float %i.dh, %i.dk
  store float %i.dl, ptr %i.dg, align 4, !tbaa !11
  %indvars.iv.next.i108.prol = or disjoint i64 %indvars.iv.i107.ph, 1
  br label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol.loopexit:                        ; preds = %.lr.ph.i106.prol, %.lr.ph.i106.preheader195
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %.lr.ph.i106.preheader195 ], [ %indvars.iv.next.i108.prol, %.lr.ph.i106.prol ]
  %i.dm = icmp eq i64 %i.bx, %i.dd
  br i1 %i.dm, label %daxpy.exit110, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108.1, %.lr.ph.i106 ], [ %indvars.iv.i107.unr, %.lr.ph.i106.prol.loopexit ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !11
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i107
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !11
  %i.dr = fmul float %i.cq, %i.dq
  %i.ds = fsub float %i.do, %i.dr
  store float %i.ds, ptr %i.dn, align 4, !tbaa !11
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i108 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i108
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11
  %i.dx = fmul float %i.cq, %i.dw
  %i.dy = fsub float %i.du, %i.dx
  store float %i.dy, ptr %i.dt, align 4, !tbaa !11
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i107, 2 ; 2 uses
  %exitcond.not.i109.1 = icmp eq i64 %indvars.iv.next.i108.1, %i.cg
  br i1 %exitcond.not.i109.1, label %daxpy.exit110, label %.lr.ph.i106, !llvm.loop !90

daxpy.exit110:                                    ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106, %middle.block192, %.lr.ph136
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph136, !llvm.loop !24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ddot.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ddot.exit ] ; 9 uses
  %indvars140 = trunc i64 %indvars.iv to i32
  %i.dz = mul nsw i64 %indvars.iv, %i.d
  %i.ea = mul nsw i32 %1, %indvars140
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dz ; 5 uses
  %i.ec = icmp eq i64 %indvars.iv, 0
  br i1 %i.ec, label %ddot.exit, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.ed = icmp samesign ult i64 %indvars.iv, 4
  br i1 %i.ed, label %.lr.ph.i112.epil.preheader, label %.lr.ph.i112.preheader.new

.lr.ph.i112.preheader.new:                        ; preds = %.lr.ph.i112.preheader
  %unroll_iter = and i64 %indvars.iv, 9223372036854775804
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112, %.lr.ph.i112.preheader.new
  %indvars.iv.i113 = phi i64 [ 0, %.lr.ph.i112.preheader.new ], [ %indvars.iv.next.i114.3, %.lr.ph.i112 ] ; 6 uses
  %.13743.i = phi float [ 0.000000e+00, %.lr.ph.i112.preheader.new ], [ %i.fb, %.lr.ph.i112 ]
  %niter = phi i64 [ 0, %.lr.ph.i112.preheader.new ], [ %niter.next.3, %.lr.ph.i112 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i113
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !11
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i113
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !11
  %i.ei = fmul float %i.ef, %i.eh
  %i.ej = fadd float %.13743.i, %i.ei
  %indvars.iv.next.i114 = or disjoint i64 %indvars.iv.i113, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114
  %i.el = load float, ptr %i.ek, align 4, !tbaa !11
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114
  %i.en = load float, ptr %i.em, align 4, !tbaa !11
  %i.eo = fmul float %i.el, %i.en
  %i.ep = fadd float %i.ej, %i.eo
  %indvars.iv.next.i114.1 = or disjoint i64 %indvars.iv.i113, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114.1
  %i.er = load float, ptr %i.eq, align 4, !tbaa !11
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114.1
  %i.et = load float, ptr %i.es, align 4, !tbaa !11
  %i.eu = fmul float %i.er, %i.et
  %i.ev = fadd float %i.ep, %i.eu
  %indvars.iv.next.i114.2 = or disjoint i64 %indvars.iv.i113, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114.2
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !11
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114.2
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !11
  %i.fa = fmul float %i.ex, %i.ez
  %i.fb = fadd float %i.ev, %i.fa                 ; 3 uses
  %indvars.iv.next.i114.3 = add nuw nsw i64 %indvars.iv.i113, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ddot.exit.loopexit.unr-lcssa, label %.lr.ph.i112, !llvm.loop !91

ddot.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ddot.exit, label %.lr.ph.i112.epil.preheader

.lr.ph.i112.epil.preheader:                       ; preds = %ddot.exit.loopexit.unr-lcssa, %.lr.ph.i112.preheader
  %indvars.iv.i113.epil.init = phi i64 [ 0, %.lr.ph.i112.preheader ], [ %indvars.iv.next.i114.3, %ddot.exit.loopexit.unr-lcssa ]
  %.13743.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i112.preheader ], [ %i.fb, %ddot.exit.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i112.epil

.lr.ph.i112.epil:                                 ; preds = %.lr.ph.i112.epil, %.lr.ph.i112.epil.preheader
  %indvars.iv.i113.epil = phi i64 [ %indvars.iv.next.i114.epil, %.lr.ph.i112.epil ], [ %indvars.iv.i113.epil.init, %.lr.ph.i112.epil.preheader ] ; 3 uses
  %.13743.i.epil = phi float [ %i.fh, %.lr.ph.i112.epil ], [ %.13743.i.epil.init, %.lr.ph.i112.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i112.epil ], [ 0, %.lr.ph.i112.epil.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i113.epil
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !11
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i113.epil
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !11
  %i.fg = fmul float %i.fd, %i.ff
  %i.fh = fadd float %.13743.i.epil, %i.fg        ; 2 uses
  %indvars.iv.next.i114.epil = add nuw nsw i64 %indvars.iv.i113.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ddot.exit, label %.lr.ph.i112.epil, !llvm.loop !92

ddot.exit:                                        ; preds = %ddot.exit.loopexit.unr-lcssa, %.lr.ph.i112.epil, %.lr.ph
  %.038.i = phi float [ 0.000000e+00, %.lr.ph ], [ %i.fb, %ddot.exit.loopexit.unr-lcssa ], [ %i.fh, %.lr.ph.i112.epil ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !11
  %i.fk = fsub float %i.fj, %.038.i
  %i.fl = sext i32 %i.ea to i64
  %i.fm = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !11
  %i.fp = fdiv float %i.fk, %i.fo
  store float %i.fp, ptr %i.fi, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %ddot.exit
  %i.fq = icmp sgt i32 %2, 2
  br i1 %i.fq, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %._crit_edge
  %i.fr = add i32 %1, 1
  %i.fs = zext nneg i32 %2 to i64
  %wide.trip.count144 = zext nneg i32 %i.a to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph131, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph131 ], [ %indvar.next, %bb.i ] ; 2 uses
  %indvars.iv141 = phi i64 [ 1, %.lr.ph131 ], [ %indvars.iv.next142, %bb.i ] ; 3 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 3 uses
  %i.ft = sub nsw i64 %i.fs, %indvars.iv.next142  ; 3 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ft ; 4 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !11
  %i.fw = trunc nsw i64 %i.ft to i32              ; 2 uses
  %i.fx = mul i32 %i.fr, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 5 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 4      ; 5 uses
  %xtraiter200 = and i64 %indvars.iv141, 3        ; 3 uses
  %i.gc = icmp ult i64 %indvar, 3
  br i1 %i.gc, label %.lr.ph.i117.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter205 = and i64 %indvars.iv141, 9223372036854775804
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117, %.new
  %indvars.iv.i118 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i120.3, %.lr.ph.i117 ] ; 6 uses
  %.13743.i119 = phi float [ 0.000000e+00, %.new ], [ %i.ha, %.lr.ph.i117 ]
  %niter206 = phi i64 [ 0, %.new ], [ %niter206.next.3, %.lr.ph.i117 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i118
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !11
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i118
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !11
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = fadd float %.13743.i119, %i.gh
  %indvars.iv.next.i120 = or disjoint i64 %indvars.iv.i118, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !11
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !11
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = fadd float %i.gi, %i.gn
  %indvars.iv.next.i120.1 = or disjoint i64 %indvars.iv.i118, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120.1
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120.1
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !11
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = fadd float %i.go, %i.gt
  %indvars.iv.next.i120.2 = or disjoint i64 %indvars.iv.i118, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120.2
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !11
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120.2
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !11
end_hunk_0
