Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemProfUse?download=true
inline.NumInlined: 4532
inline.NumDeleted: 2429
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm21longestCommonSequenceINS_7memprof12LineLocationEmNS_11SmallVectorISt4pairIS2_mELj0EEEEEvT1_S7_NS_12function_refIFbRKT0_SB_EEENS8_IFvT_SE_EEE:bb.a
  br i1 %i.ev, label %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZZN4llvm21longestCommonSequenceINS_7memprof12LineLocationEmNS_11SmallVectorISt4pairIS2_mELj0EEEEEvT1_S7_NS_12function_refIFbRKT0_SB_EEENS8_IFvT_SE_EEEENKUlNS_8ArrayRefISt6vectorIiSaIiEEEES6_S6_E_clESL_S6_S6_.exit
  call void @free(ptr noundef %i.eu) #19
  br label %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit: ; preds = %_ZZN4llvm21longestCommonSequenceINS_7memprof12LineLocationEmNS_11SmallVectorISt4pairIS2_mELj0EEEEEvT1_S7_NS_12function_refIFbRKT0_SB_EEENS8_IFvT_SE_EEEENKUlNS_8ArrayRefISt6vectorIiSaIiEEEES6_S6_E_clESL_S6_S6_.exit, %bb.y
  %i.ew = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cn
  br i1 %i.ex, label %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit
  call void @free(ptr noundef %i.ew) #19
  br label %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53

.critedge45:                                      ; preds = %bb.l
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53, label %bb.d, !llvm.loop !437

_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53: ; preds = %.critedge45, %bb.z, %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit
  %i.ey = load ptr, ptr %7, align 8, !tbaa !143   ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ey, %i.fa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fh, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.ey, %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53 ] ; 3 uses
  %i.fb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !135
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.aa, %.lr.ph.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.fh, %i.fa
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !438

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i:   ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i, %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53
  %i.fi = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exitthread-pre-split.i ], [ %i.ey, %_ZN4llvm11SmallVectorISt4pairINS_7memprof12LineLocationEmELj0EED2Ev.exit53 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !140
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #22
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.fo = load ptr, ptr %6, align 8, !tbaa !134   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.fp = load ptr, ptr %i.n, align 8, !tbaa !135
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fs) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14MemProfUsePassC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !146
  %i.c = load ptr, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !149  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.e, ptr %i.a, align 8, !tbaa !118
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !148
  %i.h = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.h, ptr %i.b, align 8, !tbaa !150
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !150
  store i8 %i.j, ptr %i.i, align 1, !tbaa !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !149
  %i.m = load ptr, ptr %0, align 8, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !153    ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit.thread, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !153
  %i.s = icmp eq ptr %.pre, null
  br i1 %i.s, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit.thread, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit
  call void @_ZN4llvm3vfs17getRealFileSystemEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %3) #19
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !153  ; 5 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !153
  store ptr %i.t, ptr %i.o, align 8, !tbaa !153
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #19, !inline_history !439
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit.thread, %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEEC2ERKS3_.exit
  ret void
}

declare void @_ZN4llvm3vfs17getRealFileSystemEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14MemProfUsePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.579", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::HashBuilder", align 8 ; 8 uses
  %6 = alloca %"class.llvm::DiagnosticInfoPGOProfile", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.llvm::DiagnosticInfoPGOProfile", align 8 ; 8 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Expected", align 8   ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::DiagnosticInfoPGOProfile", align 8 ; 8 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::DiagnosticInfoPGOProfile", align 8 ; 8 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::DenseMap.136", align 8 ; 7 uses
  %23 = alloca %"class.llvm::DenseMap.136", align 8 ; 7 uses
  %24 = alloca %"class.std::map", align 8         ; 9 uses
  %25 = alloca %"class.std::set", align 8         ; 9 uses
  %26 = alloca %"class.llvm::DenseSet", align 8   ; 6 uses
  %27 = alloca %"class.llvm::DenseSet", align 8   ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond = select i1 %i.f, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !39, !alias.scope !487
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.k, align 8, !tbaa !488, !alias.scope !487
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !36, !alias.scope !487
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %i.n, align 8, !tbaa !39, !alias.scope !487
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.p, align 8, !tbaa !488, !alias.scope !487
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.q, align 4, !tbaa !489, !alias.scope !487
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.r, align 8, !tbaa !36, !alias.scope !487
  store i32 1, ptr %i.l, align 4, !tbaa !489, !alias.scope !487, !noalias !490
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !154, !alias.scope !487, !noalias !490
  br label %bb.ba

.critedge:                                        ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !254, !nonnull !38, !align !255 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 4, ptr %i.t, align 8, !tbaa !258
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !259
  store ptr %1, ptr %16, align 8, !tbaa !150
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.x, align 8
  call void @_ZN4llvm22IndexedInstrProfReader6createERKNS_5TwineERNS_3vfs10FileSystemES3_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %15, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(34) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.z = load i8, ptr %i.y, align 8, !noalias !491
  %i.aa = trunc i8 %i.z to i1
  %.pre = load i64, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.ab = inttoptr i64 %.pre to ptr               ; 18 uses
  store ptr null, ptr %15, align 8, !tbaa !154
  %.not170 = icmp eq i64 %.pre, 0                 ; 2 uses
  br i1 %i.aa, label %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit59

