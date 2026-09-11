Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_erkstep?download=true
inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ERKStepReInit:bb.a
bb.e:                                             ; preds = %erkStep_AccessARKODEStepMem.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 187, ptr noundef nonnull @__func__.ERKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #12
  br label %erkStep_AccessARKODEStepMem.exit.thread

bb.f:                                             ; preds = %erkStep_AccessARKODEStepMem.exit
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 195, ptr noundef nonnull @__func__.ERKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %erkStep_AccessARKODEStepMem.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %3, null
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 203, ptr noundef nonnull @__func__.ERKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #12
  br label %erkStep_AccessARKODEStepMem.exit.thread

bb.j:                                             ; preds = %bb.h
  store ptr %1, ptr %i.c, align 8, !tbaa !29
  %i.j = tail call i32 @arkInit(ptr noundef nonnull %0, double noundef %2, ptr noundef nonnull %3, i32 noundef 0) #12 ; 3 uses
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef 215, ptr noundef nonnull @__func__.ERKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #12
  br label %erkStep_AccessARKODEStepMem.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !58
  br label %erkStep_AccessARKODEStepMem.exit.thread

erkStep_AccessARKODEStepMem.exit.thread:          ; preds = %bb.d, %bb.b, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.l ], [ -23, %bb.e ], [ -22, %bb.g ], [ -22, %bb.i ], [ %i.j, %bb.k ], [ -21, %bb.b ], [ -21, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @erkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 1240, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1249, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %3, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @erkStep_AccessStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1269, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkResizeVec(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ARKodeButcherTable_Space(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ARKodeButcherTable_Free(ptr noundef) local_unnamed_addr #2

declare void @arkFreeVecArray(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @ARKodeButcherTable_Write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkEwtSetSmallReal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @erkStep_SetButcherTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1292, ptr noundef nonnull @__func__.erkStep_SetButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %switch.tableidx = add i32 %i.i, -1             ; 2 uses
  %i.j = icmp ult i32 %switch.tableidx, 9
  br i1 %i.j, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1317, ptr noundef nonnull @__func__.erkStep_SetButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.28) #12
  br label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.erkStep_SetButcherTable, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e
  %.0 = phi i32 [ 21, %bb.e ], [ %switch.ext, %switch.lookup ]
  %i.l = tail call ptr @ARKodeButcherTable_LoadERK(i32 noundef %.0) #12 ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !35
  call void @ARKodeButcherTable_Space(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  %i.p = add nsw i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !48
  %i.q = load i64, ptr %i.b, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = add nsw i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !46
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  %.not22 = icmp eq ptr %i.u, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.w, ptr %i.x, align 4, !tbaa !40
  %i.y = load <2 x i32>, ptr %i.u, align 8, !tbaa !65
  store <2 x i32> %i.y, ptr %i.h, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b
  %.019 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define range(i32 -44, 1) i32 @erkStep_CheckButcherTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1363, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 3 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 1372, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 1380, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #12
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = icmp slt i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %.not = icmp eq i32 %i.n, 0                     ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.i, label %.preheader44.lr.ph

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 1388, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #12
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  br i1 %.not, label %bb.k, label %.preheader44.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %.preheader44.lr.ph

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 1398, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #12
  br label %.loopexit

.preheader44.lr.ph:                               ; preds = %bb.j, %bb.k, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.lr.ph, %.loopexit64
  %indvars.iv = phi i64 [ 0, %.preheader44.lr.ph ], [ %indvars.iv.next, %.loopexit64 ] ; 6 uses
  %.048 = phi i32 [ 1, %.preheader44.lr.ph ], [ %spec.select.lcssa, %.loopexit64 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74   ; 2 uses
  %i.z = sub nsw i64 %wide.trip.count, %indvars.iv ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader44
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.aa = add i64 %indvars.iv, %n.vec
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi62 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !52
  %wide.load63 = load <2 x double>, ptr %i.ad, align 8, !tbaa !52
  %i.ae = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.af = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load63)
  %i.ag = fcmp ogt <2 x double> %i.ae, splat (double f0x3D719799812DEA11)
  %i.ah = fcmp ogt <2 x double> %i.af, splat (double f0x3D719799812DEA11)
  %i.ai = or <2 x i1> %vec.phi, %i.ag             ; 2 uses
  %i.aj = or <2 x i1> %vec.phi62, %i.ah           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.aj, %i.ai
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.al = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not65 = icmp eq i2 %i.al, 0
  %rdx.select = select i1 %.not65, i32 %.048, i32 0 ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader44, %middle.block
  %indvars.iv50.ph = phi i64 [ %indvars.iv, %.preheader44 ], [ %i.aa, %middle.block ]
  %.146.ph = phi i32 [ %.048, %.preheader44 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %scalar.ph ], [ %indvars.iv50.ph, %scalar.ph.preheader ] ; 2 uses
  %.146 = phi i32 [ %spec.select, %scalar.ph ], [ %.146.ph, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv50
  %i.an = load double, ptr %i.am, align 8, !tbaa !52
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp ogt double %i.ao, f0x3D719799812DEA11
  %spec.select = select i1 %i.ap, i32 0, i32 %.146 ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit64, label %scalar.ph, !llvm.loop !168

.loopexit64:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge, label %.preheader44

._crit_edge:                                      ; preds = %.loopexit64
  %.not42 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not42, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 1415, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #12
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64
  %.not43 = icmp eq i32 %i.ar, 0
  br i1 %.not43, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = icmp eq i32 %i.h, 1
  br i1 %i.as, label %bb.p, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85
  %wide.trip.count58 = zext nneg i32 %i.e to i64
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 1425, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #12
  br label %.loopexit

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv54 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next55, %bb.q ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv54
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !52
  %i.az = fcmp olt double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 1434, ptr noundef nonnull @__func__.erkStep_CheckButcherTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.n, %bb.s, %bb.p, %bb.m, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.039 = phi i32 [ -21, %bb.b ], [ -44, %bb.d ], [ -44, %bb.f ], [ -44, %bb.p ], [ -44, %bb.s ], [ -44, %bb.i ], [ -44, %bb.m ], [ -44, %bb.l ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.039
}

declare i32 @arkAllocVecArray(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @erkStep_TakeStep_Adjoint(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %erkStep_AccessStepMem.exit, label %bb.b

erkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1269, ptr noundef nonnull @__func__.erkStep_TakeStep_Adjoint, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 12 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86   ; 2 uses
  %i.u = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %i.t, i64 noundef 0) #12
  %i.v = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %i.p, i64 noundef 0) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 10 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !172
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !173
  %i.ad = sub nsw i64 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !52
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ugt double %i.al, 1.000000e-10
  br i1 %i.am, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef nonnull %i.ag) #12
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.x, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.at) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.neg = phi i32 [ -2, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 5 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40
  %i.aw = add i32 %i.av, %.neg                    ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.thread176, label %.lr.ph187

.lr.ph187:                                        ; preds = %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.be = add nuw i32 %i.aw, 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = zext nneg i32 %i.aw to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.q
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %i.bh = icmp slt i64 %indvars.iv211, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.bh, label %.thread176, label %bb.f

bb.f:                                             ; preds = %.lr.ph187, %bb.e
  %indvars.iv211 = phi i64 [ %i.bg, %.lr.ph187 ], [ %indvars.iv.next212, %bb.e ] ; 8 uses
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph187 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bi = load double, ptr %i.ay, align 8, !tbaa !71 ; 2 uses
  %i.bj = fneg double %i.bi                       ; 2 uses
  store i64 %indvars.iv211, ptr %i.az, align 8, !tbaa !90
  %i.bk = load double, ptr %i.ba, align 8, !tbaa !67
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv211
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !52
  %i.bq = fsub double 1.000000e+00, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bq, double %i.bk)
  store double %i.br, ptr %i.bb, align 8, !tbaa !72
  %i.bs = load i32, ptr %i.au, align 4, !tbaa !40
  %i.bt = trunc i64 %indvars.iv211 to i32
  %i.bu = add i32 %i.bt, 1
  %i.bv = icmp slt i32 %i.bu, %i.bs
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bw = trunc nuw i64 %indvars.iv.next207 to i32
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bx = phi ptr [ %i.bl, %bb.f ], [ %.pre, %._crit_edge.loopexit ]
  %.0127.lcssa = phi i32 [ 0, %bb.f ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !85
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv211
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !52
  %i.cc = fmul double %i.cb, %i.bj
  %i.cd = zext nneg i32 %.0127.lcssa to i64       ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cd
  store double %i.cc, ptr %i.ce, align 8, !tbaa !52
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cd
  store ptr %i.v, ptr %i.cf, align 8, !tbaa !57
  %i.cg = add nuw nsw i32 %.0127.lcssa, 1
  %i.ch = tail call i32 @N_VLinearCombination(i32 noundef %i.cg, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.u) #12
  %.not143 = icmp eq i32 %i.ch, 0
  br i1 %.not143, label %bb.g, label %.loopexit

end_hunk_0
begin_hunk_1_@ERKStepCreateAdjointStepper:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.ag = call i32 @ARKodeSetAdjointCheckpointScheme(ptr noundef nonnull %i.q, ptr noundef %i.af) #12 ; 3 uses
  %.not83 = icmp eq i32 %i.ag, 0
  br i1 %.not83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef 1857, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49) #12
  br label %bb.aq

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ah = call i32 @ARKodeCreateSUNStepper(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12 ; 3 uses
  %.not84 = icmp eq i32 %i.ah, 0
  br i1 %.not84, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 1868, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #12
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.aj = call i32 @SUNStepper_SetReInitFn(ptr noundef %i.ai, ptr noundef nonnull @erkStep_SUNStepperReInit) #12
  %.not85 = icmp eq i32 %i.aj, 0
  br i1 %.not85, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -54, i32 noundef 1877, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #12
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ak = call i32 @ARKodeCreateSUNStepper(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c) #12 ; 3 uses
  %.not86 = icmp eq i32 %i.ak, 0
  br i1 %.not86, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ak, i32 noundef 1886, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #12
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.am = call i32 @SUNStepper_SetReInitFn(ptr noundef %i.al, ptr noundef nonnull @erkStep_SUNStepperReInit) #12
  %.not87 = icmp eq i32 %i.am, 0
  br i1 %.not87, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -54, i32 noundef 1895, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #12
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.ao = call i32 @SUNStepper_SetDestroyFn(ptr noundef %i.an, ptr noundef nonnull @arkSUNStepperSelfDestruct) #12
  %.not88 = icmp eq i32 %i.ao, 0
  br i1 %.not88, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -54, i32 noundef 1906, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52) #12
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !264
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !30
  %i.as = add nsw i64 %i.ar, -1
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.au = call i32 @SUNAdjointStepper_Create(ptr noundef %i.ap, i32 noundef 1, ptr noundef %i.aq, i32 noundef 1, i64 noundef %i.as, double noundef %2, ptr noundef %3, ptr noundef %i.at, ptr noundef %4, ptr noundef %5) #12
  %.not89 = icmp eq i32 %i.au, 0
  br i1 %.not89, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -58, i32 noundef 1918, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #12
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.av = load ptr, ptr %5, align 8, !tbaa !266
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.ay = call i32 @SUNAdjointStepper_SetUserData(ptr noundef %i.av, ptr noundef %i.ax) #12
  %.not90 = icmp eq i32 %i.ay, 0
  br i1 %.not90, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -58, i32 noundef 1927, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54) #12
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.az = load ptr, ptr %5, align 8, !tbaa !266
  %i.ba = call i32 @ARKodeSetUserData(ptr noundef nonnull %i.q, ptr noundef %i.az) #12 ; 3 uses
  %.not91 = icmp eq i32 %i.ba, 0
  br i1 %.not91, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.ba, i32 noundef 1937, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad
  %.0 = phi i32 [ %i.ak, %bb.ad ], [ -54, %bb.af ], [ -54, %bb.ah ], [ -58, %bb.aj ], [ -58, %bb.al ], [ %i.ba, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ab, %bb.z
  %.1 = phi i32 [ %i.ah, %bb.z ], [ -54, %bb.ab ], [ %.0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.p, %bb.ap, %bb.x, %bb.v, %bb.t, %bb.r, %bb.n
  %.4 = phi i32 [ %i.o, %bb.n ], [ -21, %bb.p ], [ %i.y, %bb.r ], [ %i.ab, %bb.t ], [ %i.ad, %bb.v ], [ %i.ag, %bb.x ], [ %.1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.l, %bb.j, %bb.h, %bb.e
  %.5 = phi i32 [ -22, %bb.e ], [ -22, %bb.h ], [ -22, %bb.l ], [ %.4, %bb.aq ], [ -22, %bb.j ]
  ret i32 %.5
}

declare i32 @N_VGetVectorID(ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ERKStepSetTable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetAdjointCheckpointScheme(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeCreateSUNStepper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNStepper_SetReInitFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -9990, 1) i32 @erkStep_SUNStepperReInit(ptr noundef %0, double noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call i32 @SUNStepper_GetContent(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !267  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 1240, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %erkStep_AccessARKODEStepMem.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.c, i32 noundef -21, i32 noundef 1249, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 1750, ptr noundef nonnull @__func__.erkStep_SUNStepperReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57) #12
  br label %bb.g

erkStep_AccessARKODEStepMem.exit:                 ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.i = call i32 @ERKStepReInit(ptr noundef nonnull %i.c, ptr noundef %i.h, double noundef %1, ptr noundef %2) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.i, ptr %i.j, align 8, !tbaa !268
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %erkStep_AccessARKODEStepMem.exit
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef 1758, ptr noundef nonnull @__func__.erkStep_SUNStepperReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.58) #12
  br label %bb.g

bb.g:                                             ; preds = %erkStep_AccessARKODEStepMem.exit, %bb.f, %bb.e
  %.0 = phi i32 [ -22, %bb.e ], [ -9990, %bb.f ], [ 0, %erkStep_AccessARKODEStepMem.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare i32 @SUNStepper_SetDestroyFn(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkSUNStepperSelfDestruct(ptr noundef) #2

declare i32 @SUNAdjointStepper_Create(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointStepper_SetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNStepper_GetContent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12ARKodeMemRec", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!14 = !{!"p1 _ZTS18_generic_ARKInterp", !8, i64 0}
!15 = !{!"p1 _ZTS18ARKodeHAdaptMemRec", !8, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS16ARKodeRootMemRec", !8, i64 0}
!18 = !{!"p1 _ZTS17ARKodeRelaxMemRec", !8, i64 0}
!19 = !{!"p1 _ZTS27SUNAdjointCheckpointScheme_", !8, i64 0}
!20 = !{!"ARKodeMemRec", !11, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !12, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !8, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !5, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !5, i64 312, !8, i64 320, !5, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !5, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !13, i64 592, !13, i64 600, !5, i64 608, !13, i64 616, !5, i64 624, !13, i64 632, !13, i64 640, !5, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !14, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !5, i64 800, !15, i64 808, !16, i64 816, !5, i64 824, !5, i64 828, !5, i64 832, !16, i64 840, !16, i64 848, !5, i64 856, !16, i64 864, !16, i64 872, !16, i64 880, !16, i64 888, !16, i64 896, !16, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !5, i64 952, !12, i64 960, !12, i64 968, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !17, i64 1016, !13, i64 1024, !16, i64 1032, !5, i64 1040, !5, i64 1044, !18, i64 1048, !8, i64 1056, !8, i64 1064, !8, i64 1072, !8, i64 1080, !8, i64 1088, !5, i64 1096, !5, i64 1100, !5, i64 1104, !16, i64 1112, !16, i64 1120, !19, i64 1128, !16, i64 1136, !5, i64 1144, !5, i64 1148}
!21 = !{!20, !8, i64 152}
!22 = !{!20, !8, i64 160}
!23 = !{!20, !8, i64 136}
!24 = !{!"any p2 pointer", !8, i64 0}
!25 = !{!"p2 _ZTS17_generic_N_Vector", !24, i64 0}
!26 = !{!"p1 _ZTS21ARKodeButcherTableMem", !8, i64 0}
!27 = !{!"p1 double", !8, i64 0}
!28 = !{!"ARKodeERKStepMemRec", !8, i64 0, !8, i64 8, !25, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !26, i64 40, !16, i64 48, !27, i64 56, !25, i64 64, !5, i64 72, !12, i64 80, !12, i64 88, !25, i64 96, !5, i64 104, !27, i64 112, !27, i64 120}
!29 = !{!28, !8, i64 0}
!30 = !{!16, !16, i64 0}
!31 = !{!28, !25, i64 96}
!32 = !{!28, !5, i64 104}
!33 = !{!20, !5, i64 800}
!34 = !{!20, !5, i64 952}
!35 = !{!28, !26, i64 40}
!36 = !{!"p2 double", !24, i64 0}
!37 = !{!"ARKodeButcherTableMem", !5, i64 0, !5, i64 4, !5, i64 8, !36, i64 16, !27, i64 24, !27, i64 32, !27, i64 40}
!38 = !{!28, !5, i64 24}
!39 = !{!28, !5, i64 28}
!40 = !{!28, !5, i64 36}
!41 = !{!20, !13, i64 592}
!42 = !{!20, !16, i64 880}
!43 = !{!20, !16, i64 888}
!44 = !{!28, !5, i64 72}
!45 = !{!28, !27, i64 56}
!46 = !{!20, !16, i64 896}
!47 = !{!28, !25, i64 64}
!48 = !{!20, !16, i64 904}
!49 = !{!28, !27, i64 112}
!50 = !{!28, !27, i64 120}
!51 = !{!20, !5, i64 1104}
!52 = !{!12, !12, i64 0}
!53 = !{!20, !5, i64 648}
!54 = !{!20, !8, i64 1072}
!55 = !{!20, !8, i64 24}
!56 = !{!28, !25, i64 16}
!57 = !{!13, !13, i64 0}
!58 = !{!28, !16, i64 48}
!59 = !{!28, !12, i64 80}
!60 = !{!28, !12, i64 88}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!20, !5, i64 1044}
!65 = !{!5, !5, i64 0}
!66 = !{!28, !5, i64 32}
!67 = !{!20, !12, i64 920}
!68 = !{!20, !13, i64 632}
!69 = !{!20, !19, i64 1128}
!70 = !{!37, !27, i64 24}
!71 = !{!20, !12, i64 736}
!72 = !{!20, !12, i64 784}
!73 = !{!37, !36, i64 16}
!74 = !{!27, !27, i64 0}
!75 = !{!20, !13, i64 616}
!76 = !{!20, !8, i64 1080}
!77 = !{!37, !5, i64 8}
!78 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !8, i64 0}
!79 = !{!"_generic_N_Vector", !8, i64 0, !78, i64 8, !11, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!"_generic_N_Vector_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440}
!82 = !{!"p1 _ZTS19ARKodeERKStepMemRec", !8, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!37, !27, i64 40}
!85 = !{!37, !27, i64 32}
!86 = !{!20, !13, i64 664}
!87 = !{!"p1 _ZTS11SUNStepper_", !8, i64 0}
!88 = !{!"SUNAdjointStepper_", !16, i64 0, !16, i64 8, !87, i64 16, !87, i64 24, !5, i64 32, !5, i64 36, !19, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !12, i64 72}
!89 = !{!20, !16, i64 1120}
!90 = !{!20, !16, i64 1112}
!91 = !{!20, !5, i64 1100}
!92 = !{!20, !13, i64 672}
!93 = !{!"p1 _ZTS15SUNStepper_Ops_", !8, i64 0}
!94 = !{!"SUNStepper_", !8, i64 0, !8, i64 8, !93, i64 16, !11, i64 24, !5, i64 32}
!95 = !{!28, !8, i64 8}
!96 = !{!20, !13, i64 1024}
!97 = !{!20, !8, i64 144}
!98 = !{!20, !8, i64 176}
!99 = !{!20, !8, i64 184}
!100 = !{!20, !8, i64 256}
!101 = !{!20, !8, i64 192}
!102 = !{!20, !8, i64 208}
!103 = !{!20, !8, i64 216}
!104 = !{!20, !8, i64 264}
!105 = !{!20, !8, i64 224}
!106 = !{!20, !8, i64 320}
!107 = !{!20, !8, i64 232}
!108 = !{!20, !8, i64 240}
!109 = !{!20, !8, i64 304}
!110 = !{!20, !8, i64 584}
!111 = !{!20, !8, i64 272}
!112 = !{!20, !5, i64 280}
!113 = !{!20, !5, i64 312}
!114 = !{!20, !5, i64 92}
!115 = !{!20, !8, i64 96}
!116 = !{!20, !8, i64 104}
!117 = !{!37, !5, i64 0}
!118 = !{!20, !15, i64 808}
!119 = !{!"p1 _ZTS27_generic_SUNAdaptController", !8, i64 0}
!120 = !{!"ARKodeHAdaptMemRec", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !119, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !16, i64 136, !16, i64 144}
!121 = !{!120, !5, i64 92}
!122 = !{!37, !5, i64 4}
!123 = !{!120, !5, i64 88}
!124 = !{!20, !5, i64 708}
!125 = !{!20, !5, i64 1004}
!126 = distinct !{!126, !61, !62}
!127 = distinct !{!127, !63}
!128 = distinct !{!128, !61}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !130}
!134 = distinct !{!134, !130}
!135 = distinct !{!135, !130}
!136 = distinct !{!136, !61, !62}
!137 = distinct !{!137, !61}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !138}
!143 = distinct !{!143, !138}
!144 = distinct !{!144, !61, !62}
!145 = distinct !{!145, !61}
!146 = distinct !{!146, !61, !62}
!147 = distinct !{!147, !61}
!148 = !{!20, !5, i64 988}
!149 = !{!20, !13, i64 640}
!150 = !{!20, !16, i64 1136}
!151 = !{!131}
!152 = !{!132}
!153 = !{!133}
!154 = !{!131, !132}
!155 = !{!134}
!156 = !{!135}
!157 = !{!139}
!158 = !{!140}
!159 = !{!141}
!160 = !{!143, !139, !140, !142}
!161 = !{!142}
!162 = !{!143}
!163 = !{!139, !140, !142}
!164 = !{!20, !8, i64 1088}
!165 = !{!81, !8, i64 32}
!166 = !{!20, !5, i64 984}
!167 = distinct !{!167, !61, !62}
!168 = distinct !{!168, !62, !61}
!169 = distinct !{!169, !61, !62}
!170 = distinct !{!170, !63}
!171 = distinct !{!171, !61}
!172 = !{!88, !16, i64 8}
!173 = !{!20, !16, i64 848}
!174 = distinct !{!174, !61, !62}
!175 = distinct !{!175, !61}
end_hunk_1
