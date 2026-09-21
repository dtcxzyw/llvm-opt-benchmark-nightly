Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-sections.cc.X86_64?download=true
inline.NumInlined: 1857
inline.NumDeleted: 968
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4mold12InputSectionINS_6X86_64EEC2ERNS_7ContextIS1_EERNS_10ObjectFileIS1_EElSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  store ptr %i.am, ptr %i.b, align 8, !tbaa !91
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %.pre-phi = phi i64 [ %.pre34, %._crit_edge ], [ %i.ad, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit ] ; 3 uses
  %i.an = phi ptr [ null, %._crit_edge ], [ %i.am, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit ] ; 2 uses
  %i.ao = icmp ugt i64 %i.o, %.pre-phi
  br i1 %i.ao, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12.thread

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12: ; preds = %bb.g
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.pre-phi ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.0.copyload.i13 = load i64, ptr %i.ar, align 1
  %i.as = and i64 %.0.copyload.i13, 2048
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit20, label %bb.h

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12.thread: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.au = sub nuw i64 %.pre-phi, %i.o
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i1329 = load i64, ptr %i.ax, align 1
  %i.ay = and i64 %.0.copyload.i1329, 2048
  %.not30 = icmp eq i64 %i.ay, 0
  br i1 %.not30, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit20, label %bb.h

bb.h:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12.thread, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.0.copyload.i14 = load i64, ptr %i.az, align 1
  store i64 %.0.copyload.i14, ptr %i.c, align 8, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %bb.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit20: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12.thread, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12
  %.pn = phi ptr [ %i.aq, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12 ], [ %i.aw, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit12.thread ] ; 2 uses
  %storemerge.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %storemerge = load i64, ptr %storemerge.in, align 1
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn, i64 48
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit20, %bb.h
  %.0.copyload.i21.sink41.in = phi ptr [ %i.bb, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit20 ], [ %i.ba, %bb.h ]
  %.0.copyload.i21.sink41 = load i64, ptr %.0.copyload.i21.sink41.in, align 1 ; 2 uses
  %i.bc = icmp eq i64 %.0.copyload.i21.sink41, 0
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload.i21.sink41, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = select i1 %i.bc, i8 0, i8 %i.be
  store atomic i8 %i.bf, ptr %i.h monotonic, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind
define weak_odr dso_local noundef nonnull align 1 dereferenceable(64) ptr @_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv(ptr noundef nonnull align 8 dereferenceable(77) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.l = sub nuw i64 %i.c, %i.f
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.c
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.l = sub nuw i64 %i.c, %i.f
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.l
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.0.copyload.i = load i64, ptr %i.o, align 1
  %i.p = and i64 %.0.copyload.i, 2048
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !58, !range !94, !noundef !38
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !92
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #27 ; 3 uses
  %i.w = load i64, ptr %i.t, align 8, !tbaa !92
  tail call void @_ZN4mold12InputSectionINS_6X86_64EE16copy_contents_toERNS_7ContextIS1_EEPhl(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %i.v, i64 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.x, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12776
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12832
  %i.aa = atomicrmw add ptr %i.z, i64 1 seq_cst, align 8, !noalias !511
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12824 ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8, !noalias !511
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = cmpxchg ptr %i.ab, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !511 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit: ; preds = %bb.e, %bb.f
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.y, i64 noundef %i.aa), !noalias !511
  store ptr %i.v, ptr %i.af, align 8, !tbaa !95, !noalias !511
  store i8 1, ptr %i.q, align 2, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit, %bb.d, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE16copy_contents_toERNS_7ContextIS1_EEPhl(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %5 = alloca %struct.z_stream_s, align 8         ; 12 uses
  %6 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %7 = alloca %struct.ZSTD_inBuffer_s, align 8    ; 6 uses
  %8 = alloca %struct.ZSTD_outBuffer_s, align 8   ; 6 uses
  %9 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  %11 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = icmp ugt i64 %i.g, %i.d                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.d
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.m = sub nuw i64 %i.d, %i.g
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.m
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.0.copyload.i = load i64, ptr %i.p, align 1
  %i.q = and i64 %.0.copyload.i, 2048
  %.not = icmp eq i64 %i.q, 0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 62
  %13 = load i8, ptr %12, align 2, !range !94
  %14 = trunc nuw i8 %13 to i1
  %or.cond38 = select i1 %.not, i1 true, i1 %14
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !91     ; 5 uses
  br i1 %or.cond38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %16, i64 %3, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %.not.i = icmp eq ptr %16, null
  br i1 %.not.i, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.d
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.v = sub nuw i64 %i.d, %i.g
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.v
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i: ; preds = %bb.g, %bb.h
  %.pn.i = phi ptr [ %i.t, %bb.g ], [ %i.x, %bb.h ]
  %.0.copyload.i7.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.copyload.i7.i = load i64, ptr %.0.copyload.i7.in.i, align 1 ; 2 uses
  %i.y = icmp ult i64 %.0.copyload.i7.i, 24
  br i1 %i.y, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread: ; preds = %bb.e, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.z = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.aa = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA31_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.z, ptr noundef nonnull align 1 dereferenceable(31) @.str) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i
  %i.ab = add i64 %.0.copyload.i7.i, -24          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %.0.copyload.i27 = load i32, ptr %16, align 1
  switch i32 %.0.copyload.i27, label %bb.r [
    i32 1, label %bb.i
    i32 2, label %bb.m
  ]

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %5, i8 0, i64 112, i1 false)
  %i.ad = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef 112) #15 ; 0 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !516
  %i.ae = trunc i64 %i.ab to i32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !517
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.ag, align 8, !tbaa !518
  %i.ah = trunc i64 %3 to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !519
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !520
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.am = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #15 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %.critedge, !llvm.loop !512