_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEE9takeErrorEv.exit: ; preds = %.critedge
  br i1 %.not170, label %.thread168, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEE9takeErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29, !noalias !492
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !492
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #19, !noalias !492, !inline_history !448
  br i1 %i.af, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !261, !noalias !492 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !261, !noalias !492 ; 2 uses
  %.not3839.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not3839.i.i, label %_ZN4llvm5ErrorD2Ev.exit58, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i.i, %.lr.ph.i.i
  %i.ar = phi ptr [ null, %.lr.ph.i.i ], [ %i.bi, %_ZN4llvm5ErrorD2Ev.exit9.i.i ]
  %.sroa.028.040.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.bt, %_ZN4llvm5ErrorD2Ev.exit9.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !492
  store ptr %i.ar, ptr %13, align 8, !tbaa !264, !noalias !492
  %i.as = load i64, ptr %.sroa.028.040.i.i, align 8, !tbaa !265, !noalias !492
  %i.at = inttoptr i64 %i.as to ptr               ; 7 uses
  store ptr null, ptr %.sroa.028.040.i.i, align 8, !tbaa !265, !noalias !492
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29, !noalias !494
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !494
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @_ZN4llvm13ErrorInfoBase2IDE) #19, !noalias !494, !inline_history !451
  br i1 %i.ax, label %bb.f, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit5.i.i.i

bb.f:                                             ; preds = %bb.e
  %.val1.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !148, !noalias !494
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !496
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !29, !noalias !496
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !496
  call void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.at) #19, !noalias !496, !inline_history !454
  store i8 4, ptr %i.ak, align 8, !tbaa !258, !noalias !496
  store i8 1, ptr %i.al, align 1, !tbaa !259, !noalias !496
  store ptr %11, ptr %10, align 8, !tbaa !150, !noalias !496
  store i32 24, ptr %i.am, align 8, !tbaa !268, !noalias !496
  store i8 0, ptr %i.an, align 4, !tbaa !269, !noalias !496
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm24DiagnosticInfoPGOProfileE, i64 16), ptr %9, align 8, !tbaa !29, !noalias !496
  store ptr %.val1.val.i.i.i, ptr %i.ao, align 8, !tbaa !272, !noalias !496
  store ptr %10, ptr %i.ap, align 8, !tbaa !273, !noalias !496
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(13) %9) #19, !noalias !496
  %i.bb = load ptr, ptr %11, align 8, !tbaa !148, !noalias !496 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !150, !noalias !496
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #22, !noalias !496
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !496
  store ptr null, ptr %14, align 8, !tbaa !264, !alias.scope !497, !noalias !492
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !29, !noalias !494
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !494
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #19, !noalias !494, !inline_history !455
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit5.i.i.i: ; preds = %bb.e
  store ptr %i.at, ptr %14, align 8, !tbaa !264, !alias.scope !498, !noalias !492
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i

_ZN4llvm5ErrorD2Ev.exit7.i.i:                     ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit5.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %12, ptr nofree noundef nonnull align 8 dereferenceable(8) %13, ptr nofree noundef nonnull align 8 dereferenceable(8) %14), !noalias !492
  %i.bi = load ptr, ptr %12, align 8, !tbaa !264, !noalias !492
  store ptr null, ptr %12, align 8, !tbaa !264, !noalias !492
  %i.bj = load ptr, ptr %14, align 8, !tbaa !264, !noalias !492 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !29, !noalias !492
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !492
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #19, !noalias !492, !inline_history !458
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit7.i.i
  %i.bo = load ptr, ptr %13, align 8, !tbaa !264, !noalias !492 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4llvm5ErrorD2Ev.exit9.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !29, !noalias !492
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !492
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #19, !noalias !492, !inline_history !458
  br label %_ZN4llvm5ErrorD2Ev.exit9.i.i

_ZN4llvm5ErrorD2Ev.exit9.i.i:                     ; preds = %bb.h, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !492
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.028.040.i.i, i64 8 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bt, %i.aj
  br i1 %.not38.i.i, label %_ZN4llvm5ErrorD2Ev.exit58, label %bb.e

bb.i:                                             ; preds = %bb.c
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !29, !noalias !499
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !499
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @_ZN4llvm13ErrorInfoBase2IDE) #19, !noalias !499, !inline_history !451 ; 0 uses
  %.val1.val.i13.i.i = load ptr, ptr %1, align 8, !tbaa !148, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !500
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !29, !noalias !500
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !500
  call void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #19, !noalias !500, !inline_history !454
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.cb, align 8, !tbaa !258, !noalias !500
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 33
end_hunk_0
begin_hunk_1_@_ZN4llvm14MemProfUsePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !150, !noalias !500
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #22, !noalias !500
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i15.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i15.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !500
  br label %_ZN4llvm5ErrorD2Ev.exit58

_ZN4llvm5ErrorD2Ev.exit58:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i.i, %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i15.i.i
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !29, !noalias !492
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !492
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #19, !noalias !492, !inline_history !463
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.ptr1.i57 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i57, ptr %0, align 8, !tbaa !39, !alias.scope !501
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.cp, align 8, !tbaa !488, !alias.scope !501
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !36, !alias.scope !501
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !39, !alias.scope !501
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.cu, align 8, !tbaa !488, !alias.scope !501
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.cv, align 4, !tbaa !489, !alias.scope !501
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cw, align 8, !tbaa !36, !alias.scope !501
  store i32 1, ptr %i.cq, align 4, !tbaa !489, !alias.scope !501, !noalias !502
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i57, align 8, !tbaa !154, !alias.scope !501, !noalias !502
  br label %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit

