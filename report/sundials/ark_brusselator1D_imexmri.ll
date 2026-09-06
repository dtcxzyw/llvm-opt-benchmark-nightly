Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D_imexmri?download=true
inline.NumInlined: 102
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a

bb.dm:                                            ; preds = %check_retval.exit738
  %i.xj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.xk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xj, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.69, i32 noundef %i.xh) #15 ; 0 uses
  br label %check_retval.exit740

check_retval.exit740:                             ; preds = %check_retval.exit738, %bb.dm
  %i.xl = load i64, ptr %i.k, align 8, !tbaa !51
  %i.xm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i64 noundef %i.xl) ; 0 uses
  %i.xn = load i64, ptr %i.l, align 8, !tbaa !51
  %i.xo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %i.xn) ; 0 uses
  %i.xp = load i64, ptr %i.m, align 8, !tbaa !51
  %i.xq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.xp) ; 0 uses
  br label %bb.dn

bb.dn:                                            ; preds = %switch.early.test, %check_retval.exit740
  call void @free(ptr noundef %i.ay) #14
  call void @ARKodeFree(ptr noundef nonnull %i.b) #14
  %i.xr = call i32 @MRIStepInnerStepper_Free(ptr noundef nonnull %i.c) #14 ; 0 uses
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  call void @ARKodeButcherTable_Free(ptr noundef %.1438) #14
  call void @MRIStepCoupling_Free(ptr noundef %.0436) #14
  call void @SUNMatDestroy(ptr noundef %.0435) #14
  %i.xs = call i32 @SUNLinSolFree(ptr noundef %.0434) #14 ; 0 uses
  %i.xt = call i32 @SUNLinSolFree(ptr noundef %.0432) #14 ; 0 uses
  call void @SUNMatDestroy(ptr noundef %.0433) #14
  call void @N_VDestroy(ptr noundef nonnull %i.bj) #14
  call void @N_VDestroy(ptr noundef nonnull %i.bn) #14
  call void @N_VDestroy(ptr noundef nonnull %i.br) #14
  call void @N_VDestroy(ptr noundef nonnull %i.bv) #14
  %i.xu = call i32 @SUNContext_Free(ptr noundef nonnull %i.r) #14 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %check_retval.exit718.thread, %check_retval.exit716, %check_retval.exit714, %check_retval.exit712, %check_retval.exit710, %check_retval.exit708, %check_retval.exit706, %check_retval.exit704, %check_retval.exit702, %check_retval.exit700, %check_retval.exit698, %check_retval.exit696, %check_retval.exit694, %check_retval.exit692, %check_retval.exit690, %check_retval.exit688, %check_retval.exit686, %check_retval.exit684, %check_retval.exit682, %check_retval.exit680, %check_retval.exit678, %check_retval.exit676, %check_retval.exit674, %check_retval.exit672, %check_retval.exit670, %check_retval.exit668, %check_retval.exit666, %check_retval.exit664, %check_retval.exit662, %check_retval.exit660, %check_retval.exit658, %check_retval.exit656, %check_retval.exit654, %check_retval.exit652, %check_retval.exit650, %check_retval.exit648, %check_retval.exit646, %check_retval.exit644, %check_retval.exit642, %check_retval.exit640, %check_retval.exit638, %check_retval.exit636, %check_retval.exit634, %check_retval.exit632, %check_retval.exit630, %check_retval.exit628, %check_retval.exit626, %check_retval.exit624, %check_retval.exit622, %check_retval.exit620, %check_retval.exit618, %check_retval.exit616, %check_retval.exit614, %check_retval.exit612, %check_retval.exit610, %check_retval.exit608, %check_retval.exit606, %check_retval.exit604, %check_retval.exit602, %check_retval.exit600, %check_retval.exit598, %check_retval.exit596, %check_retval.exit594, %check_retval.exit592, %check_retval.exit590, %check_retval.exit588, %check_retval.exit586.thread, %check_retval.exit584.thread, %check_retval.exit582.thread, %check_retval.exit580, %check_retval.exit578, %check_retval.exit576, %check_retval.exit572, %check_retval.exit570, %check_retval.exit, %bb.dn, %bb.g, %bb.e, %bb.c
  %.0441 = phi i32 [ 1, %check_retval.exit644 ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit570 ], [ 1, %check_retval.exit572 ], [ 1, %check_retval.exit718.thread ], [ 1, %check_retval.exit576 ], [ 1, %check_retval.exit578 ], [ 1, %check_retval.exit580 ], [ 1, %check_retval.exit582.thread ], [ 1, %check_retval.exit584.thread ], [ 1, %check_retval.exit646 ], [ 1, %check_retval.exit648 ], [ 1, %check_retval.exit650 ], [ 1, %check_retval.exit710 ], [ 1, %check_retval.exit712 ], [ 1, %check_retval.exit714 ], [ 1, %check_retval.exit716 ], [ 0, %bb.dn ], [ 1, %check_retval.exit652 ], [ 1, %check_retval.exit654 ], [ 1, %check_retval.exit656 ], [ 1, %check_retval.exit658 ], [ 1, %check_retval.exit660 ], [ 1, %check_retval.exit662 ], [ 1, %check_retval.exit664 ], [ 1, %check_retval.exit666 ], [ 1, %check_retval.exit668 ], [ 1, %check_retval.exit670 ], [ 1, %check_retval.exit672 ], [ 1, %check_retval.exit674 ], [ 1, %check_retval.exit676 ], [ 1, %check_retval.exit678 ], [ 1, %check_retval.exit680 ], [ 1, %check_retval.exit682 ], [ 1, %check_retval.exit684 ], [ 1, %check_retval.exit686 ], [ 1, %check_retval.exit688 ], [ 1, %check_retval.exit690 ], [ 1, %check_retval.exit692 ], [ 1, %check_retval.exit694 ], [ 1, %check_retval.exit696 ], [ 1, %check_retval.exit698 ], [ 1, %check_retval.exit700 ], [ 1, %check_retval.exit702 ], [ 1, %check_retval.exit704 ], [ 1, %check_retval.exit706 ], [ 1, %check_retval.exit708 ], [ 1, %check_retval.exit586.thread ], [ 1, %check_retval.exit588 ], [ 1, %check_retval.exit590 ], [ 1, %check_retval.exit592 ], [ 1, %check_retval.exit594 ], [ 1, %check_retval.exit596 ], [ 1, %check_retval.exit598 ], [ 1, %check_retval.exit600 ], [ 1, %check_retval.exit602 ], [ 1, %check_retval.exit604 ], [ 1, %check_retval.exit606 ], [ 1, %check_retval.exit608 ], [ 1, %check_retval.exit610 ], [ 1, %check_retval.exit612 ], [ 1, %check_retval.exit614 ], [ 1, %check_retval.exit616 ], [ 1, %check_retval.exit618 ], [ 1, %check_retval.exit620 ], [ 1, %check_retval.exit622 ], [ 1, %check_retval.exit624 ], [ 1, %check_retval.exit626 ], [ 1, %check_retval.exit628 ], [ 1, %check_retval.exit630 ], [ 1, %check_retval.exit632 ], [ 1, %check_retval.exit634 ], [ 1, %check_retval.exit636 ], [ 1, %check_retval.exit638 ], [ 1, %check_retval.exit640 ], [ 1, %check_retval.exit642 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0441
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetIC(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #14
  %i.k = icmp sgt i64 %i.a, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = fdiv double %i.e, %i.c
  %i.m = insertelement <2 x double> poison, double %i.c, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.o = uitofp nneg i64 %.028 to double
  %i.p = fmul double %i.i, %i.o
  %i.q = fmul double %i.g, %i.p
  %i.r = tail call double @sin(double noundef %i.q) #14 ; 2 uses
  %.idx = mul nuw nsw i64 %.028, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 1.000000e-01), <2 x double> %i.n)
  store <2 x double> %i.v, ptr %i.s, align 8, !tbaa !17
  %i.w = tail call double @llvm.fmuladd.f64(double %i.r, double 1.000000e-01, double %i.e)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store double %i.w, ptr %i.x, align 8, !tbaa !17
  %i.y = add nuw nsw i64 %.028, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #3

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ff(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.g = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 12 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %check_retval.exit54, label %bb.c

check_retval.exit54:                              ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.p = add i64 %i.a, -1                         ; 2 uses
  %i.q = icmp sgt i64 %i.a, 2
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = add nsw i64 %i.a, -2                     ; 4 uses
  %min.iters.check = icmp ult i64 %i.r, 2
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.l, i64 24
  %i.s = mul i64 %i.a, 24
  %i.t = add i64 %i.s, -24                        ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.l, i64 %i.t
  %scevgep62 = getelementptr i8, ptr %i.h, i64 24
  %scevgep63 = getelementptr i8, ptr %i.h, i64 %i.t
  %bound0 = icmp ult ptr %scevgep, %scevgep63
  %bound1 = icmp ult ptr %scevgep62, %scevgep61
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.u = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul nuw i64 %index, 3                    ; 3 uses
  %i.w = add nuw i64 %i.v, 3                      ; 2 uses
  %i.x = mul i64 %index, 3                        ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w
  %i.z = getelementptr [8 x i8], ptr %i.h, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %i.ab = load double, ptr %i.y, align 8, !tbaa !17, !alias.scope !58
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !17, !alias.scope !58
  %i.ad = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1 ; 5 uses
  %4 = shufflevector <2 x double> %i.ae, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr [8 x i8], ptr %i.h, i64 %i.x
  %i.ai = getelementptr i8, ptr %i.ah, i64 56
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !17, !alias.scope !58
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !17, !alias.scope !58
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr [8 x i8], ptr %i.h, i64 %i.x
  %i.aq = getelementptr i8, ptr %i.ap, i64 64
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !17, !alias.scope !58
  %i.as = load double, ptr %i.aq, align 8, !tbaa !17, !alias.scope !58
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1 ; 4 uses
  %i.av = fadd <2 x double> %i.au, splat (double 1.000000e+00)
  %i.aw = fneg <2 x double> %i.av
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ae, <2 x double> %broadcast.splat)
  %i.ay = fmul <2 x double> %i.ae, %i.am          ; 2 uses
  %5 = shufflevector <2 x double> %i.ay, <2 x double> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  %i.ba = fneg <2 x double> %i.ae
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %6 = shufflevector <2 x double> %i.ax, <2 x double> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bc = fsub <2 x double> %broadcast.splat65, %i.au
  %i.bd = fdiv <2 x double> %i.bc, %broadcast.splat67
  %i.be = fneg <2 x double> %i.au
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.ae, <2 x double> %i.bd)
  %i.bg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %5, <4 x double> %4, <4 x double> %6)
  %i.bh = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bg, <4 x double> %i.bh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.az, align 8, !tbaa !17, !alias.scope !59, !noalias !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.059.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %i.bj = insertelement <2 x double> poison, double %i.c, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.059 = phi i64 [ %i.cn, %.lr.ph ], [ %.059.ph, %.lr.ph.preheader68 ] ; 2 uses
  %i.bk = mul nuw nsw i64 %.059, 3                ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !17
  %i.bp = add nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bk
  %i.bs = load double, ptr %i.bl, align 8, !tbaa !17 ; 3 uses
  %i.bt = fmul double %i.bs, %i.bo                ; 2 uses
  %i.bu = fneg double %i.bs
  %i.bv = fmul double %i.bt, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = load double, ptr %i.bq, align 8, !tbaa !17 ; 3 uses
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fadd <2 x double> %i.cb, <double 1.000000e+00, double -0.000000e+00>
  %i.cd = insertelement <2 x double> %i.bw, double %i.bz, i64 1
  %i.ce = fsub double %i.e, %i.bz
  %i.cf = fdiv double %i.ce, %i.g
  %i.cg = fneg <2 x double> %i.cc
  %i.ch = insertelement <2 x double> %i.bj, double %i.cf, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.by, <2 x double> %i.ch) ; 2 uses
  %i.cj = insertelement <2 x double> %i.ci, double %i.bv, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.by, <2 x double> %i.cj)
  store <2 x double> %i.ck, ptr %i.br, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bp
  %i.cm = extractelement <2 x double> %i.ci, i64 1
  store double %i.cm, ptr %i.cl, align 8, !tbaa !17
  %i.cn = add nuw nsw i64 %.059, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.p, 24
  %i.co = getelementptr i8, ptr %i.l, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %check_retval.exit54, %check_retval.exit, %._crit_edge
  %.050 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit54 ]
  ret i32 %.050
}

