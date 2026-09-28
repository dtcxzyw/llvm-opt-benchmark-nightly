Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFImportFile?download=true
inline.NumInlined: 1320
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm6object18writeImportLibraryENS_9StringRefES1_NS_8ArrayRefINS0_15COFFShortExportEEENS_4COFF12MachineTypesEbS4_:bb.a
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
  br i1 %i.ba, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %.not.i166 = icmp eq i64 %i.az, 0
  br i1 %.not.i166, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not23.i167 = icmp ugt i64 %i.az, 50
  br i1 %.not23.i167, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.aw, align 1, !tbaa !17, !noalias !145
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 151 ; 2 uses
  %i.bc = icmp eq i64 %i.ay, 0
  br i1 %i.bc, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.az
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.ay, i1 false), !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.g
  %i.be = icmp ugt i64 %i.az, 9223372036854775657
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170: ; preds = %bb.j
  %.sroa.speculated.i.i171 = call i64 @llvm.umax.i64(i64 %i.az, i64 150)
  %i.bf = call i64 @llvm.umin.i64(i64 %.sroa.speculated.i.i171, i64 9223372036854775657)
  %i.bg = add nuw nsw i64 %i.bf, 150              ; 2 uses
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19, !noalias !145 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 150 ; 2 uses
  store i8 0, ptr %i.bi, align 1, !tbaa !17, !noalias !145
  %23 = icmp eq i64 %i.ay, 0
  br i1 %23, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172, label %24

24:                                               ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170
  %25 = getelementptr inbounds nuw i8, ptr %i.bh, i64 151
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %25, i8 0, i64 %i.ay, i1 false), !noalias !145
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i170, %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(150) %i.bh, ptr noundef nonnull align 1 dereferenceable(150) %i.ar, i64 150, i1 false), !noalias !145
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 200) #18, !noalias !145
  %26 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  %27 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  %.pre158.i.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %_ZN4llvm6objectL6appendIA3_NS0_15coff_relocationEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %i.bj = add nsw i64 %i.ay, 151                  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 150
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bj
  %spec.select = select i1 %i.bk, ptr %i.bl, ptr %i.aw
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172, %bb.f, %bb.i, %bb.h
  %.sroa.83.4 = phi ptr [ %27, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.at, %bb.l ], [ %i.at, %bb.h ], [ %i.at, %bb.i ], [ %i.at, %bb.f ] ; 3 uses
  %.sroa.41.4 = phi ptr [ %26, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %spec.select, %bb.l ], [ %i.bb, %bb.h ], [ %i.bd, %bb.i ], [ %i.aw, %bb.f ] ; 6 uses
  %.sroa.0307.4 = phi ptr [ %i.bh, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.ar, %bb.l ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.f ] ; 8 uses
  %i.bm = phi i64 [ %.pre158.i.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i172 ], [ %i.ay, %bb.l ], [ 0, %bb.h ], [ %i.ay, %bb.i ], [ -1, %bb.f ]
  %.pre-phi387 = ptrtoint ptr %.sroa.0307.4 to i64 ; 4 uses
  %i.bn = getelementptr i8, ptr %.sroa.0307.4, i64 150 ; 2 uses
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !15, !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.bm, i1 false), !noalias !145
  %i.bp = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19, !noalias !145
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !17, !noalias !145
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28, !noalias !145
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = add i32 %i.bt, 5
  %i.bv = add i32 %i.bt, 30
  %i.bw = ptrtoint ptr %.sroa.41.4 to i64         ; 2 uses
  %i.bx = sub i64 %i.bw, %.pre-phi387             ; 9 uses
  %i.by = icmp ult i64 %i.bx, -126
  br i1 %i.by, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.bz = ptrtoint ptr %.sroa.83.4 to i64         ; 2 uses
  %i.ca = sub i64 %i.bz, %i.bw                    ; 2 uses
  %i.cb = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = xor i64 %i.bx, 9223372036854775807      ; 2 uses
  %i.cd = icmp ule i64 %i.ca, %i.cc
  call void @llvm.assume(i1 %i.cd)
  %.not23.i59.i = icmp ult i64 %i.ca, 126
  br i1 %.not23.i59.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr i8, ptr %.sroa.41.4, i64 126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %.sroa.41.4, i8 0, i64 126, i1 false), !noalias !145
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cf = icmp samesign ult i64 %i.cc, 126
  br i1 %i.cf, label %bb.p, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i: ; preds = %bb.o
  %.sroa.speculated.i.i61.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 126)
  %i.cg = add nuw i64 %.sroa.speculated.i.i61.i, %i.bx
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cg, i64 9223372036854775807) ; 2 uses
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #19, !noalias !145 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bx ; 2 uses
  %.not28.i62.i = icmp eq ptr %.sroa.41.4, %.sroa.0307.4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.cj, i8 0, i64 126, i1 false), !noalias !145
  br i1 %.not28.i62.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.sroa.0307.4, i64 %i.bx, i1 false), !noalias !145
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i: ; preds = %bb.q, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i60.i
  %i.ck = sub i64 %i.bz, %.pre-phi387
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0307.4, i64 noundef %i.ck) #18, !noalias !145
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 126
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  %.pre388 = ptrtoint ptr %i.ci to i64
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.cn = getelementptr i8, ptr %.sroa.0307.4, i64 %i.bx
  %i.co = getelementptr i8, ptr %i.cn, i64 126    ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %.sroa.41.4, %i.co
  %spec.select357 = select i1 %.not.i.i.i29.i, ptr %.sroa.41.4, ptr %i.co
  br label %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i

