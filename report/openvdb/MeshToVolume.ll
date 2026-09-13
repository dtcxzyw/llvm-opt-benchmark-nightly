Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZNK7openvdb5v13_05tools23mesh_to_volume_internal13SyncVoxelMaskINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !629    ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.01820 = phi i64 [ %i.b, %.lr.ph ], [ %i.az, %.loopexit ] ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !967
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01820
  %i.i = load i8, ptr %i.h, align 1, !tbaa !673, !range !804, !noundef !805
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !968
  %i.l = shl i64 %.01820, 9
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !966
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01820
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4024 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load atomic i32, ptr %i.q seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.p)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i: ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !570  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

bb.e:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 4 uses
  %i.v = atomicrmw xchg ptr %i.u, i8 1 seq_cst, align 1
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.e ] ; 8 uses
  %i.x = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.z, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.z = add nsw i32 %.01.i.i.i.i.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11856

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aa = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.aa, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ab = add nsw i32 %.01.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ac = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f
  %i.ad = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = tail call noundef i32 @sched_yield() #23 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.g, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.ad, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.g ]
  %i.af = atomicrmw xchg ptr %i.u, i8 1 seq_cst, align 1
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !47

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.e
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !570 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.h:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.aj = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %bb.i unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !570
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.u release, align 1
  resume { ptr, i32 } %i.ak

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.al = phi ptr [ %i.aj, %bb.i ], [ %i.ah, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.u release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i
  %i.am = phi ptr [ %i.al, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.s, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit
  %indvars.iv = phi i64 [ 0, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE4dataEv.exit ], [ %indvars.iv.next.1, %bb.n ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !673, !range !804, !noundef !805
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !595
  %i.as = fneg double %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !595
  store i8 0, ptr %i.an, align 1, !tbaa !673
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !673, !range !804, !noundef !805
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !595
  %i.ay = fneg double %i.ax
  store double %i.ay, ptr %i.aw, align 8, !tbaa !595
  store i8 0, ptr %i.at, align 1, !tbaa !673
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 512
  br i1 %exitcond.not.1, label %.loopexit, label %bb.j, !llvm.loop !11857

.loopexit:                                        ; preds = %bb.n, %bb.b
  %i.az = add nuw i64 %.01820, 1                  ; 2 uses
  %exitcond22.not = icmp eq i64 %i.az, %i.c
  br i1 %exitcond22.not, label %._crit_edge, label %bb.b, !llvm.loop !11858
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #21

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!535, !536}
!llvm.ident = !{!537}
!llvm.errno.tbaa = !{!542}

!0 = distinct !{null, null, null, null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null}
!4 = distinct !{!4, !639}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{null, null}
!8 = distinct !{null}
!9 = distinct !{null, null, null, null}
!10 = distinct !{null, null, null}
!11 = distinct !{!11, !639}
!12 = distinct !{!12, !639}
!13 = distinct !{!13, !639}
!14 = distinct !{!14, !639}
!15 = distinct !{!15, !639}
!16 = distinct !{!16, !639}
!17 = distinct !{!17, !639}
!18 = distinct !{null, null, null, null}
!19 = distinct !{!19, !639}
!20 = distinct !{null}
!21 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{ptr @_ZN7openvdb5v13_08GridBaseD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!23 = distinct !{!23, !639}
!24 = distinct !{!24, !639}
!25 = distinct !{!25, !639}
!26 = distinct !{!26, !639}
!27 = distinct !{!27, !639}
!28 = distinct !{!28, !639}
!29 = distinct !{!29, !639}
!30 = distinct !{!30, !639}
!31 = distinct !{!31, !639}
!32 = distinct !{!32, !639}
!33 = distinct !{!33, !639}
!34 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!36 = distinct !{!36, !639}
!37 = distinct !{!37, !639}
!38 = distinct !{!38, !639}
!39 = distinct !{!39, !639}
!40 = distinct !{!40, !639}
!41 = distinct !{!41, !639}
!42 = distinct !{!42, !639}
!43 = distinct !{null}
!44 = distinct !{!44, !639}
!45 = distinct !{null}
!46 = distinct !{!46, !639}
!47 = distinct !{!47, !639}
!48 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!50 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!51 = distinct !{!51, !639}
!52 = distinct !{!52, !639}
!53 = distinct !{!53, !639}
!54 = distinct !{!54, !639}
!55 = distinct !{!55, !639}
!56 = distinct !{!56, !639}
!57 = distinct !{null}
!58 = distinct !{!58, !639}
!59 = distinct !{null}
!60 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!61 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{!64, !639}
!65 = distinct !{!65, !639}
!66 = distinct !{null}
!67 = distinct !{!67, !639}
!68 = distinct !{!68, !639}
!69 = distinct !{!69, !639}
!70 = distinct !{!70, !639}
!71 = distinct !{!71, !639}
!72 = distinct !{null}
!73 = distinct !{!73, !639}
!74 = distinct !{null}
!75 = distinct !{null}
!76 = distinct !{!76, !639}
!77 = distinct !{!77, !639}
!78 = distinct !{null}
!79 = distinct !{!79, !639}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{!83, !639}
!84 = distinct !{!84, !639}
!85 = distinct !{!85, !639}
!86 = distinct !{!86, !639}
!87 = distinct !{!87, !639}
!88 = distinct !{!88, !639}
!89 = distinct !{!89, !639}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{null}
!94 = distinct !{null}
!95 = distinct !{null}
!96 = distinct !{null}
!97 = distinct !{!97, !639}
!98 = distinct !{!98, !639}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{!103, !639, !1682}
!104 = distinct !{null}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io10MappedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!112 = distinct !{null, null, null, null}
!113 = distinct !{null, null, null, null}
!114 = distinct !{!114, !639}
!115 = distinct !{!115, !639}
!116 = distinct !{!116, !639}
!117 = distinct !{!117, !639}
!118 = distinct !{!118, !639}
end_hunk_0
