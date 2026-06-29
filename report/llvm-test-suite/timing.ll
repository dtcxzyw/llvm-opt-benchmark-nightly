loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hypre_FinalizeTiming:bb.a
  %i.az = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  tail call void @hypre_Free(ptr noundef %i.bc) #9
  %i.bd = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr null, ptr %i.be, align 8, !tbaa !17
  %i.bf = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !10
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.bd, %.lr.ph ]
  tail call void @hypre_Free(ptr noundef nonnull %.lcssa) #9
  store ptr null, ptr @hypre_global_timing, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_IncFLOPCount(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %0 to double
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !32
  %i.f = fadd double %i.e, %i.c
  store double %i.f, ptr %i.d, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_BeginTiming(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = sext i32 %0 to i64                       ; 6 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call double @time_getWallclockSeconds() #9
  %i.j = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !33
  %i.m = fadd double %i.i, %i.l
  store double %i.m, ptr %i.k, align 8, !tbaa !33
  %i.n = tail call double @time_getCPUSeconds() #9
  %i.o = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !34
  %i.r = fadd double %i.n, %i.q
  store double %i.r, ptr %i.p, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.t = load double, ptr %i.s, align 8, !tbaa !33
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.e ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !28
  %i.x = fsub double %i.w, %i.t
  store double %i.x, ptr %i.v, align 8, !tbaa !28
  %i.y = load double, ptr %i.p, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.e ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !28
  %i.ad = fsub double %i.ac, %i.y
  store double %i.ad, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.af = load double, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.e ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !28
  %i.ak = fsub double %i.aj, %i.af
  store double %i.ak, ptr %i.ai, align 8, !tbaa !28
  %i.al = tail call double @time_getWallclockSeconds() #9
  %i.am = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !33
  %i.ap = fsub double %i.ao, %i.al
  store double %i.ap, ptr %i.an, align 8, !tbaa !33
  %i.aq = tail call double @time_getCPUSeconds() #9
  %i.ar = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !34
  %i.au = fsub double %i.at, %i.aq
  store double %i.au, ptr %i.as, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert8 = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.e
  %.pre9 = load i32, ptr %.phi.trans.insert8, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.av = phi i32 [ %.pre9, %bb.c ], [ %i.g, %bb.b ]
  %i.aw = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.e
  %i.ay = add nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 0
}

declare double @time_getWallclockSeconds() local_unnamed_addr #2

declare double @time_getCPUSeconds() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_EndTiming(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = sext i32 %0 to i64                       ; 4 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call double @time_getWallclockSeconds() #9
  %i.k = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !33
  %i.n = fadd double %i.j, %i.m
  store double %i.n, ptr %i.l, align 8, !tbaa !33
  %i.o = tail call double @time_getCPUSeconds() #9
  %i.p = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !34
  %i.s = fadd double %i.o, %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.e ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !28
  %i.y = fadd double %i.u, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !28
  %i.z = load double, ptr %i.q, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.e ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !28
  %i.ae = fadd double %i.z, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ag = load double, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.e ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !28
  %i.al = fadd double %i.ag, %i.ak
  store double %i.al, ptr %i.aj, align 8, !tbaa !28
  %i.am = tail call double @time_getWallclockSeconds() #9
  %i.an = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !33
  %i.aq = fsub double %i.ap, %i.am
  store double %i.aq, ptr %i.ao, align 8, !tbaa !33
  %i.ar = tail call double @time_getCPUSeconds() #9
  %i.as = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !34
  %i.av = fsub double %i.au, %i.ar
  store double %i.av, ptr %i.at, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_ClearTiming() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %0 = load ptr, ptr %i.a, align 8, !tbaa !24     ; 5 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !25       ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !26       ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %5 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %7 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %8 = sub i64 %6, %7
  %diff.check = icmp ult i64 %8, 32
  %9 = sub i64 %5, %7
  %diff.check12 = icmp ult i64 %9, 32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  %10 = sub i64 %5, %6
  %diff.check13 = icmp ult i64 %10, 32
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x double> zeroinitializer, ptr %11, align 8, !tbaa !28
  store <2 x double> zeroinitializer, ptr %i.f, align 8, !tbaa !28
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x double> zeroinitializer, ptr %12, align 8, !tbaa !28
  store <2 x double> zeroinitializer, ptr %i.g, align 8, !tbaa !28
  %13 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> zeroinitializer, ptr %13, align 8, !tbaa !28
  store <2 x double> zeroinitializer, ptr %14, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %16 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %16, align 8, !tbaa !28
  %17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %17, align 8, !tbaa !28
  %18 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.ph
  store double 0.000000e+00, ptr %18, align 8, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %19 = add nsw i64 %wide.trip.count, -1
  %20 = icmp eq i64 %indvars.iv.ph, %19
  br i1 %20, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double 0.000000e+00, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double 0.000000e+00, ptr %22, align 8, !tbaa !28
  %23 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double 0.000000e+00, ptr %23, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %24, align 8, !tbaa !28
  %25 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %25, align 8, !tbaa !28
  %26 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %26, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !38

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PrintTiming(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.f = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @hypre_MPI_Comm_rank(i32 noundef %1, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0) ; 0 uses
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.p = phi ptr [ %i.ap, %bb.g ], [ %i.l, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !28
  store double %i.x, ptr %i.a, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !28
  store double %i.ab, ptr %i.b, align 8, !tbaa !28
  %i.ac = call i32 @hypre_MPI_Allreduce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef %1) #9 ; 0 uses
  %i.ad = call i32 @hypre_MPI_Allreduce(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef %1) #9 ; 0 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !4
  %i.af = icmp eq i32 %i.ae, 0
  %.pre20 = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8 ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre20, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.aj) ; 0 uses
  %i.al = load double, ptr %i.c, align 8, !tbaa !28
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.al) ; 0 uses
  %i.an = load double, ptr %i.d, align 8, !tbaa !28
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.an) ; 0 uses
  %.pre = load ptr, ptr @hypre_global_timing, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph, %bb.e
  %i.ap = phi ptr [ %.pre, %bb.f ], [ %i.p, %.lr.ph ], [ %.pre20, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 0
}

declare i32 @hypre_MPI_Comm_rank(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 52}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !15, i64 40, !5, i64 48, !5, i64 52, !16, i64 56, !16, i64 64, !16, i64 72}
!12 = !{!"p1 double", !9, i64 0}
!13 = !{!"p2 omnipotent char", !14, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p1 int", !9, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!11, !15, i64 40}
!18 = !{!11, !13, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!11, !12, i64 0}
!25 = !{!11, !12, i64 8}
!26 = !{!11, !12, i64 16}
!27 = !{!11, !15, i64 32}
!28 = !{!16, !16, i64 0}
!29 = distinct !{!29, !22}
!30 = !{!11, !5, i64 48}
!31 = distinct !{!31, !22}
!32 = !{!11, !16, i64 72}
!33 = !{!11, !16, i64 56}
!34 = !{!11, !16, i64 64}
!35 = distinct !{!35, !22, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !22, !36}
!39 = distinct !{!39, !22}
end_hunk_0