_ZN4llvm5ErrorD2Ev.exit59:                        ; preds = %.critedge
  br i1 %.not170, label %.thread168, label %bb.j

.thread168:                                       ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEE9takeErrorEv.exit, %_ZN4llvm5ErrorD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.cx = load ptr, ptr %1, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 5, ptr %i.cy, align 8, !tbaa !258
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.cz, align 1, !tbaa !259
  store ptr @.str.24, ptr %19, align 8, !tbaa !150
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 24, ptr %i.da, align 8, !tbaa !150
  %i.db = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 24, ptr %i.db, align 8, !tbaa !268
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i8 0, ptr %i.dc, align 4, !tbaa !269
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm24DiagnosticInfoPGOProfileE, i64 16), ptr %18, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.cx, ptr %i.dd, align 8, !tbaa !272
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %19, ptr %i.de, align 8, !tbaa !273
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(13) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %.ptr1.i60 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i60, ptr %0, align 8, !tbaa !39, !alias.scope !503
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.df, align 8, !tbaa !488, !alias.scope !503
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.dh, align 8, !tbaa !36, !alias.scope !503
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !39, !alias.scope !503
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.dk, align 8, !tbaa !488, !alias.scope !503
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.dl, align 4, !tbaa !489, !alias.scope !503
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dm, align 8, !tbaa !36, !alias.scope !503
  store i32 1, ptr %i.dg, align 4, !tbaa !489, !alias.scope !503, !noalias !504
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i60, align 8, !tbaa !154, !alias.scope !503, !noalias !504
  br label %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit59
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(508) %i.ab) #19
  br i1 %i.dq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.dr = load ptr, ptr %1, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.dt, align 1, !tbaa !259
  store ptr @.str.25, ptr %21, align 8, !tbaa !150
  store i8 3, ptr %i.ds, align 8, !tbaa !258
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 24, ptr %i.du, align 8, !tbaa !268
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i8 0, ptr %i.dv, align 4, !tbaa !269
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm24DiagnosticInfoPGOProfileE, i64 16), ptr %20, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !272
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %21, ptr %i.dx, align 8, !tbaa !273
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(13) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.ptr1.i62 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i62, ptr %0, align 8, !tbaa !39, !alias.scope !505
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.dy, align 8, !tbaa !488, !alias.scope !505
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ea, align 8, !tbaa !36, !alias.scope !505
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !39, !alias.scope !505
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ed, align 8, !tbaa !488, !alias.scope !505
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ee, align 4, !tbaa !489, !alias.scope !505
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.ef, align 8, !tbaa !36, !alias.scope !505
  store i32 1, ptr %i.dz, align 4, !tbaa !489, !alias.scope !505, !noalias !506
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i62, align 8, !tbaa !154, !alias.scope !505, !noalias !506
  br label %_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 464
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !508
  %i.ei = call noundef zeroext i1 @_ZN4llvm14MemProfUsePass23annotateGlobalVariablesERNS_6ModuleEPKNS_7memprof18DataAccessProfDataE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef %i.eh)
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !486
  %i.ek = icmp eq ptr %i.d, %i.ej
  br i1 %i.ek, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i8 0, i64 64, i1 false), !alias.scope !509
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.en, ptr %0, align 8, !tbaa !39, !alias.scope !509
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.eo, align 8, !tbaa !488, !alias.scope !509
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !489, !alias.scope !509
  store i8 1, ptr %i.em, align 8, !tbaa !36, !alias.scope !509
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !39, !alias.scope !509
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.es, align 8, !tbaa !488, !alias.scope !509
  store i8 1, ptr %i.el, align 8, !tbaa !36, !alias.scope !509
  br label %_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i

bb.o:                                             ; preds = %bb.m
  %.ptr1.i63 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i63, ptr %0, align 8, !tbaa !39, !alias.scope !510
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.et, align 8, !tbaa !488, !alias.scope !510
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ev, align 8, !tbaa !36, !alias.scope !510
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !39, !alias.scope !510
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ey, align 8, !tbaa !488, !alias.scope !510
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ez, align 4, !tbaa !489, !alias.scope !510
  store i8 1, ptr %i.el, align 8, !tbaa !36, !alias.scope !510
  store i32 1, ptr %i.eu, align 4, !tbaa !489, !alias.scope !510, !noalias !511
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i63, align 8, !tbaa !154, !alias.scope !510, !noalias !511
  br label %_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i

bb.p:                                             ; preds = %bb.l
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm25InnerAnalysisManagerProxyINS_15AnalysisManagerINS_8FunctionEJEEENS_6ModuleEJEE3KeyE, ptr noundef nonnull align 8 dereferenceable(1288) %2) #19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !514 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !44
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -64
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull @_ZN4llvm21TargetLibraryAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %i.ff) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.fh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SalvageStaleProfile, i64 120), align 8, !tbaa !94, !range !37, !noundef !38
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit, label %bb.q

