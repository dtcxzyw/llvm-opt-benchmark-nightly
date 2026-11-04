Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/prepare-builtins?download=true
inline.NumInlined: 444
inline.NumDeleted: 319
begin_hunk_0_@_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev:bb.a
  br i1 %i.j, label %_ZN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !19
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit

_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit: ; preds = %_ZN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !38, !range !21, !noundef !22
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.v) #17
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.x) #17
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::LLVMContext", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.llvm::ErrorOr", align 8     ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 9 uses
  %8 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 2 uses
  %9 = alloca %"struct.llvm::ParserCallbacks", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %12 = alloca %"class.std::error_code", align 8  ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %i.a = call noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef %0, ptr noundef %1, ptr nonnull @.str.6, i64 41, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i64 0, ptr %i.c, align 8, !tbaa !24
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !61
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 120), ptr %5, align 8, !tbaa !19
  call void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i16 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.thread

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.not88 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not88, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.i = load ptr, ptr %.sroa.31.0.copyload.i, align 8, !tbaa !10, !noalias !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !65
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.copyload.i, i32 noundef %.sroa.0.0.copyload.i) #17, !inline_history !44
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 6 uses
  %i.m = icmp eq ptr %i.l, %i.b
  %i.n = load ptr, ptr %6, align 8, !tbaa !18     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.p, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  switch i64 %i.r, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.n, align 1, !tbaa !19
  store i8 %i.t, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.u = load i64, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !24
  %i.v = load ptr, ptr %3, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %3, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8, !tbaa !19
  store <2 x i64> %i.y, ptr %i.c, align 8, !tbaa !19
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.z = load i64, ptr %i.b, align 8, !tbaa !19
  store ptr %i.n, ptr %3, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !19
  store <2 x i64> %i.ab, ptr %i.c, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %6, align 8, !tbaa !18
  store i64 %i.z, ptr %i.o, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %6, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ac = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !24
  store i8 0, ptr %i.ac, align 1, !tbaa !19
  %i.ae = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.thread: ; preds = %bb.a, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.aj = load ptr, ptr %4, align 8, !tbaa !67
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i64 128, i1 false)
  call void @_ZN4llvm16parseBitcodeFileENS_15MemoryBufferRefERNS_11LLVMContextENS_15ParserCallbacksE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %7, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(128) %9) #17
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !69, !range !21, !noundef !22
  %i.ap = trunc nuw i8 %i.ao to i1
  store i8 0, ptr %i.am, align 8, !tbaa !69
  br i1 %i.ap, label %bb.h, label %_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i

bb.h:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef 3) #17, !inline_history !45 ; 0 uses
  br label %_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.au = load i8, ptr %i.al, align 8, !tbaa !71, !range !21, !noundef !22
  %i.av = trunc nuw i8 %i.au to i1
  store i8 0, ptr %i.al, align 8, !tbaa !71
  br i1 %i.av, label %bb.j, label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i

bb.j:                                             ; preds = %_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i32 noundef 3) #17, !inline_history !46 ; 0 uses
  br label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt14_Optional_baseISt8functionIFvPPN4llvm8MetadataEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i
  %i.az = load i8, ptr %i.ak, align 8, !tbaa !73, !range !21, !noundef !22
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !73
  br i1 %i.ba, label %bb.l, label %_ZN4llvm15ParserCallbacksD2Ev.exit

bb.l:                                             ; preds = %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZN4llvm15ParserCallbacksD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(121) %9, ptr noundef nonnull align 8 dereferenceable(121) %9, i32 noundef 3) #17, !inline_history !47 ; 0 uses
  br label %_ZN4llvm15ParserCallbacksD2Ev.exit

_ZN4llvm15ParserCallbacksD2Ev.exit:               ; preds = %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit.i, %bb.l, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !noalias !74 ; 2 uses
  %i.bg = trunc i8 %i.bf to i1
  br i1 %i.bg, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit, label %_ZN4llvm15ParserCallbacksD2Ev.exit._ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread_crit_edge

_ZN4llvm15ParserCallbacksD2Ev.exit._ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread_crit_edge: ; preds = %_ZN4llvm15ParserCallbacksD2Ev.exit
  %.pre = load ptr, ptr %7, align 8, !tbaa !76
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread

_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit: ; preds = %_ZN4llvm15ParserCallbacksD2Ev.exit
  %i.bh = load i64, ptr %7, align 8, !tbaa !78, !noalias !74 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !78, !noalias !74
  %.not89 = icmp eq i64 %i.bh, 0
  br i1 %.not89, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit
  %i.bi = inttoptr i64 %i.bh to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %i.bi, ptr %11, align 8, !tbaa !80
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %11) #17
  %i.bj = load ptr, ptr %3, align 8, !tbaa !18    ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.b
  %i.bl = load ptr, ptr %10, align 8, !tbaa !18   ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm                ; 2 uses
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19: ; preds = %bb.n
  br i1 %i.bn, label %bb.o, label %.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i14: ; preds = %bb.n
  br i1 %i.bn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  switch i64 %i.bp, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !19
  store i8 %i.br, ptr %i.bj, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bl, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17: ; preds = %bb.q, %bb.p, %bb.o
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !24
  %i.bt = load ptr, ptr %3, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !19
  %.pre.i18 = load ptr, ptr %10, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

.thread.i20:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  store ptr %i.bl, ptr %3, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !19
  store <2 x i64> %i.bw, ptr %i.c, align 8, !tbaa !19
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i14
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !19
  store ptr %i.bl, ptr %3, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !tbaa !19
  store <2 x i64> %i.bz, ptr %i.c, align 8, !tbaa !19
  %.not.i16 = icmp eq ptr %i.bj, null
  br i1 %.not.i16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i15
  store ptr %i.bj, ptr %10, align 8, !tbaa !18
  store i64 %i.bx, ptr %i.bm, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i15, %.thread.i20
  store ptr %i.bm, ptr %10, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17, %bb.r, %bb.s
  %i.ca = phi ptr [ %i.bj, %bb.r ], [ %i.bm, %bb.s ], [ %.pre.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !24
  store i8 0, ptr %i.ca, align 1, !tbaa !19
  %i.cc = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.ch = load ptr, ptr %11, align 8, !tbaa !80   ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #17, !inline_history !50
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %.pr = load ptr, ptr %7, align 8, !tbaa !81
  %.pre112 = load i8, ptr %i.be, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit25

_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread: ; preds = %_ZN4llvm15ParserCallbacksD2Ev.exit._ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread_crit_edge, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit
  %i.cm = phi ptr [ %.pre, %_ZN4llvm15ParserCallbacksD2Ev.exit._ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread_crit_edge ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit ]
  store ptr null, ptr %7, align 8, !tbaa !76
  br label %_ZN4llvm5ErrorD2Ev.exit25

_ZN4llvm5ErrorD2Ev.exit25:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread
  %i.cn = phi i8 [ %.pre112, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.bf, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread ]
  %i.co = phi ptr [ %.pr, %_ZN4llvm5ErrorD2Ev.exit ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread ] ; 5 uses
  %.0 = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.cm, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEE9takeErrorEv.exit.thread ]
  %i.cp = trunc i8 %i.cn to i1
  %.not.i1.i = icmp eq ptr %i.co, null            ; 2 uses
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit25
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i: ; preds = %bb.u
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1440) dereferenceable(1440) %i.co) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 1440) #18
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit

bb.v:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit25
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.v
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #17, !inline_history !51
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.u, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i, %bb.v, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0, %_ZN4llvm8ExpectedISt10unique_ptrINS_6ModuleESt14default_deleteIS2_EEED2Ev.exit ] ; 8 uses
  %i.ct = load i8, ptr %i.f, align 8
  %i.cu = trunc i8 %i.ct to i1
  br i1 %i.cu, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %4, align 8, !tbaa !67    ; 3 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(24) %i.cv) #17, !inline_history !52
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.w, %bb.x, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.cz = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17 ; 6 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !25    ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.da, null
  br i1 %.not.i.i26, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.y
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #17 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30 ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30 ; 2 uses
  %i.ep = ptrtoaddr ptr %i.em to i64
  %i.eq = ptrtoaddr ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp ult i64 %i.er, 31
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull @.str.9, i64 noundef 31) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.eo, ptr noundef nonnull align 1 dereferenceable(31) @.str.9, i64 31, i1 false)
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 31
  store ptr %i.ev, ptr %i.en, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.ak:                                            ; preds = %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %.1, i64 24 ; 2 uses
  %.sroa.067.097 = load ptr, ptr %i.ew, align 8, !tbaa !84 ; 2 uses
  %.not9098 = icmp eq ptr %.sroa.067.097, %i.ex
  br i1 %.not9098, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit, %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %.sroa.061.0100 = load ptr, ptr %i.ey, align 8, !tbaa !84 ; 2 uses
  %.not91101 = icmp eq ptr %.sroa.061.0100, %i.ez
  br i1 %.not91101, label %._crit_edge105, label %.lr.ph104