declare ptr @ARKodeButcherTable_Alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @ARKStepSetTables(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetMaxNonlinIters(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ARKodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @Jf(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @SUNMatZero(ptr noundef %3) #14 ; 0 uses
  %.val = load i64, ptr %4, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %4, i64 88
  %.val5 = load double, ptr %i.b, align 8, !tbaa !18
  tail call fastcc void @ReactionJac(ptr noundef %1, ptr noundef %3, i64 %.val, double %.val5)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.g = load double, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !23 ; 4 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 15 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %check_retval.exit109, label %bb.c

check_retval.exit109:                             ; preds = %bb.b
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.x = insertelement <2 x double> poison, double %i.o, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fdiv <2 x double> %i.i, %i.y             ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fdiv double %i.aa, %i.o                 ; 2 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fdiv double %i.ac, %i.o                 ; 2 uses
  %i.ae = fmul <2 x double> %i.k, <double 1.000000e+00, double -5.000000e-01>
  %i.af = fdiv <2 x double> %i.ae, %i.y           ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fdiv double %i.ag, %i.o                 ; 2 uses
  %i.ai = fmul <2 x double> %i.m, splat (double -5.000000e-01)
  %i.aj = fdiv <2 x double> %i.ai, %i.y           ; 4 uses
  %i.ak = add i64 %i.a, -1                        ; 2 uses
  %i.al = icmp sgt i64 %i.a, 2
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.am = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.am, 2
  br i1 %min.iters.check, label %.lr.ph.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.t, i64 24
  %i.an = mul i64 %i.a, 24                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.t, i64 %i.an
  %scevgep117 = getelementptr i8, ptr %i.ao, i64 -24
  %scevgep118 = getelementptr i8, ptr %i.p, i64 %i.an
  %bound0 = icmp ult ptr %scevgep, %scevgep118
  %bound1 = icmp ult ptr %i.p, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, -2                      ; 2 uses
  %i.ap = or i64 %i.am, 1
  %broadcast.splat = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat124 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat128 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat134 = shufflevector <2 x double> %broadcast.splatinsert133, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aq = mul nuw i64 %index, 3                   ; 3 uses
  %i.ar = add nuw i64 %i.aq, 3                    ; 2 uses
  %i.as = mul i64 %index, 3                       ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ar ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.p, i64 %i.as ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 48
  %i.aw = load double, ptr %i.at, align 8, !tbaa !17, !alias.scope !65
  %i.ax = load double, ptr %i.av, align 8, !tbaa !17, !alias.scope !65
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1 ; 4 uses
  %4 = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ba = getelementptr i8, ptr %i.at, i64 -24
  %i.bb = getelementptr i8, ptr %i.au, i64 24
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !17, !alias.scope !65
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !17, !alias.scope !65
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = mul nuw i64 %index, 24
  %i.bh = mul i64 %index, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bg ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = getelementptr i8, ptr %i.p, i64 %i.bh   ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  %i.bm = load double, ptr %i.bj, align 8, !tbaa !17, !alias.scope !65
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !17, !alias.scope !65
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.as
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load double, ptr %i.br, align 8, !tbaa !17, !alias.scope !65
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !17, !alias.scope !65
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 2 uses
  %i.by = getelementptr i8, ptr %i.at, i64 -16
  %i.bz = getelementptr i8, ptr %i.au, i64 32
  %i.ca = load double, ptr %i.by, align 8, !tbaa !17, !alias.scope !65
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !17, !alias.scope !65
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.cf = getelementptr i8, ptr %i.bk, i64 80
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !17, !alias.scope !65
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !17, !alias.scope !65
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = getelementptr [8 x i8], ptr %i.p, i64 %i.as
  %i.cn = getelementptr i8, ptr %i.cm, i64 64
  %i.co = load double, ptr %i.cl, align 8, !tbaa !17, !alias.scope !65
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !17, !alias.scope !65
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1 ; 5 uses
  %i.cs = getelementptr i8, ptr %i.at, i64 -8
  %i.ct = getelementptr i8, ptr %i.au, i64 40
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !17, !alias.scope !65
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !17, !alias.scope !65
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cz = getelementptr i8, ptr %i.bk, i64 88
  %i.da = load double, ptr %i.cy, align 8, !tbaa !17, !alias.scope !65
  %i.db = load double, ptr %i.cz, align 8, !tbaa !17, !alias.scope !65
  %i.dc = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1 ; 2 uses
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bf)
  %i.df = fadd <2 x double> %i.de, %i.bp
  %i.dg = fsub <2 x double> %i.bp, %i.bf
  %i.dh = fmul <2 x double> %broadcast.splat, %i.dg
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %broadcast.splat120, <2 x double> %i.dh)
  %i.dj = fadd <2 x double> %broadcast.splat122, %i.di
  %i.dk = fadd <2 x double> %i.cr, splat (double 1.000000e+00)
  %i.dl = fneg <2 x double> %i.dk
  %5 = shufflevector <2 x double> %i.dl, <2 x double> %i.cr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = fmul <2 x double> %i.az, %i.bx          ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ar
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cd)
  %i.dp = fadd <2 x double> %i.do, %i.cj
  %i.dq = fsub <2 x double> %i.cj, %i.cd
  %i.dr = fmul <2 x double> %broadcast.splat124, %i.dq
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %broadcast.splat126, <2 x double> %i.dr)
  %6 = shufflevector <2 x double> %i.dj, <2 x double> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %5, <4 x double> %4, <4 x double> %6)
  %i.dt = fneg <2 x double> %i.dm
  %8 = shufflevector <2 x double> %i.dm, <2 x double> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cx)
  %i.dv = fadd <2 x double> %i.du, %i.dd
  %i.dw = fsub <2 x double> %i.dd, %i.cx
  %i.dx = fmul <2 x double> %broadcast.splat128, %i.dw
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %broadcast.splat130, <2 x double> %i.dx)
  %i.dz = fsub <2 x double> %broadcast.splat132, %i.cr
  %i.ea = fdiv <2 x double> %i.dz, %broadcast.splat134
  %i.eb = fadd <2 x double> %i.ea, %i.dy
  %i.ec = fneg <2 x double> %i.cr
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.az, <2 x double> %i.eb)
  %i.ee = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %4, <4 x double> %7)
  %i.ef = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.ee, <4 x double> %i.ef, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.dn, align 8, !tbaa !17, !alias.scope !66, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader135