_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit: ; preds = %bb.p
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @_ZN4llvm7memprof17computeUndriftMapERNS_6ModuleEPNS_22IndexedInstrProfReaderERKNS_17TargetLibraryInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMap.136") align 8 %23, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %i.fj)
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %23, i64 20
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.pre207 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 2 uses
  %.pre206 = load ptr, ptr %23, align 8, !tbaa !275 ; 2 uses
  store ptr %.pre206, ptr %22, align 8, !tbaa !275
  %i.fk = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.pre207, ptr %i.fk, align 8, !tbaa !142
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.pre211 = load i32, ptr %.phi.trans.insert210, align 4, !tbaa !52
  %i.fm = load <2 x i32>, ptr %.phi.trans.insert208, align 8, !tbaa !52
  store <2 x i32> %i.fm, ptr %i.fl, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit, %bb.p
  %29 = phi ptr [ %.pre207, %_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit ], [ null, %bb.p ]
  %i.fn = phi ptr [ %.pre206, %_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit ], [ null, %bb.p ] ; 2 uses
  %30 = phi i32 [ %.pre211, %_ZN4llvm8DenseMapImNS0_INS_7memprof12LineLocationES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEENS3_ImvEENS6_ImS8_EEEaSEOSB_.exit ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !280
  %i.fp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr null, ptr %i.fp, align 8, !tbaa !281
  %i.fq = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !282
  %i.fr = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !283
  %i.fs = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 0, ptr %i.fs, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.ft = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  store i32 0, ptr %i.ft, align 8, !tbaa !280
  %i.fu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr null, ptr %i.fu, align 8, !tbaa !281
  %i.fv = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !282
  %i.fw = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !283
  %i.fx = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !516 ; 2 uses
  %.not = icmp eq ptr %i.fz, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !518
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.052 = phi i64 [ %i.gb, %bb.r ], [ 0, %bb.q ]
  %.sroa.0145.0182 = load ptr, ptr %i.fd, align 8, !tbaa !44 ; 2 uses
  %.not172183 = icmp eq ptr %.sroa.0145.0182, %i.d
  br i1 %.not172183, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.s
  %i.gc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ClPrintMemProfMatchInfo, i64 120), align 8, !tbaa !94, !range !37, !noundef !38
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.v, label %.loopexit

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.sroa.0145.0184 = phi ptr [ %.sroa.0145.0, %bb.u ], [ %.sroa.0145.0182, %bb.s ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.0145.0184, i64 -64 ; 4 uses
  %i.gf = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ge) #19
  br i1 %i.gf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull @_ZN4llvm21TargetLibraryAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %i.ge) #19
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull @_ZN4llvm33OptimizationRemarkEmitterAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %i.ge) #19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  call fastcc void @_ZL11readMemprofRN4llvm6ModuleERNS_8FunctionEPNS_22IndexedInstrProfReaderERKNS_17TargetLibraryInfoERSt3mapIm14AllocMatchInfoSt4lessImESaISt4pairIKmSA_EEERSt3setISt6vectorImSaImEESB_ISM_ESaISM_EERNS_8DenseMapImNSR_INS_7memprof12LineLocationEST_NS_12DenseMapInfoIST_vEENS_6detail12DenseMapPairIST_ST_EEEENSU_ImvEENSX_ImSZ_EEEERNS_25OptimizationRemarkEmitterEmRNS_8DenseSetImS10_EES18_(ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(140) %i.ge, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %i.gh, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 noundef %.052, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0145.0184, i64 8
  %.sroa.0145.0 = load ptr, ptr %i.gk, align 8, !tbaa !44 ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0145.0, %i.d
  br i1 %.not172, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %._crit_edge
  %i.gl = load ptr, ptr %i.fq, align 8, !tbaa !282 ; 2 uses
  %.not173193 = icmp eq ptr %i.gl, %i.fo
  br i1 %.not173193, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.v
  %i.gm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 1912
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 1920 ; 4 uses
  br label %bb.w

._crit_edge197:                                   ; preds = %._crit_edge192, %bb.v
  %i.gq = load ptr, ptr %i.fv, align 8, !tbaa !282 ; 2 uses
  %.not174202 = icmp eq ptr %i.gq, %i.ft
  br i1 %.not174202, label %.loopexit, label %.lr.ph205

bb.w:                                             ; preds = %.lr.ph196, %._crit_edge192
  %.sroa.0141.0194 = phi ptr [ %i.gl, %.lr.ph196 ], [ %i.gz, %._crit_edge192 ] ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 40
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 80
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !282 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 64 ; 2 uses
  %.not176188 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not176188, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 104
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0141.0194, i64 112
  br label %bb.x

._crit_edge192:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit99, %bb.w
  %i.gz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0141.0194) #23 ; 2 uses
  %.not173 = icmp eq ptr %i.gz, %i.fo
  br i1 %.not173, label %._crit_edge197, label %bb.w

