inline.NumInlined: 373
inline.NumDeleted: 222
begin_hunk_0_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb:bb.a

.thread86.i:                                      ; preds = %bb.s, %.thread81.i, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !alias.scope !60
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 8, !alias.scope !60
  store i64 %i.bh, ptr %0, align 8, !tbaa !45, !alias.scope !60
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

bb.t:                                             ; preds = %bb.r
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !alias.scope !60
  %i.cc = or i8 %i.cb, 1
  store i8 %i.cc, ptr %i.ca, align 8, !alias.scope !60
  store i32 %i.bs, ptr %0, align 8, !tbaa !3, !alias.scope !60
  %.sroa.21.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %.sroa.21.0..sroa_idx.i43.i, align 8, !tbaa !43, !alias.scope !60
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !17, !noalias !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !60
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #21, !noalias !60, !inline_history !73
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i: ; preds = %bb.t, %.thread86.i, %.thread113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !60
  br label %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit

_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit: ; preds = %.thread.i, %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ch = call i32 @close(i32 noundef %i.cg) #21  ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer12getFileSliceERKNS_5TwineEmmb(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef -1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.4") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 256, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12
  switch i8 %i.g, label %bb.h [
    i8 1, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.c
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #22
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = zext i32 %i.r to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  %i.t = load ptr, ptr %3, align 8, !tbaa !21
  %i.u = load i32, ptr %i.b, align 8, !tbaa !23
  %i.v = zext i32 %i.u to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.3.0.i = phi i64 [ %i.v, %bb.h ], [ %i.s, %bb.g ], [ 0, %bb.b ], [ %i.m, %bb.e ], [ %.sroa.7.0.copyload.i.i, %bb.f ], [ 0, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.h ], [ %i.p, %bb.g ], [ null, %bb.b ], [ %i.k, %bb.e ], [ %.sroa.0.0.copyload.i.i, %bb.f ], [ null, %bb.c ], [ %i.h, %bb.d ]
  %i.w = add i64 %.sroa.3.0.i, 40
  %i.x = and i64 %i.w, -16                        ; 2 uses
  %i.y = add i64 %1, 1
  %i.z = add i64 %i.y, %i.x
  %i.aa = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.z, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 7 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.ac, label %_ZL13CopyStringRefPcN4llvh9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false)
  br label %_ZL13CopyStringRefPcN4llvh9StringRefE.exit

_ZL13CopyStringRefPcN4llvh9StringRefE.exit:       ; preds = %bb.i, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.3.0.i
  store i8 0, ptr %i.ad, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %1 ; 2 uses
  store i8 0, ptr %i.af, align 1, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_115MemoryBufferMemIN4llvh20WritableMemoryBufferEEE, i64 16), ptr %i.aa, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %_ZL13CopyStringRefPcN4llvh9StringRefE.exit
  store ptr %i.aa, ptr %0, align 8, !tbaa !45
  %i.ai = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.ai) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer15getNewMemBufferEmRKNS_5TwineE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.4") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.4", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.4") align 8 %3, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2)
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %1, i1 false)
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh24WriteThroughMemoryBuffer7getFileERKNS_5TwineEl(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.19") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZL16getReadWriteFileRKN4llvh5TwineEmmm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %2, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16getReadWriteFileRKN4llvh5TwineEmmm(ptr dead_on_unwind noalias writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::error_code", align 8   ; 7 uses
  %6 = alloca %"class.llvh::sys::fs::file_status", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 438) #21 ; 2 uses
  %i.c = extractvalue { i32, ptr } %i.b, 0        ; 3 uses
  store i32 %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.b, 1        ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  store i32 %i.c, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %3, -1
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, -1
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.k, align 4, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %i.n = call { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(64) %6) #21 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0        ; 2 uses
  %.not39 = icmp eq i32 %i.o, 0
  br i1 %.not39, label %bb.f, label %.thread.a

