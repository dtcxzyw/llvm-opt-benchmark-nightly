Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/walkdir-59bf1a24a2552d60.walkdir.a46570b60bf0c729-cgu.0?download=true
inline.NumInlined: 210
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error10from_entry:bb.a
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error13into_io_error(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir5error10ErrorInnerEBF_(ptr nonnull align 8 %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECse74NttPwnqL_7walkdir.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECse74NttPwnqL_7walkdir.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECse74NttPwnqL_7walkdir.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECse74NttPwnqL_7walkdir.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECse74NttPwnqL_7walkdir.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECse74NttPwnqL_7walkdir.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i, %bb.c, %bb.b
  %.sroa.0.03 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i ]
  ret ptr %.sroa.0.03
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error13loop_ancestor(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.val1.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.val.i, %bb.b ], [ null, %bb.a ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error4path(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not1 = icmp eq i64 %i.c, -1
  br i1 %.not1, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink5 = phi i64 [ 32, %bb.a ], [ 16, %bb.b ]
  %.sink4 = phi i64 [ 40, %bb.a ], [ 24, %bb.b ]
  %i.d = getelementptr i8, ptr %0, i64 %.sink5
  %.val.i2 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 %.sink4
  %.val1.i3 = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.sroa.4.0 = phi i64 [ undef, %bb.b ], [ %.val1.i3, %.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %.val.i2, %.sink.split ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error5depth(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error7from_io(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 16), (32, 40), (48, 56)) %0, i64 %1, ptr %2) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error8io_error(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0 = select i1 %.not, ptr %i.b, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCse74NttPwnqL_7walkdir5errorNtB2_5Error9from_path(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 40), (48, 56)) %0, i64 %1, ptr nofree readonly align 8 captures(none) %2, ptr %3) unnamed_addr #14 {
bb.a:
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6result6ResultNtNtCse74NttPwnqL_7walkdir4dent8DirEntryNtNtB1H_5error5ErrorEE13partition_oneB1H_(ptr nofree align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -56 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  %i.j = zext i1 %1 to i64
  %i.k = load i64, ptr %i.e, align 8
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.n, ptr %i.h, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path8metadataCse74NttPwnqL_7walkdir(ptr sret([176 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECse74NttPwnqL_7walkdir(ptr sret([176 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9as_os_strCse74NttPwnqL_7walkdir(ptr %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_Cse74NttPwnqL_7walkdirNtB5_8IntoIter12handle_entry(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, ptr nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [56 x i8], align 16               ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 2 uses
  %i.s = alloca [56 x i8], align 8                ; 3 uses
  %i.t = alloca [4 x i8], align 4                 ; 2 uses
  %i.u = alloca [176 x i8], align 8               ; 7 uses
  %.sroa.673 = alloca [24 x i8], align 8          ; 2 uses
  %i.v = alloca [176 x i8], align 8               ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 2 uses
  %i.x = alloca [56 x i8], align 8                ; 3 uses
  %i.y = alloca [56 x i8], align 8                ; 3 uses
  %i.z = alloca [4 x i8], align 4                 ; 2 uses
  %i.aa = alloca [48 x i8], align 16              ; 17 uses
  %i.ab = alloca [4 x i8], align 4                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.aq, %bb.e, %bb.a
  %i.af = invoke i32 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry9file_type(ptr nonnull align 8 %2)
          to label %bb.ar unwind label %.body.thread161

bb.c:                                             ; preds = %bb.a
  %i.ag = invoke i32 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry9file_type(ptr nonnull align 8 %2)
          to label %bb.d unwind label %.body.thread161

.body.thread161:                                  ; preds = %bb.at, %bb.d, %bb.c, %.noexc18, %bb.cd, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionyE3mapbNCNvMs3_Cse74NttPwnqL_7walkdirNtBX_8IntoIter19is_same_file_systems_0EBX_.exit.thread.i, %bb.bq, %bb.br, %bb.ar, %bb.b, %bb.bm, %bb.bk, %bb.bj, %.thread178, %bb.bc, %bb.bb, %bb.ay, %bb.ax, %bb.bt
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.d:                                             ; preds = %bb.c
  store i32 %i.ag, ptr %i.ab, align 4
  %i.ah = invoke zeroext i1 @_RNvMsu_NtCs2AWtUsOyxgP_3std2fsNtB5_8FileType10is_symlinkCse74NttPwnqL_7walkdir(ptr nonnull align 4 %i.ab)
          to label %bb.e unwind label %.body.thread161

bb.e:                                             ; preds = %bb.d
  br i1 %i.ah, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !48
  %i.ak = invoke { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry4path(ptr nonnull align 8 %i.aa)
          to label %bb.h unwind label %bb.g, !noalias !48 ; 2 uses

.body4.i:                                         ; preds = %.body.i.i, %.body.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.al, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_(ptr nonnull align 8 %i.aa) #31
          to label %common.resume unwind label %bb.ap, !noalias !48

bb.g:                                             ; preds = %bb.aj, %bb.ac, %.noexc.i, %bb.r, %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit.i, %bb.i, %bb.h, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

bb.h:                                             ; preds = %bb.f
  %i.am = extractvalue { ptr, i64 } %i.ak, 0
  %i.an = extractvalue { ptr, i64 } %i.ak, 1
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr %i.am, i64 %i.an)
          to label %bb.i unwind label %bb.g, !noalias !48

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry9from_path(ptr nonnull sret([56 x i8]) align 8 %i.q, i64 %i.aj, ptr nonnull align 8 %i.p, i1 zeroext true)
          to label %bb.j unwind label %bb.g, !noalias !48

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.q, align 16, !noalias !48
  %.not.i.i = icmp eq i64 %i.ao, -2
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load <2 x i64>, ptr %i.q, align 16
  %.sroa.9.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.9.8.copyload29 = load i64, ptr %.sroa.9.8..sroa_idx28, align 16
  %.sroa.10.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.10.8.copyload33 = load i64, ptr %.sroa.10.8..sroa_idx32, align 8
  %.sroa.11.8..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.11.8.copyload37 = load ptr, ptr %.sroa.11.8..sroa_idx36, align 16
  %.sroa.12.8..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.12.8.copyload41 = load i64, ptr %.sroa.12.8..sroa_idx40, align 8
  %.sroa.13.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.13.8.copyload45 = load i64, ptr %.sroa.13.8..sroa_idx44, align 16
  br label %bb.am

bb.l:                                             ; preds = %bb.j
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !48
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i.i unwind label %bb.m, !noalias !48

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
          to label %.body.i unwind label %bb.n, !noalias !48

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit.i unwind label %bb.o, !noalias !48

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.aq, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !48
  br label %.body4.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !48
  %i.at = invoke zeroext i1 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry6is_dir(ptr nonnull align 8 %i.aa)
          to label %bb.p unwind label %bb.g, !noalias !48

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit.i
  br i1 %i.at, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.au = invoke { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry4path(ptr nonnull align 8 %i.aa)
          to label %bb.r unwind label %bb.g, !noalias !48 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = extractvalue { ptr, i64 } %i.au, 0
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !48
  store ptr %i.av, ptr %i.n, align 8, !noalias !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !49
  invoke void @_RINvMs4_NtCs75g4Gr1SzEJ_9same_file4unixNtB6_6Handle9from_pathRRNtNtCs2AWtUsOyxgP_3std4path4PathECse74NttPwnqL_7walkdir(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.n)
          to label %.noexc.i unwind label %bb.g, !noalias !48

.noexc.i:                                         ; preds = %bb.r
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs75g4Gr1SzEJ_9same_file4unix6HandleNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3mapNtBM_6HandleNcB24_0EBM_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.j)
          to label %.noexc3.i unwind label %bb.g, !noalias !48

.noexc3.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.az = load i8, ptr %i.ay, align 4, !noalias !49
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %.thread43.i, label %bb.s

.thread43.i:                                      ; preds = %.noexc3.i
  %i.bb = load ptr, ptr %i.l, align 8, !noalias !49
  %.val.val.i.i.i = load i64, ptr %i.ai, align 8, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !48
  br label %bb.am

bb.s:                                             ; preds = %.noexc3.i
  %.sroa.424.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !noalias !49
  %.sroa.424.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !49
  store i64 %.sroa.424.sroa.0.0.copyload.i.i, ptr %i.m, align 8, !noalias !49
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCse74NttPwnqL_7walkdir8AncestorENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBG_(ptr nonnull align 8 %i.bc)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtCs75g4Gr1SzEJ_9same_file6HandleNtB7_9PartialEq2eqCse74NttPwnqL_7walkdir.exit.i.i.i, %.noexc.i.i, %bb.y, %bb.w, %bb.af, %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCse74NttPwnqL_7walkdir8Ancestor4iterBw_.exit.i.i, %bb.t, %bb.s
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag, %bb.aa
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.cd, %bb.ag ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs75g4Gr1SzEJ_9same_file6HandleEBD_(ptr nonnull align 8 %i.m) #31
          to label %.body4.i unwind label %bb.ak, !noalias !49

bb.t:                                             ; preds = %bb.s
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = invoke { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtCse74NttPwnqL_7walkdir8AncestorE3newBQ_(ptr align 8 %i.be, i64 %i.bf)
          to label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCse74NttPwnqL_7walkdir8Ancestor4iterBw_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49 ; 2 uses

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCse74NttPwnqL_7walkdir8Ancestor4iterBw_.exit.i.i: ; preds = %bb.t
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1
  %i.bj = invoke { ptr, ptr } @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtCse74NttPwnqL_7walkdir8AncestorENtNtNtNtB9_4iter6traits8iterator8Iterator3revBK_(ptr %i.bh, ptr %i.bi)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49 ; 2 uses

bb.u:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCse74NttPwnqL_7walkdir8Ancestor4iterBw_.exit.i.i
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  %i.bm = invoke { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_5slice4iter4IterNtCse74NttPwnqL_7walkdir8AncestorEENtB2_12IntoIterator9into_iterB1E_(ptr %i.bk, ptr %i.bl)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1
  store ptr %i.bn, ptr %i.k, align 8, !noalias !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !noalias !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  br label %bb.w

bb.w:                                             ; preds = %bb.ae, %bb.v
  %i.br = invoke align 8 ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtCse74NttPwnqL_7walkdir8AncestorEENtNtNtB8_6traits8iterator8Iterator4nextB1n_(ptr nonnull align 8 %i.k)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49 ; 4 uses

bb.x:                                             ; preds = %bb.w
  %.not3.i.i = icmp eq ptr %i.br, null
  br i1 %.not3.i.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !50
  invoke void @_RINvMs4_NtCs75g4Gr1SzEJ_9same_file4unixNtB6_6Handle9from_pathRNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.br)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs75g4Gr1SzEJ_9same_file4unix6HandleNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3mapNtBM_6HandleNcB24_0EBM_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49

.noexc7.i.i:                                      ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !50
  %i.bs = load i8, ptr %i.bq, align 4, !noalias !50 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 2
  %i.bu = load ptr, ptr %i.h, align 8, !noalias !50 ; 2 uses
  br i1 %i.bt, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.noexc7.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.2.0..sroa_idx.i6.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx4.i.i.i, i64 12, i1 false), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.410.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx8.i.i.i, i64 3, i1 false), !noalias !50
  store ptr %i.bu, ptr %i.i, align 8, !noalias !50
  store i8 %i.bs, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !50
  %i.bv = invoke zeroext i1 @_RNvXs0_NtCs75g4Gr1SzEJ_9same_file4unixNtB5_6HandleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.i)
          to label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtCs75g4Gr1SzEJ_9same_file6HandleNtB7_9PartialEq2eqCse74NttPwnqL_7walkdir.exit.i.i.i unwind label %bb.aa, !noalias !50

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs75g4Gr1SzEJ_9same_file6HandleEBD_(ptr nonnull align 8 %i.i) #31
          to label %.body.i.i unwind label %bb.ab, !noalias !50

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtCs75g4Gr1SzEJ_9same_file6HandleNtB7_9PartialEq2eqCse74NttPwnqL_7walkdir.exit.i.i.i: ; preds = %bb.z
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs75g4Gr1SzEJ_9same_file6HandleEBD_(ptr nonnull align 8 %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !50
  unreachable

bb.ac:                                            ; preds = %bb.x
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs75g4Gr1SzEJ_9same_file6HandleEBD_(ptr nonnull align 8 %i.m)
          to label %.thread.i unwind label %bb.g, !noalias !48

.thread.i:                                        ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !48
  br label %bb.aq

bb.ad:                                            ; preds = %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49
  %.val.val.i10.i.i = load i64, ptr %i.ai, align 8, !noalias !49
  br label %bb.aj

bb.ae:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtCs75g4Gr1SzEJ_9same_file6HandleNtB7_9PartialEq2eqCse74NttPwnqL_7walkdir.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49
  br i1 %i.bv, label %bb.af, label %bb.w

bb.af:                                            ; preds = %bb.ae
  %i.by = load i64, ptr %i.ai, align 8, !noalias !49
  %i.bz = getelementptr i8, ptr %i.br, i64 8
  %.val.i14.i.i = load ptr, ptr %i.bz, align 8, !noalias !49
  %i.ca = getelementptr i8, ptr %i.br, i64 16
  %.val1.i.i.i = load i64, ptr %i.ca, align 8, !noalias !49
  %i.cb = load ptr, ptr %i.n, align 8, !noalias !49
  %i.cc = load i64, ptr %i.ax, align 8, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %.val.i14.i.i, i64 %.val1.i.i.i)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !49

.noexc15.i.i:                                     ; preds = %bb.af
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %i.cb, i64 %i.cc)
          to label %bb.ai unwind label %bb.ag, !noalias !51

bb.ag:                                            ; preds = %.noexc15.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECse74NttPwnqL_7walkdir(ptr nonnull align 8 %i.f) #31
          to label %.body.i.i unwind label %bb.ah, !noalias !51

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !51
  unreachable

bb.ai:                                            ; preds = %.noexc15.i.i
  %4 = load <2 x i64>, ptr %i.f, align 16, !noalias !49
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.433.sroa.6.0.copyload.i = load i64, ptr %.sroa.433.0..sroa_idx.i, align 16, !noalias !49
  %i.cf = load i64, ptr %i.e, align 8, !noalias !49
  %.sroa.634.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.634.24.copyload.i = load ptr, ptr %.sroa.634.24..sroa_idx.i, align 8, !noalias !49
  %.sroa.735.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.735.24.copyload.i = load i64, ptr %.sroa.735.24..sroa_idx.i, align 8, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !49
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %.sroa.6.sroa.4.sroa.2.0.i.a = phi i64 [ undef, %bb.ad ], [ %.sroa.433.sroa.6.0.copyload.i, %bb.ai ]
  %.sroa.019.0.i = phi i64 [ undef, %bb.ad ], [ %i.cf, %bb.ai ]
  %.sroa.9.0.i = phi i64 [ undef, %bb.ad ], [ %.sroa.735.24.copyload.i, %bb.ai ]
  %.sroa.7.0.i = phi ptr [ %i.bu, %bb.ad ], [ %.sroa.634.24.copyload.i, %bb.ai ]
  %.val.val.i10.sink.i.i = phi i64 [ %.val.val.i10.i.i, %bb.ad ], [ %i.by, %bb.ai ]
  %i.cg = phi <2 x i64> [ splat (i64 -1), %bb.ad ], [ %4, %bb.ai ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs75g4Gr1SzEJ_9same_file6HandleEBD_(ptr nonnull align 8 %i.m)
          to label %bb.al unwind label %bb.g, !noalias !48

bb.ak:                                            ; preds = %.body.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !49
  unreachable

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !48
  %5 = extractelement <2 x i64> %i.cg, i64 0
  %.not.i8.i = icmp eq i64 %5, -2
  br i1 %.not.i8.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.thread43.i, %bb.al, %bb.k
  %.sroa.13.0 = phi i64 [ %.sroa.13.8.copyload45, %bb.k ], [ %.val.val.i.i.i, %.thread43.i ], [ %.val.val.i10.sink.i.i, %bb.al ]
  %.sroa.12.0 = phi i64 [ %.sroa.12.8.copyload41, %bb.k ], [ undef, %.thread43.i ], [ %.sroa.9.0.i, %bb.al ]
  %.sroa.11.0 = phi ptr [ %.sroa.11.8.copyload37, %bb.k ], [ %i.bb, %.thread43.i ], [ %.sroa.7.0.i, %bb.al ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.8.copyload33, %bb.k ], [ undef, %.thread43.i ], [ %.sroa.019.0.i, %bb.al ]
  %.sroa.0.0152 = phi i64 [ %.sroa.9.8.copyload29, %bb.k ], [ undef, %.thread43.i ], [ %.sroa.6.sroa.4.sroa.2.0.i.a, %bb.al ]
  %i.ci = phi <2 x i64> [ %i.ap, %bb.k ], [ splat (i64 -1), %.thread43.i ], [ %i.cg, %bb.al ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit11.i unwind label %bb.an, !noalias !48

bb.an:                                            ; preds = %bb.am
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
          to label %common.resume unwind label %bb.ao, !noalias !48

bb.ao:                                            ; preds = %bb.an
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCse74NttPwnqL_7walkdir4dent8DirEntryEBF_.exit11.i: ; preds = %bb.am
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store <2 x i64> %i.ci, ptr %0, align 8
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0152, ptr %.sroa.2146.0..sroa_idx, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.11.0, ptr %.sroa.5149.0..sroa_idx, align 8
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12.0, ptr %.sroa.6150.0..sroa_idx, align 8
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.13.0, ptr %.sroa.7151.0..sroa_idx, align 8
  br label %.critedge14

bb.ap:                                            ; preds = %.body4.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !48
  unreachable

bb.aq:                                            ; preds = %bb.p, %.thread.i, %bb.al
  %.sroa.10.8..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.10.8.copyload35 = load i64, ptr %.sroa.10.8..sroa_idx34, align 16
  %.sroa.11.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.11.8.copyload39 = load ptr, ptr %.sroa.11.8..sroa_idx38, align 8
  %.sroa.12.8..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cm = load <2 x i64>, ptr %i.aa, align 16
  store <2 x i64> %i.cm, ptr %2, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.10.8.copyload35, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.11.8.copyload39, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cn = load <2 x i64>, ptr %.sroa.12.8..sroa_idx42, align 16
  store <2 x i64> %i.cn, ptr %.sroa.550.0..sroa_idx, align 8
  br label %bb.b

bb.ar:                                            ; preds = %bb.b
  store i32 %i.af, ptr %i.z, align 4
  %i.co = invoke zeroext i1 @_RNvMsu_NtCs2AWtUsOyxgP_3std2fsNtB5_8FileType10is_symlinkCse74NttPwnqL_7walkdir(ptr nonnull align 4 %i.z)
          to label %bb.as unwind label %.body.thread161

bb.as:                                            ; preds = %bb.ar
  br i1 %i.co, label %.thread178, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cp = invoke zeroext i1 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry6is_dir(ptr nonnull align 8 %2)
          to label %bb.au unwind label %.body.thread161

bb.au:                                            ; preds = %bb.at
  br i1 %i.cp, label %bb.av, label %.thread178

.thread178:                                       ; preds = %bb.as, %bb.au
  %i.cq = invoke i64 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry5depth(ptr nonnull align 8 %2)
          to label %bb.aw unwind label %.body.thread161

bb.av:                                            ; preds = %bb.au
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.br, label %bb.bq

bb.aw:                                            ; preds = %.thread178
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %bb.ax, label %.thread182

bb.ax:                                            ; preds = %bb.aw
  %i.cv = invoke i32 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry9file_type(ptr nonnull align 8 %2)
          to label %bb.ay unwind label %.body.thread161

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.cv, ptr %i.w, align 4
  %i.cw = invoke zeroext i1 @_RNvMsu_NtCs2AWtUsOyxgP_3std2fsNtB5_8FileType10is_symlinkCse74NttPwnqL_7walkdir(ptr nonnull align 4 %i.w)
          to label %bb.az unwind label %.body.thread161

bb.az:                                            ; preds = %bb.ay
  br i1 %i.cw, label %bb.ba, label %.thread182

bb.ba:                                            ; preds = %bb.az
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.bb, label %.thread182

bb.bb:                                            ; preds = %bb.ba
  %i.da = invoke { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry4path(ptr nonnull align 8 %2)
          to label %bb.bc unwind label %.body.thread161 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.db = extractvalue { ptr, i64 } %i.da, 0
  %i.dc = extractvalue { ptr, i64 } %i.da, 1
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECse74NttPwnqL_7walkdir(ptr nonnull sret([176 x i8]) align 8 %i.u, ptr %i.db, i64 %i.dc)
          to label %bb.bd unwind label %.body.thread161

bb.bd:                                            ; preds = %bb.bc
  %i.dd = load i64, ptr %i.u, align 8             ; 2 uses
  %i.de = icmp eq i64 %i.dd, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.de, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dg, ptr %i.d, align 8, !noalias !52
  %i.dh = invoke i64 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry5depth(ptr nonnull align 8 %2)
          to label %bb.bf unwind label %bb.bh, !noalias !52

bb.bf:                                            ; preds = %bb.be
  %i.di = invoke { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry4path(ptr nonnull align 8 %2)
          to label %bb.bg unwind label %bb.bh, !noalias !52 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dj = extractvalue { ptr, i64 } %i.di, 0
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.dj, i64 %i.dk)
          to label %bb.bp unwind label %bb.bh, !noalias !52

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCse74NttPwnqL_7walkdir(ptr nonnull align 8 %i.d)
          to label %.body.thread unwind label %bb.bi, !noalias !52

bb.bi:                                            ; preds = %bb.bh
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !52
  unreachable

bb.bj:                                            ; preds = %bb.bd
  %.sroa.470.0.copyload72 = load i64, ptr %i.df, align 8
  %.sroa.673.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.775.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.775.0.copyload77 = load ptr, ptr %.sroa.775.0..sroa_idx76, align 8
  %.sroa.878.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.984.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.792.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.984.0..sroa_idx85, i64 112, i1 false)
  %.sroa.388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.388.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673.0..sroa_idx74, i64 24, i1 false)
  store i64 %i.dd, ptr %i.v, align 8
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.470.0.copyload72, ptr %.sroa.287.0..sroa_idx, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %.sroa.775.0.copyload77, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.dn = load <2 x i64>, ptr %.sroa.878.0..sroa_idx79, align 8
  store <2 x i64> %i.dn, ptr %.sroa.590.0..sroa_idx, align 8
  %i.do = invoke i32 @_RNvMsm_NtCs2AWtUsOyxgP_3std2fsNtB5_8Metadata9file_typeCse74NttPwnqL_7walkdir(ptr nonnull align 8 %i.v)
          to label %bb.bk unwind label %.body.thread161

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.do, ptr %i.t, align 4
  %i.dp = invoke zeroext i1 @_RNvMsu_NtCs2AWtUsOyxgP_3std2fsNtB5_8FileType6is_dirCse74NttPwnqL_7walkdir(ptr nonnull align 4 %i.t)
          to label %bb.bl unwind label %.body.thread161

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.dp, label %bb.bm, label %.thread182

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RNvMs3_Cse74NttPwnqL_7walkdirNtB5_8IntoIter4push(ptr noalias align 8 %i.s, ptr nonnull align 8 %1, ptr align 8 %2)
          to label %bb.bn unwind label %.body.thread161

bb.bn:                                            ; preds = %bb.bm
  %i.dq = load i64, ptr %i.s, align 8
  %.not8 = icmp eq i64 %i.dq, -2
  br i1 %.not8, label %.thread182, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  br label %bb.cm

bb.bp:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dg, ptr %.sroa.3110.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dh, ptr %.sroa.5112.0..sroa_idx, align 8
  br label %bb.cm

bb.bq:                                            ; preds = %bb.bs, %bb.av
  invoke fastcc void @_RNvMs3_Cse74NttPwnqL_7walkdirNtB5_8IntoIter4push(ptr noalias align 8 %i.x, ptr nonnull align 8 %1, ptr align 8 %2)
          to label %bb.ca unwind label %.body.thread161

bb.br:                                            ; preds = %bb.av
  %i.dr = invoke i64 @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry5depth(ptr nonnull align 8 %2)
          to label %bb.bs unwind label %.body.thread161

bb.bs:                                            ; preds = %bb.br
  %.not9 = icmp eq i64 %i.dr, 0
  br i1 %.not9, label %bb.bq, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ds = invoke { ptr, i64 } @_RNvMNtCse74NttPwnqL_7walkdir4dentNtB2_8DirEntry4path(ptr nonnull align 8 %2)
          to label %.noexc18 unwind label %.body.thread161 ; 2 uses
end_hunk_0