.critedge:                                        ; preds = %bb.k
  %.pre42 = load i64, ptr %i.aj, align 8, !tbaa !520
  %i.ao = icmp ult i64 %.pre42, %3
  %i.ap = icmp ne i32 %i.am, 1
  %i.aq = and i1 %i.ap, %i.ao
  br i1 %i.aq, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.ar = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.as = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA22_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, ptr noundef nonnull align 1 dereferenceable(22) @.str.2)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.au = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRPcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #26
  unreachable

.critedge.thread:                                 ; preds = %bb.j, %.critedge
  %i.av = call i32 @inflateEnd(ptr noundef nonnull %5) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.s

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.aw = tail call ptr @ZSTD_createDCtx() #15    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.ac, ptr %7, align 8, !tbaa !522
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ab, ptr %i.ax, align 8, !tbaa !523
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.ay, align 8, !tbaa !524
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %2, ptr %8, align 8, !tbaa !526
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %3, ptr %i.az, align 8, !tbaa !527
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !528
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %i.bb = call i64 @ZSTD_decompressStream(ptr noundef %i.aw, ptr noundef nonnull %8, ptr noundef nonnull %7) #15 ; 3 uses
  %i.bc = call i32 @ZSTD_isError(i64 noundef %i.bb) #15
  %.not24 = icmp eq i32 %i.bc, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.bd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.be = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA22_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bd, ptr noundef nonnull align 1 dereferenceable(22) @.str.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bf = call ptr @ZSTD_getErrorName(i64 noundef %i.bb) #15
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !95
  %i.bg = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIPKcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %9) #26
  unreachable

bb.o:                                             ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.bb, 0
  %.pre = load i64, ptr %i.ba, align 8, !tbaa !528 ; 2 uses
  %.pre41 = load i64, ptr %i.az, align 8, !tbaa !527 ; 2 uses
  %i.bi = icmp ult i64 %.pre, %.pre41
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %10, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.bj = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %10, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.bk = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bj, ptr noundef nonnull align 1 dereferenceable(44) @.str.3) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #26
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bl = icmp ult i64 %.pre, %.pre41
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !513

._crit_edge:                                      ; preds = %bb.q, %bb.m
  %i.bm = call i64 @ZSTD_freeDCtx(ptr noundef %i.aw) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %11, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.bn = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %11, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.bo = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bn, ptr noundef nonnull align 1 dereferenceable(35) @.str.4) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !97
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !106
  %i.bw = and i32 %i.bv, -75
  %i.bx = or disjoint i32 %i.bw, 8
  store i32 %i.bx, ptr %i.bu, align 8, !tbaa !107
  %i.by = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_7IntegerIjLb1ELi4EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bo, ptr noundef nonnull align 1 dereferenceable(4) %16) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %11) #26
  unreachable