_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i, %bb.n
  %.pre-phi389 = phi i64 [ %.pre-phi387, %bb.r ], [ %.pre388, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.pre-phi387, %bb.n ] ; 4 uses
  %.sroa.83.5 = phi ptr [ %.sroa.83.4, %bb.r ], [ %i.cm, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.sroa.83.4, %bb.n ] ; 5 uses
  %.sroa.41.5 = phi ptr [ %spec.select357, %bb.r ], [ %i.cl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %i.ce, %bb.n ] ; 8 uses
  %.sroa.0307.5 = phi ptr [ %.sroa.0307.4, %bb.r ], [ %i.ci, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i65.i ], [ %.sroa.0307.4, %bb.n ] ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0307.5, i64 %i.bx ; 35 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 0, ptr %i.cp, align 1, !noalias !145
  store i32 4, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 0, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i16 1, ptr %.sroa.13.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 14
  store i16 0, ptr %.sroa.14.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <8 x i8> <i8 2, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i8 36, ptr %.sroa.23.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 25
  store i8 50, ptr %.sroa.24.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 26
  store i32 0, ptr %.sroa.25.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 30
  store i16 1, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i16 0, ptr %.sroa.27.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 34
  store <8 x i8> <i8 104, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.28.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 42
  store i8 36, ptr %.sroa.36.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 43
  store i8 54, ptr %.sroa.37.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 44
  store i32 0, ptr %.sroa.38.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i16 2, ptr %.sroa.39.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 50
  store i16 0, ptr %.sroa.40.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  store <8 x i8> <i8 3, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.41.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  store i8 36, ptr %.sroa.49.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 61
  store i8 52, ptr %.sroa.50.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 62
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 70
  store i64 0, ptr %.sroa.51.0..sroa_idx.i, align 1, !noalias !145
  store <8 x i8> <i8 104, i8 0, i8 46, i8 105, i8 100, i8 97, i8 116, i8 97>, ptr %.sroa.54.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 78
  store i8 36, ptr %.sroa.62.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 79
  store i8 53, ptr %.sroa.63.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 1, !noalias !145
  store i8 104, ptr %.sroa.67.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 89
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.68.0..sroa_idx.i, i8 0, i64 5, i1 false), !noalias !145
  store i32 %i.bu, ptr %.sroa.73.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 98
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 106
  store i64 0, ptr %.sroa.78.0..sroa_idx.i, align 1, !noalias !145
  store i8 2, ptr %.sroa.81.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.82.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 107
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.82.0..sroa_idx.i, i8 0, i64 5, i1 false), !noalias !145
  store i32 %i.bv, ptr %.sroa.87.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 116
  %.sroa.95.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 124
  store i64 0, ptr %.sroa.92.0..sroa_idx.i, align 1, !noalias !145
  store i8 2, ptr %.sroa.95.0..sroa_idx.i, align 1, !noalias !145
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 125
  store i8 0, ptr %.sroa.96.0..sroa_idx.i, align 1, !noalias !145
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !27, !noalias !145 ; 7 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = load i64, ptr %i.br, align 8, !tbaa !28, !noalias !145 ; 15 uses
  %i.ct = load ptr, ptr %i.ae, align 8, !tbaa !27, !noalias !145 ; 7 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 160 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28, !noalias !145 ; 14 uses
  %i.cx = ptrtoint ptr %.sroa.41.5 to i64         ; 4 uses
  %i.cy = sub i64 %i.cx, %.pre-phi389             ; 13 uses
  %i.cz = add i64 %i.cy, 4                        ; 2 uses
  %i.da = add i64 %i.cy, 5
  %i.db = add i64 %i.da, %i.cs                    ; 8 uses
  %i.dc = icmp ugt i64 %i.db, %i.cy
  br i1 %i.dc, label %bb.s, label %bb.z

bb.s:                                             ; preds = %_ZN4llvm6objectL6appendIA7_NS0_11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvRSt6vectorIhSaIhEERKT_.exit.i
  %i.dd = sub nuw i64 %i.db, %i.cy                ; 6 uses
  %i.de = ptrtoint ptr %.sroa.83.5 to i64         ; 2 uses
  %i.df = sub i64 %i.de, %i.cx                    ; 2 uses
  %i.dg = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.dg), !noalias !145
  %i.dh = xor i64 %i.cy, 9223372036854775807      ; 2 uses
  %i.di = icmp ule i64 %i.df, %i.dh
  call void @llvm.assume(i1 %i.di), !noalias !145
  %.not23.i155 = icmp ult i64 %i.df, %i.dd
  br i1 %.not23.i155, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %.sroa.41.5, align 1, !tbaa !17, !noalias !145
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.41.5, i64 1 ; 2 uses
  %i.dk = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr i8, ptr %.sroa.41.5, i64 %i.dd
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.dk, i1 false), !noalias !145
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.dn = icmp ult i64 %i.dh, %i.dd
  br i1 %i.dn, label %bb.w, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i158

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20, !noalias !145
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i158: ; preds = %bb.v
  %.sroa.speculated.i.i159 = call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.dd)
  %i.do = add nuw i64 %.sroa.speculated.i.i159, %i.cy
  %i.dp = call i64 @llvm.umin.i64(i64 %i.do, i64 9223372036854775807) ; 2 uses
  %i.dq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #19, !noalias !145 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cy ; 2 uses
  store i8 0, ptr %i.dr, align 1, !tbaa !17, !noalias !145
  %i.ds = add nsw i64 %i.dd, -1                   ; 2 uses
end_hunk_0
