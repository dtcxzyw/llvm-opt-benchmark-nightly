Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFImportFile?download=true
inline.NumInlined: 1320
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm6object14COFFImportFile15printSymbolNameERNS_11raw_ostreamENS0_11DataRefImplE:bb.a
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.be, i64 noundef %i.bf) #17 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit18

bb.q:                                             ; preds = %bb.o
  %.not.i15 = icmp eq i64 %i.bf, 0
  br i1 %.not.i15, label %_ZN4llvm5ErrorD2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.be, i64 %i.bf, i1 false)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !99
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bf
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !99
  br label %_ZN4llvm5ErrorD2Ev.exit18

_ZN4llvm5ErrorD2Ev.exit18:                        ; preds = %bb.r, %bb.q, %bb.p
  store ptr null, ptr %0, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit18
  ret void
}

declare void @_ZN4llvm31getArm64ECDemangledFunctionNameB5cxx11ENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object18writeImportLibraryENS_9StringRefES1_NS_8ArrayRefINS0_15COFFShortExportEEENS_4COFF12MachineTypesEbS4_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %8) local_unnamed_addr #1 {
bb.a:
  %9 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %15 = alloca %"class.std::vector", align 8      ; 15 uses
  %16 = alloca %"class.llvm::object::(anonymous namespace)::ObjectFactory", align 8 ; 29 uses
  %17 = alloca %"struct.llvm::NewArchiveMember", align 8 ; 10 uses
  %18 = alloca %"struct.llvm::NewArchiveMember", align 8 ; 10 uses
  %19 = alloca %"struct.llvm::NewArchiveMember", align 8 ; 10 uses
  %20 = alloca %class.anon, align 8               ; 8 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %22 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  store i32 %6, ptr %i.a, align 4, !tbaa !33
  %i.c = zext i1 %7 to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !34
  switch i32 %6, label %bb.c [
    i32 42574, label %bb.b
    i32 42561, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i32 42561, ptr %i.a, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 43620, %bb.b ], [ %6, %bb.a ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.d = tail call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %1, i64 %2, i32 noundef 0) #17 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  store i32 %.0, ptr %16, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 4, ptr %i.k, align 4, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 7 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !48
  store ptr %i.e, ptr %i.m, align 8, !tbaa !18
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 9 uses
  store i64 %i.f, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.q = call { ptr, i64 } @_ZN4llvm3sys4path4stemENS_9StringRefENS1_5StyleE(ptr %i.e, i64 %i.f, i32 noundef 0) #17 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  store ptr %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  store i64 %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr @.str.11, ptr %12, align 8, !alias.scope !142
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 20, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !17, !alias.scope !142
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.r, ptr %i.v, align 8, !alias.scope !142
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.t, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !17, !alias.scope !142
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 5, ptr %i.w, align 8, !tbaa !51, !alias.scope !142
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 5, ptr %i.x, align 1, !tbaa !52, !alias.scope !142
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.u, ptr noundef nonnull align 8 dereferenceable(34) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %.sroa.0.0.copyload.i = load ptr, ptr %i.p, align 8, !tbaa !18
  %.sroa.2.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !16
  store ptr @.str.12, ptr %14, align 8, !alias.scope !143
  %.sroa.23.0..sroa_idx.i.i.i18.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %.sroa.23.0..sroa_idx.i.i.i18.i, align 8, !tbaa !17, !alias.scope !143
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.y, align 8, !alias.scope !143
  %.sroa.2.0..sroa_idx.i.i.i19.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i19.i, align 8, !tbaa !17, !alias.scope !143
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 5, ptr %i.z, align 8, !tbaa !51, !alias.scope !143
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 5, ptr %i.aa, align 1, !tbaa !52, !alias.scope !143
  store ptr %14, ptr %13, align 8, !alias.scope !144
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.13, ptr %i.ab, align 8, !alias.scope !144
  %.sroa.2.0..sroa_idx.i.i.i34.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 16, ptr %.sroa.2.0..sroa_idx.i.i.i34.i, align 8, !tbaa !17, !alias.scope !144
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !51, !alias.scope !144
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 5, ptr %i.ad, align 1, !tbaa !52, !alias.scope !144
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 152 ; 4 uses
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.af = load i32, ptr %16, align 8, !tbaa !141, !noalias !145 ; 2 uses
  %i.ag = trunc i32 %i.af to i16
  %i.ah = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.ai, 151
  switch i32 %i.af, label %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i [
    i32 34404, label %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i
    i32 43620, label %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i
    i32 42574, label %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i
    i32 42561, label %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i
  ]

_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i: ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i

