Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D_imexmri?download=true
inline.NumInlined: 102
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ff:bb.a

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
  %i.s = getelementptr i8, ptr %i.l, i64 24
  %i.t = mul i64 %i.a, 24
  %i.u = add i64 %i.t, -24                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr i8, ptr %i.h, i64 24
  %i.x = getelementptr i8, ptr %i.h, i64 %i.u
  %bound0 = icmp ult ptr %i.s, %i.x
  %bound1 = icmp ult ptr %i.w, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.y = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = mul nuw i64 %index, 3                    ; 3 uses
  %i.aa = add nuw i64 %i.z, 3                     ; 2 uses
  %i.ab = mul i64 %index, 3                       ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load double, ptr %i.ac, align 8, !tbaa !17, !alias.scope !58
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !17, !alias.scope !58
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1 ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.am = getelementptr i8, ptr %i.al, i64 56
  %i.an = load double, ptr %i.ak, align 8, !tbaa !17, !alias.scope !58
  %i.ao = load double, ptr %i.am, align 8, !tbaa !17, !alias.scope !58
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = getelementptr [8 x i8], ptr %i.h, i64 %i.ab
  %i.au = getelementptr i8, ptr %i.at, i64 64
  %i.av = load double, ptr %i.as, align 8, !tbaa !17, !alias.scope !58
  %i.aw = load double, ptr %i.au, align 8, !tbaa !17, !alias.scope !58
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1 ; 4 uses
  %i.az = fadd <2 x double> %i.ay, splat (double 1.000000e+00)
  %i.ba = fneg <2 x double> %i.az
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ai, <2 x double> %broadcast.splat)
  %i.bc = fmul <2 x double> %i.ai, %i.aq          ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aa
  %i.be = fneg <2 x double> %i.ai
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = fsub <2 x double> %broadcast.splat65, %i.ay
  %i.bh = fdiv <2 x double> %i.bg, %broadcast.splat67
  %i.bi = fneg <2 x double> %i.ay
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.ai, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.bc, <2 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <2 x double> %i.ai, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = shufflevector <2 x double> %i.bb, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> %i.bl, <4 x double> %i.bm)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bn, <4 x double> %i.bo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.bd, align 8, !tbaa !17, !alias.scope !59, !noalias !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.059.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %i.bq = insertelement <2 x double> poison, double %i.c, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.059 = phi i64 [ %i.cu, %.lr.ph ], [ %.059.ph, %.lr.ph.preheader68 ] ; 2 uses
  %i.br = mul nuw nsw i64 %.059, 3                ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !17
  %i.bx = add nuw nsw i64 %i.br, 2                ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx
  %i.bz = fmul double %i.bt, %i.bw                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.br
  %i.cb = fneg double %i.bt
  %i.cc = fmul double %i.bz, %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ce = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = load double, ptr %i.by, align 8, !tbaa !17 ; 3 uses
  %i.ch = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fadd <2 x double> %i.ci, <double 1.000000e+00, double -0.000000e+00>
  %i.ck = insertelement <2 x double> %i.cd, double %i.cg, i64 1
  %i.cl = fsub double %i.e, %i.cg
  %i.cm = fdiv double %i.cl, %i.g
  %i.cn = fneg <2 x double> %i.cj
  %i.co = insertelement <2 x double> %i.bq, double %i.cm, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cf, <2 x double> %i.co) ; 2 uses
  %i.cq = insertelement <2 x double> %i.cp, double %i.cc, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cf, <2 x double> %i.cq)
  store <2 x double> %i.cr, ptr %i.ca, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bx
  %i.ct = extractelement <2 x double> %i.cp, i64 1
  store double %i.ct, ptr %i.cs, align 8, !tbaa !17
  %i.cu = add nuw nsw i64 %.059, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.p, 24
  %i.cv = getelementptr i8, ptr %i.l, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
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
  %4 = extractelement <2 x double> %i.z, i64 0
  %5 = fdiv double %4, %i.o                       ; 2 uses
  %6 = extractelement <2 x double> %i.z, i64 1
  %7 = fdiv double %6, %i.o                       ; 2 uses
  %i.aa = fmul <2 x double> %i.k, <double 1.000000e+00, double -5.000000e-01>
  %i.ab = fdiv <2 x double> %i.aa, %i.y           ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fdiv double %i.ac, %i.o                 ; 2 uses
  %i.ae = fmul <2 x double> %i.m, splat (double -5.000000e-01)
  %i.af = fdiv <2 x double> %i.ae, %i.y           ; 4 uses
  %i.ag = add i64 %i.a, -1                        ; 2 uses
  %i.ah = icmp sgt i64 %i.a, 2
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ai = add nsw i64 %i.a, -2                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.ai, 2
  br i1 %min.iters.check, label %.lr.ph.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aj = getelementptr i8, ptr %i.t, i64 24
  %i.ak = mul i64 %i.a, 24                        ; 2 uses
  %i.al = getelementptr i8, ptr %i.t, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = getelementptr i8, ptr %i.p, i64 %i.ak
  %bound0 = icmp ult ptr %i.aj, %i.an
  %bound1 = icmp ult ptr %i.p, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -2                      ; 2 uses
  %i.ao = or i64 %i.ai, 1
  %broadcast.splat = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat124 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat128 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat134 = shufflevector <2 x double> %broadcast.splatinsert133, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ap = mul nuw i64 %index, 3                   ; 3 uses
  %i.aq = add nuw i64 %i.ap, 3                    ; 2 uses
  %i.ar = mul i64 %index, 3                       ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.p, i64 %i.ar ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load double, ptr %i.as, align 8, !tbaa !17, !alias.scope !65
  %i.aw = load double, ptr %i.au, align 8, !tbaa !17, !alias.scope !65
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1 ; 5 uses
  %i.az = getelementptr i8, ptr %i.as, i64 -24
  %i.ba = getelementptr i8, ptr %i.at, i64 24
  %i.bb = load double, ptr %i.az, align 8, !tbaa !17, !alias.scope !65
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !17, !alias.scope !65
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1 ; 2 uses
  %i.bf = mul nuw i64 %index, 24
  %i.bg = mul i64 %index, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bf ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = getelementptr i8, ptr %i.p, i64 %i.bg   ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 72
  %i.bl = load double, ptr %i.bi, align 8, !tbaa !17, !alias.scope !65
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !17, !alias.scope !65
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %i.ar
  %i.bs = getelementptr i8, ptr %i.br, i64 56
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !17, !alias.scope !65
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !17, !alias.scope !65
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.as, i64 -16
  %i.by = getelementptr i8, ptr %i.at, i64 32
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !17, !alias.scope !65
  %i.ca = load double, ptr %i.by, align 8, !tbaa !17, !alias.scope !65
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.ce = getelementptr i8, ptr %i.bj, i64 80
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !17, !alias.scope !65
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !17, !alias.scope !65
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ap
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = getelementptr [8 x i8], ptr %i.p, i64 %i.ar
  %i.cm = getelementptr i8, ptr %i.cl, i64 64
  %i.cn = load double, ptr %i.ck, align 8, !tbaa !17, !alias.scope !65
  %i.co = load double, ptr %i.cm, align 8, !tbaa !17, !alias.scope !65
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1 ; 5 uses
  %i.cr = getelementptr i8, ptr %i.as, i64 -8
  %i.cs = getelementptr i8, ptr %i.at, i64 40
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !17, !alias.scope !65
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !17, !alias.scope !65
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cy = getelementptr i8, ptr %i.bj, i64 88
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !17, !alias.scope !65
  %i.da = load double, ptr %i.cy, align 8, !tbaa !17, !alias.scope !65
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1 ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> splat (double -2.000000e+00), <2 x double> %i.be)
  %i.de = fadd <2 x double> %i.dd, %i.bo
  %i.df = fsub <2 x double> %i.bo, %i.be
  %i.dg = fmul <2 x double> %broadcast.splat, %i.df
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %broadcast.splat120, <2 x double> %i.dg)
  %i.di = fadd <2 x double> %broadcast.splat122, %i.dh
  %i.dj = fadd <2 x double> %i.cq, splat (double 1.000000e+00)
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = fmul <2 x double> %i.ay, %i.bw          ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cc)
  %i.do = fadd <2 x double> %i.dn, %i.ci
  %i.dp = fsub <2 x double> %i.ci, %i.cc
  %i.dq = fmul <2 x double> %broadcast.splat124, %i.dp
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %broadcast.splat126, <2 x double> %i.dq)
  %i.ds = fneg <2 x double> %i.dl
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cw)
  %i.du = fadd <2 x double> %i.dt, %i.dc
  %i.dv = fsub <2 x double> %i.dc, %i.cw
  %i.dw = fmul <2 x double> %broadcast.splat128, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %broadcast.splat130, <2 x double> %i.dw)
  %i.dy = fsub <2 x double> %broadcast.splat132, %i.cq
  %i.dz = fdiv <2 x double> %i.dy, %broadcast.splat134
  %i.ea = fadd <2 x double> %i.dz, %i.dx
  %i.eb = fneg <2 x double> %i.cq
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ay, <2 x double> %i.ea)
  %i.ed = shufflevector <2 x double> %i.dl, <2 x double> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ef = shufflevector <2 x double> %i.dk, <2 x double> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eh = shufflevector <2 x double> %i.di, <2 x double> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ef, <4 x double> %i.eg, <4 x double> %i.eh)
  %i.ej = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ed, <4 x double> %i.ee, <4 x double> %i.ei)
  %i.ek = shufflevector <2 x double> %i.ec, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.ej, <4 x double> %i.ek, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.dm, align 8, !tbaa !17, !alias.scope !66, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader135

