Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Path?download=true
inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh3sys2fs8TempFile7discardEv:bb.a
  br i1 %.not18, label %..thread_crit_edge, label %bb.c

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = load i64, ptr %i.c, align 8, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %..thread_crit_edge ], [ 0, %bb.a ]
  %.sroa.611.016 = phi ptr [ %i.j, %..thread_crit_edge ], [ %i.a, %bb.a ]
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull @.str.3, i64 noundef 0) #30 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.611.017 = phi ptr [ %.sroa.611.016, %.thread ], [ %i.j, %bb.b ]
  %.sroa.09.015 = phi i32 [ 0, %.thread ], [ %i.i, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @close(i32 noundef %i.p) #30
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__errno_location() #31
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvh::Error") align 8 %0, i32 %i.t, ptr nonnull %i.u) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  store i32 -1, ptr %i.o, align 8, !tbaa !239
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvh::Error") align 8 %0, i32 %.sroa.09.015, ptr %.sroa.611.017) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4llvh3sys22DontRemoveFileOnSignalENS_9StringRefE(ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs8TempFile4keepERKNS_5TwineE(ptr dead_on_unwind noalias writable sret(%"class.llvh::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 1)) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  store i8 1, ptr %1, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 4, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !43
  store ptr %i.c, ptr %3, align 8, !tbaa !12
  %i.f = call { i32, ptr } @_ZN4llvh3sys2fs6renameERKNS_5TwineES4_(ptr noundef nonnull align 8 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(18) %2) ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0
  %i.h = extractvalue { i32, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.j, align 1, !tbaa !43
  store ptr %i.c, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 438) ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0        ; 2 uses
  %.not22.i.i = icmp eq i32 %i.l, 0
  br i1 %.not22.i.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.m = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 438) ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %.not4.i = icmp eq i32 %i.n, 0
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  br i1 %.not4.i, label %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit, label %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit.thread27

_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit.thread27: ; preds = %bb.c
  %i.p = call i32 @close(i32 noundef %i.o) #30    ; 0 uses
  br label %.sink.split

_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit:   ; preds = %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.r = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL18copy_file_internalEii(i32 noundef %i.o, i32 noundef %i.q) ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.r, 0        ; 2 uses
  %i.t = call i32 @close(i32 noundef %i.o) #30    ; 0 uses
  %i.u = call i32 @close(i32 noundef %i.q) #30    ; 0 uses
  %.sroa.6.0.i = extractvalue { i32, ptr } %i.r, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.e, label %bb.d

.sink.split:                                      ; preds = %bb.b, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit.thread27
  %.sink = phi { i32, ptr } [ %i.m, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit.thread27 ], [ %i.k, %bb.b ]
  %.sroa.0.0.i22.ph = phi i32 [ %i.n, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit.thread27 ], [ %i.l, %bb.b ]
  %.sroa.6.0.i31 = extractvalue { i32, ptr } %.sink, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit
  %.sroa.6.0.i23 = phi ptr [ %.sroa.6.0.i, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit ], [ %.sroa.6.0.i31, %.sink.split ]
  %.sroa.0.0.i22 = phi i32 [ %i.s, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit ], [ %.sroa.0.0.i22.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 4, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.w, align 1, !tbaa !43
  store ptr %i.c, ptr %5, align 8, !tbaa !12
  %i.x = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %5, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit, %bb.d, %bb.a
  %.sroa.012.0 = phi i32 [ %.sroa.0.0.i22, %bb.d ], [ 0, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.816.0 = phi ptr [ %.sroa.6.0.i23, %bb.d ], [ %.sroa.6.0.i, %_ZN4llvh3sys2fs9copy_fileERKNS_5TwineES4_.exit ], [ %i.h, %bb.a ]
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  call void @_ZN4llvh3sys22DontRemoveFileOnSignalENS_9StringRefE(ptr %i.y, i64 %i.aa) #30
  %.not25 = icmp eq i32 %.sroa.012.0, 0
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull @.str.3, i64 noundef 0) #30 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !239
  %i.af = call i32 @close(i32 noundef %i.ae) #30
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr @__errno_location() #31
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvh::Error") align 8 %0, i32 %i.ai, ptr nonnull %i.aj) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 -1, ptr %i.ad, align 8, !tbaa !239
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvh::Error") align 8 %0, i32 %.sroa.012.0, ptr %.sroa.816.0) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs8TempFile4keepEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 1)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 1, ptr %1, align 8, !tbaa !230
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47
  tail call void @_ZN4llvh3sys22DontRemoveFileOnSignalENS_9StringRefE(ptr %i.b, i64 %i.d) #30
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.3, i64 noundef 0) #30 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !239
  %i.i = tail call i32 @close(i32 noundef %i.h) #30
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %_ZN4llvh5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__errno_location() #31
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  tail call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvh::Error") align 8 %0, i32 %i.l, ptr nonnull %i.m) #30
  br label %bb.c

