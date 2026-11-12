Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Triple?download=true
inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvh6Triple5mergeB5cxx11ERKS0_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.x, ptr %i.b, align 8, !tbaa !160
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !160
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !177
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !177
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !157
  %i.af = load ptr, ptr %0, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.l

bb.h:                                             ; preds = %.split5, %.split, %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !182
  %i.ai = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !157 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !160
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %bb.i, label %._crit_edge.i.i3

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !154
  %i.an = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !177
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %i.am, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  switch i64 %i.ak, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  ]

bb.j:                                             ; preds = %._crit_edge.i.i3
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !177
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

bb.k:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4: ; preds = %._crit_edge.i.i3, %bb.j, %bb.k
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !160 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !157
  %i.as = load ptr, ptr %0, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 !guid !631 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %i.c, ptr %3, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !157
  store i64 %i.f, ptr %i.d, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !177, !noalias !632
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !633
  %.sroa.5.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !160
  %i.h = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.g)
  %.sroa.0.0.i = load ptr, ptr %3, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ %i.h, %bb.b ], [ %2, %bb.a ]
  %.sroa.022.0 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %1, %bb.a ]
  %i.i = call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %.sroa.022.0, i64 %.sroa.7.0) #13 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !171
  switch i32 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread [
    i32 5, label %bb.d
    i32 12, label %bb.d
    i32 15, label %.thread35
    i32 11, label %bb.e
    i32 7, label %bb.e
    i32 28, label %bb.e
    i32 27, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  switch i64 %i.k, label %.thread [
    i64 0, label %.thread35
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %i.n = load i16, ptr %i.j, align 1
  %i.o = icmp ne i16 %i.n, 13942
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread35, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i64 %i.k, label %.thread [
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit10
    i64 0, label %.thread35
  ]

_ZNK4llvh9StringRef6equalsES0_.exit10:            ; preds = %bb.e
  %i.r = load i16, ptr %i.j, align 1
  %i.s = xor i16 %i.r, 14198
  %i.t = getelementptr i8, ptr %i.j, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 %i.v, 107
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread35, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit10.thread:     ; preds = %bb.c
  %i.ab = icmp eq i64 %i.k, 0
  br i1 %i.ab, label %.thread35, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.e, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %i.ac = call { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr %i.j, i64 %i.k) #13 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  switch i64 %i.ae, label %.thread35 [
    i64 0, label %bb.f
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit11
  ]

_ZNK4llvh9StringRef6equalsES0_.exit11:            ; preds = %.thread
  %i.af = load i32, ptr %i.ad, align 1
  %i.ag = xor i32 %i.af, 1635151465
  %i.ah = getelementptr i8, ptr %i.ad, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1684630625
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread35

bb.f:                                             ; preds = %.thread, %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !171
  switch i32 %i.ao, label %bb.h [
    i32 12, label %bb.g
    i32 19, label %.thread35
    i32 13, label %.thread35
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !172
  %switch.tableidx = add i32 %i.aq, -4            ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx, 6
  br i1 %i.ar, label %switch.lookup41, label %.thread35

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !172
  %switch.tableidx40 = add i32 %i.at, -5          ; 2 uses
  %i.au = icmp ult i32 %switch.tableidx40, 9
  br i1 %i.au, label %switch.lookup41, label %.thread35

switch.lookup41:                                  ; preds = %bb.h, %bb.g
  %switch.tableidx40.sink47 = phi i32 [ %switch.tableidx, %bb.g ], [ %switch.tableidx40, %bb.h ] ; 2 uses
  %switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.26.sink = phi ptr [ @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE, %bb.g ], [ @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.26, %bb.h ]
  %switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.27.sink = phi ptr [ @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.25, %bb.g ], [ @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.27, %bb.h ]
  %i.av = zext nneg i32 %switch.tableidx40.sink47 to i64
  %switch.gep42 = getelementptr inbounds nuw i8, ptr %switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.26.sink, i64 %i.av
  %switch.load43 = load i8, ptr %switch.gep42, align 1
  %switch.ext44 = zext i8 %switch.load43 to i64
  %i.aw = zext nneg i32 %switch.tableidx40.sink47 to i64
  %switch.gep45 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.27.sink, i64 %i.aw
  %switch.load46 = load ptr, ptr %switch.gep45, align 8
  br label %.thread35

.thread35:                                        ; preds = %switch.lookup41, %bb.h, %bb.g, %bb.f, %bb.f, %.thread, %bb.e, %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit11, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %.sroa.12.1 = phi i64 [ 9, %bb.c ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.ae, %.thread ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ 9, %bb.g ], [ 9, %bb.f ], [ 9, %bb.f ], [ %i.k, %bb.e ], [ 8, %bb.h ], [ %i.k, %bb.d ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ %switch.ext44, %switch.lookup41 ]
  %.sroa.029.1 = phi ptr [ @.str.143, %bb.c ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.ad, %.thread ], [ @.str.142, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.ad, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ @.str.148, %bb.g ], [ @.str.149, %bb.f ], [ @.str.149, %bb.f ], [ null, %bb.e ], [ @.str.150, %bb.h ], [ null, %bb.d ], [ @.str.145, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ %switch.load46, %switch.lookup41 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.029.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.12.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM12parseArchISAENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM9parseArchENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !181}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -2735699349161633127}
!9 = !{i64 4445779963375272806}
!10 = !{i64 4491765944257089043}
!11 = !{i64 -1785215898230651458}
!12 = !{i64 3812413069734059149}
!13 = !{i64 2058229400029558452}
!14 = !{i64 -7490738606764257958}
!15 = !{i64 -6295367477541986919}
!16 = !{i64 460873758442235095}
!17 = !{i64 5992940211778154229}
!18 = !{i64 -3241448486577127828}
!19 = !{i64 8962281839748940909}
!20 = !{i64 -7285895133212057842}
!21 = !{i64 2886088859402597788}
!22 = !{i64 -2232549938443500109}
!23 = !{i64 721593144409761937}
!24 = !{i64 -1246392263126780979}
!25 = !{i64 3689057831067352017}
!26 = !{i64 -153726222624325789}
!27 = !{i64 455150985803889018}
!28 = !{i64 -4268661037441302733}
!29 = !{i64 -442938682866970564}
!30 = !{i64 4923214982244014602}
!31 = !{i64 -2651674454950271126}
!32 = !{i64 -4290011164036768017}
!33 = !{i64 5859681997268246334}
!34 = !{i64 5731359927856244521}
!35 = !{i64 911183341618024191}
!36 = !{i64 5966489219065315688}
!37 = !{i64 7404989692337674618}
!38 = !{i64 -5662827018182009651}
!39 = !{i64 9174889105298422396}
!40 = !{i64 7706152220994591896}
!41 = !{i64 3975013435014839235}
!42 = !{i64 -292730679346173232}
!43 = !{i64 -8910235993745703667}
!44 = !{i64 573903041256211070}
!45 = !{i64 1209767076008450628}
!46 = !{i64 4987986793470423666}
!47 = !{i64 1929036568708399039}
!48 = !{i64 -5226763381047295688}
!49 = !{i64 6779145822767042826}
!50 = !{i64 7965568689439400367}
!51 = !{i64 -5459640503582012417}
!52 = !{i64 -4523311337431847706}
!53 = !{i64 2223304390555076978}
!54 = !{i64 8758386280964045235}
!55 = !{i64 -7043226582266583348}
!56 = !{i64 -58903327321661887}
!57 = !{i64 8024080692604258436}
!58 = !{i64 128945570505374324}
!59 = !{i64 -7655708373266282912}
!60 = !{i64 1190422422976017138}
!61 = !{i64 -154727354198127794}
!62 = !{i64 -1946118226031512584}
!63 = !{i64 -7622942278010307729}
!64 = !{i64 -329389170468317375}
!65 = !{i64 -1180123859983479012}
!66 = !{i64 8559048719159840683}
!67 = !{i64 2869513242500950756}
!68 = !{i64 -4262533299771273807}
!69 = !{i64 -4333792218463767240}
!70 = !{i64 7027824251058581460}
!71 = !{i64 210149892333313298}
!72 = !{i64 -1552671966477933955}
!73 = !{i64 7243951391819796301}
!74 = !{i64 -8699177819554506523}
!75 = !{i64 -3607872686769319758}
!76 = !{i64 8087710593758555456}
!77 = !{i64 6378955021506103377}
!78 = !{i64 4837573978787667411}
!79 = !{i64 -1263885248179964149}
!80 = !{i64 4918607833898136648}
!81 = !{i64 -7358608045780515214}
!82 = !{i64 262775866818125310}
!83 = !{i64 -988409352048481402}
!84 = !{i64 5575100424750757132}
!85 = !{i64 547241708667393917}
!86 = !{i64 6087630940261600687}
!87 = !{i64 -6770358577581615328}
!88 = !{i64 -5099273482193952703}
!89 = !{i64 8928656521587210263}
!90 = !{i64 7848469074178242161}
!91 = !{i64 1138536451580307014}
!92 = !{i64 8479565821185128598}
!93 = !{i64 -8651732653439273226}
!94 = !{i64 2028790567753111925}
!95 = !{i64 5641329962988313566}
!96 = !{i64 -9125618156841685323}
!97 = !{i64 2901218927660258727}
!98 = !{i64 -295678751130716787}
!99 = !{i64 8809042858240095537}
!100 = !{i64 -6408125328635198074}
!101 = !{i64 4156559604775388134}
!102 = !{i64 -778236430283641676}
!103 = !{i64 -6657623751876120570}
!104 = !{i64 -333783746908266454}
!105 = !{i64 -3970911277495750088}
!106 = !{i64 -1489698913129287842}
!107 = !{i64 -6164004065510211229}
!108 = !{i64 4051214797106324126}
!109 = !{i64 -2285010052732596066}
!110 = !{i64 -7379802387048982928}
!111 = !{i64 -2019564723804161030}
!112 = !{i64 6893874024922297754}
!113 = !{i64 7835676094574205622}
!114 = !{i64 1059571376682976925}
!115 = !{i64 582210449492976821}
!116 = !{i64 3510887972950897055}
!117 = !{i64 4150546627509432949}
!118 = !{i64 2193557364547406667}
!119 = !{i64 4499751261751236823}
!120 = !{i64 -613683790244952011}
!121 = !{i64 5703662444727846293}
!122 = !{i64 -6565745422432374323}
!123 = !{i64 -381006923458264444}
!124 = !{i64 7319017779921128852}
!125 = !{i64 9190726618067018560}
end_hunk_0