bb.x:                                             ; preds = %.lr.ph191, %_ZN4llvm11raw_ostreamlsEPKc.exit99
  %.sroa.0137.0189 = phi ptr [ %i.gu, %.lr.ph191 ], [ %i.ln, %_ZN4llvm11raw_ostreamlsEPKc.exit99 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0137.0189, i64 32
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !52
  %i.hc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !288
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !289 ; 2 uses
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp ult i64 %i.hj, 8
  br i1 %i.hk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull @.str.26, i64 noundef 8) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.z:                                             ; preds = %bb.x
  store i64 2334675993604482381, ptr %i.hg, align 1
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !289
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.hn, ptr %i.hf, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.y, %bb.z
  %.0.i.i = phi ptr [ %i.hl, %bb.y ], [ %i.hc, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.ho = load i8, ptr %i.gw, align 8, !tbaa !302
  call void @_ZN4llvm7memprof27getAllocTypeAttributeStringB5cxx11ENS_14AllocationTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, i8 noundef zeroext %i.ho) #19
  %i.hp = load ptr, ptr %28, align 8, !tbaa !148
  %i.hq = load i64, ptr %i.gm, align 8, !tbaa !149
  %i.hr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.hp, i64 noundef %i.hq) #19 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !288
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !289 ; 2 uses
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = icmp ult i64 %i.hy, 17
  br i1 %i.hz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ia = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, ptr noundef nonnull @.str.27, i64 noundef 17) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.hv, ptr noundef nonnull align 1 dereferenceable(17) @.str.27, i64 17, i1 false)
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !289
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 17
  store ptr %i.ic, ptr %i.hu, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

_ZN4llvm11raw_ostreamlsEPKc.exit81:               ; preds = %bb.aa, %bb.ab
  %.0.i.i80 = phi ptr [ %i.ia, %bb.aa ], [ %i.hr, %bb.ab ]
  %i.id = load i64, ptr %i.gr, align 8, !tbaa !118
  %i.ie = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i80, i64 noundef %i.id) #19 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !288
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !289 ; 2 uses
  %i.ij = ptrtoint ptr %i.ig to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = icmp ult i64 %i.il, 25
  br i1 %i.im, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  %i.in = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, ptr noundef nonnull @.str.28, i64 noundef 25) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ii, ptr noundef nonnull align 1 dereferenceable(25) @.str.28, i64 25, i1 false)
  %i.io = load ptr, ptr %i.ih, align 8, !tbaa !289
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 25
  store ptr %i.ip, ptr %i.ih, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

_ZN4llvm11raw_ostreamlsEPKc.exit84:               ; preds = %bb.ac, %bb.ad
  %.0.i.i83 = phi ptr [ %i.in, %bb.ac ], [ %i.ie, %bb.ad ]
  %i.iq = load i64, ptr %i.gs, align 8, !tbaa !303
  %i.ir = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i83, i64 noundef %i.iq) #19 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !288
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !289 ; 2 uses
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = icmp ult i64 %i.iy, 17
  br i1 %i.iz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
end_hunk_1
begin_hunk_2_@_ZN4llvm14MemProfUsePass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1928) %5, i8 0, i64 1912, i1 false)
  call void @llvm_blake3_hasher_init(ptr noundef nonnull align 8 dereferenceable(1928) %5) #19
  store i8 1, ptr %i.go, align 8, !tbaa !317
  store ptr %5, ptr %i.gp, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.kt, ptr %i.c, align 8, !tbaa !118
  call void @llvm_blake3_hasher_update(ptr noundef nonnull align 8 dereferenceable(1912) %5, ptr noundef nonnull %i.c, i64 noundef 8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.kv, ptr %i.b, align 4, !tbaa !52
  %i.ky = load ptr, ptr %i.gp, align 8, !tbaa !324, !nonnull !38, !align !255
  call void @llvm_blake3_hasher_update(ptr noundef nonnull align 8 dereferenceable(1912) %i.ky, ptr noundef nonnull %i.b, i64 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 %i.kx, ptr %i.a, align 4, !tbaa !52
  %i.kz = load ptr, ptr %i.gp, align 8, !tbaa !324, !nonnull !38, !align !255
  call void @llvm_blake3_hasher_update(ptr noundef nonnull align 8 dereferenceable(1912) %i.kz, ptr noundef nonnull %i.a, i64 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.la = load ptr, ptr %i.gp, align 8, !tbaa !324, !nonnull !38, !align !255
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm_blake3_hasher_finalize(ptr noundef nonnull align 8 dereferenceable(1912) %i.la, ptr noundef nonnull %4, i64 noundef 8) #19
  %i.lb = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.lc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i95, i64 noundef %i.lb) #19 ; 0 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0133.0186, i64 32 ; 2 uses
  %.not177 = icmp eq ptr %i.ld, %i.kj
  br i1 %.not177, label %.loopexit181, label %.lr.ph187

.loopexit181:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96, %_ZN4llvm11raw_ostreamlsEPKc.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.le = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !288
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !289 ; 2 uses
  %i.lj = icmp eq ptr %i.lg, %i.li
  br i1 %i.lj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit181
  %i.lk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.le, ptr noundef nonnull @.str.33, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

bb.ao:                                            ; preds = %.loopexit181
  store i8 10, ptr %i.li, align 1
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !289
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store ptr %i.lm, ptr %i.lh, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

_ZN4llvm11raw_ostreamlsEPKc.exit99:               ; preds = %bb.an, %bb.ao
  %i.ln = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0137.0189) #23 ; 2 uses
  %.not176 = icmp eq ptr %i.ln, %i.gv
  br i1 %.not176, label %._crit_edge192, label %bb.x

.lr.ph205:                                        ; preds = %._crit_edge197, %_ZN4llvm11raw_ostreamlsEPKc.exit105
  %.sroa.0129.0203 = phi ptr [ %i.mn, %_ZN4llvm11raw_ostreamlsEPKc.exit105 ], [ %i.gq, %._crit_edge197 ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0129.0203, i64 32
  %i.lp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !288
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 32 ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !289 ; 2 uses
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = icmp ult i64 %i.lw, 44
  br i1 %i.lx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph205
  %i.ly = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lp, ptr noundef nonnull @.str.34, i64 noundef 44) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

bb.aq:                                            ; preds = %.lr.ph205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.lt, ptr noundef nonnull align 1 dereferenceable(44) @.str.34, i64 44, i1 false)
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !289
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 44
  store ptr %i.ma, ptr %i.ls, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

