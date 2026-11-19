Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasHeat2D_bnd?download=true
inline.NumInlined: 28
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
  call fastcc void @PrintOutput(ptr noundef nonnull %i.ak, double noundef %i.df, ptr noundef nonnull %i.k)
  %i.dg = call i32 @IDASolve(ptr noundef nonnull %i.ak, double noundef 1.024000e+01, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o, i32 noundef 1) #9 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %check_retval.exit110, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load double, ptr %i.d, align 8, !tbaa !16
  call fastcc void @PrintOutput(ptr noundef nonnull %i.ak, double noundef %i.di, ptr noundef nonnull %i.k)
  %i.dj = call i32 @IDAGetNumErrTestFails(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ad, label %check_retval.exit112

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.14, i32 noundef %i.dj) #10 ; 0 uses
  br label %check_retval.exit112

check_retval.exit112:                             ; preds = %bb.ac, %bb.ad
  %i.dn = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %check_retval.exit114

bb.ae:                                            ; preds = %check_retval.exit112
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.15, i32 noundef %i.dn) #10 ; 0 uses
  br label %check_retval.exit114

check_retval.exit114:                             ; preds = %check_retval.exit112, %bb.ae
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !17
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %i.dr, i64 noundef %i.ds) ; 0 uses
  call void @IDAFree(ptr noundef nonnull %i.a) #9
  %i.du = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bo) #9 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bj) #9
  call void @N_VDestroy(ptr noundef nonnull %i.k) #9
  call void @N_VDestroy(ptr noundef nonnull %i.o) #9
  call void @N_VDestroy(ptr noundef nonnull %i.aa) #9
  call void @N_VDestroy(ptr noundef nonnull %i.s) #9
  call void @free(ptr noundef nonnull %i.ae) #9
  %i.dv = call i32 @SUNContext_Free(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %check_retval.exit110, %check_retval.exit108, %check_retval.exit106, %check_retval.exit104, %check_retval.exit102, %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit94, %check_retval.exit92, %check_retval.exit90, %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit, %check_retval.exit114
  %.059 = phi i32 [ 0, %check_retval.exit114 ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ 1, %check_retval.exit88 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit94 ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit102 ], [ 1, %check_retval.exit104 ], [ 1, %check_retval.exit106 ], [ 1, %check_retval.exit108 ], [ 1, %check_retval.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialProfile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 30 uses
  %i.b = add nsw i64 %i.a, -1                     ; 3 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 14 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 11 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  tail call void @N_VConst(double noundef 1.000000e+00, ptr noundef %3) #9
  %i.i = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %i.i, label %.lr.ph64, label %._crit_edge65.split

.lr.ph64:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %scevgep = getelementptr i8, ptr %0, i64 16
  %i.k = mul i64 %i.a, %i.a
  %i.l = shl i64 %i.k, 3
  %scevgep4 = getelementptr i8, ptr %i.c, i64 %i.l
  %min.iters.check = icmp eq i64 %i.a, 1
  %bound0 = icmp ult ptr %i.c, %scevgep
  %bound1 = icmp ult ptr %i.j, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.a, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.m = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.a, 8070450532247928830      ; 3 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph64, %._crit_edge
  %.062 = phi i64 [ 0, %.lr.ph64 ], [ %i.bi, %._crit_edge ] ; 3 uses
  %i.n = load double, ptr %i.j, align 8, !tbaa !42
  %i.o = uitofp nneg i64 %.062 to double
  %i.p = fmul double %i.n, %i.o                   ; 5 uses
  %i.q = mul nuw nsw i64 %.062, %i.a
  %i.r = fsub double 1.000000e+00, %i.p           ; 4 uses
  %i.s = getelementptr [8 x i8], ptr %i.c, i64 %i.q ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.m
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.t = load double, ptr %i.j, align 8, !tbaa !42, !alias.scope !43
  %broadcast.splatinsert7 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat8 = shufflevector <2 x double> %broadcast.splatinsert7, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat6 = shufflevector <2 x double> %broadcast.splatinsert5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = uitofp nneg <2 x i64> %vec.ind to <2 x double>
  %i.v = fmul <2 x double> %broadcast.splat8, %i.u ; 2 uses
  %i.w = fmul <2 x double> %i.v, splat (double 1.600000e+01)
  %i.x = fsub <2 x double> splat (double 1.000000e+00), %i.v
  %i.y = fmul <2 x double> %i.w, %i.x
  %i.z = fmul <2 x double> %broadcast.splat, %i.y
  %i.aa = fmul <2 x double> %broadcast.splat6, %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.s, i64 %index
  store <2 x double> %i.aa, ptr %i.ab, align 8, !tbaa !16, !alias.scope !44, !noalias !43
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.05561.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  %.neg = or disjoint i64 %.05561.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = load double, ptr %i.j, align 8, !tbaa !42
  %i.ae = uitofp nneg i64 %.05561.ph to double
  %i.af = fmul double %i.ad, %i.ae                ; 2 uses
  %i.ag = fmul double %i.af, 1.600000e+01
  %i.ah = fsub double 1.000000e+00, %i.af
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = fmul double %i.p, %i.ai
  %i.ak = fmul double %i.r, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.s, i64 %.05561.ph
  store double %i.ak, ptr %i.al, align 8, !tbaa !16
  %i.am = or disjoint i64 %.05561.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05561.unr = phi i64 [ %.05561.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.a, %.neg
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05561 = phi i64 [ %i.bh, %scalar.ph ], [ %.05561.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.j, align 8, !tbaa !42
  %i.ap = uitofp nneg i64 %.05561 to double
  %i.aq = fmul double %i.ao, %i.ap                ; 2 uses
  %i.ar = fmul double %i.aq, 1.600000e+01
  %i.as = fsub double 1.000000e+00, %i.aq
  %i.at = fmul double %i.ar, %i.as
  %i.au = fmul double %i.p, %i.at
  %i.av = fmul double %i.r, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.s, i64 %.05561
  store double %i.av, ptr %i.aw, align 8, !tbaa !16
  %i.ax = add nuw nsw i64 %.05561, 1              ; 2 uses
  %i.ay = load double, ptr %i.j, align 8, !tbaa !42
  %i.az = uitofp nneg i64 %i.ax to double
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  %i.bb = fmul double %i.ba, 1.600000e+01
  %i.bc = fsub double 1.000000e+00, %i.ba
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fmul double %i.p, %i.bd
  %i.bf = fmul double %i.r, %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.s, i64 %i.ax
  store double %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = add nuw nsw i64 %.05561, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.a
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond77.not = icmp eq i64 %i.bi, %i.a
  br i1 %exitcond77.not, label %._crit_edge65.split, label %.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge, %bb.a
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %i.bj = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 10 uses
  %i.bk = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 4 uses
  %i.bl = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #9 ; 4 uses
  %i.bm = load i64, ptr %0, align 8, !tbaa !15    ; 14 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %4) #9
  %i.bp = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.bq = icmp sgt i64 %i.bm, 2
  br i1 %i.bq, label %.lr.ph39.i, label %heatres.exit

.lr.ph39.i:                                       ; preds = %._crit_edge65.split
  %i.br = fneg double %i.bo                       ; 2 uses
  %i.bs = shl i64 %i.bm, 3                        ; 5 uses
  %5 = add i64 %i.bs, -16
  %6 = mul i64 %i.bm, %5
  %i.bt = getelementptr i8, ptr %i.bj, i64 %6
  %scevgep35.a = getelementptr i8, ptr %i.bt, i64 -8
  %scevgep36.a = getelementptr i8, ptr %i.bj, i64 8
  %i.bu = mul i64 %i.bm, %i.bm
  %7 = shl i64 %i.bu, 3
  %i.bv = getelementptr i8, ptr %i.bj, i64 %7
  %scevgep37.a = getelementptr i8, ptr %i.bv, i64 -8
  %i.bw = shl i64 %i.bm, 4
  %i.bx = getelementptr i8, ptr %i.bj, i64 %i.bw
  %scevgep38.a = getelementptr i8, ptr %i.bx, i64 8
  %8 = add i64 %i.bs, -8
  %9 = mul i64 %i.bm, %8                          ; 2 uses
  %scevgep39.a = getelementptr i8, ptr %i.bj, i64 %9
  %scevgep40.a = getelementptr i8, ptr %i.bj, i64 %i.bs
  %i.by = add i64 %9, -8                          ; 2 uses
  %scevgep41.a = getelementptr i8, ptr %i.bk, i64 %i.by
  %i.bz = add i64 %i.bs, 8                        ; 2 uses
  %scevgep42.a = getelementptr i8, ptr %i.bk, i64 %i.bz
  %scevgep43.a = getelementptr i8, ptr %i.bl, i64 %i.by ; 4 uses
  %scevgep44 = getelementptr i8, ptr %i.bl, i64 %i.bz ; 4 uses
  %i.ca = add nsw i64 %i.bm, -2                   ; 4 uses
  %min.iters.check46 = icmp ult i64 %i.ca, 4
  %bound048 = icmp ult ptr %scevgep44, %scevgep41.a
  %bound149 = icmp ult ptr %scevgep42.a, %scevgep43.a
  %found.conflict50 = and i1 %bound048, %bound149
  %stride.check51 = icmp slt i64 %i.bs, 0
  %10 = or i1 %found.conflict50, %stride.check51
  %bound052 = icmp ult ptr %scevgep44, %scevgep39.a
  %bound153 = icmp ult ptr %scevgep40.a, %scevgep43.a
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %10, %found.conflict54
  %bound055 = icmp ult ptr %scevgep44, %scevgep37.a
  %bound156 = icmp ult ptr %scevgep38.a, %scevgep43.a
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  %bound059 = icmp ult ptr %scevgep44, %scevgep35.a
  %bound160 = icmp ult ptr %scevgep36.a, %scevgep43.a
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx58, %found.conflict61
  %n.vec64 = and i64 %i.ca, -2                    ; 2 uses
  %i.cb = or i64 %i.ca, 1
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n76 = icmp eq i64 %i.ca, %n.vec64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph39.i
  %.037.i = phi i64 [ 1, %.lr.ph39.i ], [ %i.do, %._crit_edge.i ] ; 2 uses
  %i.cc = mul nuw nsw i64 %.037.i, %i.bm          ; 2 uses
  %brmerge131.a = select i1 %min.iters.check46, i1 true, i1 %conflict.rdx62
  br i1 %brmerge131.a, label %scalar.ph45.preheader, label %vector.body67

vector.body67:                                    ; preds = %.lr.ph.i, %vector.body67
  %index68 = phi i64 [ %index.next74, %vector.body67 ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cd = or disjoint i64 %index68, 1
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !tbaa !16, !alias.scope !45
  %i.cg = getelementptr [8 x i8], ptr %i.bj, i64 %i.ce ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %wide.load69.a = load <2 x double>, ptr %i.ch, align 8, !tbaa !16, !alias.scope !46
  %i.ci = getelementptr i8, ptr %i.cg, i64 8
  %wide.load70.a = load <2 x double>, ptr %i.ci, align 8, !tbaa !16, !alias.scope !46
  %i.cj = fadd <2 x double> %wide.load69.a, %wide.load70.a
  %i.ck = sub nsw i64 %i.ce, %i.bm
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ck
  %wide.load71.a = load <2 x double>, ptr %i.cl, align 8, !tbaa !16, !alias.scope !47
  %i.cm = fadd <2 x double> %i.cj, %wide.load71.a
  %i.cn = getelementptr [8 x i8], ptr %i.cg, i64 %i.bm
  %wide.load72 = load <2 x double>, ptr %i.cn, align 8, !tbaa !16, !alias.scope !48
  %i.co = fadd <2 x double> %i.cm, %wide.load72
  %wide.load73 = load <2 x double>, ptr %i.cg, align 8, !tbaa !16, !alias.scope !46
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load73, <2 x double> splat (double -4.000000e+00), <2 x double> %i.co)
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %i.cp, <2 x double> %wide.load)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ce
  store <2 x double> %i.cq, ptr %i.cr, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %index.next74 = add nuw i64 %index68, 2         ; 2 uses
  %i.cs = icmp eq i64 %index.next74, %n.vec64
  br i1 %i.cs, label %middle.block75, label %vector.body67, !llvm.loop !35

middle.block75:                                   ; preds = %vector.body67
  br i1 %cmp.n76, label %._crit_edge.i, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %.lr.ph.i, %middle.block75
  %.03436.i.ph = phi i64 [ %i.cb, %middle.block75 ], [ 1, %.lr.ph.i ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %.03436.i = phi i64 [ %i.dn, %scalar.ph45 ], [ %.03436.i.ph, %scalar.ph45.preheader ] ; 2 uses
  %i.ct = add nuw nsw i64 %.03436.i, %i.cc        ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !16
  %i.cw = getelementptr [8 x i8], ptr %i.bj, i64 %i.ct ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !16
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !16
  %i.db = fadd double %i.cy, %i.da
  %i.dc = sub nsw i64 %i.ct, %i.bm
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !16
  %i.df = fadd double %i.db, %i.de
  %i.dg = getelementptr [8 x i8], ptr %i.cw, i64 %i.bm
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16
  %i.di = fadd double %i.df, %i.dh
  %i.dj = load double, ptr %i.cw, align 8, !tbaa !16
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double -4.000000e+00, double %i.di)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.br, double %i.dk, double %i.cv)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ct
  store double %i.dl, ptr %i.dm, align 8, !tbaa !16
  %i.dn = add nuw nsw i64 %.03436.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.bp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph45, !llvm.loop !36

._crit_edge.i:                                    ; preds = %scalar.ph45, %middle.block75
  %i.do = add nuw nsw i64 %.037.i, 1              ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.do, %i.bp
  br i1 %exitcond41.not.i, label %heatres.exit, label %.lr.ph.i

heatres.exit:                                     ; preds = %._crit_edge.i, %._crit_edge65.split
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %4, ptr noundef %2) #9
  br i1 %i.i, label %.lr.ph69.preheader, label %._crit_edge74.split