bb.s:                                             ; preds = %.critedge.thread, %._crit_edge, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define weak_odr dso_local { i64, ptr } @_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv(ptr noundef nonnull align 8 dereferenceable(77) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.e
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.n = sub nuw i64 %i.e, %i.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %i.n
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3: ; preds = %bb.c, %bb.d
  %.pn = phi ptr [ %i.l, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.0.copyload.i7.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.0.copyload.i7 = load i64, ptr %.0.copyload.i7.in, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.0.copyload.i4 = load i64, ptr %i.q, align 1
  %i.r = and i64 %.0.copyload.i4, 2048
  %.not1 = icmp ne i64 %i.r, 0
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 62
  %2 = load i8, ptr %1, align 2, !range !94
  %3 = trunc nuw i8 %2 to i1
  %or.cond = select i1 %.not1, i1 %3, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3, %bb.e, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.e ], [ %.0.copyload.i7, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3 ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.b, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(401) ptr @_ZN4mold10SyncStreamlsIRNS_12InputSectionINS_6X86_64EEEEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(401) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA31_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %1) #15
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(31) %1, i64 noundef %i.b) #15 ; 0 uses
  ret ptr %0
}

; Function Attrs: noreturn nounwind
declare void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA22_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(22) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %1) #15
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) %1, i64 noundef %i.b) #15 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRPcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i) #15
  br label %_ZN4mold10SyncStreamlsIRPcEERS0_OT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j) #15 ; 0 uses
  br label %_ZN4mold10SyncStreamlsIRPcEERS0_OT_.exit

_ZN4mold10SyncStreamlsIRPcEERS0_OT_.exit:         ; preds = %bb.b, %bb.c
  ret ptr %0
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #6

declare ptr @ZSTD_createDCtx() local_unnamed_addr #6

declare i64 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ZSTD_isError(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIPKcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i) #15
  br label %_ZN4mold10SyncStreamlsIPKcEERS0_OT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.j) #15 ; 0 uses
  br label %_ZN4mold10SyncStreamlsIPKcEERS0_OT_.exit

_ZN4mold10SyncStreamlsIPKcEERS0_OT_.exit:         ; preds = %bb.b, %bb.c
  ret ptr %0
}

declare ptr @ZSTD_getErrorName(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(44) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %1) #15
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(44) %1, i64 noundef %i.b) #15 ; 0 uses
  ret ptr %0
}

declare i64 @ZSTD_freeDCtx(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #15
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.b) #15 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_7IntegerIjLb1ELi4EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.b = zext i32 %.0.copyload.i.i to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b) #15 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold12InputSectionINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.c
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.l = sub nuw i64 %i.c, %i.f
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.l
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.0.copyload.i = load i32, ptr %i.o, align 1
  %i.p = icmp eq i32 %.0.copyload.i, 8
  br i1 %i.p, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !92   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4mold12InputSectionINS_6X86_64EE16copy_contents_toERNS_7ContextIS1_EEPhl(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2, i64 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2691
  %i.u = load i8, ptr %i.t, align 1, !tbaa !529, !range !94, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 8, !tbaa !54
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %i.x
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.x
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit9

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 480
end_hunk_0
begin_hunk_1_@_ZN4mold12InputSectionINS_6X86_64EE13get_tombstoneERNS_6SymbolIS1_EEPNS_15SectionFragmentIS1_EE:bb.a
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.232.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold16MergeableSectionINS_6X86_64EEC2ERNS_7ContextIS1_EERNS_13MergedSectionIS1_EEPNS_12InputSectionIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(400) %2, ptr noundef %3) unnamed_addr #2 comdat($_ZN4mold16MergeableSectionINS_6X86_64EEC5ERNS_7ContextIS1_EERNS_13MergedSectionIS1_EEPNS_12InputSectionIS1_EE) align 2 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !566
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  store i8 %i.c, ptr %i.a, align 8, !tbaa !456
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.d, align 8, !tbaa !457
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.h
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  %i.q = sub nuw i64 %i.h, %i.k
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.q
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.s, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.0.copyload.i.i = load i64, ptr %i.t, align 1
  %i.u = and i64 %.0.copyload.i.i, 2048
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 62 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !tbaa !58, !range !94, !noundef !38
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !92
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #27 ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !92
  tail call void @_ZN4mold12InputSectionINS_6X86_64EE16copy_contents_toERNS_7ContextIS1_EEPhl(ptr noundef nonnull align 8 dereferenceable(77) %3, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12776
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12832
  %i.af = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8, !noalias !567
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12824 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8, !noalias !567
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = cmpxchg ptr %i.ag, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !567 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit.i

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit.i: ; preds = %bb.f, %bb.e
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i64 noundef %i.af), !noalias !567
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !95, !noalias !567
  store i8 1, ptr %i.v, align 2, !tbaa !58
  br label %_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit

_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i, %bb.d, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.am = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.am) #26
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %_ZN4mold12InputSectionINS_6X86_64EE10uncompressERNS_7ContextIS1_EE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !570 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !571
  %.not.i.i7 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.ap, align 8, !tbaa !437
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !570
  br label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit

bb.i:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !572 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.j, label %_ZNKSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #27 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store ptr %0, ptr %i.bf, align 8, !tbaa !437
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.k, label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !571
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bk) #25
  br label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !572
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !570
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bl, ptr %i.aq, align 8, !tbaa !571
  br label %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN4mold16MergeableSectionINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.bm = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold16MergeableSectionINS_6X86_64EE14split_contentsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %i.i
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.r = sub nuw i64 %i.i, %i.l
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.r
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %.0.copyload.i7.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.copyload.i7.in.i.a = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.copyload.i7.i = load i64, ptr %.0.copyload.i7.in.i.a, align 1
  %5 = and i64 %.0.copyload.i7.i, 2048
  %.not1.i = icmp ne i64 %5, 0
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %7 = load i8, ptr %6, align 2, !range !94
  %8 = trunc nuw i8 %7 to i1
  %or.cond.i = select i1 %.not1.i, i1 %8, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %spec.select = select i1 %or.cond.i, ptr %i.u, ptr %.0.copyload.i7.in.i
  %.sroa.0.0.i = load i64, ptr %spec.select, align 1 ; 10 uses
  %9 = icmp ugt i64 %.sroa.0.0.i, 4294967295
  br i1 %9, label %bb.e, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread

bb.e:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.w = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(77) %i.v)
  %i.x = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA30_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.w, ptr noundef nonnull align 1 dereferenceable(30) @.str.24) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %2) #26
  unreachable

_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !458, !nonnull !38, !align !39 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.0.copyload.i = load i64, ptr %i.z, align 8
  %.0.copyload.i.fr = freeze i64 %.0.copyload.i   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.0.copyload.i29 = load i64, ptr %i.aa, align 8
  %i.ab = and i64 %.0.copyload.i29, 32
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.r, label %.preheader

_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread: ; preds = %bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !458, !nonnull !38, !align !39 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.0.copyload.i135 = load i64, ptr %i.ad, align 8
  %.0.copyload.i.fr136 = freeze i64 %.0.copyload.i135
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.0.copyload.i29137 = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i29137, 32
  %.not138 = icmp eq i64 %i.af, 0
  br i1 %.not138, label %bb.r, label %.loopexit

.preheader:                                       ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread
  %.not80 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.aj = icmp eq i64 %.0.copyload.i.fr, 1
  %i.ak = sub i64 %.sroa.0.0.i, %.0.copyload.i.fr ; 2 uses
  %i.al = ptrtoint ptr %i.f to i64
  %.pre94 = load ptr, ptr %i.ah, align 8, !tbaa !459 ; 2 uses
  %.pre95 = load ptr, ptr %i.ai, align 8, !tbaa !578 ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.am = phi ptr [ %i.bl, %bb.f ], [ %.pre95, %.lr.ph ] ; 3 uses
  %i.an = phi ptr [ %i.bm, %bb.f ], [ %.pre94, %.lr.ph ] ; 3 uses
  %.075.us = phi i64 [ %i.ap, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %i.ao = trunc nuw i64 %.075.us to i32           ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.us, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us
  %i.ap = add nuw i64 %i.br, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.0.0.i
  br i1 %i.aq, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !573

bb.g:                                             ; preds = %.lr.ph.split.us
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !435
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !434 ; 4 uses
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.h
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i.i.us = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.us)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #27 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store i32 %i.ao, ptr %i.be, align 4, !tbaa !435
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.i:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %.not.i17.i.i.i.us = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !578
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bj) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !434
  store ptr %i.bg, ptr %i.ah, align 8, !tbaa !459
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.g
  %i.bl = phi ptr [ %i.bk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us ], [ %i.am, %bb.g ]
  %i.bm = phi ptr [ %i.bg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us ], [ %i.ar, %bb.g ]
  %i.bn = sub nuw nsw i64 %.sroa.0.0.i, %.075.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 %.075.us
  %i.bp = tail call ptr @memchr(ptr noundef nonnull %i.bo, i32 noundef 0, i64 noundef %i.bn) #15 ; 2 uses
  %.not.i.i31.us = icmp eq ptr %i.bp, null
  br i1 %.not.i.i31.us, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us