.lr.ph.preheader135:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0115.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  %i.eh = shufflevector <2 x double> %i.af, <2 x double> %i.aj, <2 x i32> <i32 1, i32 2>
  %i.ei = extractelement <2 x double> %i.aj, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader135, %.lr.ph
  %.0115 = phi i64 [ %i.en, %.lr.ph ], [ %.0115.ph, %.lr.ph.preheader135 ] ; 2 uses
  %i.ej = mul nuw nsw i64 %.0115, 3               ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ej ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !17 ; 4 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 -24
  %i.en = add nuw nsw i64 %.0115, 1               ; 3 uses
  %.idx114 = mul nuw nsw i64 %i.en, 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx114 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ej
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !17 ; 2 uses
  %i.es = add nuw nsw i64 %i.ej, 2                ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !17 ; 5 uses
  %i.ev = getelementptr i8, ptr %i.ek, i64 -8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !17 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !17 ; 2 uses
  %i.ez = fadd double %i.eu, 1.000000e+00
  %i.fa = fneg double %i.ez
  %i.fb = fmul double %i.el, %i.er                ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ej
  %i.fd = load <2 x double>, ptr %i.em, align 8, !tbaa !17 ; 3 uses
  %i.fe = load <2 x double>, ptr %i.eo, align 8, !tbaa !17 ; 3 uses
  %i.ff = extractelement <2 x double> %i.fd, i64 0
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.el, double -2.000000e+00, double %i.ff)
  %i.fh = extractelement <2 x double> %i.fe, i64 0
  %i.fi = fadd double %i.fg, %i.fh
  %i.fj = fsub <2 x double> %i.fe, %i.fd
  %i.fk = extractelement <2 x double> %i.fd, i64 1
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.er, double -2.000000e+00, double %i.fk)
  %i.fm = extractelement <2 x double> %i.fe, i64 1
  %i.fn = fadd double %i.fl, %i.fm
  %i.fo = fmul <2 x double> %i.eh, %i.fj          ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.ab, double %i.fp)
  %i.fr = fadd double %i.c, %i.fq
  %i.fs = extractelement <2 x double> %i.fo, i64 1
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.ad, double %i.fs)
  %i.fu = fneg double %i.fb
  %i.fv = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.eu, i64 1
  %i.fx = insertelement <2 x double> poison, double %i.el, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.ft, i64 1
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fy, <2 x double> %i.ga)
  %i.gc = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.fu, i64 1
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fy, <2 x double> %i.gb)
  store <2 x double> %i.ge, ptr %i.fc, align 8, !tbaa !17
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.eu, double -2.000000e+00, double %i.ew)
  %i.gg = fadd double %i.gf, %i.ey
  %i.gh = fsub double %i.ey, %i.ew
  %i.gi = fmul double %i.ei, %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.ah, double %i.gi)
  %i.gk = fsub double %i.e, %i.eu
  %i.gl = fdiv double %i.gk, %i.g
  %i.gm = fadd double %i.gl, %i.gj
  %i.gn = fneg double %i.eu
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.el, double %i.gm)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.es
  store double %i.go, ptr %i.gp, align 8, !tbaa !17
  %exitcond.not = icmp eq i64 %i.en, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.ak, 24
  %i.gq = getelementptr i8, ptr %i.t, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %check_retval.exit109, %check_retval.exit, %._crit_edge
  %.0105 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit109 ]
  ret i32 %.0105
}