.lr.ph.preheader135:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0115.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  %i.em = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 1, i32 2>
  %i.en = extractelement <2 x double> %i.af, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader135, %.lr.ph
  %.0115 = phi i64 [ %i.es, %.lr.ph ], [ %.0115.ph, %.lr.ph.preheader135 ] ; 2 uses
  %i.eo = mul nuw nsw i64 %.0115, 3               ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.eo ; 3 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !17 ; 4 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 -24
  %i.es = add nuw nsw i64 %.0115, 1               ; 3 uses
  %.idx114 = mul nuw nsw i64 %i.es, 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx114 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.eo
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !17 ; 2 uses
  %i.ex = add nuw nsw i64 %i.eo, 2                ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !17 ; 5 uses
  %i.fa = getelementptr i8, ptr %i.ep, i64 -8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !17 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !17 ; 2 uses
  %i.fe = fadd double %i.ez, 1.000000e+00
  %i.ff = fneg double %i.fe
  %i.fg = fmul double %i.eq, %i.ew                ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.eo
  %i.fi = load <2 x double>, ptr %i.er, align 8, !tbaa !17 ; 3 uses
  %i.fj = load <2 x double>, ptr %i.et, align 8, !tbaa !17 ; 3 uses
  %i.fk = extractelement <2 x double> %i.fi, i64 0
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.eq, double -2.000000e+00, double %i.fk)
  %i.fm = extractelement <2 x double> %i.fj, i64 0
  %i.fn = fadd double %i.fl, %i.fm
  %i.fo = fsub <2 x double> %i.fj, %i.fi
  %i.fp = extractelement <2 x double> %i.fi, i64 1
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.ew, double -2.000000e+00, double %i.fp)
  %i.fr = extractelement <2 x double> %i.fj, i64 1
  %i.fs = fadd double %i.fq, %i.fr
  %i.ft = fmul <2 x double> %i.em, %i.fo          ; 2 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 0
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fn, double %5, double %i.fu)
  %i.fw = fadd double %i.c, %i.fv
  %i.fx = extractelement <2 x double> %i.ft, i64 1
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fs, double %7, double %i.fx)
  %i.fz = fneg double %i.fg
  %i.ga = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.ez, i64 1
  %i.gc = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fy, i64 1
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gd, <2 x double> %i.gf)
  %i.gh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.fz, i64 1
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gd, <2 x double> %i.gg)
  store <2 x double> %i.gj, ptr %i.fh, align 8, !tbaa !17
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.ez, double -2.000000e+00, double %i.fb)
  %i.gl = fadd double %i.gk, %i.fd
  %i.gm = fsub double %i.fd, %i.fb
  %i.gn = fmul double %i.en, %i.gm
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.ad, double %i.gn)
  %i.gp = fsub double %i.e, %i.ez
  %i.gq = fdiv double %i.gp, %i.g
  %i.gr = fadd double %i.gq, %i.go
  %i.gs = fneg double %i.ez
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.eq, double %i.gr)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ex
  store double %i.gt, ptr %i.gu, align 8, !tbaa !17
  %exitcond.not = icmp eq i64 %i.es, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.idx = mul i64 %i.ag, 24
  %i.gv = getelementptr i8, ptr %i.t, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i8 0, i64 24, i1 false)
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
  %i.ai = getelementptr i8, ptr %i.p, i64 24
  %i.aj = mul i64 %i.a, 24                        ; 2 uses
end_hunk_0