_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us: ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.al                    ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %bb.f

bb.k:                                             ; preds = %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit
  %i.bt = add i64 %.01023.i, %.0.copyload.i.fr    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %.sroa.0.0.i
  br i1 %i.bu, label %.lr.ph.split, label %.loopexit, !llvm.loop !573

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %i.bv = phi ptr [ %i.cs, %bb.k ], [ %.pre95, %.lr.ph ] ; 3 uses
  %i.bw = phi ptr [ %i.ct, %bb.k ], [ %.pre94, %.lr.ph ] ; 3 uses
  %.075 = phi i64 [ %i.bt, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.bx = trunc i64 %.075 to i32                  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !435
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  store ptr %i.by, ptr %i.ah, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.m:                                             ; preds = %.lr.ph.split
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !434 ; 4 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775804
  br i1 %i.cd, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

.split.us:                                        ; preds = %bb.m, %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ce = ashr exact i64 %i.cc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 2305843009213693951)
  %i.ci = select i1 %i.cg, i64 2305843009213693951, i64 %i.ch ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #27 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store i32 %i.bx, ptr %i.cl, align 4, !tbaa !435
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.n, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.co = load ptr, ptr %i.ai, align 8, !tbaa !578
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ck, ptr %i.ag, align 8, !tbaa !434
  store ptr %i.cn, ptr %i.ah, align 8, !tbaa !459
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci ; 2 uses
  store ptr %i.cr, ptr %i.ai, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.cs = phi ptr [ %i.bv, %bb.l ], [ %i.cr, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ct = phi ptr [ %i.by, %bb.l ], [ %i.cn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %.not22.i = icmp ugt i64 %.075, %i.ak
  br i1 %.not22.i, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i
  %.01023.i = phi i64 [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i ], [ %.075, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 7 uses
  %i.cu = icmp ugt i64 %.01023.i, %.sroa.0.0.i
  br i1 %i.cu, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %.01023.i, i64 noundef %.sroa.0.0.i) #26
end_hunk_1
begin_hunk_2_@_Z11hash_stringSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.bl, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bm = mul i64 %0, -7046029288634856825        ; 4 uses
  %i.bn = icmp samesign ugt i64 %0, 32
  br i1 %i.bn, label %bb.j, label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp samesign ugt i64 %0, 64
  br i1 %i.bo, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp samesign ugt i64 %0, 96
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val28.i = load i64, ptr %i.bq, align 1, !tbaa !401
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val27.i = load i64, ptr %i.br, align 1, !tbaa !401
  %i.bs = xor i64 %.val28.i, 4554437623014685352
  %i.bt = xor i64 %.val27.i, 2111919702937427193
  %i.bu = zext i64 %i.bs to i128
  %i.bv = zext i64 %i.bt to i128
  %i.bw = mul nuw i128 %i.bv, %i.bu               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64
  %i.ca = add i64 %i.bm, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -64
  %.val32.i = load i64, ptr %i.cc, align 1, !tbaa !401
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -56
  %.val31.i = load i64, ptr %i.cd, align 1, !tbaa !401
  %i.ce = xor i64 %.val32.i, 3556072174620004746
  %i.cf = xor i64 %.val31.i, 7238261902898274248
  %i.cg = zext i64 %i.ce to i128
  %i.ch = zext i64 %i.cf to i128
  %i.ci = mul nuw i128 %i.ch, %i.cg               ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  %i.cm = add i64 %i.ca, %i.cl
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i2.i = phi i64 [ %i.cm, %bb.l ], [ %i.bm, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val20.i = load i64, ptr %i.cn, align 1, !tbaa !401
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val19.i = load i64, ptr %i.co, align 1, !tbaa !401
  %i.cp = xor i64 %.val20.i, -3818837453329782724
  %i.cq = xor i64 %.val19.i, -6688317018830679928
  %i.cr = zext i64 %i.cp to i128
  %i.cs = zext i64 %i.cq to i128
  %i.ct = mul nuw i128 %i.cs, %i.cr               ; 2 uses
  %i.cu = lshr i128 %i.ct, 64
  %i.cv = xor i128 %i.cu, %i.ct
  %i.cw = trunc i128 %i.cv to i64
  %i.cx = add i64 %.0.i2.i, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -48
  %.val24.i = load i64, ptr %i.cz, align 1, !tbaa !401
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -40
  %.val23.i = load i64, ptr %i.da, align 1, !tbaa !401
  %i.db = xor i64 %.val24.i, 5690594596133299313
  %i.dc = xor i64 %.val23.i, -2833645246901970632
  %i.dd = zext i64 %i.db to i128
  %i.de = zext i64 %i.dc to i128
  %i.df = mul nuw i128 %i.de, %i.dd               ; 2 uses
  %i.dg = lshr i128 %i.df, 64
  %i.dh = xor i128 %i.dg, %i.df
  %i.di = trunc i128 %i.dh to i64
  %i.dj = add i64 %i.cx, %i.di
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.1.i.i = phi i64 [ %i.dj, %bb.m ], [ %i.bm, %bb.j ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12.i = load i64, ptr %i.dk, align 1, !tbaa !401
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11.i = load i64, ptr %i.dl, align 1, !tbaa !401
  %i.dm = xor i64 %.val12.i, 8711581037947681227
  %i.dn = xor i64 %.val11.i, 2410270004345854594
  %i.do = zext i64 %i.dm to i128
  %i.dp = zext i64 %i.dn to i128
  %i.dq = mul nuw i128 %i.dp, %i.do               ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = xor i128 %i.dr, %i.dq
  %i.dt = trunc i128 %i.ds to i64
  %i.du = add i64 %.1.i.i, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -32
  %.val16.i = load i64, ptr %i.dw, align 1, !tbaa !401
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -24
  %.val15.i = load i64, ptr %i.dx, align 1, !tbaa !401
  %i.dy = xor i64 %.val16.i, -8204357891075471176
  %i.dz = xor i64 %.val15.i, 5487137525590930912
  %i.ea = zext i64 %i.dy to i128
  %i.eb = zext i64 %i.dz to i128
  %i.ec = mul nuw i128 %i.eb, %i.ea               ; 2 uses
  %i.ed = lshr i128 %i.ec, 64
  %i.ee = xor i128 %i.ed, %i.ec
  %i.ef = trunc i128 %i.ee to i64
  %i.eg = add i64 %i.du, %i.ef
  br label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit.i

_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit.i:        ; preds = %bb.n, %bb.i
  %.2.i.i = phi i64 [ %i.eg, %bb.n ], [ %i.bm, %bb.i ]
  %.val4.i = load i64, ptr %1, align 1, !tbaa !401
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load i64, ptr %i.eh, align 1, !tbaa !401
  %i.ei = xor i64 %.val4.i, -4734510112055689544
  %i.ej = xor i64 %.val3.i, 2066345149520216444
  %i.ek = zext i64 %i.ei to i128
  %i.el = zext i64 %i.ej to i128
  %i.em = mul nuw i128 %i.el, %i.ek               ; 2 uses
  %i.en = lshr i128 %i.em, 64
  %i.eo = xor i128 %i.en, %i.em
  %i.ep = trunc i128 %i.eo to i64
  %i.eq = add i64 %.2.i.i, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -16
  %.val8.i = load i64, ptr %i.es, align 1, !tbaa !401
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -8
  %.val7.i = load i64, ptr %i.et, align 1, !tbaa !401
  %i.eu = xor i64 %.val8.i, -2623469361688619810
  %i.ev = xor i64 %.val7.i, 2262974939099578482
  %i.ew = zext i64 %i.eu to i128
  %i.ex = zext i64 %i.ev to i128
  %i.ey = mul nuw i128 %i.ex, %i.ew               ; 2 uses
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = xor i128 %i.ez, %i.ey
  %i.fb = trunc i128 %i.fa to i64
  %i.fc = add i64 %i.eq, %i.fb                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 37
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = mul i64 %i.fe, 1609587791953885689      ; 2 uses
  %i.fg = lshr i64 %i.ff, 32
  %i.fh = xor i64 %i.fg, %i.ff
  br label %_ZL22XXH_INLINE_XXH3_64bitsPKvm.exit

bb.o:                                             ; preds = %bb.h
  %i.fi = icmp ult i64 %0, 241
  br i1 %i.fi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fj = tail call fastcc noundef i64 @_ZL21XXH3_len_129to240_64bPKhmS0_mm(ptr noundef readonly %1, i64 noundef %0) #28
  br label %_ZL22XXH_INLINE_XXH3_64bitsPKvm.exit

bb.q:                                             ; preds = %bb.o
  %i.fk = tail call fastcc noundef i64 @_ZL25XXH3_hashLong_64b_defaultPKvmmPKhm(ptr noundef readonly %1, i64 noundef %0)
  br label %_ZL22XXH_INLINE_XXH3_64bitsPKvm.exit

_ZL22XXH_INLINE_XXH3_64bitsPKvm.exit:             ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit.i, %bb.p, %bb.q
  %.0.i.i = phi i64 [ %i.fk, %bb.q ], [ %i.fh, %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit.i ], [ %i.fj, %bb.p ], [ %i.u, %bb.c ], [ %i.an, %bb.e ], [ %i.bk, %bb.g ], [ 3244421341483603138, %bb.f ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local { i64, ptr } @_ZN4mold16MergeableSectionINS_6X86_64EE12get_contentsEl(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434  ; 2 uses
  %i.c = getelementptr [4 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !435
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !457  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !93, !nonnull !38, !align !39 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.l
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.l
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.u = sub nuw i64 %i.l, %i.o
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.u
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi ptr [ %i.s, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  %.0.copyload.i7.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.copyload.i7.i = load i64, ptr %.0.copyload.i7.in.i, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.copyload.i4.i = load i64, ptr %i.x, align 1
  %i.y = and i64 %.0.copyload.i4.i, 2048
  %.not1.i = icmp ne i64 %i.y, 0
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 62
  %3 = load i8, ptr %2, align 2, !range !94
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %.not1.i, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit

bb.e:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !92
  br label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit: ; preds = %bb.a, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.e ], [ %.0.copyload.i7.i, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !459
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.b to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = icmp eq i64 %1, %i.ah
  %i.aj = icmp ult i64 %.sroa.0.0.i, %i.e         ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit
  br i1 %i.aj, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.e, i64 noundef %.sroa.0.0.i) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.f
  %i.ak = sub nuw i64 %.sroa.0.0.i, %i.e
  br label %bb.j

bb.h:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit
  br i1 %i.aj, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.e, i64 noundef %.sroa.0.0.i) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11: ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.c, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !435
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 %i.an, %i.e
  %i.ap = sub nuw i64 %.sroa.0.0.i, %i.e
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ao)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.pn16 = phi i64 [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11 ]
  %.pn14 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %.fca.0.insert.i7.pn = insertvalue { i64, ptr } poison, i64 %.pn16, 0
  %.pn = insertvalue { i64, ptr } %.fca.0.insert.i7.pn, ptr %.pn14, 1
  ret { i64, ptr } %.pn
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold7CounterC2ESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !401
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE, i64 16), ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 16) #15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.e, align 8, !tbaa !464
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d113callback_leafINS1_21construct_by_exemplarIlEEEE, i64 16), ptr %i.d, align 8, !tbaa !97
  store ptr %i.d, ptr %i.c, align 8, !tbaa !473
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !474
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  store atomic ptr %scevgep.i.i.i.i, ptr %i.g monotonic, align 8
  store atomic ptr null, ptr %scevgep.i.i.i.i monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store atomic ptr null, ptr %i.j monotonic, align 8
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4mold7CounterC1ESt17basic_string_viewIcSt11char_traitsIcEElE2mu) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #26
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !580 ; 4 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !26
  %.not.i.i1 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.l, align 8, !tbaa !582
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !580
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.o = load ptr, ptr @_ZN4mold7Counter9instancesE, align 8, !tbaa !25 ; 4 uses
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !582
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !26
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #25
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.z, ptr @_ZN4mold7Counter9instancesE, align 8, !tbaa !25
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !580
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !26
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ah = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4mold7CounterC1ESt17basic_string_viewIcSt11char_traitsIcEElE2mu) #15 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold7CounterD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE, i64 16), ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !475
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !477
  store atomic ptr %i.j, ptr %i.g monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !478
  %i.m = shl i64 16, %i.l
  %i.n = add nuw i64 %i.m, 16
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %i.i, i64 noundef %i.n) #15, !inline_history !2
  %i.r = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit, label %.lr.ph.i.i

_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(65) %i.t), !inline_history !475
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold16MergeableSectionINS_6X86_64EE16resolve_contentsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
end_hunk_2