declare i32 @ARKodeSetOrder(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @Jac(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @SUNMatZero(ptr noundef %3) #14 ; 0 uses
  tail call fastcc void @LaplaceMatrix(ptr noundef %3, ptr noundef %4)
  %i.b = load i64, ptr %4, align 8, !tbaa !16     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = fmul double %i.f, -5.000000e-01
  %i.h = fdiv double %i.g, %i.d                   ; 2 uses
  %i.i = icmp sgt i64 %i.b, 2
  br i1 %i.i, label %.lr.ph.i, label %AdvectionJac.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !17
  %i.l = fmul <2 x double> %i.k, splat (double -5.000000e-01)
  %i.m = insertelement <2 x double> poison, double %i.d, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34   ; 6 uses
  %i.u = add nsw i64 %i.b, -2
  %i.v = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.w = extractelement <2 x double> %i.o, i64 1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.055.i = phi i64 [ 1, %.lr.ph.i ], [ %i.aq, %bb.b ] ; 3 uses
  %.idx56.i = mul i64 %.055.i, 24
  %i.x = getelementptr i8, ptr %i.r, i64 %.idx56.i ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !17
  %i.ad = fsub double %i.ac, %i.v
  store double %i.ad, ptr %i.ab, align 8, !tbaa !17
  %i.ae = getelementptr i8, ptr %i.x, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !17
  %i.aj = fsub double %i.ai, %i.w
  store double %i.aj, ptr %i.ah, align 8, !tbaa !17
  %i.ak = getelementptr i8, ptr %i.x, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.t ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !17
  %i.ap = fsub double %i.ao, %i.h
  store double %i.ap, ptr %i.an, align 8, !tbaa !17
  %i.aq = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.t
  %i.au = getelementptr i8, ptr %i.at, i64 -24    ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = fadd double %i.v, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.t
  %i.ba = getelementptr i8, ptr %i.az, i64 -24    ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !17
  %i.bc = fadd double %i.w, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.t
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24    ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bi = fadd double %i.h, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !17
  %exitcond.not.i = icmp eq i64 %.055.i, %i.u
  br i1 %exitcond.not.i, label %AdvectionJac.exit, label %bb.b

AdvectionJac.exit:                                ; preds = %bb.b, %bb.a
  %i.bj = getelementptr i8, ptr %4, i64 88
  %.val9 = load double, ptr %i.bj, align 8, !tbaa !18
  tail call fastcc void @ReactionJac(ptr noundef %1, ptr noundef %3, i64 %i.b, double %.val9)
  ret i32 0
}

declare i32 @ARKStepSetTableNum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MRIStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fs(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.d = load double, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !17
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.i = load double, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  %i.l = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 14 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %check_retval.exit90, label %bb.c

check_retval.exit90:                              ; preds = %bb.b
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.t = insertelement <2 x double> poison, double %i.k, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.v = fdiv <2 x double> %i.f, %i.u
  %i.w = fdiv <2 x double> %i.v, %i.u             ; 2 uses
  %i.x = fmul <2 x double> %i.g, splat (double -5.000000e-01)
  %i.y = fdiv <2 x double> %i.x, %i.u             ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.d, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.i, i64 1
  %i.ab = fmul <2 x double> %i.aa, <double 1.000000e+00, double -5.000000e-01>
  %i.ac = fdiv <2 x double> %i.ab, %i.u           ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fdiv double %i.ad, %i.k                 ; 2 uses
  %i.af = add i64 %i.a, -1                        ; 2 uses
  %i.ag = icmp sgt i64 %i.a, 2
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ah = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ah, 2
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.p, i64 24
  %i.ai = mul i64 %i.a, 24                        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai
  %scevgep98 = getelementptr i8, ptr %i.aj, i64 -24
  %scevgep99 = getelementptr i8, ptr %i.l, i64 %i.ai
  %bound0 = icmp ult ptr %scevgep, %scevgep99
  %bound1 = icmp ult ptr %i.l, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -2                      ; 2 uses
  %i.ak = or i64 %i.ah, 1
  %4 = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %broadcast.splat107 = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert108 = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat109 = shufflevector <2 x double> %broadcast.splatinsert108, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = mul nuw i64 %index, 3                   ; 3 uses
  %i.an = add nuw i64 %i.am, 3                    ; 2 uses
  %i.ao = mul i64 %index, 3                       ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %i.l, i64 %i.ao ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load double, ptr %i.ap, align 8, !tbaa !17, !alias.scope !72
  %i.at = load double, ptr %i.ar, align 8, !tbaa !17, !alias.scope !72
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1
  %i.aw = getelementptr i8, ptr %i.ap, i64 -24
  %i.ax = getelementptr i8, ptr %i.aq, i64 24
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !17, !alias.scope !72
  %i.az = load double, ptr %i.ax, align 8, !tbaa !17, !alias.scope !72
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1 ; 2 uses
  %i.bc = mul nuw i64 %index, 24
  %i.bd = mul i64 %index, 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = getelementptr i8, ptr %i.l, i64 %i.bd   ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 72
  %i.bi = load double, ptr %i.bf, align 8, !tbaa !17, !alias.scope !72
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !17, !alias.scope !72
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.am
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr [8 x i8], ptr %i.l, i64 %i.ao
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %i.bq = load double, ptr %i.bn, align 8, !tbaa !17, !alias.scope !72
  %i.br = load double, ptr %i.bp, align 8, !tbaa !17, !alias.scope !72
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = getelementptr i8, ptr %i.ap, i64 -16
  %i.bv = getelementptr i8, ptr %i.aq, i64 32
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !17, !alias.scope !72
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !17, !alias.scope !72
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.cb = getelementptr i8, ptr %i.bg, i64 80
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !17, !alias.scope !72
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !17, !alias.scope !72
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.am
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = getelementptr [8 x i8], ptr %i.l, i64 %i.ao
  %i.cj = getelementptr i8, ptr %i.ci, i64 64
  %i.ck = load double, ptr %i.ch, align 8, !tbaa !17, !alias.scope !72
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !17, !alias.scope !72
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1
  %i.co = getelementptr i8, ptr %i.ap, i64 -8
  %i.cp = getelementptr i8, ptr %i.aq, i64 40
  %i.cq = load double, ptr %i.co, align 8, !tbaa !17, !alias.scope !72
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !17, !alias.scope !72
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.cv = getelementptr i8, ptr %i.bg, i64 88
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !17, !alias.scope !72
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !17, !alias.scope !72
  %i.cy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.an
  %5 = shufflevector <2 x double> %i.av, <2 x double> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <2 x double> %i.bb, <2 x double> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %5, <4 x double> splat (double -2.000000e+00), <4 x double> %6)
  %8 = shufflevector <2 x double> %i.bl, <2 x double> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = fadd <4 x double> %7, %8
  %i.db = shufflevector <2 x double> %i.bl, <2 x double> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <2 x double> %i.bb, <2 x double> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = fsub <4 x double> %i.db, %i.dc
  %11 = fmul <4 x double> %i.al, %10
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ct)
  %13 = fadd <2 x double> %12, %i.cz
  %14 = fsub <2 x double> %i.cz, %i.ct
  %15 = fmul <2 x double> %broadcast.splat107, %14
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %broadcast.splat109, <2 x double> %15)
  %i.dd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %9, <4 x double> %4, <4 x double> %11)
  %i.de = shufflevector <2 x double> %16, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.dd, <4 x double> %i.de, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.da, align 8, !tbaa !17, !alias.scope !73, !noalias !72
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %i.dg = extractelement <2 x double> %i.ac, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %.096 = phi i64 [ %i.dk, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader110 ] ; 2 uses
  %i.dh = mul nuw nsw i64 %.096, 3                ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dh ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = add nuw nsw i64 %.096, 1                ; 3 uses
  %.idx95 = mul nuw nsw i64 %i.dk, 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx95 ; 2 uses
  %i.dm = add nuw nsw i64 %i.dh, 2                ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !17
  %i.dp = getelementptr i8, ptr %i.di, i64 -8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !17 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !17 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dh
  %i.du = load <2 x double>, ptr %i.di, align 8, !tbaa !17
  %i.dv = load <2 x double>, ptr %i.dj, align 8, !tbaa !17 ; 2 uses
  %i.dw = load <2 x double>, ptr %i.dl, align 8, !tbaa !17 ; 2 uses
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> splat (double -2.000000e+00), <2 x double> %i.dv)
  %i.dy = fadd <2 x double> %i.dx, %i.dw
  %i.dz = fsub <2 x double> %i.dw, %i.dv
  %i.ea = fmul <2 x double> %i.y, %i.dz
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.w, <2 x double> %i.ea)
  store <2 x double> %i.eb, ptr %i.dt, align 8, !tbaa !17
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.do, double -2.000000e+00, double %i.dq)
  %i.ed = fadd double %i.ec, %i.ds
  %i.ee = fsub double %i.ds, %i.dq
  %i.ef = fmul double %i.dg, %i.ee
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ae, double %i.ef)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dm
  store double %i.eg, ptr %i.eh, align 8, !tbaa !17
  %exitcond.not = icmp eq i64 %i.dk, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.af, 24
  %i.ei = getelementptr i8, ptr %i.p, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %check_retval.exit90, %check_retval.exit, %._crit_edge
  %.086 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit90 ]
  ret i32 %.086
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @f0(double %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  ret i32 0
}

