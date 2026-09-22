Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_reaction_diffusion_mri?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

.loopexit:                                        ; preds = %bb.t, %check_retval.exit121
  %puts95 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dc = call i32 @fclose(ptr noundef %i.cb)     ; 0 uses
  %puts96 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.de = call i32 @ARKodePrintAllStats(ptr noundef nonnull %i.be, ptr noundef %i.dd, i32 noundef 0) #9 ; 0 uses
  %puts97 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.dg = call i32 @ARKodePrintAllStats(ptr noundef nonnull %i.ai, ptr noundef %i.df, i32 noundef 0) #9 ; 0 uses
  %i.dh = call noalias ptr @fopen(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14) ; 2 uses
  %i.di = call i32 @ARKodePrintAllStats(ptr noundef nonnull %i.be, ptr noundef %i.dh, i32 noundef 1) #9 ; 0 uses
  %i.dj = call i32 @fclose(ptr noundef %i.dh)     ; 0 uses
  %i.dk = call noalias ptr @fopen(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.14) ; 2 uses
  %i.dl = call i32 @ARKodePrintAllStats(ptr noundef nonnull %i.ai, ptr noundef %i.dk, i32 noundef 1) #9 ; 0 uses
  %i.dm = call i32 @fclose(ptr noundef %i.dk)     ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.p) #9
  call void @ARKodeFree(ptr noundef nonnull %i.b) #9
  %i.dn = call i32 @MRIStepInnerStepper_Free(ptr noundef nonnull %i.c) #9 ; 0 uses
  call void @ARKodeFree(ptr noundef nonnull %i.a) #9
  call void @free(ptr noundef %i.j) #9
  %i.do = call i32 @SUNContext_Free(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %check_retval.exit119, %check_retval.exit117, %check_retval.exit115, %check_retval.exit113, %check_retval.exit111, %check_retval.exit109, %check_retval.exit107, %check_retval.exit105, %check_retval.exit103, %check_retval.exit101, %check_retval.exit99, %check_retval.exit, %.loopexit
  %.079 = phi i32 [ 0, %.loopexit ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit99 ], [ 1, %check_retval.exit101 ], [ 1, %check_retval.exit103 ], [ 1, %check_retval.exit105 ], [ 1, %check_retval.exit107 ], [ 1, %check_retval.exit109 ], [ 1, %check_retval.exit111 ], [ 1, %check_retval.exit113 ], [ 1, %check_retval.exit115 ], [ 1, %check_retval.exit117 ], [ 1, %check_retval.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.079
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ff(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 7 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 6 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.loopexit.sink.split, label %check_retval.exit20.preheader

check_retval.exit20.preheader:                    ; preds = %bb.b
  %i.h = icmp sgt i64 %i.a, 0
  br i1 %i.h, label %check_retval.exit20.preheader29, label %.loopexit

check_retval.exit20.preheader29:                  ; preds = %check_retval.exit20.preheader
  %min.iters.check = icmp ult i64 %i.a, 4
  %i.i = sub i64 %i.c, %i.f
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %check_retval.exit20.preheader31, label %vector.ph

vector.ph:                                        ; preds = %check_retval.exit20.preheader29
  %n.vec = and i64 %i.a, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %wide.load30 = load <2 x double>, ptr %i.k, align 8, !tbaa !16 ; 3 uses
  %i.l = fmul <2 x double> %wide.load, %wide.load
  %i.m = fmul <2 x double> %wide.load30, %wide.load30
  %i.n = fsub <2 x double> splat (double 1.000000e+00), %wide.load
  %i.o = fsub <2 x double> splat (double 1.000000e+00), %wide.load30
  %i.p = fmul <2 x double> %i.l, %i.n
  %i.q = fmul <2 x double> %i.m, %i.o
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %i.r, align 8, !tbaa !16
  store <2 x double> %i.q, ptr %i.s, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.loopexit, label %check_retval.exit20.preheader31

check_retval.exit20.preheader31:                  ; preds = %check_retval.exit20.preheader29, %middle.block
  %.025.ph = phi i64 [ 0, %check_retval.exit20.preheader29 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.025.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %check_retval.exit20.prol.loopexit, label %check_retval.exit20.prol

check_retval.exit20.prol:                         ; preds = %check_retval.exit20.preheader31
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.025.ph
  %i.v = load double, ptr %i.u, align 8, !tbaa !16 ; 3 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = fsub double 1.000000e+00, %i.v
  %i.y = fmul double %i.w, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.025.ph
  store double %i.y, ptr %i.z, align 8, !tbaa !16
  %i.aa = or disjoint i64 %.025.ph, 1
  br label %check_retval.exit20.prol.loopexit

check_retval.exit20.prol.loopexit:                ; preds = %check_retval.exit20.prol, %check_retval.exit20.preheader31
  %.025.unr = phi i64 [ %.025.ph, %check_retval.exit20.preheader31 ], [ %i.aa, %check_retval.exit20.prol ]
  %i.ab = icmp eq i64 %i.a, %.neg
  br i1 %i.ab, label %.loopexit, label %check_retval.exit20

check_retval.exit20:                              ; preds = %check_retval.exit20.prol.loopexit, %check_retval.exit20
  %.025 = phi i64 [ %i.ap, %check_retval.exit20 ], [ %.025.unr, %check_retval.exit20.prol.loopexit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.025
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !16 ; 3 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fsub double 1.000000e+00, %i.ad
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.025
  store double %i.ag, ptr %i.ah, align 8, !tbaa !16
  %i.ai = add nuw nsw i64 %.025, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !16 ; 3 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = fsub double 1.000000e+00, %i.ak
  %i.an = fmul double %i.al, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ai
  store double %i.an, ptr %i.ao, align 8, !tbaa !16
  %i.ap = add nuw nsw i64 %.025, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.a
  br i1 %exitcond.not.1, label %.loopexit, label %check_retval.exit20, !llvm.loop !27

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %check_retval.exit20.prol.loopexit, %check_retval.exit20, %middle.block, %.loopexit.sink.split, %check_retval.exit20.preheader
  %.017 = phi i32 [ 0, %check_retval.exit20.preheader ], [ 1, %.loopexit.sink.split ], [ 0, %middle.block ], [ 0, %check_retval.exit20 ], [ 0, %check_retval.exit20.prol.loopexit ]
  ret i32 %.017
}

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKStepSetTableNum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MRIStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fs(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %check_retval.exit43, label %bb.c

check_retval.exit43:                              ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x double> %i.l, <double 2.000000e+00, double 1.000000e+00>
  %i.n = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 1
  %i.q = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.r = fdiv double %i.p, %i.q                   ; 7 uses
  %i.s = extractelement <2 x double> %i.o, i64 0
  %i.t = fdiv double %i.s, %i.q                   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !16
  %i.w = load double, ptr %i.d, align 8, !tbaa !16
  %i.x = fsub double %i.v, %i.w
  %i.y = fmul double %i.t, %i.x
  store double %i.y, ptr %i.h, align 8, !tbaa !16
  %i.z = add i64 %i.a, -1                         ; 3 uses
  %i.aa = icmp sgt i64 %i.a, 2
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = add nsw i64 %i.a, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.h, i64 8
  %i.ac = shl i64 %i.a, 3                         ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac
  %scevgep50 = getelementptr i8, ptr %i.ad, i64 -8
  %scevgep51 = getelementptr i8, ptr %i.d, i64 %i.ac
  %bound0 = icmp ult ptr %scevgep, %scevgep51
  %bound1 = icmp ult ptr %i.d, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ae = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = or disjoint i64 %index, 1               ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.d, i64 %i.af ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !16, !alias.scope !33
  %wide.load54 = load <2 x double>, ptr %i.ai, align 8, !tbaa !16, !alias.scope !33
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %wide.load55 = load <2 x double>, ptr %i.ag, align 8, !tbaa !16, !alias.scope !33
  %wide.load56 = load <2 x double>, ptr %i.aj, align 8, !tbaa !16, !alias.scope !33
  %i.ak = fneg <2 x double> %wide.load55
  %i.al = fneg <2 x double> %wide.load56
  %i.am = fmul <2 x double> %broadcast.splat, %i.ak
  %i.an = fmul <2 x double> %broadcast.splat, %i.al
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load, <2 x double> %i.am)
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load54, <2 x double> %i.an)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %wide.load57 = load <2 x double>, ptr %i.ar, align 8, !tbaa !16, !alias.scope !33
  %wide.load58 = load <2 x double>, ptr %i.as, align 8, !tbaa !16, !alias.scope !33
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load57, <2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load58, <2 x double> %i.ap)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x double> %i.at, ptr %i.av, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  store <2 x double> %i.au, ptr %i.aw, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.048.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 5 uses
  %i.ay = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader59
  %i.az = getelementptr [8 x i8], ptr %i.d, i64 %.048.ph ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !16
  %i.bc = load double, ptr %i.az, align 8, !tbaa !16
  %i.bd = fneg double %i.bc
  %i.be = fmul double %i.t, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bb, double %i.be)
  %i.bg = add nuw nsw i64 %.048.ph, 1             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !16
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bi, double %i.bf)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.048.ph
  store double %i.bj, ptr %i.bk, align 8, !tbaa !16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader59
  %.048.unr = phi i64 [ %.048.ph, %.lr.ph.preheader59 ], [ %i.bg, %.lr.ph.prol ]
  %i.bl = icmp eq i64 %i.ay, %.048.ph
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.048 = phi i64 [ %i.cf, %.lr.ph ], [ %.048.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr [8 x i8], ptr %i.d, i64 %.048 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !16
  %i.bq = fneg double %i.bp
  %i.br = fmul double %i.t, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bo, double %i.br)
  %i.bt = add nuw nsw i64 %.048, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !16
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bv, double %i.bs)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.048
  store double %i.bw, ptr %i.bx, align 8, !tbaa !16
  %i.by = getelementptr [8 x i8], ptr %i.d, i64 %i.bt ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !16
  %i.cb = load double, ptr %i.by, align 8, !tbaa !16
  %i.cc = fneg double %i.cb
  %i.cd = fmul double %i.t, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ca, double %i.cd)
  %i.cf = add nuw nsw i64 %.048, 2                ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ch, double %i.ce)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bt
  store double %i.ci, ptr %i.cj, align 8, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %i.cf, %i.z
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.ck = getelementptr [8 x i8], ptr %i.d, i64 %i.a
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !16
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.z
  %i.co = load double, ptr %i.cn, align 8, !tbaa !16
  %i.cp = fsub double %i.cm, %i.co
  %i.cq = fmul double %i.t, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.z
  store double %i.cq, ptr %i.cr, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %check_retval.exit43, %check_retval.exit, %._crit_edge
  %.039 = phi i32 [ 0, %._crit_edge ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit43 ]
  ret i32 %.039
}

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodePrintAllStats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @MRIStepInnerStepper_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