.lr.ph69.preheader:                               ; preds = %heatres.exit
  %exitcond78.peel.not = icmp eq i64 %i.a, 1
  %i.dp = sub i64 %i.h, %i.f                      ; 2 uses
  %i.dq = sub i64 %i.h, %i.d                      ; 2 uses
  %i.dr = sub i64 %i.f, %i.d                      ; 2 uses
  %.not = icmp eq i64 %i.a, 2
  %i.ds = add nsw i64 %i.a, -2
  %min.iters.check105 = icmp ult i64 %i.a, 6
  %i.dt = add i64 %i.dr, -1
  %diff.check107 = icmp ult i64 %i.dt, 31
  %i.du = add i64 %i.dq, -1
  %diff.check108.a = icmp ult i64 %i.du, 31
  %conflict.rdx109.a = or i1 %diff.check107, %diff.check108.a
  %i.dv = add i64 %i.dp, -1
  %diff.check110 = icmp ult i64 %i.dv, 31
  %conflict.rdx111 = or i1 %conflict.rdx109.a, %diff.check110
  %n.vec113 = and i64 %i.a, 9223372036854775804   ; 3 uses
  %cmp.n118 = icmp eq i64 %i.a, %n.vec113
  %xtraiter125.a = and i64 %i.a, 1
  %lcmp.mod126.not.a = icmp eq i64 %xtraiter125.a, 0
  %min.iters.check84 = icmp ult i64 %i.a, 6
  %i.dw = add i64 %i.dr, -1
  %diff.check = icmp ult i64 %i.dw, 31
  %i.dx = add i64 %i.dq, -1
  %diff.check86.a = icmp ult i64 %i.dx, 31
  %conflict.rdx87.a = or i1 %diff.check, %diff.check86.a
  %i.dy = add i64 %i.dp, -1
  %diff.check88 = icmp ult i64 %i.dy, 31
  %conflict.rdx89 = or i1 %conflict.rdx87.a, %diff.check88
  %n.vec91 = and i64 %i.a, 9223372036854775804    ; 3 uses
  %cmp.n96 = icmp eq i64 %i.a, %n.vec91
  %xtraiter127 = and i64 %i.a, 1
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %._crit_edge70
  %.172 = phi i64 [ %i.gc, %._crit_edge70 ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %i.dz = mul nuw nsw i64 %.172, %i.a             ; 8 uses
  %i.ea = icmp eq i64 %.172, 0
  br i1 %i.ea, label %.lr.ph69.split.us.preheader, label %.lr.ph69.split

.lr.ph69.split.us.preheader:                      ; preds = %.lr.ph69
  %brmerge132 = select i1 %min.iters.check84, i1 true, i1 %conflict.rdx89
  br i1 %brmerge132, label %.lr.ph69.split.us.preheader120, label %vector.body92

vector.body92:                                    ; preds = %.lr.ph69.split.us.preheader, %vector.body92
  %index93 = phi i64 [ %index.next94, %vector.body92 ], [ 0, %.lr.ph69.split.us.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index93 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> splat (double 1.000000e-01), ptr %i.eb, align 8, !tbaa !16
  store <2 x double> splat (double 1.000000e-01), ptr %i.ec, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index93 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x double> zeroinitializer, ptr %i.ed, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.ee, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index93 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x double> zeroinitializer, ptr %i.ef, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.eg, align 8, !tbaa !16
  %index.next94 = add nuw i64 %index93, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next94, %n.vec91
  br i1 %i.eh, label %middle.block95, label %vector.body92, !llvm.loop !37

middle.block95:                                   ; preds = %vector.body92
  br i1 %cmp.n96, label %._crit_edge70, label %.lr.ph69.split.us.preheader120

.lr.ph69.split.us.preheader120:                   ; preds = %.lr.ph69.split.us.preheader, %middle.block95
  %.15666.us.ph = phi i64 [ %n.vec91, %middle.block95 ], [ 0, %.lr.ph69.split.us.preheader ] ; 6 uses
  %.neg130 = or disjoint i64 %.15666.us.ph, 1
  br i1 %lcmp.mod128.not, label %.lr.ph69.split.us.prol.loopexit, label %.lr.ph69.split.us.prol

.lr.ph69.split.us.prol:                           ; preds = %.lr.ph69.split.us.preheader120
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.15666.us.ph
  store double 1.000000e-01, ptr %i.ei, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.15666.us.ph
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.15666.us.ph
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !16
  %i.el = or disjoint i64 %.15666.us.ph, 1
  br label %.lr.ph69.split.us.prol.loopexit

.lr.ph69.split.us.prol.loopexit:                  ; preds = %.lr.ph69.split.us.prol, %.lr.ph69.split.us.preheader120
  %.15666.us.unr = phi i64 [ %.15666.us.ph, %.lr.ph69.split.us.preheader120 ], [ %i.el, %.lr.ph69.split.us.prol ]
  %i.em = icmp eq i64 %i.a, %.neg130
  br i1 %i.em, label %._crit_edge70, label %.lr.ph69.split.us

.lr.ph69.split.us:                                ; preds = %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us
  %.15666.us = phi i64 [ %i.eu, %.lr.ph69.split.us ], [ %.15666.us.unr, %.lr.ph69.split.us.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.15666.us
  store double 1.000000e-01, ptr %i.en, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.15666.us
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.15666.us
  store double 0.000000e+00, ptr %i.ep, align 8, !tbaa !16
  %i.eq = add nuw nsw i64 %.15666.us, 1           ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eq
  store double 1.000000e-01, ptr %i.er, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.eq
  store double 0.000000e+00, ptr %i.es, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.eq
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !16
  %i.eu = add nuw nsw i64 %.15666.us, 2           ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.eu, %i.a
  br i1 %exitcond81.not.1, label %._crit_edge70, label %.lr.ph69.split.us, !llvm.loop !38

.lr.ph69.split:                                   ; preds = %.lr.ph69
  %i.ev = icmp eq i64 %.172, %i.b
  %.fr = freeze i1 %i.ev
  br i1 %.fr, label %.lr.ph69.split.split.us.preheader, label %bb.b

.lr.ph69.split.split.us.preheader:                ; preds = %.lr.ph69.split
  %brmerge133 = select i1 %min.iters.check105, i1 true, i1 %conflict.rdx111
  br i1 %brmerge133, label %.lr.ph69.split.split.us.preheader121, label %vector.body114

vector.body114:                                   ; preds = %.lr.ph69.split.split.us.preheader, %vector.body114
  %index115 = phi i64 [ %index.next116, %vector.body114 ], [ 0, %.lr.ph69.split.split.us.preheader ] ; 2 uses
  %i.ew = add nuw nsw i64 %index115, %i.dz        ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x double> splat (double 1.000000e-01), ptr %i.ex, align 8, !tbaa !16
  store <2 x double> splat (double 1.000000e-01), ptr %i.ey, align 8, !tbaa !16
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <2 x double> zeroinitializer, ptr %i.ez, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.fa, align 8, !tbaa !16
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ew ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x double> zeroinitializer, ptr %i.fb, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.fc, align 8, !tbaa !16
  %index.next116 = add nuw i64 %index115, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next116, %n.vec113
  br i1 %i.fd, label %middle.block117, label %vector.body114, !llvm.loop !39

middle.block117:                                  ; preds = %vector.body114
  br i1 %cmp.n118, label %._crit_edge70, label %.lr.ph69.split.split.us.preheader121

.lr.ph69.split.split.us.preheader121:             ; preds = %.lr.ph69.split.split.us.preheader, %middle.block117
  %.15666.us71.ph = phi i64 [ %n.vec113, %middle.block117 ], [ 0, %.lr.ph69.split.split.us.preheader ] ; 4 uses
  %.neg129 = or disjoint i64 %.15666.us71.ph, 1
  br i1 %lcmp.mod126.not.a, label %.lr.ph69.split.split.us.prol.loopexit, label %.lr.ph69.split.split.us.prol

.lr.ph69.split.split.us.prol:                     ; preds = %.lr.ph69.split.split.us.preheader121
  %i.fe = add nuw nsw i64 %.15666.us71.ph, %i.dz  ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fe
  store double 1.000000e-01, ptr %i.ff, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fe
  store double 0.000000e+00, ptr %i.fg, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fe
  store double 0.000000e+00, ptr %i.fh, align 8, !tbaa !16
  %i.fi = or disjoint i64 %.15666.us71.ph, 1
  br label %.lr.ph69.split.split.us.prol.loopexit

.lr.ph69.split.split.us.prol.loopexit:            ; preds = %.lr.ph69.split.split.us.prol, %.lr.ph69.split.split.us.preheader121
  %.15666.us71.unr = phi i64 [ %.15666.us71.ph, %.lr.ph69.split.split.us.preheader121 ], [ %i.fi, %.lr.ph69.split.split.us.prol ]
  %i.fj = icmp eq i64 %i.a, %.neg129
  br i1 %i.fj, label %._crit_edge70, label %.lr.ph69.split.split.us.preheader121.new

.lr.ph69.split.split.us.preheader121.new:         ; preds = %.lr.ph69.split.split.us.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.dz
  br label %.lr.ph69.split.split.us

bb.b:                                             ; preds = %.lr.ph69.split
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dz
  store double 1.000000e-01, ptr %i.fk, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dz
  store double 0.000000e+00, ptr %i.fl, align 8, !tbaa !16
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dz
  store double 0.000000e+00, ptr %i.fm, align 8, !tbaa !16
  br i1 %exitcond78.peel.not, label %._crit_edge70, label %.lr.ph69.split.split.peel.next

.lr.ph69.split.split.peel.next:                   ; preds = %bb.b
  %i.fn = add nuw nsw i64 %i.b, %i.dz             ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fn
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fn
  br i1 %.not, label %.lr.ph69.split.split.peel, label %.lr.ph69.split.split

.lr.ph69.split.split.us:                          ; preds = %.lr.ph69.split.split.us, %.lr.ph69.split.split.us.preheader121.new
  %.15666.us71 = phi i64 [ %.15666.us71.unr, %.lr.ph69.split.split.us.preheader121.new ], [ %i.fy, %.lr.ph69.split.split.us ] ; 3 uses
  %i.fr = add nuw nsw i64 %.15666.us71, %i.dz     ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fr
  store double 1.000000e-01, ptr %i.fs, align 8, !tbaa !16
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fr
  store double 0.000000e+00, ptr %i.ft, align 8, !tbaa !16
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fr
  store double 0.000000e+00, ptr %i.fu, align 8, !tbaa !16
  %.reass = add nuw nsw i64 %.15666.us71, %invariant.op ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass
  store double 1.000000e-01, ptr %i.fv, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.reass
  store double 0.000000e+00, ptr %i.fw, align 8, !tbaa !16
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass
  store double 0.000000e+00, ptr %i.fx, align 8, !tbaa !16
  %i.fy = add nuw nsw i64 %.15666.us71, 2         ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %i.fy, %i.a
  br i1 %exitcond80.not.1, label %._crit_edge70, label %.lr.ph69.split.split.us, !llvm.loop !40

.lr.ph69.split.split:                             ; preds = %.lr.ph69.split.split.peel.next, %.lr.ph69.split.split
  %.15666 = phi i64 [ %i.fz, %.lr.ph69.split.split ], [ 1, %.lr.ph69.split.split.peel.next ] ; 2 uses
  %i.fz = add nuw nsw i64 %.15666, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %.15666, %i.ds
  br i1 %exitcond78.not, label %.lr.ph69.split.split.peel, label %.lr.ph69.split.split, !llvm.loop !41

.lr.ph69.split.split.peel:                        ; preds = %.lr.ph69.split.split.peel.next, %.lr.ph69.split.split
  %i.ga = phi i64 [ 1, %.lr.ph69.split.split.peel.next ], [ %i.fz, %.lr.ph69.split.split ]
  %i.gb = icmp eq i64 %i.ga, %i.b
  br i1 %i.gb, label %bb.c, label %._crit_edge70

bb.c:                                             ; preds = %.lr.ph69.split.split.peel
  store double 1.000000e-01, ptr %i.fo, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.fq, align 8, !tbaa !16
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.c, %.lr.ph69.split.split.peel, %.lr.ph69.split.split.us.prol.loopexit, %.lr.ph69.split.split.us, %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us, %middle.block117, %middle.block95, %bb.b
  %i.gc = add nuw nsw i64 %.172, 1                ; 2 uses
  %exitcond82.not = icmp eq i64 %i.gc, %i.a
  br i1 %exitcond82.not, label %._crit_edge74.split, label %.lr.ph69

._crit_edge74.split:                              ; preds = %._crit_edge70, %heatres.exit
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @heatres(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 10 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 4 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 4 uses
  %i.d = load i64, ptr %4, align 8, !tbaa !15     ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #9
  %i.g = add i64 %i.d, -1                         ; 2 uses
  %i.h = icmp sgt i64 %i.d, 2
  br i1 %i.h, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.a
  %i.i = fneg double %i.f                         ; 2 uses
  %i.j = shl i64 %i.d, 3                          ; 5 uses
  %5 = add i64 %i.j, -16
  %6 = mul i64 %i.d, %5
  %i.k = getelementptr i8, ptr %i.a, i64 %6
  %scevgep = getelementptr i8, ptr %i.k, i64 -8
  %scevgep64 = getelementptr i8, ptr %i.a, i64 8
  %i.l = mul i64 %i.d, %i.d
  %7 = shl i64 %i.l, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %7
  %scevgep65 = getelementptr i8, ptr %i.m, i64 -8
  %i.n = shl i64 %i.d, 4
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %scevgep66 = getelementptr i8, ptr %i.o, i64 8
  %8 = add i64 %i.j, -8
  %9 = mul i64 %i.d, %8                           ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.a, i64 %9
  %scevgep68 = getelementptr i8, ptr %i.a, i64 %i.j
  %i.p = add i64 %9, -8                           ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = add i64 %i.j, 8                          ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.b, i64 %i.q
  %scevgep71 = getelementptr i8, ptr %i.c, i64 %i.p ; 4 uses
  %scevgep72 = getelementptr i8, ptr %i.c, i64 %i.q ; 4 uses
  %i.r = add nsw i64 %i.d, -2                     ; 4 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  %bound0 = icmp ult ptr %scevgep72, %scevgep69
  %bound1 = icmp ult ptr %scevgep70, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.j, 0
  %10 = or i1 %found.conflict, %stride.check
  %bound073 = icmp ult ptr %scevgep72, %scevgep67
  %bound174 = icmp ult ptr %scevgep68, %scevgep71
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx = or i1 %10, %found.conflict75
  %bound076 = icmp ult ptr %scevgep72, %scevgep65
  %bound177 = icmp ult ptr %scevgep66, %scevgep71
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx, %found.conflict78
  %bound080 = icmp ult ptr %scevgep72, %scevgep
  %bound181 = icmp ult ptr %scevgep64, %scevgep71
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  %n.vec = and i64 %i.r, -2                       ; 2 uses
  %i.s = or i64 %i.r, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph39, %._crit_edge
  %.037 = phi i64 [ 1, %.lr.ph39 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.t = mul nuw nsw i64 %.037, %i.d              ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx83
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = or disjoint i64 %index, 1
  %i.v = add nuw nsw i64 %i.u, %i.t               ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v
  %wide.load = load <2 x double>, ptr %i.w, align 8, !tbaa !16, !alias.scope !60
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %i.v ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %wide.load84 = load <2 x double>, ptr %i.y, align 8, !tbaa !16, !alias.scope !61
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %wide.load85 = load <2 x double>, ptr %i.z, align 8, !tbaa !16, !alias.scope !61
  %i.aa = fadd <2 x double> %wide.load84, %wide.load85
  %i.ab = sub nsw i64 %i.v, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ab
  %wide.load86 = load <2 x double>, ptr %i.ac, align 8, !tbaa !16, !alias.scope !62
  %i.ad = fadd <2 x double> %i.aa, %wide.load86
  %i.ae = getelementptr [8 x i8], ptr %i.x, i64 %i.d
  %wide.load87 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16, !alias.scope !63
  %i.af = fadd <2 x double> %i.ad, %wide.load87
  %wide.load88 = load <2 x double>, ptr %i.x, align 8, !tbaa !16, !alias.scope !61
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load88, <2 x double> splat (double -4.000000e+00), <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ag, <2 x double> %wide.load)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.v
  store <2 x double> %i.ah, ptr %i.ai, align 8, !tbaa !16, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03436.ph = phi i64 [ %i.s, %middle.block ], [ 1, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03436 = phi i64 [ %i.be, %scalar.ph ], [ %.03436.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = add nuw nsw i64 %.03436, %i.t           ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr [8 x i8], ptr %i.a, i64 %i.ak ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !16
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !16
  %i.as = fadd double %i.ap, %i.ar
  %i.at = sub nsw i64 %i.ak, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !16
  %i.aw = fadd double %i.as, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.an, i64 %i.d
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !16
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = load double, ptr %i.an, align 8, !tbaa !16
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double -4.000000e+00, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.i, double %i.bb, double %i.am)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ak
  store double %i.bc, ptr %i.bd, align 8, !tbaa !16
  %i.be = add nuw nsw i64 %.03436, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bf = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bf, %i.g
  br i1 %exitcond41.not, label %._crit_edge40.split, label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef 10, i32 noundef 10) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 100) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef 0.000000e+00, double noundef 1.000000e-03) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef 10) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef 1.000000e-01) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.h = tail call double @N_VMaxNorm(ptr noundef %2) #9
  %i.i = call i32 @IDAGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.31, i32 noundef %i.i) #10 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.m = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %check_retval.exit11

