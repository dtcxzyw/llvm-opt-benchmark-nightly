Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_reaction_diffusion_mri?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.cr = fdiv double %i.cq, 1.001000e+03
  %i.cs = call double @sqrt(double noundef %i.cr) #9
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %i.cp, double noundef %i.cs) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.s
  %.2161 = phi i64 [ 0, %bb.r ], [ %i.cx, %bb.s ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.2161
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !16
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.17, double noundef %i.cv) #9 ; 0 uses
  %i.cx = add nuw nsw i64 %.2161, 1               ; 2 uses
  %exitcond166.not = icmp eq i64 %i.cx, 1001
  br i1 %exitcond166.not, label %bb.t, label %bb.s

bb.t:                                             ; preds = %bb.s
  %fputc94 = call i32 @fputc(i32 10, ptr %i.cb)   ; 0 uses
  %i.cy = fadd double %.077162, 1.000000e-01      ; 2 uses
  %i.cz = fcmp ogt double %i.cy, 3.000000e+00
  %i.da = select i1 %i.cz, double 3.000000e+00, double %i.cy
  %i.db = add nuw nsw i32 %.0163, 1               ; 2 uses
  %exitcond167.not = icmp eq i32 %i.db, 30
  br i1 %exitcond167.not, label %.loopexit, label %bb.q

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
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !16 ; 2 uses
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
  %i.m = fmul <2 x double> %i.l, <double 1.000000e+00, double 2.000000e+00>
  %i.n = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fdiv <2 x double> %i.m, %i.n
  %4 = fdiv <2 x double> %i.o, %i.n               ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !16
  %i.r = load double, ptr %i.d, align 8, !tbaa !16
  %i.s = fsub double %i.q, %i.r
  %5 = extractelement <2 x double> %4, i64 1      ; 5 uses
  %i.t = fmul double %5, %i.s
  store double %i.t, ptr %i.h, align 8, !tbaa !16
  %i.u = add i64 %i.a, -1                         ; 3 uses
  %i.v = icmp sgt i64 %i.a, 2
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.w = add nsw i64 %i.a, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = getelementptr i8, ptr %i.h, i64 8
  %i.y = shl i64 %i.a, 3                          ; 2 uses
  %i.z = getelementptr i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = getelementptr i8, ptr %i.d, i64 %i.y
  %bound0 = icmp ult ptr %i.x, %i.ab
  %bound1 = icmp ult ptr %i.d, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat53 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = or disjoint i64 %index, 1               ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.d, i64 %i.ad ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !16, !alias.scope !33
  %wide.load54 = load <2 x double>, ptr %i.ag, align 8, !tbaa !16, !alias.scope !33
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %wide.load55 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16, !alias.scope !33
  %wide.load56 = load <2 x double>, ptr %i.ah, align 8, !tbaa !16, !alias.scope !33
  %i.ai = fneg <2 x double> %wide.load55
  %i.aj = fneg <2 x double> %wide.load56
  %i.ak = fmul <2 x double> %broadcast.splat, %i.ai
  %i.al = fmul <2 x double> %broadcast.splat, %i.aj
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load, <2 x double> %i.ak)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load54, <2 x double> %i.al)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %wide.load57 = load <2 x double>, ptr %i.ap, align 8, !tbaa !16, !alias.scope !33
  %wide.load58 = load <2 x double>, ptr %i.aq, align 8, !tbaa !16, !alias.scope !33
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load57, <2 x double> %i.am)
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat53, <2 x double> %wide.load58, <2 x double> %i.an)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x double> %i.ar, ptr %i.at, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  store <2 x double> %i.as, ptr %i.au, align 8, !tbaa !16, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.048.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ac, %middle.block ] ; 5 uses
  %i.aw = add nsw i64 %i.a, -2
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader59
  %i.ax = getelementptr [8 x i8], ptr %i.d, i64 %.048.ph ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !16
  %i.ba = load double, ptr %i.ax, align 8, !tbaa !16
  %i.bb = fneg double %i.ba
  %i.bc = fmul double %5, %i.bb
  %6 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %6, double %i.az, double %i.bc)
  %i.be = add nuw nsw i64 %.048.ph, 1             ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bh = tail call double @llvm.fmuladd.f64(double %6, double %i.bg, double %i.bd)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.048.ph
  store double %i.bh, ptr %i.bi, align 8, !tbaa !16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader59
  %.048.unr = phi i64 [ %.048.ph, %.lr.ph.preheader59 ], [ %i.be, %.lr.ph.prol ]
  %i.bj = icmp eq i64 %i.aw, %.048.ph
  br i1 %i.bj, label %._crit_edge, label %.lr.ph.preheader59.new

.lr.ph.preheader59.new:                           ; preds = %.lr.ph.prol.loopexit
  %7 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %8 = extractelement <2 x double> %4, i64 0      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader59.new
  %.048 = phi i64 [ %.048.unr, %.lr.ph.preheader59.new ], [ %i.cd, %.lr.ph ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %i.d, i64 %.048 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !16
  %i.bn = load double, ptr %i.bk, align 8, !tbaa !16
  %i.bo = fneg double %i.bn
  %i.bp = fmul double %5, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %7, double %i.bm, double %i.bp)
  %i.br = add nuw nsw i64 %.048, 1                ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !16
  %i.bu = tail call double @llvm.fmuladd.f64(double %7, double %i.bt, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.048
  store double %i.bu, ptr %i.bv, align 8, !tbaa !16
  %i.bw = getelementptr [8 x i8], ptr %i.d, i64 %i.br ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !16
  %i.bz = load double, ptr %i.bw, align 8, !tbaa !16
  %i.ca = fneg double %i.bz
  %i.cb = fmul double %5, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %8, double %i.by, double %i.cb)
  %i.cd = add nuw nsw i64 %.048, 2                ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !16
  %i.cg = tail call double @llvm.fmuladd.f64(double %8, double %i.cf, double %i.cc)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br
  store double %i.cg, ptr %i.ch, align 8, !tbaa !16
  %exitcond.not.1 = icmp eq i64 %i.cd, %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.ci = getelementptr [8 x i8], ptr %i.d, i64 %i.a
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !16
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.u
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !16
  %i.cn = fsub double %i.ck, %i.cm
  %i.co = fmul double %5, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  store double %i.co, ptr %i.cp, align 8, !tbaa !16
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
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!"", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!14, !12, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"p1 _ZTS20_MRIStepInnerStepper", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!14, !13, i64 24}
!22 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!14, !13, i64 8}
!26 = distinct !{!26, !17, !18}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !17, !18}
!32 = distinct !{!32, !17}
!33 = !{!29}
!34 = !{!30}
end_hunk_0
