Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linpack-pc?download=true
inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dmxpy:bb.a
  br i1 %exitcond278.not, label %._crit_edge, label %scalar.ph695, !llvm.loop !162

._crit_edge:                                      ; preds = %scalar.ph695, %middle.block751
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 16 ; 2 uses
  %i.abo = icmp samesign ult i64 %indvars.iv.next280, %i.ok
  br i1 %i.abo, label %.preheader, label %._crit_edge256.split, !llvm.loop !163

._crit_edge256.split:                             ; preds = %._crit_edge, %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @epslon(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  %i.b = fmul float %i.a, f0x34000000
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @print_time(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %.lr.ph48.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = add i32 %2, 1
  %i.d = load float, ptr %1, align 4, !tbaa !18
  %i.e = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = add nsw i32 %0, -1                       ; 3 uses
  %xtraiter = and i32 %i.h, 1
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %.044 = phi i32 [ undef, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.02942 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 3 uses
  %.03141 = phi float [ %i.e, %.lr.ph.preheader.new ], [ %.132.1, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !18
  %i.l = tail call float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.m = fcmp ogt float %i.l, %.03141             ; 2 uses
  %.132 = select i1 %i.m, float %i.l, float %.03141 ; 2 uses
  %.1 = select i1 %i.m, i32 %.02942, i32 %.044
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.n = add nuw nsw i32 %.02942, 1
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = tail call float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fcmp ogt float %i.q, %.132               ; 2 uses
  %.132.1 = select i1 %i.r, float %i.q, float %.132 ; 2 uses
  %.1.1 = select i1 %i.r, i32 %i.n, i32 %.1       ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.g ; 2 uses
  %i.s = add nuw nsw i32 %.02942, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit60.unr-lcssa, label %.lr.ph, !llvm.loop !221

.lr.ph48.preheader:                               ; preds = %bb.c
  %i.t = load float, ptr %1, align 4, !tbaa !18
  %i.u = tail call float @llvm.fabs.f32(float %i.t) ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.v = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter63 = and i64 %i.v, 1
  %i.w = icmp eq i32 %0, 2
  br i1 %i.w, label %.lr.ph48.epil.preheader, label %.lr.ph48.preheader.new

.lr.ph48.preheader.new:                           ; preds = %.lr.ph48.preheader
  %unroll_iter67 = and i64 %i.v, -2
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48, %.lr.ph48.preheader.new
  %indvars.iv52 = phi i64 [ 1, %.lr.ph48.preheader.new ], [ %indvars.iv.next53.1, %.lr.ph48 ] ; 4 uses
  %.247 = phi i32 [ 0, %.lr.ph48.preheader.new ], [ %.3.1, %.lr.ph48 ]
  %.23345 = phi float [ %i.u, %.lr.ph48.preheader.new ], [ %.334.1, %.lr.ph48 ] ; 2 uses
  %niter68 = phi i64 [ 0, %.lr.ph48.preheader.new ], [ %niter68.next.1, %.lr.ph48 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv52
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = tail call float @llvm.fabs.f32(float %i.y) ; 2 uses
  %i.aa = fcmp ogt float %i.z, %.23345            ; 2 uses
  %.334 = select i1 %i.aa, float %i.z, float %.23345 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv52 to i32
  %.3 = select i1 %i.aa, i32 %i.ab, i32 %.247
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next53
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.334             ; 2 uses
  %.334.1 = select i1 %i.af, float %i.ae, float %.334 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next53 to i32
  %.3.1 = select i1 %i.af, i32 %i.ag, i32 %.3     ; 3 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter68.next.1 = add nuw i64 %niter68, 2       ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph48, !llvm.loop !5

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph48
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.loopexit, label %.lr.ph48.epil.preheader

.lr.ph48.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph48.preheader
  %indvars.iv52.epil.init = phi i64 [ 1, %.lr.ph48.preheader ], [ %indvars.iv.next53.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.247.epil.init = phi i32 [ 0, %.lr.ph48.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ]
  %.23345.epil.init = phi float [ %i.u, %.lr.ph48.preheader ], [ %.334.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv52.epil.init
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp ogt float %i.aj, %.23345.epil.init
  %i.al = trunc nuw nsw i64 %indvars.iv52.epil.init to i32
  %.3.epil = select i1 %i.ak, i32 %i.al, i32 %.247.epil.init
  br label %.loopexit

.loopexit.loopexit60.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit60.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit60.unr-lcssa ]
  %.044.epil.init = phi i32 [ undef, %.lr.ph.preheader ], [ %.1.1, %.loopexit.loopexit60.unr-lcssa ]
  %.02942.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.s, %.loopexit.loopexit60.unr-lcssa ]
  %.03141.epil.init = phi float [ %i.e, %.lr.ph.preheader ], [ %.132.1, %.loopexit.loopexit60.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp ogt float %i.ao, %.03141.epil.init
  %.1.epil = select i1 %i.ap, i32 %.02942.epil.init, i32 %.044.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit60.unr-lcssa, %.lr.ph48.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.035 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %.3.epil, %.lr.ph48.epil.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ], [ %.1.1, %.loopexit.loopexit60.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, float noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %.lr.ph25.preheader, label %bb.c

.lr.ph25.preheader:                               ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check37 = icmp ult i32 %0, 8
  br i1 %min.iters.check37, label %.lr.ph25.preheader50, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph25.preheader
  %n.vec39 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat41 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index43 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load44 = load <4 x float>, ptr %i.b, align 4, !tbaa !18
  %wide.load45 = load <4 x float>, ptr %i.c, align 4, !tbaa !18
  %i.d = fmul <4 x float> %broadcast.splat41, %wide.load44
  %i.e = fmul <4 x float> %broadcast.splat41, %wide.load45
  store <4 x float> %i.d, ptr %i.b, align 4, !tbaa !18
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !18
  %index.next46 = add nuw i64 %index43, 8         ; 2 uses
  %i.f = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.f, label %middle.block47, label %vector.body42, !llvm.loop !222

middle.block47:                                   ; preds = %vector.body42
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count
  br i1 %cmp.n48, label %.loopexit, label %.lr.ph25.preheader50

.lr.ph25.preheader50:                             ; preds = %.lr.ph25.preheader, %middle.block47
  %indvars.iv28.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec39, %middle.block47 ]
  br label %.lr.ph25

bb.c:                                             ; preds = %bb.b
  %i.g = mul nsw i32 %3, %0                       ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = sext i32 %3 to i64
  %i.j = zext nneg i32 %i.g to i64
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %.lr.ph.a
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %.lr.ph.a ] ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.a ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !18
  %i.m = fmul float %1, %i.l
  store float %i.m, ptr %i.k, align 4, !tbaa !18
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, %i.i ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next.a, %i.j
  br i1 %4, label %.lr.ph.a, label %.loopexit, !llvm.loop !223

.lr.ph25:                                         ; preds = %.lr.ph25.preheader50, %.lr.ph25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph25 ], [ %indvars.iv28.ph, %.lr.ph25.preheader50 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv28 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !18
  %i.p = fmul float %1, %i.o
  store float %i.p, ptr %i.n, align 4, !tbaa !18
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not.a, label %.loopexit, label %.lr.ph25, !llvm.loop !224

.loopexit:                                        ; preds = %.lr.ph.a, %.lr.ph25, %middle.block47, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = fcmp oeq float %1, 0.000000e+00
  %or.cond41 = or i1 %i.a, %i.b
  br i1 %or.cond41, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 1
  %i.d = icmp ne i32 %5, 1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.lr.ph47.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader94, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.e
  %scevgep62 = getelementptr i8, ptr %2, i64 %i.e
  %bound0 = icmp ult ptr %4, %scevgep62
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !18, !alias.scope !235, !noalias !236
  %wide.load63 = load <4 x float>, ptr %i.g, align 4, !tbaa !18, !alias.scope !235, !noalias !236
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load64 = load <4 x float>, ptr %i.h, align 4, !tbaa !18, !alias.scope !236
  %wide.load65 = load <4 x float>, ptr %i.i, align 4, !tbaa !18, !alias.scope !236
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load64
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load65
  %i.l = fadd <4 x float> %wide.load, %i.j
  %i.m = fadd <4 x float> %wide.load63, %i.k
  store <4 x float> %i.l, ptr %i.f, align 4, !tbaa !18, !alias.scope !235, !noalias !236
  store <4 x float> %i.m, ptr %i.g, align 4, !tbaa !18, !alias.scope !235, !noalias !236
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader94
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !18
  %i.s = fmul float %1, %i.r
  %i.t = fadd float %i.p, %i.s
  store float %i.t, ptr %i.o, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader94
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader94 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = add nsw i64 %wide.trip.count, -1
  %i.v = icmp eq i64 %indvars.iv.ph, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph47.preheader:                               ; preds = %bb.b
  %i.w = icmp slt i32 %5, 0
  %i.x = sub nsw i32 1, %0                        ; 2 uses
  %i.y = mul nsw i32 %5, %i.x
  %.0 = select i1 %i.w, i32 %i.y, i32 0
  %i.z = icmp slt i32 %3, 0
  %i.aa = mul nsw i32 %3, %i.x
  %.034 = select i1 %i.z, i32 %i.aa, i32 0
  %i.ab = sext i32 %.0 to i64                     ; 6 uses
  %i.ac = sext i32 %5 to i64                      ; 3 uses
  %i.ad = sext i32 %.034 to i64                   ; 6 uses
  %i.ae = sext i32 %3 to i64                      ; 3 uses
  %i.af = zext nneg i32 %0 to i64                 ; 2 uses
  %min.iters.check76 = icmp ult i32 %0, 16
  br i1 %min.iters.check76, label %.lr.ph47.preheader93, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph47.preheader
  %ident.check = icmp ne i32 %5, 1
  %ident.check66 = icmp ne i32 %3, 1
  %i.ag = or i1 %ident.check, %ident.check66
  br i1 %i.ag, label %.lr.ph47.preheader93, label %vector.memcheck67

vector.memcheck67:                                ; preds = %vector.scevcheck
  %i.ah = shl nsw i64 %i.ab, 2                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %4, i64 %i.ah
  %i.ai = add nsw i32 %0, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = getelementptr i8, ptr %4, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep69 = getelementptr i8, ptr %i.am, i64 4
  %i.an = shl nsw i64 %i.ad, 2                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %2, i64 %i.an
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ak
  %scevgep71 = getelementptr i8, ptr %i.ap, i64 4
  %bound072 = icmp ult ptr %scevgep68, %scevgep71
  %bound173 = icmp ult ptr %scevgep70, %scevgep69
  %found.conflict74 = and i1 %bound072, %bound173
  br i1 %found.conflict74, label %.lr.ph47.preheader93, label %vector.ph77

vector.ph77:                                      ; preds = %vector.memcheck67
  %n.vec78 = and i64 %i.af, 2147483640            ; 5 uses
  %i.aq = add nsw i64 %n.vec78, %i.ad
  %i.ar = add nsw i64 %n.vec78, %i.ab
  %i.as = trunc nuw nsw i64 %n.vec78 to i32
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ab
  %invariant.gep98 = getelementptr [4 x i8], ptr %2, i64 %i.ad
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index82 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %gep, align 4, !tbaa !18, !alias.scope !237, !noalias !238
  %wide.load84 = load <4 x float>, ptr %i.at, align 4, !tbaa !18, !alias.scope !237, !noalias !238
  %gep99 = getelementptr [4 x i8], ptr %invariant.gep98, i64 %index82 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep99, i64 16
  %wide.load85 = load <4 x float>, ptr %gep99, align 4, !tbaa !18, !alias.scope !238
  %wide.load86 = load <4 x float>, ptr %i.au, align 4, !tbaa !18, !alias.scope !238
  %i.av = fmul <4 x float> %broadcast.splat80, %wide.load85
  %i.aw = fmul <4 x float> %broadcast.splat80, %wide.load86
  %i.ax = fadd <4 x float> %wide.load83, %i.av
  %i.ay = fadd <4 x float> %wide.load84, %i.aw
  store <4 x float> %i.ax, ptr %gep, align 4, !tbaa !18, !alias.scope !237, !noalias !238
  store <4 x float> %i.ay, ptr %i.at, align 4, !tbaa !18, !alias.scope !237, !noalias !238
  %index.next87 = add nuw i64 %index82, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next87, %n.vec78
  br i1 %i.az, label %middle.block88, label %vector.body81, !llvm.loop !232

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %n.vec78, %i.af
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph47.preheader93

.lr.ph47.preheader93:                             ; preds = %vector.memcheck67, %vector.scevcheck, %.lr.ph47.preheader, %middle.block88
  %indvars.iv52.ph = phi i64 [ %i.ad, %vector.memcheck67 ], [ %i.ad, %vector.scevcheck ], [ %i.ad, %.lr.ph47.preheader ], [ %i.aq, %middle.block88 ] ; 3 uses
  %indvars.iv50.ph = phi i64 [ %i.ab, %vector.memcheck67 ], [ %i.ab, %vector.scevcheck ], [ %i.ab, %.lr.ph47.preheader ], [ %i.ar, %middle.block88 ] ; 3 uses
  %.03644.ph = phi i32 [ 0, %vector.memcheck67 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph47.preheader ], [ %i.as, %middle.block88 ] ; 4 uses
  %i.ba = sub i32 %0, %.03644.ph
  %.neg = add i32 %.03644.ph, 1
  %xtraiter96 = and i32 %i.ba, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph47.prol.loopexit, label %.lr.ph47.prol

.lr.ph47.prol:                                    ; preds = %.lr.ph47.preheader93
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv50.ph ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv52.ph
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = fmul float %1, %i.be
  %i.bg = fadd float %i.bc, %i.bf
  store float %i.bg, ptr %i.bb, align 4, !tbaa !18
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.ph, %i.ae
  %indvars.iv.next51.prol = add nsw i64 %indvars.iv50.ph, %i.ac
  %i.bh = add nuw nsw i32 %.03644.ph, 1
  br label %.lr.ph47.prol.loopexit

.lr.ph47.prol.loopexit:                           ; preds = %.lr.ph47.prol, %.lr.ph47.preheader93
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph47.preheader93 ], [ %indvars.iv.next53.prol, %.lr.ph47.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph47.preheader93 ], [ %indvars.iv.next51.prol, %.lr.ph47.prol ]
  %.03644.unr = phi i32 [ %.03644.ph, %.lr.ph47.preheader93 ], [ %i.bh, %.lr.ph47.prol ]
  %i.bi = icmp eq i32 %0, %.neg
  br i1 %i.bi, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.prol.loopexit, %.lr.ph47
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.1, %.lr.ph47 ], [ %indvars.iv52.unr, %.lr.ph47.prol.loopexit ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph47 ], [ %indvars.iv50.unr, %.lr.ph47.prol.loopexit ] ; 2 uses
  %.03644 = phi i32 [ %i.bv, %.lr.ph47 ], [ %.03644.unr, %.lr.ph47.prol.loopexit ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv50 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = fmul float %1, %i.bm
  %i.bo = fadd float %i.bk, %i.bn
  store float %i.bo, ptr %i.bj, align 4, !tbaa !18
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, %i.ae ; 2 uses
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, %i.ac ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next51 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !18
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next53
  %i.bs = load float, ptr %i.br, align 4, !tbaa !18
  %i.bt = fmul float %1, %i.bs
  %i.bu = fadd float %i.bq, %i.bt
  store float %i.bu, ptr %i.bp, align 4, !tbaa !18
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv.next53, %i.ae
  %indvars.iv.next51.1 = add nsw i64 %indvars.iv.next51, %i.ac
  %i.bv = add nuw nsw i32 %.03644, 2              ; 2 uses
  %exitcond57.not.1 = icmp eq i32 %i.bv, %0
  br i1 %exitcond57.not.1, label %.loopexit, label %.lr.ph47, !llvm.loop !233

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !18
  %i.ca = fmul float %1, %i.bz
  %i.cb = fadd float %i.bx, %i.ca
  store float %i.cb, ptr %i.bw, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cg = fmul float %1, %i.cf
  %i.ch = fadd float %i.cd, %i.cg
  store float %i.ch, ptr %i.cc, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !234

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph47.prol.loopexit, %.lr.ph47, %middle.block, %middle.block88, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @ddot(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 1
  %i.c = icmp ne i32 %4, 1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.lr.ph49.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %0, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph49.preheader:                               ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  %i.f = sub nsw i32 1, %0                        ; 2 uses
  %i.g = mul nsw i32 %4, %i.f
  %.0 = select i1 %i.e, i32 %i.g, i32 0
  %i.h = icmp slt i32 %2, 0
  %i.i = mul nsw i32 %2, %i.f
  %.032 = select i1 %i.h, i32 %i.i, i32 0
  %i.j = sext i32 %.0 to i64                      ; 2 uses
  %i.k = sext i32 %4 to i64                       ; 2 uses
  %i.l = sext i32 %.032 to i64                    ; 2 uses
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %xtraiter71 = and i32 %0, 1
  %i.n = icmp eq i32 %0, 1
  br i1 %i.n, label %.lr.ph49.epil.preheader, label %.lr.ph49.preheader.new

.lr.ph49.preheader.new:                           ; preds = %.lr.ph49.preheader
  %unroll_iter76 = and i32 %0, 2147483646
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49, %.lr.ph49.preheader.new
  %indvars.iv56 = phi i64 [ %i.l, %.lr.ph49.preheader.new ], [ %indvars.iv.next57.1, %.lr.ph49 ] ; 2 uses
  %indvars.iv54 = phi i64 [ %i.j, %.lr.ph49.preheader.new ], [ %indvars.iv.next55.1, %.lr.ph49 ] ; 2 uses
  %.03645 = phi float [ 0.000000e+00, %.lr.ph49.preheader.new ], [ %i.z, %.lr.ph49 ]
  %niter77 = phi i32 [ 0, %.lr.ph49.preheader.new ], [ %niter77.next.1, %.lr.ph49 ]
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv56
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv54
  %i.r = load float, ptr %i.q, align 4, !tbaa !18
  %i.s = fmul float %i.p, %i.r
  %i.t = fadd float %.03645, %i.s
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, %i.m ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, %i.k ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next57
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next55
  %i.x = load float, ptr %i.w, align 4, !tbaa !18
  %i.y = fmul float %i.v, %i.x
  %i.z = fadd float %i.t, %i.y                    ; 3 uses
  %indvars.iv.next57.1 = add nsw i64 %indvars.iv.next57, %i.m ; 2 uses
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv.next55, %i.k ; 2 uses
  %niter77.next.1 = add nuw nsw i32 %niter77, 2   ; 2 uses
  %niter77.ncmp.1 = icmp eq i32 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph49, !llvm.loop !239

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.13743 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = fadd float %.13743, %i.ae
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !18
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18
  %i.ak = fmul float %i.ah, %i.aj
  %i.al = fadd float %i.af, %i.ak
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = fadd float %i.al, %i.aq
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.at = load float, ptr %i.as, align 4, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.av = load float, ptr %i.au, align 4, !tbaa !18
  %i.aw = fmul float %i.at, %i.av
  %i.ax = fadd float %i.ar, %i.aw                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit67.unr-lcssa, label %.lr.ph, !llvm.loop !8

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph49
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph49.epil.preheader

.lr.ph49.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph49.preheader
  %indvars.iv56.epil.init = phi i64 [ %i.l, %.lr.ph49.preheader ], [ %indvars.iv.next57.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv54.epil.init = phi i64 [ %i.j, %.lr.ph49.preheader ], [ %indvars.iv.next55.1, %.loopexit.loopexit.unr-lcssa ]
  %.03645.epil.init = phi float [ 0.000000e+00, %.lr.ph49.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod75 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv56.epil.init
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv54.epil.init
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = fmul float %i.az, %i.bb
  %i.bd = fadd float %.03645.epil.init, %i.bc
  br label %.loopexit

.loopexit.loopexit67.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit67.unr-lcssa ]
  %.13743.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ax, %.loopexit.loopexit67.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.13743.epil = phi float [ %.13743.epil.init, %.lr.ph.epil.preheader ], [ %i.bj, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bi = fmul float %i.bf, %i.bh
  %i.bj = fadd float %.13743.epil, %i.bi          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !240

.loopexit:                                        ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph.epil, %.lr.ph49.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  %.038 = phi float [ %i.bd, %.lr.ph49.epil.preheader ], [ 0.000000e+00, %bb.a ], [ %i.z, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.loopexit.loopexit67.unr-lcssa ], [ %i.bj, %.lr.ph.epil ]
  ret float %.038
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"float", !14, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !21, !20}
!25 = distinct !{!25, !19, !20, !21}
!26 = distinct !{!26, !19, !21, !20}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19, !20, !21}
!30 = distinct !{!30, !19, !21, !20}
!31 = distinct !{!31, !19, !20, !21}
!32 = distinct !{!32, !19, !21, !20}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19, !20, !21}
!36 = distinct !{!36, !19, !21, !20}
!37 = distinct !{!37, !19, !20, !21}
!38 = distinct !{!38, !19, !21, !20}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19, !20, !21}
!41 = distinct !{!41, !19, !21, !20}
!42 = distinct !{!42, !19, !20, !21}
!43 = distinct !{!43, !19, !21, !20}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19, !20, !21}
!48 = distinct !{!48, !19, !21, !20}
!49 = distinct !{!49, !19, !20, !21}
!50 = distinct !{!50, !19, !21, !20}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19, !20, !21}
!53 = distinct !{!53, !19, !21, !20}
!54 = distinct !{!54, !19, !20, !21}
!55 = distinct !{!55, !19, !21, !20}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = !{!"any pointer", !14, i64 0}
!59 = !{!"p1 _ZTS8_IO_FILE", !58, i64 0}
!60 = !{!59, !59, i64 0}
!61 = distinct !{!61, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !19, !20, !21}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !19, !20}
!67 = !{!62}
!68 = !{!63}
!69 = distinct !{!69, !19, !20, !21}
!70 = distinct !{!70, !19, !21, !20}
!71 = distinct !{!71, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !19, !20, !21}
!75 = distinct !{!75, !19, !20}
!76 = !{!72}
!77 = !{!73}
!78 = distinct !{!78, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !19, !20, !21}
!82 = distinct !{!82, !19, !20}
!83 = distinct !{!83, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !19, !20, !21}
!87 = distinct !{!87, !19, !20}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !19}
!92 = !{!79}
!93 = !{!80}
!94 = !{!84}
!95 = !{!85}
!96 = distinct !{!96, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !19, !20, !21}
!101 = distinct !{!101, !19, !20}
!102 = distinct !{!102, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !102}
!106 = distinct !{!106, !102}
!107 = distinct !{!107, !102}
!108 = distinct !{!108, !19, !20, !21}
!109 = distinct !{!109, !19, !20}
!110 = distinct !{!110, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !110}
!115 = distinct !{!115, !110}
!116 = distinct !{!116, !110}
!117 = distinct !{!117, !110}
!118 = distinct !{!118, !110}
!119 = distinct !{!119, !110}
!120 = distinct !{!120, !19, !20, !21}
!121 = distinct !{!121, !19, !20}
!122 = distinct !{!122, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !122}
!126 = distinct !{!126, !122}
!127 = distinct !{!127, !122}
!128 = distinct !{!128, !122}
!129 = distinct !{!129, !122}
!130 = distinct !{!130, !122}
!131 = distinct !{!131, !122}
!132 = distinct !{!132, !122}
!133 = distinct !{!133, !122}
!134 = distinct !{!134, !122}
!135 = distinct !{!135, !122}
!136 = distinct !{!136, !122}
!137 = distinct !{!137, !122}
!138 = distinct !{!138, !122}
!139 = distinct !{!139, !122}
!140 = distinct !{!140, !19, !20, !21}
!141 = distinct !{!141, !19, !20}
!142 = distinct !{!142, !"LVerDomain"}
!143 = distinct !{!143, !142}
!144 = distinct !{!144, !142}
!145 = distinct !{!145, !142}
!146 = distinct !{!146, !142}
!147 = distinct !{!147, !142}
!148 = distinct !{!148, !142}
!149 = distinct !{!149, !142}
!150 = distinct !{!150, !142}
!151 = distinct !{!151, !142}
!152 = distinct !{!152, !142}
!153 = distinct !{!153, !142}
!154 = distinct !{!154, !142}
!155 = distinct !{!155, !142}
!156 = distinct !{!156, !142}
!157 = distinct !{!157, !142}
!158 = distinct !{!158, !142}
!159 = distinct !{!159, !142}
!160 = distinct !{!160, !142}
!161 = distinct !{!161, !19, !20, !21}
!162 = distinct !{!162, !19, !20}
!163 = distinct !{!163, !19}
!164 = !{!97}
!165 = !{!98}
!166 = !{!97, !99}
!167 = !{!99}
!168 = !{!103}
!169 = !{!104}
!170 = !{!105}
!171 = !{!104, !103, !107, !106}
!172 = !{!106}
!173 = !{!107}
!174 = !{!111}
!175 = !{!112}
!176 = !{!113}
!177 = !{!114}
!178 = !{!115}
!179 = !{!114, !113, !112, !111, !119, !118, !117, !116}
!180 = !{!116}
!181 = !{!117}
!182 = !{!118}
!183 = !{!119}
!184 = !{!123}
!185 = !{!124}
!186 = !{!125}
!187 = !{!126}
!188 = !{!127}
!189 = !{!128}
!190 = !{!129}
!191 = !{!130}
!192 = !{!131}
!193 = !{!130, !129, !128, !127, !126, !125, !124, !123, !139, !138, !137, !136, !135, !134, !133, !132}
!194 = !{!132}
!195 = !{!133}
!196 = !{!134}
!197 = !{!135}
!198 = !{!136}
!199 = !{!137}
!200 = !{!138}
!201 = !{!139}
!202 = !{!143}
!203 = !{!144}
!204 = !{!143, !160, !159, !158, !157, !156, !155, !154, !153, !152, !151, !150, !149, !148, !147, !146, !145}
!205 = !{!145}
!206 = !{!146}
!207 = !{!147}
!208 = !{!148}
!209 = !{!149}
!210 = !{!150}
!211 = !{!151}
!212 = !{!152}
!213 = !{!153}
!214 = !{!154}
!215 = !{!155}
!216 = !{!156}
!217 = !{!157}
!218 = !{!158}
!219 = !{!159}
!220 = !{!160}
!221 = distinct !{!221, !19}
!222 = distinct !{!222, !19, !20, !21}
!223 = distinct !{!223, !19, !20}
!224 = distinct !{!224, !19, !21, !20}
!225 = distinct !{!225, !"LVerDomain"}
!226 = distinct !{!226, !225}
!227 = distinct !{!227, !225}
!228 = distinct !{!228, !19, !20, !21}
!229 = distinct !{!229, !"LVerDomain"}
!230 = distinct !{!230, !229}
!231 = distinct !{!231, !229}
!232 = distinct !{!232, !19, !20, !21}
!233 = distinct !{!233, !19, !20}
!234 = distinct !{!234, !19, !20}
!235 = !{!226}
!236 = !{!227}
!237 = !{!230}
!238 = !{!231}
!239 = distinct !{!239, !19}
!240 = distinct !{!240, !22}
end_hunk_0