bb.c:                                             ; preds = %check_retval.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, i32 noundef %i.m) #10 ; 0 uses
  br label %check_retval.exit11

check_retval.exit11:                              ; preds = %check_retval.exit, %bb.c
  %i.q = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %check_retval.exit13

bb.d:                                             ; preds = %check_retval.exit11
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.33, i32 noundef %i.q) #10 ; 0 uses
  br label %check_retval.exit13

check_retval.exit13:                              ; preds = %check_retval.exit11, %bb.d
  %i.u = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %check_retval.exit15

bb.e:                                             ; preds = %check_retval.exit13
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef %i.u) #10 ; 0 uses
  br label %check_retval.exit15

check_retval.exit15:                              ; preds = %check_retval.exit13, %bb.e
  %i.y = call i32 @IDAGetLastStep(ptr noundef %0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %check_retval.exit17

bb.f:                                             ; preds = %check_retval.exit15
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef %i.y) #10 ; 0 uses
  br label %check_retval.exit17

check_retval.exit17:                              ; preds = %check_retval.exit15, %bb.f
  %i.ac = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %check_retval.exit19

bb.g:                                             ; preds = %check_retval.exit17
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36, i32 noundef %i.ac) #10 ; 0 uses
  br label %check_retval.exit19

check_retval.exit19:                              ; preds = %check_retval.exit17, %bb.g
end_hunk_0