_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i: ; preds = %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i, %bb.c
  %i.ak = phi i16 [ 0, %_ZNK4llvm6object12_GLOBAL__N_113ObjectFactory7is64BitEv.exit.thread.i ], [ 256, %bb.c ]
  %i.al = call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #19, !noalias !145 ; 9 uses
  store i16 %i.ag, ptr %i.al, align 1, !noalias !145
  %.sroa.4115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 2, ptr %.sroa.4115.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.5116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 0, ptr %.sroa.5116.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.6117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.aj, ptr %.sroa.6117.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.7118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 7, ptr %.sroa.7118.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.8119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i16 0, ptr %.sroa.8119.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.9120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  store i16 %i.ak, ptr %.sroa.9120.0..sroa_idx.i, align 1, !noalias !145
  %i.am = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, 1
  %i.ap = call noalias noundef nonnull dereferenceable(100) ptr @_Znwm(i64 noundef 100) #19, !noalias !145 ; 17 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ap, ptr noundef nonnull align 1 dereferenceable(20) %i.al, i64 20, i1 false), !noalias !145
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 20) #18, !noalias !145
  store <8 x i8> <i8 46, i8 105, i8 100, i8 97, i8 116, i8 97, i8 36, i8 50>, ptr %i.aq, align 1, !noalias !145
  %.sroa.1188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store <4 x i32> <i32 0, i32 0, i32 20, i32 100>, ptr %.sroa.1188.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.1592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  store i32 120, ptr %.sroa.1592.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.1693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 0, ptr %.sroa.1693.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.1794.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i16 3, ptr %.sroa.1794.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.1895.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 54
  store i16 0, ptr %.sroa.1895.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.1996.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i32 -1070596032, ptr %.sroa.1996.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.2097.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  store <8 x i8> <i8 46, i8 105, i8 100, i8 97, i8 116, i8 97, i8 36, i8 54>, ptr %.sroa.2097.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.28105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  store i32 0, ptr %.sroa.28105.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.29106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store i32 0, ptr %.sroa.29106.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.30107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 76
  store i32 %i.ao, ptr %.sroa.30107.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.31108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 150, ptr %.sroa.31108.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.32109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  %.sroa.36113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.32109.0..sroa_idx.i, i8 0, i64 12, i1 false), !noalias !145
  store i32 -1071644608, ptr %.sroa.36113.0..sroa_idx.i, align 1, !noalias !145
  %i.ar = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #19, !noalias !145 ; 22 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.as, i8 0, i64 20, i1 false), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.ar, ptr noundef nonnull align 1 dereferenceable(100) %i.ap, i64 100, i1 false), !noalias !145
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 100) #18, !noalias !145
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 200 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.au, i8 0, i64 20, i1 false), !noalias !145
  %i.av = load i32, ptr %16, align 8, !tbaa !141, !noalias !145
  switch i32 %i.av, label %bb.d [
    i32 34404, label %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i
    i32 358, label %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread142.i
    i32 332, label %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread135.i
    i32 452, label %bb.e
    i32 43620, label %bb.e
    i32 42561, label %bb.e
    i32 42574, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i
  unreachable

_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread135.i: ; preds = %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i
  br label %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i

_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread142.i: ; preds = %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i
  br label %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i

bb.e:                                             ; preds = %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i, %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i, %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i, %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i
  br label %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i

_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i: ; preds = %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i, %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread135.i, %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread142.i, %bb.e
  %.0.i23132.i = phi i16 [ 3, %_ZN4llvm6objectL6appendINS0_33coff_import_directory_table_entryEEEvRSt6vectorIhSaIhEERKT_.exit.i ], [ 2, %bb.e ], [ 7, %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread135.i ], [ 34, %_ZN4llvm6objectL19getImgRelRelocationENS_4COFF12MachineTypesE.exit24.thread142.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 150 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 12, ptr %i.ax, align 1, !noalias !145
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 124
  store i32 2, ptr %.sroa.471.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  store i16 %.0.i23132.i, ptr %.sroa.572.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.673.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 130
  store i32 0, ptr %.sroa.673.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.7.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 134
  store i32 3, ptr %.sroa.7.0..sroa_idx74.i, align 1, !noalias !145
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 138
  store i16 %.0.i23132.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 140
  store i32 16, ptr %.sroa.9.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  store i32 4, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 148
  store i16 %.0.i23132.i, ptr %.sroa.11.0..sroa_idx.i, align 1, !noalias !145
  %i.ay = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145 ; 9 uses
  %i.az = add i64 %i.ay, 1                        ; 6 uses
  %i.ba = icmp ult i64 %i.ay, -151
  br i1 %i.ba, label %23, label %bb.l

23:                                               ; preds = %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %.not.i166 = icmp eq i64 %i.az, 0
  br i1 %.not.i166, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %23
  %.not23.i167 = icmp ugt i64 %i.az, 50
  br i1 %.not23.i167, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.aw, align 1, !tbaa !17, !noalias !145
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 151 ; 2 uses
  %i.bc = icmp eq i64 %i.ay, 0
  br i1 %i.bc, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.az
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.ay, i1 false), !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.f
  %i.be = icmp ugt i64 %i.az, 9223372036854775657
  br i1 %i.be, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170: ; preds = %bb.i
  %.sroa.speculated.i.i171 = call i64 @llvm.umax.i64(i64 %i.az, i64 150)
  %i.bf = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i.i171, i64 9223372036854775657)
  %i.bg = add nuw nsw i64 %i.bf, 150              ; 2 uses
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19, !noalias !145 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 150 ; 2 uses
  store i8 0, ptr %i.bi, align 1, !tbaa !17, !noalias !145
  %i.bj = icmp eq i64 %i.ay, 0
  br i1 %i.bj, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 151
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bk, i8 0, i64 %i.ay, i1 false), !noalias !145
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(150) %i.bh, ptr noundef nonnull align 1 dereferenceable(150) %i.ar, i64 150, i1 false), !noalias !145
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 200) #18, !noalias !145
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  %.pre158.i.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %i.bn = add nsw i64 %i.ay, 151                  ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 150
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bn
  %spec.select = select i1 %i.bo, ptr %i.bp, ptr %i.aw
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172, %23, %bb.h, %bb.g
  %.sroa.83.4 = phi ptr [ %i.bm, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.at, %bb.l ], [ %i.at, %bb.g ], [ %i.at, %bb.h ], [ %i.at, %23 ] ; 3 uses
  %.sroa.41.4 = phi ptr [ %i.bl, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %spec.select, %bb.l ], [ %i.bb, %bb.g ], [ %i.bd, %bb.h ], [ %i.aw, %23 ] ; 6 uses
  %.sroa.0307.4 = phi ptr [ %i.bh, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.ar, %bb.l ], [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %23 ] ; 8 uses
  %24 = phi i64 [ %.pre158.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.ay, %bb.l ], [ 0, %bb.g ], [ %i.ay, %bb.h ], [ -1, %23 ]
  %.pre-phi387 = ptrtoint ptr %.sroa.0307.4 to i64 ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.0307.4, i64 150 ; 2 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !15, !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.br, i64 %24, i1 false), !noalias !145
  %i.bs = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !17, !noalias !145
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28, !noalias !145
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = add i32 %i.bw, 5
  %i.by = add i32 %i.bw, 30
  %i.bz = ptrtoint ptr %.sroa.41.4 to i64         ; 2 uses
  %i.ca = sub i64 %i.bz, %.pre-phi387             ; 9 uses
  %i.cb = icmp ult i64 %i.ca, -126
  br i1 %i.cb, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.cc = ptrtoint ptr %.sroa.83.4 to i64         ; 2 uses
  %i.cd = sub i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = xor i64 %i.ca, 9223372036854775807      ; 2 uses
  %i.cg = icmp ule i64 %i.cd, %i.cf
  call void @llvm.assume(i1 %i.cg)
  %.not23.i59.i = icmp ult i64 %i.cd, 126
  br i1 %.not23.i59.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %.sroa.41.4, i64 126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %.sroa.41.4, i8 0, i64 126, i1 false), !noalias !145
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ci = icmp samesign ult i64 %i.cf, 126
  br i1 %i.ci, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i: ; preds = %bb.o
  %.sroa.speculated.i.i61.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 126)
  %i.cj = add nuw i64 %.sroa.speculated.i.i61.i, %i.ca
  %i.ck = call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807) ; 2 uses
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #19, !noalias !145 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ca ; 2 uses
  %.not28.i62.i = icmp eq ptr %.sroa.41.4, %.sroa.0307.4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.cm, i8 0, i64 126, i1 false), !noalias !145
  br i1 %.not28.i62.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %.sroa.0307.4, i64 %i.ca, i1 false), !noalias !145
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i
  %i.cn = sub i64 %i.cc, %.pre-phi387
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0307.4, i64 noundef %i.cn) #18, !noalias !145
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 126
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %.pre388 = ptrtoint ptr %i.cl to i64
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.cq = getelementptr i8, ptr %.sroa.0307.4, i64 %i.ca
  %i.cr = getelementptr i8, ptr %i.cq, i64 126    ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %.sroa.41.4, %i.cr
  %spec.select357 = select i1 %.not.i.i.i29.i, ptr %.sroa.41.4, ptr %i.cr
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i, %bb.n
  %.pre-phi389 = phi i64 [ %.pre-phi387, %bb.r ], [ %.pre388, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.pre-phi387, %bb.n ] ; 4 uses
  %.sroa.83.5 = phi ptr [ %.sroa.83.4, %bb.r ], [ %i.cp, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.sroa.83.4, %bb.n ] ; 5 uses
  %.sroa.41.5 = phi ptr [ %spec.select357, %bb.r ], [ %i.co, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %i.ch, %bb.n ] ; 8 uses
  %.sroa.0307.5 = phi ptr [ %.sroa.0307.4, %bb.r ], [ %i.cl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.sroa.0307.4, %bb.n ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0307.5, i64 %i.ca ; 35 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.cs, align 1, !noalias !145
  store i32 4, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i16 1, ptr %.sroa.13.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 14
  store i16 0, ptr %.sroa.14.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <8 x i8> <i8 2, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i8 36, ptr %.sroa.23.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 25
  store i8 50, ptr %.sroa.24.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 26
  store i32 0, ptr %.sroa.25.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 30
  store i16 1, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i16 0, ptr %.sroa.27.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 34
  store <8 x i8> <i8 104, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.28.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 42
  store i8 36, ptr %.sroa.36.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 43
  store i8 54, ptr %.sroa.37.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  store i32 0, ptr %.sroa.38.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i16 2, ptr %.sroa.39.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 50
  store i16 0, ptr %.sroa.40.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  store <8 x i8> <i8 3, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.41.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 60
  store i8 36, ptr %.sroa.49.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 61
  store i8 52, ptr %.sroa.50.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 62
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 70
  store i64 0, ptr %.sroa.51.0..sroa_idx.i, align 1, !noalias !145
  store <8 x i8> <i8 104, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.54.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 78
  store i8 36, ptr %.sroa.62.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 79
  store i8 53, ptr %.sroa.63.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 1, !noalias !145
  store i8 104, ptr %.sroa.67.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 89
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.68.0..sroa_idx.i, i8 0, i64 5, i1 false), !noalias !145
  store i32 %i.bx, ptr %.sroa.73.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 98
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 106
  store i64 0, ptr %.sroa.78.0..sroa_idx.i, align 1, !noalias !145
  store i8 2, ptr %.sroa.81.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.82.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 107
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.82.0..sroa_idx.i, i8 0, i64 5, i1 false), !noalias !145
  store i32 %i.by, ptr %.sroa.87.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 116
  %.sroa.95.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 124
  store i64 0, ptr %.sroa.92.0..sroa_idx.i, align 1, !noalias !145
  store i8 2, ptr %.sroa.95.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 125
  store i8 0, ptr %.sroa.96.0..sroa_idx.i, align 1, !noalias !145
  %i.ct = load ptr, ptr %i.u, align 8, !tbaa !27, !noalias !145 ; 7 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = load i64, ptr %i.bu, align 8, !tbaa !28, !noalias !145 ; 15 uses
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !27, !noalias !145 ; 7 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 160 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !28, !noalias !145 ; 14 uses
  %i.da = ptrtoint ptr %.sroa.41.5 to i64         ; 4 uses
  %i.db = sub i64 %i.da, %.pre-phi389             ; 13 uses
  %i.dc = add i64 %i.db, 4                        ; 2 uses
  %i.dd = add i64 %i.db, 5
  %i.de = add i64 %i.dd, %i.cv                    ; 8 uses
  %i.df = icmp ugt i64 %i.de, %i.db
  br i1 %i.df, label %bb.s, label %bb.z