_ZN4llvh5ErrorD2Ev.exit:                          ; preds = %bb.a
  store i32 -1, ptr %i.g, align 8, !tbaa !239
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh5ErrorD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs8TempFile6createERKNS_5TwineEj(ptr dead_on_unwind noalias writable sret(%"class.llvh::Expected.42") align 8 initializes((0, 1)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::Error", align 8       ; 4 uses
  %4 = alloca %"class.llvh::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.50, align 1             ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvh::SmallString.11", align 8 ; 10 uses
  %7 = alloca %"class.llvh::Error", align 8       ; 3 uses
  %8 = alloca %"class.llvh::sys::fs::TempFile", align 8 ; 14 uses
  %9 = alloca %"class.llvh::Error", align 8       ; 4 uses
  %10 = alloca %"class.llvh::Error", align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 128, ptr %i.e, align 4, !tbaa !39
  %i.f = call fastcc { i32, ptr } @_ZL18createUniqueEntityRKN4llvh5TwineERiRNS_15SmallVectorImplIcEEbj8FSEntityNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false, i32 noundef %2, i32 noundef 1, i32 noundef 4) ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge, label %_ZN4llvh5ErrorD2Ev.exit

_ZN4llvh5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.h = extractvalue { i32, ptr } %i.f, 1
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %7, i32 %i.g, ptr %i.h) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.l = load ptr, ptr %7, align 8, !tbaa !203, !noalias !240
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -2
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %0, align 8, !tbaa !206, !alias.scope !240
  store ptr null, ptr %7, align 8, !tbaa !203, !noalias !240
  br label %bb.q

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.p = load ptr, ptr %6, align 8, !tbaa !36     ; 3 uses
  %i.q = load i32, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = load i32, ptr %i.b, align 4, !tbaa !3
  store i8 0, ptr %8, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %.not.i.i.i = icmp eq ptr %i.p, null
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !71, !alias.scope !249
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !47, !alias.scope !249
  store i8 0, ptr %i.u, align 8, !tbaa !12, !alias.scope !249
  br label %_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !249
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10, !noalias !249
  %i.w = icmp ugt i32 %i.q, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !44, !alias.scope !249
  %i.y = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !249
  store i64 %i.y, ptr %i.u, align 8, !tbaa !12, !alias.scope !249
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  switch i32 %i.q, label %bb.f [
    i32 1, label %bb.e
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = load i8, ptr %i.p, align 1, !tbaa !12
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull readonly align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !249 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !47, !alias.scope !249
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !44, !alias.scope !249
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !249
  %.pre = load ptr, ptr %6, align 8, !tbaa !36
  %.pre18 = load i32, ptr %i.d, align 8, !tbaa !38
  %.pre19 = zext i32 %.pre18 to i64
  br label %_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit

_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit:  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  %.pre-phi = phi i64 [ %i.r, %bb.b ], [ %.pre19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i ]
  %i.af = phi ptr [ null, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i32 %i.s, ptr %i.ag, align 8, !tbaa !239
  %i.ah = call noundef zeroext i1 @_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.af, i64 %.pre-phi, ptr noundef null) #30
  br i1 %i.ah, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit
  call void @_ZN4llvh3sys2fs8TempFile7discardEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %9, ptr noundef nonnull align 8 dereferenceable(44) %8)
  %i.ai = load ptr, ptr %9, align 8, !tbaa !203
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = or i64 %i.aj, 1
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr null, ptr %9, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.al, ptr %4, align 8, !tbaa !203
  call void @_ZN4llvh12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  store ptr null, ptr %3, align 8, !tbaa !203
  %i.am = load ptr, ptr %4, align 8, !tbaa !203
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4llvh12consumeErrorENS_5ErrorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !223
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #30, !inline_history !250
  br label %_ZN4llvh12consumeErrorENS_5ErrorE.exit