.lr.ph:                                           ; preds = %bb.ak, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit
  %.sroa.067.099 = phi ptr [ %.sroa.067.0, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit ], [ %.sroa.067.097, %bb.ak ] ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %.sroa.067.099, i64 -64
  %i.fb = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fa) #17
  br i1 %i.fb, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.fc = getelementptr inbounds i8, ptr %.sroa.067.099, i64 -32 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 4 uses
  %i.fe = and i32 %i.fd, 15
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.am, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit

bb.am:                                            ; preds = %bb.al
  %i.fg = or disjoint i32 %i.fd, 3
  store i32 %i.fg, ptr %i.fc, align 8
  %i.fh = and i32 %i.fd, 48
  %.not96 = icmp eq i32 %i.fh, 0
  br i1 %.not96, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i: ; preds = %bb.am
  %i.fi = or i32 %i.fd, 16387
  store i32 %i.fi, ptr %i.fc, align 8
  br label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit

_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i, %bb.am, %.lr.ph, %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.067.099, i64 8
  %.sroa.067.0 = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not90 = icmp eq ptr %.sroa.067.0, %i.ex
  br i1 %.not90, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge105:                                   ; preds = %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40, %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %.1, i64 40 ; 2 uses
  %.sroa.055.0106 = load ptr, ptr %i.fk, align 8, !tbaa !84 ; 2 uses
  %.not92107 = icmp eq ptr %.sroa.055.0106, %i.fl
  br i1 %.not92107, label %._crit_edge111, label %.lr.ph110

.lr.ph104:                                        ; preds = %._crit_edge, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40
  %.sroa.061.0102 = phi ptr [ %.sroa.061.0, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40 ], [ %.sroa.061.0100, %._crit_edge ] ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.061.0102, i64 -64
  %i.fn = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fm) #17
  br i1 %i.fn, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40, label %bb.an

bb.an:                                            ; preds = %.lr.ph104
  %i.fo = getelementptr inbounds i8, ptr %.sroa.061.0102, i64 -32 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 8            ; 4 uses
  %i.fq = and i32 %i.fp, 15
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ao, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40

bb.ao:                                            ; preds = %bb.an
  %i.fs = or disjoint i32 %i.fp, 3
  store i32 %i.fs, ptr %i.fo, align 8
  %i.ft = and i32 %i.fp, 48
  %.not95 = icmp eq i32 %i.ft, 0
  br i1 %.not95, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i39

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i39: ; preds = %bb.ao
  %i.fu = or i32 %i.fp, 16387
  store i32 %i.fu, ptr %i.fo, align 8
  br label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40

_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit40: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i39, %bb.ao, %.lr.ph104, %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.061.0102, i64 8
  %.sroa.061.0 = load ptr, ptr %i.fv, align 8, !tbaa !84 ; 2 uses
  %.not91 = icmp eq ptr %.sroa.061.0, %i.ez
  br i1 %.not91, label %._crit_edge105, label %.lr.ph104, !llvm.loop !54

._crit_edge111:                                   ; preds = %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42, %._crit_edge105
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 128), align 8, !tbaa !24 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ar, label %bb.au

.lr.ph110:                                        ; preds = %._crit_edge105, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42
  %.sroa.055.0108 = phi ptr [ %.sroa.055.0, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42 ], [ %.sroa.055.0106, %._crit_edge105 ] ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %.sroa.055.0108, i64 -48
  %i.fz = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fy) #17
  br i1 %i.fz, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph110
  %i.ga = getelementptr inbounds i8, ptr %.sroa.055.0108, i64 -16 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8            ; 4 uses
  %i.gc = and i32 %i.gb, 15
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.aq, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42