declare ptr @MRIStepCoupling_MIStoMRI(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @MRIStepSetCoupling(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MRIStepCoupling_LoadTable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @Js(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call i32 @SUNMatZero(ptr noundef %3) #14 ; 0 uses
  tail call fastcc void @LaplaceMatrix(ptr noundef %3, ptr noundef %4)
  %i.b = load i64, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = fmul double %i.f, -5.000000e-01
  %i.h = fdiv double %i.g, %i.d                   ; 2 uses
  %i.i = icmp sgt i64 %i.b, 2
  br i1 %i.i, label %.lr.ph.i, label %AdvectionJac.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !17
  %i.l = fmul <2 x double> %i.k, splat (double -5.000000e-01)
  %i.m = insertelement <2 x double> poison, double %i.d, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34   ; 6 uses
  %i.u = add nsw i64 %i.b, -2
  %i.v = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.w = extractelement <2 x double> %i.o, i64 1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.055.i = phi i64 [ 1, %.lr.ph.i ], [ %i.aq, %bb.b ] ; 3 uses
  %.idx56.i = mul i64 %.055.i, 24
  %i.x = getelementptr i8, ptr %i.r, i64 %.idx56.i ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !17
  %i.ad = fsub double %i.ac, %i.v
  store double %i.ad, ptr %i.ab, align 8, !tbaa !17
  %i.ae = getelementptr i8, ptr %i.x, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !17
  %i.aj = fsub double %i.ai, %i.w
  store double %i.aj, ptr %i.ah, align 8, !tbaa !17
  %i.ak = getelementptr i8, ptr %i.x, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.t ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !17
  %i.ap = fsub double %i.ao, %i.h
  store double %i.ap, ptr %i.an, align 8, !tbaa !17
  %i.aq = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.t
  %i.au = getelementptr i8, ptr %i.at, i64 -24    ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = fadd double %i.v, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.t
  %i.ba = getelementptr i8, ptr %i.az, i64 -24    ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !17
  %i.bc = fadd double %i.w, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.t
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24    ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bi = fadd double %i.h, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !17
  %exitcond.not.i = icmp eq i64 %.055.i, %i.u
  br i1 %exitcond.not.i, label %AdvectionJac.exit, label %bb.b

AdvectionJac.exit:                                ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fse(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.e = load double, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !23 ; 2 uses
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #14 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #14 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %check_retval.exit60, label %bb.c

check_retval.exit60:                              ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #14
  %i.p = fmul <2 x double> %i.c, splat (double -5.000000e-01)
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> %i.p, %i.r
  %i.t = fmul double %i.e, -5.000000e-01
  %i.u = fdiv double %i.t, %i.g
  %i.v = add i64 %i.a, -1                         ; 2 uses
end_hunk_0