_ZN4llvm11raw_ostreamlsEPKc.exit102:              ; preds = %bb.ap, %bb.aq
  %i.mb = load ptr, ptr %i.lo, align 8, !tbaa !326 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0129.0203, i64 40
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !326 ; 2 uses
  %.not175198 = icmp eq ptr %i.mb, %i.md
  br i1 %.not175198, label %._crit_edge201, label %.lr.ph200

._crit_edge201:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit108, %_ZN4llvm11raw_ostreamlsEPKc.exit102
  %i.me = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !288
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 3 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !289 ; 2 uses
  %i.mj = icmp eq ptr %i.mg, %i.mi
  br i1 %i.mj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge201
  %i.mk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.me, ptr noundef nonnull @.str.33, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

bb.as:                                            ; preds = %._crit_edge201
  store i8 10, ptr %i.mi, align 1
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !289
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  store ptr %i.mm, ptr %i.mh, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

_ZN4llvm11raw_ostreamlsEPKc.exit105:              ; preds = %bb.ar, %bb.as
  %i.mn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0129.0203) #23 ; 2 uses
  %.not174 = icmp eq ptr %i.mn, %i.ft
  br i1 %.not174, label %.loopexit, label %.lr.ph205

.lr.ph200:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102, %_ZN4llvm11raw_ostreamlsEPKc.exit108
  %.sroa.0125.0199 = phi ptr [ %i.mz, %_ZN4llvm11raw_ostreamlsEPKc.exit108 ], [ %i.mb, %_ZN4llvm11raw_ostreamlsEPKc.exit102 ] ; 2 uses
  %i.mo = load i64, ptr %.sroa.0125.0199, align 8, !tbaa !118
  %i.mp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !288
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 32 ; 3 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !289 ; 2 uses
  %i.mu = icmp eq ptr %i.mr, %i.mt
  br i1 %i.mu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph200
  %i.mv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mp, ptr noundef nonnull @.str.32, i64 noundef 1) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit108

bb.au:                                            ; preds = %.lr.ph200
  store i8 32, ptr %i.mt, align 1
  %i.mw = load ptr, ptr %i.ms, align 8, !tbaa !289
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store ptr %i.mx, ptr %i.ms, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit108

_ZN4llvm11raw_ostreamlsEPKc.exit108:              ; preds = %bb.at, %bb.au
  %.0.i.i107 = phi ptr [ %i.mv, %bb.at ], [ %i.mp, %bb.au ]
  %i.my = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i107, i64 noundef %i.mo) #19 ; 0 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0125.0199, i64 8 ; 2 uses
  %.not175 = icmp eq ptr %i.mz, %i.md
  br i1 %.not175, label %._crit_edge201, label %.lr.ph200

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit105, %._crit_edge197, %._crit_edge
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.na, i8 0, i64 64, i1 false), !alias.scope !519
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.nb, ptr %0, align 8, !tbaa !39, !alias.scope !519
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.nc, align 8, !tbaa !488, !alias.scope !519
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.nd, align 4, !tbaa !489, !alias.scope !519
  store i8 1, ptr %i.na, align 8, !tbaa !36, !alias.scope !519
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.nf, ptr %i.ne, align 8, !tbaa !39, !alias.scope !519
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ng, align 8, !tbaa !488, !alias.scope !519
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.nh, align 8, !tbaa !36, !alias.scope !519
  %i.ni = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !329 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit
  %i.nl = load ptr, ptr %27, align 8, !tbaa !330
  %i.nm = zext i32 %i.nj to i64                   ; 2 uses
  %i.nn = shl nuw nsw i64 %i.nm, 3
  %i.no = add nuw nsw i64 %i.nm, 31
  %i.np = lshr i64 %i.no, 3
  %i.nq = and i64 %i.np, 1073741820
  %i.nr = add nuw nsw i64 %i.nq, %i.nn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nl, i64 noundef %i.nr, i64 noundef 8) #19
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit: ; preds = %.loopexit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !329 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit109, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit
  %i.nv = load ptr, ptr %26, align 8, !tbaa !330
  %i.nw = zext i32 %i.nt to i64                   ; 2 uses
  %i.nx = shl nuw nsw i64 %i.nw, 3
  %i.ny = add nuw nsw i64 %i.nw, 31
  %i.nz = lshr i64 %i.ny, 3
  %i.oa = and i64 %i.nz, 1073741820
  %i.ob = add nuw nsw i64 %i.oa, %i.nx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nv, i64 noundef %i.ob, i64 noundef 8) #19
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit109

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit109: ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.oc = load ptr, ptr %i.fu, align 8, !tbaa !281
  call void @_ZNSt8_Rb_treeISt6vectorImSaImEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef %i.oc)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.od = load ptr, ptr %i.fp, align 8, !tbaa !281
  call void @_ZNSt8_Rb_treeImSt4pairIKm14AllocMatchInfoESt10_Select1stIS3_ESt4lessImESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.od)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.oe = icmp eq i32 %30, 0
  br i1 %i.oe, label %bb.az, label %.lr.ph7.preheader.i.i110