bb.aq:                                            ; preds = %bb.ap
  %i.ge = or disjoint i32 %i.gb, 3
  store i32 %i.ge, ptr %i.ga, align 8
  %i.gf = and i32 %i.gb, 48
  %.not94 = icmp eq i32 %i.gf, 0
  br i1 %.not94, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i41

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i41: ; preds = %bb.aq
  %i.gg = or i32 %i.gb, 16387
  store i32 %i.gg, ptr %i.ga, align 8
  br label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42

_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit42: ; preds = %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i41, %bb.aq, %.lr.ph110, %bb.ap
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.055.0108, i64 8
  %.sroa.055.0 = load ptr, ptr %i.gh, align 8, !tbaa !84 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.055.0, %i.fl
  br i1 %.not92, label %._crit_edge111, label %.lr.ph110, !llvm.loop !55

bb.ar:                                            ; preds = %._crit_edge111
  %i.gi = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !30 ; 2 uses
  %i.gn = ptrtoaddr ptr %i.gk to i64
  %i.go = ptrtoaddr ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp ult i64 %i.gp, 15
  br i1 %i.gq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull @.str.10, i64 noundef 15) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.gm, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, i64 15, i1 false)
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 15
  store ptr %i.gt, ptr %i.gl, align 8, !tbaa !30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.au:                                            ; preds = %._crit_edge111
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 0, ptr %12, align 8, !tbaa !87
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #19
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !88
  %i.gw = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #20 ; 7 uses
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 120), align 8, !tbaa !18
  call void @_ZN4llvm14ToolOutputFileC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(152) %i.gw, ptr %i.gx, i64 %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0) #17
  %i.gy = load i32, ptr %12, align 8, !tbaa !87
  %.not93 = icmp eq i32 %i.gy, 0
  br i1 %.not93, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gz = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !88, !noalias !89 ; 2 uses
  %i.hb = load i32, ptr %12, align 8, !tbaa !87, !noalias !89
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !10, !noalias !89
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !89
  call void %i.he(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i32 noundef %i.hb) #17, !inline_history !44
  %i.hf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.hg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %i.hf, i8 noundef signext 10) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @exit(i32 noundef 1) #21
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !98
  call void @_ZN4llvm18WriteBitcodeToFileERKNS_6ModuleERNS_11raw_ostreamEbPKNS_18ModuleSummaryIndexEbPSt5arrayIjLm5EE(ptr noundef nonnull align 8 dereferenceable(1440) %.1, ptr noundef nonnull align 8 dereferenceable(48) %i.hi, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #17
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 1, ptr %i.hj, align 8, !tbaa !99
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 136 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !100, !range !21, !noundef !22
  %i.hm = trunc nuw i8 %i.hl to i1
  store i8 0, ptr %i.hk, align 8, !tbaa !100
  br i1 %i.hm, label %bb.ax, label %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  call void @_ZN4llvm14raw_fd_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(104) %i.hn) #17
  br label %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aw, %bb.ax
  call void @_ZN4llvm16CleanupInstallerD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(152) %i.gw) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 152) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.at, %bb.as, %bb.aj, %bb.ai, %bb.ag, %bb.af, %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit
  %.012 = phi i32 [ 1, %bb.aj ], [ 0, %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.at ], [ 1, %bb.ai ], [ 1, %bb.as ]
  %i.ho = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.b
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.hq = load i64, ptr %i.b, align 8, !tbaa !19
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN4llvm13llvm_shutdownEv() #17
  call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.012
}

declare void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef, ptr noundef, ptr, i64, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind writable sret(%"class.llvm::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i16) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5 align 2

declare void @_ZN4llvm16parseBitcodeFileENS_15MemoryBufferRefERNS_11LLVMContextENS_15ParserCallbacksE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr nofreeobj noundef align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.a, i64 noundef %i.c) #17
  ret ptr %i.d
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm14ToolOutputFileC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(152), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !30
  store i8 %1, ptr %i.b, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare void @_ZN4llvm18WriteBitcodeToFileERKNS_6ModuleERNS_11raw_ostreamEbPKNS_18ModuleSummaryIndexEbPSt5arrayIjLm5EE(ptr noundef nonnull align 8 dereferenceable(1440), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !18
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.q, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm13llvm_shutdownEv() local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4llvm2cl11initializerIA2_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !22 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !23
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !34
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.g, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
end_hunk_1
