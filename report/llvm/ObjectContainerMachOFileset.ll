Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectContainerMachOFileset?download=true
inline.NumInlined: 545
inline.NumDeleted: 337
begin_hunk_0_@_ZN12lldb_private27ObjectContainerMachOFileset11ParseHeaderERNS_13DataExtractorERKNS_8FileSpecEmRSt6vectorINS0_5EntryESaIS7_EE:bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !103    ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 -17958194, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -822415874, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -17958193, label %bb.c
    i32 -805638658, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %_ZL23MachHeaderSizeFromMagicj.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZL23MachHeaderSizeFromMagicj.exit

_ZL23MachHeaderSizeFromMagicj.exit:               ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.d ], [ 32, %bb.c ], [ 28, %bb.b ], [ 28, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %.0.i, %i.g              ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZL23MachHeaderSizeFromMagicj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN12lldb_private10ObjectFile11MapFileDataERKNS_8FileSpecEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %2) #18
  %i.n = load ptr, ptr %0, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0, i64 noundef -1) #18 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !40
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !68
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !68
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.sroa.012.0.copyload.pre = load i32, ptr %4, align 4, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZL23MachHeaderSizeFromMagicj.exit
  %.sroa.012.0.copyload = phi i32 [ %.sroa.012.0.copyload.pre, %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.d, %_ZL23MachHeaderSizeFromMagicj.exit ]
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.213.0.copyload = load i32, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !43
  call fastcc void @_ZL12ParseFilesetRN12lldb_private13DataExtractorEN4llvm5MachO11mach_headerERSt6vectorINS_27ObjectContainerMachOFileset5EntryESaIS7_EESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 %.sroa.012.0.copyload, i32 %.sroa.213.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 undef, i8 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16ParseMachOHeaderRN12lldb_private13DataExtractorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((28, 29)) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.b = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18 ; 2 uses
  switch i32 %i.b, label %bb.f [
    i32 -17958194, label %bb.e
    i32 -17958193, label %bb.b
    i32 -822415874, label %bb.c
    i32 -805638658, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.c = phi <2 x i32> [ <i32 1, i32 8>, %bb.d ], [ <i32 1, i32 4>, %bb.c ], [ <i32 4, i32 8>, %bb.b ], [ splat (i32 4), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x i32> %i.c, ptr %i.d, align 8, !tbaa !42
  %i.e = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18
  %i.f = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18
  %i.g = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18
  %i.h = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18
  %i.i = call noundef i32 @_ZNK12lldb_private13DataExtractor6GetU32EPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #18
  store i32 %i.b, ptr %0, align 4, !tbaa !43
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !43
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !43
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !43
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sink17 = phi i8 [ 1, %bb.e ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink17, ptr %i.j, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare void @_ZN12lldb_private10ObjectFile11MapFileDataERKNS_8FileSpecEmm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12ParseFilesetRN12lldb_private13DataExtractorEN4llvm5MachO11mach_headerERSt6vectorINS_27ObjectContainerMachOFileset5EntryESaIS7_EESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 %.0.val, i32 %.16.val, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.llvm::MachO::load_command", align 8 ; 8 uses
  %5 = alloca %"struct.llvm::MachO::segment_command_64", align 8 ; 5 uses
  %6 = alloca %"struct.llvm::MachO::fileset_entry_command", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  switch i32 %.0.val, label %bb.c [
    i32 -17958194, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -822415874, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -17958193, label %bb.b
    i32 -805638658, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZL23MachHeaderSizeFromMagicj.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZL23MachHeaderSizeFromMagicj.exit

_ZL23MachHeaderSizeFromMagicj.exit:               ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.c ], [ 32, %bb.b ], [ 28, %bb.a ], [ 28, %bb.a ] ; 2 uses
  store i64 %.0.i, ptr %i.b, align 8, !tbaa !14
  %.not10 = icmp eq i32 %.16.val, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL23MachHeaderSizeFromMagicj.exit
  %i.e = trunc nuw i8 %3 to i1
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %i.n = phi i64 [ %.0.i, %.lr.ph ], [ %i.be, %bb.n ] ; 4 uses
  %.0169 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %bb.n ]
  %.0178 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8
  %i.o = call noundef ptr @_ZNK12lldb_private13DataExtractor6GetU32EPmPvj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %4, i32 noundef 2) #18
  %.not19 = icmp eq ptr %i.o, null
  br i1 %.not19, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq i32 %i.p, 25
  %or.cond = select i1 %i.e, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = call noundef i64 @_ZNK12lldb_private13DataExtractor8CopyDataEmmPv(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.n, i64 noundef 72, ptr noundef nonnull %5) #18 ; 0 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #18
  %.not.i = icmp eq i64 %i.s, 6
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.f
  %i.t = load i32, ptr %i.f, align 1
  %i.u = xor i32 %i.t, 1163157343
  %i.v = getelementptr i8, ptr %i.f, i64 4
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = xor i32 %i.x, 21592
  %i.z = or i32 %i.u, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !106
  %i.ae = sub i64 %2, %i.ad
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6

_ZN4llvmeqENS_9StringRefES0_.exit.thread6:        ; preds = %bb.f, %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.1 = phi i64 [ %i.ae, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %.0178, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ %.0178, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pr = load i32, ptr %4, align 8, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread6, %bb.e
  %i.af = phi i32 [ %.pr, %_ZN4llvmeqENS_9StringRefES0_.exit.thread6 ], [ %i.p, %bb.e ]
  %.2 = phi i64 [ %.1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread6 ], [ %.0178, %bb.e ] ; 2 uses
  %i.ag = icmp eq i32 %i.af, -2147483595
  br i1 %i.ag, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ah = call noundef i64 @_ZNK12lldb_private13DataExtractor8CopyDataEmmPv(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.n, i64 noundef 32, ptr noundef nonnull %6) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !42
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.n, %i.aj
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !14
  %i.al = call noundef ptr @_ZNK12lldb_private13DataExtractor7GetCStrEPm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c) #18 ; 4 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.am = load i64, ptr %i.i, align 8, !tbaa !110
  %i.an = add i64 %i.am, %.2
  store i64 %i.an, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.k, ptr %7, align 8, !tbaa !112
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !14
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.j, label %._crit_edge.i.i

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !49
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.ar, ptr %i.k, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i
  %i.as = phi ptr [ %i.aq, %bb.j ], [ %i.k, %bb.i ] ; 2 uses
  switch i64 %i.ao, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %i.al, align 1, !tbaa !42
  store i8 %i.at, ptr %i.as, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.k, %bb.l
  %i.au = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i64 %i.au, ptr %i.l, align 8, !tbaa !50
  %i.av = load ptr, ptr %7, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorIN12lldb_private27ObjectContainerMachOFileset5EntryESaIS2_EE12emplace_backIJmRmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.k
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !42
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.m
  %i.bc = load i32, ptr %i.m, align 4, !tbaa !113
  %i.bd = zext i32 %i.bc to i64
  %i.be = add i64 %i.n, %i.bd                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bf = add nuw i32 %.0169, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %.16.val
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !114

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %_ZL23MachHeaderSizeFromMagicj.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27ObjectContainerMachOFileset11ParseHeaderEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.8", align 8 ; 5 uses
  %2 = alloca %"class.std::optional", align 4     ; 8 uses
  %3 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.11", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #18
  %i.b = load ptr, ptr %1, align 8, !tbaa !115    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #20
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  call fastcc void @_ZL16ParseMachOHeaderRN12lldb_private13DataExtractorE(ptr dead_on_unwind noalias writable align 4 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = load i8, ptr %i.g, align 4, !tbaa !98, !range !101, !noundef !102
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.y

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.j = load i32, ptr %2, align 4, !tbaa !103    ; 2 uses
  switch i32 %i.j, label %bb.f [
    i32 -17958194, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -822415874, label %_ZL23MachHeaderSizeFromMagicj.exit
    i32 -17958193, label %bb.e
    i32 -805638658, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %_ZL23MachHeaderSizeFromMagicj.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZL23MachHeaderSizeFromMagicj.exit

_ZL23MachHeaderSizeFromMagicj.exit:               ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ 0, %bb.f ], [ 32, %bb.e ], [ 28, %bb.d ], [ 28, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %.0.i, %i.m              ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #18
  %i.t = icmp ult i64 %i.s, %i.n
  br i1 %i.t, label %bb.g, label %bb.x

bb.g:                                             ; preds = %_ZL23MachHeaderSizeFromMagicj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54, !noalias !117 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !37, !alias.scope !117
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !noalias !117
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.06.i.i.i.i.i = phi i32 [ %i.z, %bb.h ], [ %i.ad, %bb.j ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ab = cmpxchg weak ptr %i.y, i32 %.06.i.i.i.i.i, i32 %i.aa acq_rel monotonic, align 8, !noalias !117 ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  %i.ad = extractvalue { i32, i1 } %i.ab, 0
  br i1 %i.ac, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.i, !llvm.loop !120

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %i.v, align 8, !tbaa !37, !alias.scope !117
  br label %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.j
  %i.ae = load atomic i32, ptr %i.y monotonic, align 8, !noalias !117
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit

_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit.thread: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.g
  store ptr null, ptr %3, align 8, !tbaa !121, !alias.scope !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  br label %bb.k

_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !123, !noalias !117 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !121, !alias.scope !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.not29 = icmp eq ptr %i.af, null
  br i1 %.not29, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit, %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !124
  call void @_ZN12lldb_private10ObjectFile11MapFileDataERKNS_8FileSpecEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.n, i64 noundef %i.ai) #18
  br label %.critedge

_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !69
  call void @_ZN12lldb_private10ObjectFile10ReadMemoryERKSt10shared_ptrINS_7ProcessEEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ak, i64 noundef %i.n) #18
  %i.al = load <2 x ptr>, ptr %5, align 16, !tbaa !67
  store <2 x ptr> %i.al, ptr %4, align 16, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNSt12__shared_ptrIN12lldb_private18WritableDataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i64 noundef -1) #18 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.at, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !40
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !68
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !68
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i14 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.p:                                             ; preds = %bb.n
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i16 = phi i32 [ %i.aw, %bb.o ], [ %i.bg, %bb.p ]
  %i.bh = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.bh, label %bb.q, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