.lr.ph7.preheader.i.i110:                         ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit109
  %i.of = zext i32 %30 to i64                     ; 2 uses
  %i.og = add nuw nsw i64 %i.of, 31               ; 2 uses
  %i.oh = lshr i64 %i.og, 5
  br label %.lr.ph7.i.i111

.lr.ph7.i.i111:                                   ; preds = %._crit_edge.i.i119, %.lr.ph7.preheader.i.i110
  %indvars.iv.i.i112 = phi i64 [ 0, %.lr.ph7.preheader.i.i110 ], [ %indvars.iv.next.i.i120, %._crit_edge.i.i119 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv.i.i112
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !52 ; 2 uses
  %.not11.i2.i.i113 = icmp eq i32 %i.oj, 0
  br i1 %.not11.i2.i.i113, label %._crit_edge.i.i119, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph7.i.i111
  %indvars.iv.tr.i.i115 = trunc nuw i64 %indvars.iv.i.i112 to i32
  %i.ok = shl nuw i32 %indvars.iv.tr.i.i115, 5
  br label %bb.ax

bb.ax:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117, %.lr.ph.i.i114
  %.0.i3.i.i116 = phi i32 [ %i.oj, %.lr.ph.i.i114 ], [ %i.pb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117 ] ; 3 uses
  %i.ol = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i116, i1 true)
  %i.om = or disjoint i32 %i.ol, %i.ok
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !131 ; 2 uses
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !132
  %i.ou = zext i32 %i.oq to i64                   ; 2 uses
  %i.ov = shl nuw nsw i64 %i.ou, 4
  %i.ow = add nuw nsw i64 %i.ou, 31
  %i.ox = lshr i64 %i.ow, 3
  %i.oy = and i64 %i.ox, 1073741820
  %i.oz = add nuw nsw i64 %i.oy, %i.ov
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ot, i64 noundef %i.oz, i64 noundef 4) #19
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117: ; preds = %bb.ay, %bb.ax
  %i.pa = add i32 %.0.i3.i.i116, -1
  %i.pb = and i32 %i.pa, %.0.i3.i.i116            ; 2 uses
  %.not11.i.i.i118 = icmp eq i32 %i.pb, 0
  br i1 %.not11.i.i.i118, label %._crit_edge.i.i119, label %bb.ax, !llvm.loop !4

._crit_edge.i.i119:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i117, %.lr.ph7.i.i111
  %indvars.iv.next.i.i120 = add nuw nsw i64 %indvars.iv.i.i112, 1 ; 2 uses
  %.not.i.i.i121 = icmp eq i64 %indvars.iv.next.i.i120, %i.oh
  br i1 %.not.i.i.i121, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i122, label %.lr.ph7.i.i111, !llvm.loop !5

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i122: ; preds = %._crit_edge.i.i119
  %i.pc = shl nuw nsw i64 %i.of, 5
  %i.pd = lshr i64 %i.og, 3
  %i.pe = and i64 %i.pd, 1073741820
  %i.pf = add nuw nsw i64 %i.pe, %i.pc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fn, i64 noundef %i.pf, i64 noundef 8) #19
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_INS_7memprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i122, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEED2Ev.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i: ; preds = %bb.az, %bb.k, %bb.n, %bb.o
  %i.pg = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(508) %i.ab) #19, !inline_history !484
  br label %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm22IndexedInstrProfReaderEEclEPS1_.exit.i, %.thread168, %_ZN4llvm5ErrorD2Ev.exit58
  %i.pj = load ptr, ptr %15, align 8, !tbaa !154  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.pj, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit.sink.split.i: ; preds = %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !29
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %i.pj) #19, !inline_history !485
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN4llvm22IndexedInstrProfReaderESt14default_deleteIS1_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_22IndexedInstrProfReaderESt14default_deleteIS2_EEED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN4llvm22IndexedInstrProfReader6createERKNS_5TwineERNS_3vfs10FileSystemES3_(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14MemProfUsePass23annotateGlobalVariablesERNS_6ModuleEPKNS_7memprof18DataAccessProfDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %4 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %5 = alloca %"class.std::optional.329", align 8 ; 11 uses
  %6 = alloca %"class.std::variant", align 8      ; 4 uses
  %7 = alloca %"class.std::variant", align 8      ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL31AnnotateStaticDataSectionPrefix, i64 120), align 8, !tbaa !94, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm6Module13addModuleFlagENS0_15ModFlagBehaviorENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1288) %1, i32 noundef 2, ptr nonnull @.str.35, i64 20, i32 noundef 0) #19
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4llvm6Module13addModuleFlagENS0_15ModFlagBehaviorENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(1288) %1, i32 noundef 2, ptr nonnull @.str.35, i64 20, i32 noundef 1) #19
  %.sroa.068.088 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not8789 = icmp eq ptr %.sroa.068.088, %i.e
  br i1 %.not8789, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge32
  %.sroa.068.091 = phi ptr [ %.sroa.068.088, %.lr.ph ], [ %.sroa.068.0, %.critedge32 ] ; 3 uses
  %.02390 = phi i1 [ false, %.lr.ph ], [ %.3, %.critedge32 ] ; 7 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.068.091, i64 -64 ; 4 uses
  %i.o = call noundef zeroext i8 @_ZN4llvm7memprof17getAnnotationKindERKNS_14GlobalVariableE(ptr noundef nonnull align 8 dereferenceable(89) %i.n) #19
  %.not29 = icmp eq i8 %i.o, 0
  br i1 %.not29, label %bb.g, label %.critedge32

