Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/ProcessUNIX?download=true
inline.NumInlined: 73
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@kwsysProcessKill:bb.a
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %.lr.ph36, label %._crit_edge37, !llvm.loop !126

._crit_edge37:                                    ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %._crit_edge37
  %i.an = call i32 @pclose(ptr noundef nonnull %i.ae) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.l, %._crit_edge
  %i.ao = call i32 @kill(i32 noundef %0, i32 noundef 9) #22 ; 0 uses
  ret void
}

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @cmsysProcess_KillPID(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i64 %0 to i32
  tail call fastcc void @kwsysProcessKill(i32 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cmsysProcess_ResetStartTime(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22 ; 0 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %i.f = sdiv i64 %i.e, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store i64 %i.c, ptr %i.a, align 8, !tbaa !65
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #13

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @kwsysProcessChildErrorExit(i32 noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call ptr @__errno_location() #25
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %i.d = tail call ptr @strerror(i32 noundef %i.c) #22
  %i.e = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024) #22 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.f, align 1, !tbaa !54
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.h = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.g) #22 ; 0 uses
  call void @_exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #18

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #18

declare ptr @readdir(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #18

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define internal void @kwsysProcessesSignalHandler(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.sigaction, align 8          ; 4 uses
  %4 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = tail call ptr @__errno_location() #25    ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  switch i32 %0, label %.loopexit [
    i32 17, label %.preheader
    i32 2, label %bb.b
    i32 15, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.e = load i32, ptr @kwsysProcesses.0, align 8, !tbaa !133
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %.preheader, %.lr.ph38
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph38 ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i8 1, ptr %i.b, align 1, !tbaa !54
  %i.g = load ptr, ptr @kwsysProcesses.2, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv43
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %i.l = call i64 @read(i32 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 1) #22 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57
  %i.o = call i64 @write(i32 noundef %i.n, ptr noundef nonnull %i.b, i64 noundef 1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.p = load i32, ptr @kwsysProcesses.0, align 8, !tbaa !133
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next44, %i.q
  br i1 %i.r, label %.lr.ph38, label %.loopexit, !llvm.loop !127

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.s = load i32, ptr @kwsysProcesses.0, align 8, !tbaa !133 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph36, label %.preheader31.preheader

.lr.ph36:                                         ; preds = %bb.b, %.loopexit33
  %i.u = phi i32 [ %i.at, %.loopexit33 ], [ %i.s, %bb.b ] ; 5 uses
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.loopexit33 ], [ 0, %bb.b ] ; 2 uses
  %5 = load ptr, ptr @kwsysProcesses.2, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1112
  %i.y = load volatile i32, ptr %i.x, align 8, !tbaa !53
  %.not26 = icmp eq i32 %i.y, 0
  br i1 %.not26, label %.loopexit33, label %bb.c

bb.c:                                             ; preds = %.lr.ph36
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1296
  %i.aa = load volatile i32, ptr %i.z, align 8, !tbaa !28
  %.not27 = icmp eq i32 %i.aa, 0
  br i1 %.not27, label %bb.d, label %.loopexit33

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1292
  %i.ac = load volatile i32, ptr %i.ab, align 4, !tbaa !25
  %.not28 = icmp eq i32 %i.ac, 1
  br i1 %.not28, label %.loopexit33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 1064 ; 3 uses
  %i.ae = load volatile ptr, ptr %i.ad, align 8, !tbaa !55
  %.not29 = icmp eq ptr %i.ae, null
  br i1 %.not29, label %.loopexit33, label %.preheader32

.preheader32:                                     ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ag = load volatile i32, ptr %i.af, align 8, !tbaa !29
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit33

.lr.ph:                                           ; preds = %.preheader32, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader32 ] ; 3 uses
  %i.ai = load volatile ptr, ptr %i.ad, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load volatile i32, ptr %i.aj, align 4, !tbaa !40
  %.not30 = icmp eq i32 %i.ak, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.al = load volatile ptr, ptr %i.ad, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load volatile i32, ptr %i.am, align 4, !tbaa !40
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = tail call i32 @kill(i32 noundef %i.ao, i32 noundef 2) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load volatile i32, ptr %i.af, align 8, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.loopexit33.loopexit, !llvm.loop !128

.loopexit33.loopexit:                             ; preds = %bb.g
  %.pre.a = load i32, ptr @kwsysProcesses.0, align 8, !tbaa !133
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.loopexit, %.preheader32, %bb.e, %bb.d, %bb.c, %.lr.ph36
  %i.at = phi i32 [ %.pre.a, %.loopexit33.loopexit ], [ %i.u, %.preheader32 ], [ %i.u, %bb.e ], [ %i.u, %bb.d ], [ %i.u, %bb.c ], [ %i.u, %.lr.ph36 ] ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next41, %i.au
  br i1 %i.av, label %.lr.ph36, label %.preheader31.preheader, !llvm.loop !129

.preheader31.preheader:                           ; preds = %.loopexit33, %bb.b
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.backedge, %.preheader31.preheader
  %i.aw = call i32 @wait(ptr noundef nonnull %i.a) #22
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.preheader31.backedge, label %bb.h

.preheader31.backedge:                            ; preds = %.preheader31, %bb.h
  br label %.preheader31, !llvm.loop !130

bb.h:                                             ; preds = %.preheader31
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !40
  %.not = icmp eq i32 %i.ay, 10
  br i1 %.not, label %bb.i, label %.preheader31.backedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  %i.ba = call i32 @sigemptyset(ptr noundef nonnull %i.az) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bb = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %3, ptr noundef null) #22
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !40
  %i.be = icmp eq i32 %i.bd, 4
  br i1 %i.be, label %bb.j, label %.critedge2, !llvm.loop !131

.critedge2:                                       ; preds = %bb.j, %bb.k
  %i.bf = call i32 @sigemptyset(ptr noundef nonnull %4) #22 ; 0 uses
  %i.bg = call i32 @sigaddset(ptr noundef nonnull %4, i32 noundef %0) #22 ; 0 uses
  %i.bh = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %4, ptr noundef null) #22 ; 0 uses
  %i.bi = call i32 @raise(i32 noundef %0) #22     ; 0 uses
  call void @_exit(i32 noundef 1) #26
  unreachable

.loopexit:                                        ; preds = %.lr.ph38, %.preheader, %bb.a
  store i32 %i.d, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare i32 @wait(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"any p3 pointer", !13, i64 0}
!15 = !{!"p3 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!"kwsysProcessTime_s", !19, i64 0, !19, i64 8}
!21 = !{!"", !8, i64 0}
!22 = !{!"p1 _ZTS21kwsysProcessResults_s", !12, i64 0}
!23 = !{!"cmsysProcess_s", !15, i64 0, !9, i64 8, !8, i64 12, !8, i64 24, !9, i64 36, !8, i64 40, !16, i64 1064, !9, i64 1072, !17, i64 1080, !18, i64 1088, !9, i64 1096, !9, i64 1100, !9, i64 1104, !9, i64 1108, !9, i64 1112, !20, i64 1120, !20, i64 1136, !9, i64 1152, !9, i64 1156, !21, i64 1160, !9, i64 1288, !9, i64 1292, !9, i64 1296, !8, i64 1300, !22, i64 2328, !16, i64 2336, !18, i64 2344, !18, i64 2352, !18, i64 2360, !9, i64 2368, !9, i64 2372, !9, i64 2376, !8, i64 2380, !8, i64 2388, !8, i64 2396, !9, i64 2404, !18, i64 2408}
!24 = !{!23, !9, i64 2368}
!25 = !{!23, !9, i64 1292}
!26 = !{!23, !9, i64 1100}
!27 = !{!23, !9, i64 1152}
!28 = !{!23, !9, i64 1296}
!29 = !{!23, !9, i64 8}
!30 = !{!23, !15, i64 0}
!31 = !{!"p2 omnipotent char", !13, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!18, !18, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!23, !18, i64 1088}
!36 = !{ptr @cmsysProcess_SetPipeFile}
!37 = !{!23, !16, i64 2336}
!38 = !{!23, !22, i64 2328}
!39 = !{!23, !9, i64 1072}
!40 = !{!9, !9, i64 0}
!41 = !{!"kwsysProcessResults_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!42 = !{!41, !9, i64 8}
!43 = !{!41, !9, i64 0}
!44 = !{!41, !9, i64 4}
!45 = !{!41, !9, i64 12}
!46 = !{!23, !9, i64 2372}
!47 = !{!23, !9, i64 2376}
!48 = !{!23, !9, i64 1104}
!49 = !{!23, !17, i64 1080}
!50 = !{!23, !19, i64 1136}
!51 = !{!23, !9, i64 1096}
!52 = !{!23, !9, i64 1108}
!53 = !{!23, !9, i64 1112}
!54 = !{!8, !8, i64 0}
!55 = !{!23, !16, i64 1064}
!56 = !{!23, !18, i64 2408}
!57 = !{!23, !9, i64 36}
!58 = !{!"p2 _ZTS14cmsysProcess_s", !13, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTS14cmsysProcess_s", !12, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"timespec", !19, i64 0, !19, i64 8}
!63 = !{!62, !19, i64 0}
!64 = !{!62, !19, i64 8}
!65 = !{!19, !19, i64 0}
!66 = !{!"kwsysProcessCreateInformation_s", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12}
!67 = !{!66, !9, i64 0}
!68 = !{!66, !9, i64 4}
!69 = !{!66, !9, i64 8}
!70 = !{!23, !9, i64 1156}
!71 = !{!23, !9, i64 1288}
!72 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!73 = !{!17, !17, i64 0}
!74 = !{!20, !19, i64 0}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !34}
!77 = distinct !{!77, !34}
!78 = distinct !{!78, !34}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = distinct !{!82, !34}
!83 = distinct !{!83, !34}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = !{!23, !9, i64 2404}
!90 = !{!"sigaction", !8, i64 0, !21, i64 8, !9, i64 136, !12, i64 144}
!91 = !{!90, !9, i64 136}
!92 = !{!23, !18, i64 2344}
!93 = !{!23, !18, i64 2352}
!94 = !{!23, !18, i64 2360}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34}
!97 = distinct !{!97, !34}
!98 = distinct !{!98, !34}
!99 = distinct !{!99, !34}
!100 = distinct !{!100, !34}
end_hunk_0