bb.s:                                             ; preds = %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %i.dg = sub nuw i64 %i.de, %i.db                ; 6 uses
  %i.dh = ptrtoint ptr %.sroa.83.5 to i64         ; 2 uses
  %i.di = sub i64 %i.dh, %i.da                    ; 2 uses
  %i.dj = icmp sgt i64 %i.db, -1
  call void @llvm.assume(i1 %i.dj), !noalias !145
  %i.dk = xor i64 %i.db, 9223372036854775807      ; 2 uses
  %i.dl = icmp ule i64 %i.di, %i.dk
  call void @llvm.assume(i1 %i.dl), !noalias !145
  %.not23.i155 = icmp ult i64 %i.di, %i.dg
  br i1 %.not23.i155, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %.sroa.41.5, align 1, !tbaa !17, !noalias !145
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.41.5, i64 1 ; 2 uses
  %i.dn = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr i8, ptr %.sroa.41.5, i64 %i.dg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dm, i8 0, i64 %i.dn, i1 false), !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.dq = icmp ult i64 %i.dk, %i.dg
  br i1 %i.dq, label %bb.w, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i158

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i158: ; preds = %bb.v
  %.sroa.speculated.i.i159 = call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dg)
  %i.dr = add nuw i64 %.sroa.speculated.i.i159, %i.db
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dr, i64 9223372036854775807) ; 2 uses
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #19, !noalias !145 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.db ; 2 uses
  store i8 0, ptr %i.du, align 1, !tbaa !17, !noalias !145
  %i.dv = add nsw i64 %i.dg, -1                   ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i160, label %bb.x

bb.x:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i158
end_hunk_0