_ZN4llvh12consumeErrorENS_5ErrorE.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.au = load ptr, ptr %9, align 8, !tbaa !203
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -2                       ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN4llvh5ErrorD2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh12consumeErrorENS_5ErrorE.exit
  %i.ay = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !223
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #30, !inline_history !251
  br label %_ZN4llvh5ErrorD2Ev.exit13

_ZN4llvh5ErrorD2Ev.exit13:                        ; preds = %bb.i, %_ZN4llvh12consumeErrorENS_5ErrorE.exit
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %10, i32 1, ptr nonnull %i.bc) #30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = or i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bg = load ptr, ptr %10, align 8, !tbaa !203, !noalias !252
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, -2
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %0, align 8, !tbaa !206, !alias.scope !252
  store ptr null, ptr %10, align 8, !tbaa !203, !noalias !252
  br label %bb.p

bb.j:                                             ; preds = %_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bk, align 8
  store i8 0, ptr %0, align 8, !tbaa !230
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !47
  store i8 0, ptr %i.bo, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 -1, ptr %i.bq, align 8, !tbaa !239
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !44  ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.u
  br i1 %i.bs, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !47 ; 5 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %.not21.i.i.i.i = icmp eq ptr %8, %0
  br i1 %.not21.i.i.i.i, label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  switch i64 %i.bu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !12
  store i8 %i.bw, ptr %i.bo, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 1 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !12
  br label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit

bb.o:                                             ; preds = %bb.j
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !tbaa !12
  store <2 x i64> %i.bz, ptr %i.bp, align 8, !tbaa !12
  store ptr %i.u, ptr %i.t, align 8, !tbaa !44
  br label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit

_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %bb.o
  %i.ca = phi ptr [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.u, %bb.o ], [ %i.br, %bb.k ]
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.cb, align 8, !tbaa !47
  store i8 0, ptr %i.ca, align 1, !tbaa !12
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !239
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !239
  store i8 1, ptr %8, align 8, !tbaa !230
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit, %_ZN4llvh5ErrorD2Ev.exit13
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.u
  br i1 %i.ce, label %_ZN4llvh3sys2fs8TempFileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !12
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZN4llvh3sys2fs8TempFileD2Ev.exit

_ZN4llvh3sys2fs8TempFileD2Ev.exit:                ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5ErrorD2Ev.exit, %_ZN4llvh3sys2fs8TempFileD2Ev.exit
  %i.ch = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.c
  br i1 %i.ci, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.ch) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret void
}

declare noundef zeroext i1 @_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #17

declare noundef i64 @_ZNK4llvh9StringRef12find_last_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #9

declare noundef i32 @_ZN4llvh3sys7Process15GetRandomNumberEv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertIPcvEES3_S3_T_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 17 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 %i.o, %i.g
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.l, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.r, i64 noundef 1) #30
  %.pre7.pre.i = load i32, ptr %i.e, align 8, !tbaa !38
end_hunk_0
