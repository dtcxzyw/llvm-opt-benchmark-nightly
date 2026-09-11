Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linpack-pc?download=true
inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 51
begin_hunk_0_@main:bb.a
  %i.avv = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.avl
  store float %i.avu, ptr %i.avv, align 4, !tbaa !18
  %i.avw = fdiv float 2.000000e+00, %i.avu
  %i.avx = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.avl
  store float %i.avw, ptr %i.avx, align 4, !tbaa !18
  %i.avy = fdiv float %i.avp, 5.600000e-02
  %i.avz = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.avl
  store float %i.avy, ptr %i.avz, align 4, !tbaa !18
  %i.awa = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !18
  %i.awb = fadd float %i.awa, %i.avu              ; 2 uses
  store float %i.awb, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !18
  %i.awc = add nsw i32 %i.avk, 1
  store i32 %i.awc, ptr @main.j, align 4, !tbaa !16
  %i.awd = icmp slt i32 %i.avk, 11
  br i1 %i.awd, label %bb.aj, label %bb.av, !llvm.loop !57

bb.av:                                            ; preds = %._crit_edge443
  %i.awe = fdiv float %i.awb, 5.000000e+00
  store float %i.awe, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !18
  %i.awf = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.awg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awf, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matgen(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !18
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
  store float %i.h, ptr %gep, align 4, !tbaa !18
  %i.i = load float, ptr %4, align 4, !tbaa !18   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %. = select i1 %i.j, float %i.h, float %i.i
  store float %., ptr %4, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.preheader, label %.preheader52, !llvm.loop !1

.preheader.preheader:                             ; preds = %._crit_edge
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.l, i1 false), !tbaa !18
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
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !18, !alias.scope !67, !noalias !68
  %wide.load85 = load <4 x float>, ptr %i.v, align 4, !tbaa !18, !alias.scope !67, !noalias !68
  %i.w = getelementptr [4 x i8], ptr %invariant.gep82, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load86 = load <4 x float>, ptr %i.w, align 4, !tbaa !18, !alias.scope !68
  %wide.load87 = load <4 x float>, ptr %i.x, align 4, !tbaa !18, !alias.scope !68
  %i.y = fadd <4 x float> %wide.load, %wide.load86
  %i.z = fadd <4 x float> %wide.load85, %wide.load87
  store <4 x float> %i.y, ptr %i.u, align 4, !tbaa !18, !alias.scope !67, !noalias !68
  store <4 x float> %i.z, ptr %i.v, align 4, !tbaa !18, !alias.scope !67, !noalias !68
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
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !18
  %gep83.prol = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72.prol
  %i.ad = load float, ptr %gep83.prol, align 4, !tbaa !18
  %i.ae = fadd float %i.ac, %i.ad
  store float %i.ae, ptr %i.ab, align 4, !tbaa !18
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
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72
  %i.aj = load float, ptr %gep83, align 4, !tbaa !18
  %i.ak = fadd float %i.ai, %i.aj
  store float %i.ak, ptr %i.ah, align 4, !tbaa !18
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %gep83.1 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73
  %i.an = load float, ptr %gep83.1, align 4, !tbaa !18
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %i.al, align 4, !tbaa !18
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.1 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %gep83.2 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.1
  %i.ar = load float, ptr %gep83.2, align 4, !tbaa !18
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %i.ap, align 4, !tbaa !18
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.2 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %gep83.3 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.2
  %i.av = load float, ptr %gep83.3, align 4, !tbaa !18
  %i.aw = fadd float %i.au, %i.av
  store float %i.aw, ptr %i.at, align 4, !tbaa !18
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count80
  br i1 %exitcond76.not.3, label %._crit_edge60, label %scalar.ph, !llvm.loop !66

._crit_edge60:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge62.split, label %.preheader, !llvm.loop !2