.thread.a:                                        ; preds = %bb.e
  %i.p = extractvalue { i32, ptr } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 8
  store i32 %i.o, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.21.0..sroa_idx.i26, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  switch i32 %i.u, label %bb.g [
    i32 5, label %bb.h
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = or i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 8
  store i32 22, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.21.0..sroa_idx.i27, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.f
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !69       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  switch i32 %i.u, label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit [
    i32 5, label %bb.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.d, %bb.c
  %.019 = phi i64 [ %3, %bb.c ], [ %8, %bb.h ], [ %2, %bb.d ], [ %8, %bb.h ] ; 2 uses
  %i.z = call fastcc noundef ptr @_ZnwmRKN12_GLOBAL__N_116NamedBufferAllocE(i64 noundef 48, ptr nonnull %1) ; 7 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEE, i64 16), ptr %i.z, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21
  %i.ad = add i32 %i.ac, -1
  %.not.i.i = sext i32 %i.ad to i64
  %i.ae = and i64 %4, %.not.i.i
  %i.af = add i64 %i.ae, %.019
  %i.ag = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21
  %i.ah = sub i32 0, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %4, %i.ai
  call void @_ZN4llvh3sys2fs18mapped_file_regionC1EiNS2_7mapmodeEmmRSt10error_code(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i32 noundef %i.aa, i32 noundef 1, i64 noundef %i.af, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  %i.ak = load i32, ptr %5, align 8, !tbaa !70    ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit, label %_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i

_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit: ; preds = %bb.i
  %i.al = call noundef ptr @_ZNK4llvh3sys2fs18mapped_file_region10const_dataEv(ptr noundef nonnull align 8 dereferenceable(20) %i.ab) #21
  %i.am = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21
  %i.an = add i32 %i.am, -1
  %.not.i12.i = sext i32 %i.an to i64
  %i.ao = and i64 %4, %.not.i12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.019
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !11
  %.pr = load i32, ptr %5, align 8, !tbaa !70     ; 2 uses
  %.not40 = icmp eq i32 %.pr, 0
  br i1 %.not40, label %.thread36, label %_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i

.thread36:                                        ; preds = %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8
  %i.aw = ptrtoint ptr %i.z to i64
  store i64 %i.aw, ptr %0, align 8, !tbaa !77
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i: ; preds = %bb.i, %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit
  %i.ax = phi i32 [ %.pr, %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit ], [ %i.ak, %bb.i ]
  %.sroa.22.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = or i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 8
  store i32 %i.ax, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.22.0.copyload, ptr %.sroa.21.0..sroa_idx.i28, align 8, !tbaa !43
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #21, !inline_history !79
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %bb.h, %_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i, %.thread36, %.thread.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh24WriteThroughMemoryBuffer12getFileSliceERKNS_5TwineEmm(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.19") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZL16getReadWriteFileRKN4llvh5TwineEmmm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef -1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh12MemoryBuffer11getOpenFileEiRKNS_5TwineEmbb(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.12") align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2, i64 noundef %3, i64 noundef %3, i64 noundef 0, i1 noundef zeroext %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb(ptr dead_on_unwind noalias writable align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #3 {
bb.a:
  %8 = alloca %"class.llvh::sys::fs::file_status", align 8 ; 8 uses
  %9 = alloca %"class.llvh::sys::fs::file_status", align 8 ; 9 uses
  %10 = alloca %"class.llvh::ErrorOr", align 8    ; 7 uses
  %11 = alloca %"class.std::error_code", align 8  ; 8 uses
  %12 = alloca %"class.std::unique_ptr.4", align 8 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() #21
  store i32 %i.d, ptr @_ZZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize, align 4, !tbaa !3
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp eq i64 %4, -1
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i64 %3, -1
  br i1 %i.f, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.g, align 4, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = call { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %9) #21 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0        ; 2 uses
  %.not88 = icmp eq i32 %i.j, 0
  br i1 %.not88, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = extractvalue { i32, ptr } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8
  store i32 %i.j, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !43
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  switch i32 %i.p, label %bb.i [
    i32 5, label %bb.k
    i32 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call fastcc void @_ZL24getMemoryBufferForStreamiRKN4llvh5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %10, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = load i8, ptr %i.q, align 8
  %i.s = trunc i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8               ; 2 uses
  br i1 %i.s, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEC2IS1_INS_20WritableMemoryBufferES3_IS8_EEEEONS0_IT_EEPNSt9enable_ifIXsr3std14is_convertibleISB_S5_EE5valueEvE4typeE.exit.thread, label %bb.j

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEC2IS1_INS_20WritableMemoryBufferES3_IS8_EEEEONS0_IT_EEPNSt9enable_ifIXsr3std14is_convertibleISB_S5_EE5valueEvE4typeE.exit.thread: ; preds = %bb.i
  %i.v = or i8 %i.u, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %10, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.31.0.copyload.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i, align 8, !tbaa !43
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.31.0.copyload.i.i.i, ptr %i.w, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_20WritableMemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.x = and i8 %i.u, -2
  %i.y = load ptr, ptr %10, align 8, !tbaa !45
  store ptr %i.y, ptr %0, align 8, !tbaa !38
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_20WritableMemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_20WritableMemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.j, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEC2IS1_INS_20WritableMemoryBufferES3_IS8_EEEEONS0_IT_EEPNSt9enable_ifIXsr3std14is_convertibleISB_S5_EE5valueEvE4typeE.exit.thread
  %.sink = phi i8 [ %i.v, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEC2IS1_INS_20WritableMemoryBufferES3_IS8_EEEEONS0_IT_EEPNSt9enable_ifIXsr3std14is_convertibleISB_S5_EE5valueEvE4typeE.exit.thread ], [ %i.x, %bb.j ]
  store i8 %.sink, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN4llvh7ErrorOrISt10unique_ptrINS_20WritableMemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.y

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.d
  %.030 = phi i64 [ %4, %bb.d ], [ %i.aa, %bb.k ], [ %3, %bb.e ] ; 9 uses
  %.3 = phi i64 [ %3, %bb.d ], [ %i.aa, %bb.k ], [ %3, %bb.e ] ; 2 uses
  %i.ab = load i32, ptr @_ZZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize, align 4, !tbaa !3 ; 2 uses
  br i1 %7, label %_ZL13shouldUseMmapimmlbib.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp ugt i64 %.030, 16383
  %i.ad = zext i32 %i.ab to i64
  %i.ae = icmp uge i64 %.030, %i.ad
  %or.cond.not25.i = and i1 %i.ac, %i.ae          ; 2 uses
  %brmerge.not.i = and i1 %6, %or.cond.not25.i
  br i1 %brmerge.not.i, label %bb.n, label %_ZL13shouldUseMmapimmlbib.exit

bb.n:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %.3, -1
  br i1 %i.af, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.ag, align 4, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = call { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8) #21
  %i.aj = extractvalue { i32, ptr } %i.ai, 0
  %.not26.i = icmp eq i32 %i.aj, 0
  br i1 %.not26.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZL13shouldUseMmapimmlbib.exit.thread

bb.q:                                             ; preds = %.thread.i, %bb.n
  %.116.i = phi i64 [ %i.al, %.thread.i ], [ %.3, %bb.n ] ; 2 uses
  %i.am = add i64 %.030, %5
  %.not.i = icmp eq i64 %i.am, %.116.i
  br i1 %.not.i, label %bb.r, label %_ZL13shouldUseMmapimmlbib.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.ab, -1
  %i.ao = sext i32 %i.an to i64
  %i.ap = and i64 %.116.i, %i.ao
  %.not89 = icmp eq i64 %i.ap, 0
  br i1 %.not89, label %_ZL13shouldUseMmapimmlbib.exit.thread, label %bb.s

_ZL13shouldUseMmapimmlbib.exit:                   ; preds = %bb.m
  br i1 %or.cond.not25.i, label %bb.s, label %_ZL13shouldUseMmapimmlbib.exit.thread

bb.s:                                             ; preds = %bb.r, %_ZL13shouldUseMmapimmlbib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i32 0, ptr %11, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #24
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !72
  %i.as = call fastcc noundef ptr @_ZnwmRKN12_GLOBAL__N_116NamedBufferAllocE(i64 noundef 48, ptr nonnull %2) ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh12MemoryBufferEEE, i64 16), ptr %i.as, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21
  %i.av = add i32 %i.au, -1
  %.not.i.i41 = sext i32 %i.av to i64
  %i.aw = and i64 %5, %.not.i.i41
  %i.ax = add i64 %i.aw, %.030
  %i.ay = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21
  %i.az = sub i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = and i64 %5, %i.ba
  call void @_ZN4llvh3sys2fs18mapped_file_regionC1EiNS2_7mapmodeEmmRSt10error_code(ptr noundef nonnull align 8 dereferenceable(20) %i.at, i32 noundef %1, i32 noundef 0, i64 noundef %i.ax, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  %i.bc = load i32, ptr %11, align 8, !tbaa !70
  %.not.i42 = icmp eq i32 %i.bc, 0
end_hunk_0
