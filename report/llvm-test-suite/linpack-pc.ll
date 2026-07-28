inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
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

bb.av:                                            ; preds = %._crit_edge437
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
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep117.a = getelementptr i8, ptr %i.j, i64 %i.g
  %scevgep120 = getelementptr i8, ptr %0, i64 %i.g
  %i.k = add nsw i64 %i.d, -1                     ; 2 uses
  %i.l = add nsw i64 %i.d, -2                     ; 2 uses
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 14 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.m = sub i64 %i.k, %indvars.iv107             ; 3 uses
  %i.n = add nuw i64 %indvars.iv107, 1
  %i.o = mul i64 %i.f, %i.n
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl nuw nsw i64 %indvars.iv107, 2
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %scevgep118 = getelementptr i8, ptr %i.q, i64 4
  %i.r = trunc i64 %indvars.iv107 to i32
  %i.s = mul i32 %1, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  %scevgep119.a = getelementptr i8, ptr %scevgep118, i64 %i.u
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.u
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %5 = sub nsw i64 %i.d, %indvars.iv107
  %i.v = mul nsw i64 %indvars.iv107, %i.c
  %i.w = mul nsw i32 %1, %indvars109
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.x ; 7 uses
  %i.aa = icmp eq i64 %5, 1
  br i1 %i.aa, label %idamax.exit, label %6

6:                                                ; preds = %.lr.ph103
  %7 = load float, ptr %i.z, align 4, !tbaa !11
  %8 = tail call float @llvm.fabs.f32(float %7)   ; 2 uses
  %xtraiter = and i64 %i.m, 1
  %9 = icmp eq i64 %i.l, %indvars.iv107
  br i1 %9, label %.lr.ph48.i.epil.preheader, label %.new

.new:                                             ; preds = %6
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.new
  %indvars.iv52.i = phi i64 [ 1, %.new ], [ %indvars.iv.next53.i.1, %.lr.ph48.i ] ; 4 uses
  %.247.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph48.i ]
  %.23345.i = phi float [ %8, %.new ], [ %.334.i.1, %.lr.ph48.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph48.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.23345.i         ; 2 uses
  %.334.i = select i1 %i.ae, float %i.ad, float %.23345.i ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.ae, i32 %i.af, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next53.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.aj, float %i.ai, float %.334.i ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.aj, i32 %i.ak, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !27

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %6
  %indvars.iv52.i.epil.init = phi i64 [ 1, %6 ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %6 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %8, %6 ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i.epil.init
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = tail call float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp ogt float %i.an, %.23345.i.epil.init
  %i.ap = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %.3.i.epil = select i1 %i.ao, i32 %i.ap, i32 %.247.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %.lr.ph48.i.epil.preheader, %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %.035.i = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ], [ %.3.i.epil, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %i.aq = add nsw i32 %.035.i, %indvars109        ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv107
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = sext i32 %i.aq to i64                   ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !11 ; 3 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.b, label %bb.g

bb.b:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.035.i, 0                  ; 2 uses
  %.pre = load float, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %.pre, ptr %i.au, align 4, !tbaa !11
  store float %i.av, ptr %i.z, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi float [ %i.av, %bb.c ], [ %.pre, %bb.b ]
  %i.ay = fdiv float -1.000000e+00, %i.ax         ; 2 uses
  %i.az = sub nsw i64 %i.d, %indvars.iv.next108   ; 8 uses
  %i.ba = getelementptr i8, ptr %i.z, i64 4       ; 6 uses
  %min.iters.check126 = icmp ult i64 %i.az, 8
  br i1 %min.iters.check126, label %.lr.ph25.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.d
  %n.vec129 = and i64 %i.az, -8                   ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.ay, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next136, %vector.body132 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index133 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load134 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load135 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fmul <4 x float> %broadcast.splat131, %wide.load134
  %i.be = fmul <4 x float> %broadcast.splat131, %wide.load135
  store <4 x float> %i.bd, ptr %i.bb, align 4, !tbaa !11
  store <4 x float> %i.be, ptr %i.bc, align 4, !tbaa !11
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.bf, label %middle.block137, label %vector.body132, !llvm.loop !68

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.az, %n.vec129
  br i1 %cmp.n138, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.d, %middle.block137
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec129, %middle.block137 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv28.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = fmul float %i.ay, %i.bh
  store float %i.bi, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.az
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block137
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.as
  %min.iters.check = icmp ult i64 %i.az, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep121
  %bound1 = icmp ult ptr %scevgep119.a, %scevgep117.a
  %found.conflict = and i1 %bound0, %bound1
  %i.bj = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.az, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.az, %n.vec
  %i.bk = sub i64 %i.k, %indvars.iv107
  %xtraiter143 = and i64 %i.bk, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bl ; 2 uses
  %i.bm = load float, ptr %gep, align 4, !tbaa !11 ; 6 uses
  %.pre112 = add nsw i64 %i.bl, %indvars.iv107    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre112 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11
  store float %i.bo, ptr %gep, align 4, !tbaa !11
  store float %i.bm, ptr %i.bn, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %.pre112
  %i.bq = getelementptr i8, ptr %i.bp, i64 4      ; 4 uses
  %i.br = fcmp oeq float %i.bm, 0.000000e+00
  br i1 %i.br, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bj
  br i1 %brmerge, label %.lr.ph.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %wide.load122.a = load <4 x float>, ptr %i.bt, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load123 = load <4 x float>, ptr %i.bu, align 4, !tbaa !11, !alias.scope !73
  %wide.load124 = load <4 x float>, ptr %i.bv, align 4, !tbaa !11, !alias.scope !73
  %i.bw = fmul <4 x float> %broadcast.splat, %wide.load123
  %i.bx = fmul <4 x float> %broadcast.splat, %wide.load124
  %i.by = fadd <4 x float> %wide.load, %i.bw
  %i.bz = fadd <4 x float> %wide.load122.a, %i.bx
  store <4 x float> %i.by, ptr %i.bs, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  store <4 x float> %i.bz, ptr %i.bt, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader140

.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.cb = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod144.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader140
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.ph ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.ph
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = fmul float %i.bm, %i.cf
  %i.ch = fadd float %i.cd, %i.cg
  store float %i.ch, ptr %i.cc, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader140
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader140 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ci = icmp eq i64 %i.l, %i.cb
  br i1 %i.ci, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = fmul float %i.bm, %i.cm
  %i.co = fadd float %i.ck, %i.cn
  store float %i.co, ptr %i.cj, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  %i.ct = fmul float %i.bm, %i.cs
  %i.cu = fadd float %i.cq, %i.ct
  store float %i.cu, ptr %i.cp, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i.1, %i.az
  br i1 %exitcond.not.i99.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !76

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !32

bb.g:                                             ; preds = %idamax.exit
  store i32 %indvars109, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %daxpy.exit, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit100, label %.lr.ph103, !llvm.loop !33

.loopexit100:                                     ; preds = %.loopexit, %bb.a
  %i.cv = sext i32 %i.a to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv
  store i32 %i.a, ptr %i.cw, align 4, !tbaa !4
  %i.cx = add i32 %1, 1
  %i.cy = mul i32 %i.a, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !11
  %i.dc = fcmp oeq float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit100
  store i32 %i.a, ptr %4, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %.preheader127

.preheader127:                                    ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.d = sext i32 %1 to i64
end_hunk_0