._crit_edge62.split:                              ; preds = %._crit_edge60, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgefa(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !16
  %i.a = add i32 %2, -1                           ; 5 uses
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph103.preheader, label %.loopexit100

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64                  ; 2 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep115 = getelementptr i8, ptr %i.j, i64 %i.g
  %5 = shl nsw i64 %i.c, 2
  %i.k = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 %i.g
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 11 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.l = xor i64 %indvars.iv107, -1
  %i.m = add nsw i64 %i.l, %wide.trip.count       ; 4 uses
  %i.n = add nuw i64 %indvars.iv107, 1
  %i.o = mul i64 %i.f, %i.n
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %7 = mul i64 %5, %indvars.iv107
  %scevgep117 = getelementptr i8, ptr %6, i64 %7
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %i.p = mul nsw i64 %indvars.iv107, %i.c
  %i.q = mul nsw i32 %1, %indvars109
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !18 ; 3 uses
  %i.v = tail call float @llvm.fabs.f32(float %i.u) ; 2 uses
  %xtraiter = and i64 %i.m, 1
  %i.w = icmp eq i64 %i.k, %indvars.iv107
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
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = tail call float @llvm.fabs.f32(float %i.y) ; 2 uses
  %i.aa = fcmp ogt float %i.z, %.23345.i          ; 2 uses
  %.334.i = select i1 %i.aa, float %i.z, float %.23345.i ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.aa, i32 %i.ab, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next53.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.af, float %i.ae, float %.334.i ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.af, i32 %i.ag, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !5

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.loopexit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %indvars.iv52.i.epil.init = phi i64 [ 1, %.lr.ph103 ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %i.v, %.lr.ph103 ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv52.i.epil.init
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
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
  store i32 %i.am, ptr %i.an, align 4, !tbaa !16
  %i.ao = sext i32 %i.am to i64                   ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18 ; 3 uses
  %i.as = fcmp une float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %idamax.exit.loopexit
  %.not = icmp eq i32 %.3.i.lcssa, 0              ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.u, ptr %i.aq, align 4, !tbaa !18
  store float %i.ar, ptr %i.t, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = phi float [ %i.ar, %bb.c ], [ %i.u, %bb.b ]
  %i.au = fdiv float -1.000000e+00, %i.at         ; 2 uses
  %i.av = sub nuw nsw i64 %i.d, %indvars.iv.next108 ; 8 uses
  %i.aw = getelementptr i8, ptr %i.t, i64 4       ; 7 uses
  %min.iters.check122 = icmp samesign ult i64 %i.av, 8
  br i1 %min.iters.check122, label %.lr.ph25.i.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %bb.d
  %n.vec124 = and i64 %i.av, 2147483640           ; 3 uses
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat126 = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next131, %vector.body127 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index128 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load129.a = load <4 x float>, ptr %i.ax, align 4, !tbaa !18
  %wide.load130 = load <4 x float>, ptr %i.ay, align 4, !tbaa !18
  %i.az = fmul <4 x float> %broadcast.splat126, %wide.load129.a
  %i.ba = fmul <4 x float> %broadcast.splat126, %wide.load130
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !18
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !18
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.bb, label %middle.block132, label %vector.body127, !llvm.loop !69

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.av, %n.vec124
  br i1 %cmp.n133, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.d, %middle.block132
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec124, %middle.block132 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv28.i ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !18
  %i.be = fmul float %i.au, %i.bd
  store float %i.be, ptr %i.bc, align 4, !tbaa !18
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.av
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block132
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ao
  %min.iters.check = icmp samesign ult i64 %i.av, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep117
  %bound1 = icmp ult ptr %i.aw, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  %i.bf = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.av, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  %xtraiter138 = and i64 %i.m, 1
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bg ; 2 uses
  %i.bh = load float, ptr %gep, align 4, !tbaa !18 ; 6 uses
  %.pre = add nsw i64 %i.bg, %indvars.iv107       ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  store float %i.bj, ptr %gep, align 4, !tbaa !18
  store float %i.bh, ptr %i.bi, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %.pre
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 4 uses
  %i.bm = fcmp oeq float %i.bh, 0.000000e+00
  br i1 %i.bm, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bf
  br i1 %brmerge, label %.lr.ph.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bn, align 4, !tbaa !18, !alias.scope !76, !noalias !77
  %wide.load118.a = load <4 x float>, ptr %i.bo, align 4, !tbaa !18, !alias.scope !76, !noalias !77
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load119.a = load <4 x float>, ptr %i.bp, align 4, !tbaa !18, !alias.scope !77
  %wide.load120 = load <4 x float>, ptr %i.bq, align 4, !tbaa !18, !alias.scope !77
  %i.br = fmul <4 x float> %broadcast.splat, %wide.load119.a
  %i.bs = fmul <4 x float> %broadcast.splat, %wide.load120
  %i.bt = fadd <4 x float> %wide.load, %i.br
  %i.bu = fadd <4 x float> %wide.load118.a, %i.bs
  store <4 x float> %i.bt, ptr %i.bn, align 4, !tbaa !18, !alias.scope !76, !noalias !77
  store <4 x float> %i.bu, ptr %i.bo, align 4, !tbaa !18, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader135

.lr.ph.i.preheader135:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.bw = add nuw i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod139.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader135
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.ph ; 2 uses
end_hunk_0