bb.g:                                             ; preds = %bb.f
  %i.p = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #19 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm34AnnotateStringLiteralSectionPrefixE, i64 120), align 8, !tbaa !94, !range !37, !noundef !38
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i = icmp ult i64 %i.r, 4                  ; 2 uses
  %or.cond = select i1 %i.u, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread79, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.g
  %i.v = load i32, ptr %i.q, align 1
  %i.w = icmp ne i32 %i.v, 1920234286
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge32, label %_ZNK4llvm9StringRef11starts_withES0_.exit38

_ZNK4llvm9StringRef11starts_withES0_.exit.thread79: ; preds = %bb.g
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80, label %_ZNK4llvm9StringRef11starts_withES0_.exit38

_ZNK4llvm9StringRef11starts_withES0_.exit38:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread79
  %i.z = load i32, ptr %i.q, align 1
  %i.aa = icmp ne i32 %i.z, 1920234286
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80

_ZNK4llvm9StringRef11starts_withES0_.exit38.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit38
  %i.ad = getelementptr i8, ptr %.sroa.068.091, i64 -96
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !66 ; 4 uses
  %.not.i39 = icmp eq ptr %.val, null
  br i1 %.not.i39, label %.critedge32, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread
  %i.ae = load i8, ptr %.val, align 8, !tbaa !61
  %i.af = add i8 %i.ae, -5
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.af, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.critedge32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call noundef zeroext i1 @_ZNK4llvm22ConstantDataSequential8isStringEj(ptr noundef nonnull align 8 dereferenceable(40) %.val, i32 noundef 8) #19
  br i1 %i.ag, label %_ZNRSt8optionalImE5valueEv.exit, label %.critedge32

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.i
  %i.ah = call { ptr, i64 } @_ZNK4llvm22ConstantDataSequential16getRawDataValuesEv(ptr noundef nonnull align 8 dereferenceable(40) %.val) #19 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %3) #19
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr %i.ai, i64 %i.aj) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr noundef nonnull align 1 dereferenceable(16) %4) #19
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80

_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread79, %_ZNRSt8optionalImE5valueEv.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit38
  %.sroa.052.0 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i, %_ZNRSt8optionalImE5valueEv.exit ], [ %i.s, %_ZNK4llvm9StringRef11starts_withES0_.exit38 ], [ %i.s, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread79 ] ; 2 uses
  %.sroa.7.0 = phi i8 [ 1, %_ZNRSt8optionalImE5valueEv.exit ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit38 ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread79 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %.sroa.052.0, ptr %6, align 8
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_ZNK4llvm7memprof18DataAccessProfData16getProfileRecordESt7variantIJNS_9StringRefEmEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.329") align 8 %5, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull byval(%"class.std::variant") align 8 %6) #19
  %i.ak = load i8, ptr %i.g, align 8, !tbaa !522, !range !37, !noundef !38
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i64, ptr %i.h, align 8
  %.not30 = icmp ne i64 %i.am, 0
  %or.cond.not = select i1 %i.al, i1 %.not30, i1 false
  br i1 %or.cond.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80
  %i.an = call noundef zeroext i1 @_ZN4llvm12GlobalObject16setSectionPrefixENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %i.n, ptr nonnull @.str.37, i64 3) #19
  %i.ao = or i1 %.02390, %i.an
  br label %bb.m

bb.k:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit38.thread80
  store i64 %.sroa.052.0, ptr %7, align 8
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx55, align 8
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx59, align 8
  %i.ap = call noundef zeroext i1 @_ZNK4llvm7memprof18DataAccessProfData17isKnownColdSymbolESt7variantIJNS_9StringRefEmEE(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull byval(%"class.std::variant") align 8 %7) #19
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = call noundef zeroext i1 @_ZN4llvm12GlobalObject16setSectionPrefixENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %i.n, ptr nonnull @.str.38, i64 8) #19 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.124 = phi i1 [ %i.ao, %bb.j ], [ true, %bb.l ], [ %.02390, %bb.k ]
  %i.ar = load i8, ptr %i.g, align 8, !tbaa !522, !range !37, !noundef !38
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.g, align 8, !tbaa !522
  br i1 %i.as, label %bb.n, label %_ZNSt14_Optional_baseIN4llvm7memprof20DataAccessProfRecordELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !41  ; 3 uses
  %i.au = load i32, ptr %i.j, align 8, !tbaa !121 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7memprof14SourceLocationELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.n
  %i.av = zext i32 %i.au to i64
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.av, 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

end_hunk_2
