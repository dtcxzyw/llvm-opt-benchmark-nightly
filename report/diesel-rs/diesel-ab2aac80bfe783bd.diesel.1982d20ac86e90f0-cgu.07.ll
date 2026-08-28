Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.07?download=true
inline.NumInlined: 991
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configs6_0B6_:bb.a
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRNtNtBc_6string6StringE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1E_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  %i.b = call { ptr, ptr } @_RINvMs3_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutjRNtNtBc_6string6StringE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRjRB1G_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !56, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configs7_0B6_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRNtNtCsgczF5crJ4sT_3std4path7PathBufE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1S_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  %i.b = call { ptr, ptr } @_RINvMs3_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutjRNtNtCsgczF5crJ4sT_3std4path7PathBufE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRjRB1G_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !56, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configs8_0B6_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRNtNtBc_6string6StringE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1E_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtB6_11collections5btree3map5RangejRB11_ENCNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB3y_6Config13update_configs8_00EE9from_iterB3A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configs9_0B6_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRbE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1k_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  %i.b = call { ptr, ptr } @_RINvMs3_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutjRbE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRjRB1G_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load i8, ptr %i.e, align 1, !range !43, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configs_0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !27, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !28, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 24, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configsa_0B6_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRNtNtBc_6string6StringE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1E_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtB6_11collections5btree3map5RangejRB11_ENCNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB3y_6Config13update_configsa_00EE9from_iterB3A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config13update_configsb_0B6_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRbE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1k_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  %i.b = call { ptr, ptr } @_RINvMs3_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutjRbE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRjRB1G_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load i8, ptr %i.e, align 1, !range !43, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2_6Config10set_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [104 x i8], align 8               ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [88 x i8], align 8                ; 6 uses
  %i.r = alloca [88 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 4 uses
  %i.u = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.568 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.562 = alloca [24 x i8], align 8          ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.557 = alloca [24 x i8], align 8          ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.9379 = alloca i64, align 8               ; 10 uses
  %.sroa.18 = alloca i64, align 8                 ; 6 uses
  %i.z = alloca [272 x i8], align 8               ; 35 uses
  %i.aa = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.628 = alloca [32 x i8], align 8          ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.619 = alloca [32 x i8], align 8          ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 11 uses
  %i.ae = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 11 uses
  %i.ag = alloca [24 x i8], align 8               ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !43, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches10indices_of(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 10)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !noalias !698, !noundef !5
  %.not.i.not = icmp eq ptr %i.al, null
  br i1 %.not.i.not, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !698
  invoke void @_RINvMs0_NtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 10)
          to label %.noexc265 unwind label %bb.h

.noexc265:                                        ; preds = %bb.d
  %i.am = load i64, ptr %i.k, align 8, !range !27, !noalias !698, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br i1 %i.an, label %bb.y, label %bb.e

bb.e:                                             ; preds = %.noexc265
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !698, !noundef !5
  %.not5.i = icmp eq ptr %i.ap, null
  br i1 %.not5.i, label %bb.g, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !698
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !703, !noalias !708
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  invoke void @_RINvXs1o_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB7_8BTreeMapjRNtNtBd_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTjB1a_EE9from_iterINtNtNtB1E_8adapters3zip3ZipNtNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11arg_matches7IndicesINtB3j_9ValuesRefB1b_EEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.j)
          to label %bb.z unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 153 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #34
          to label %.noexc267 unwind label %bb.h

.noexc267:                                        ; preds = %bb.g
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit, %bb.h
  %.pn263 = phi { ptr, i32 } [ %i.as, %bb.h ], [ %.pn261, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config6ConfigEBF_(ptr noalias noundef align 8 dereferenceable(56) %1) #35
          to label %common.resume unwind label %bb.cy

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit326, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit312, %bb.g, %bb.f, %bb.d, %bb.c, %bb.m, %bb.l, %bb.k, %bb.j, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit

bb.i:                                             ; preds = %bb.b
  %i.at = load i64, ptr %i.n, align 8, !range !27, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !28, !noundef !5 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.au, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr %i.ax, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #34
          to label %bb.x unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.aw, 6
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.az, ptr noundef nonnull align 1 dereferenceable(7) @39, i64 7, i1 false)
  store i64 %i.aw, ptr %i.s, align 8
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.az, ptr %.sroa.4240.0..sroa_idx, align 8
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 7, ptr %.sroa.6241.0..sroa_idx, align 8
  invoke void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE5entryB1w_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntryNtNtBd_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE10or_defaultB1B_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.t)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB5_11PrintSchema10set_filter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.u, align 8, !range !713, !noundef !5
  %.not = icmp eq i64 %i.bc, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit314, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config6ConfigEBF_.exit

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit328, %bb.o
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config15RootPrintSchemaEBF_.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2bNgeUs5Jlc_6diesel6config19MigrationsDirectoryEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %common.resume unwind label %bb.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config15RootPrintSchemaEBF_.exit.i: ; preds = %bb.r
  %i.bf = load i64, ptr %1, align 8, !range !10, !alias.scope !714, !noundef !5
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config6ConfigEBF_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config15RootPrintSchemaEBF_.exit.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config19MigrationsDirectoryEBF_.exit.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit, %bb.s, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.bh, %bb.u ], [ %.pn263, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config19MigrationsDirectoryEBF_.exit.i.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config6ConfigEBF_.exit

bb.w:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.x:                                             ; preds = %bb.j
  unreachable

bb.y:                                             ; preds = %.noexc265
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.478.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.684.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.680.0..sroa_idx, i64 48, i1 false)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.579.0..sroa_idx, i64 24, i1 false)
  store i64 23, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.478.0.copyload, ptr %.sroa.482.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2_6Config10set_filter:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4143.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.628, i64 32, i1 false)
  store i64 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit316

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ct, %bb.cv, %bb.cq, %bb.ca, %bb.cx
  %.pn255 = phi { ptr, i32 } [ %i.fn, %bb.cq ], [ %i.fr, %bb.cx ], [ %i.ev, %bb.ca ], [ %i.fq, %bb.cv ], [ %i.fp, %bb.ct ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cz = load i64, ptr %i.ab, align 8, !range !27, !alias.scope !776, !noundef !5
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit301, label %bb.ay

bb.ay:                                            ; preds = %.body
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit301 unwind label %bb.cy

.loopexit:                                        ; preds = %.invoke, %bb.bj, %bb.bu, %bb.bv, %bb.ba, %bb.bb, %bb.be, %bb.bf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.thread394, %.thread396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.628, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.628, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628)
  %i.dc = load ptr, ptr %i.ag, align 8, !noundef !5 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not247 = icmp ne ptr %i.dc, null              ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dg = load i64, ptr %i.df, align 8
  %.sroa.0109.sroa.7.sroa.6.0 = select i1 %.not247, i64 %i.de, i64 undef ; 6 uses
  %.sroa.0109.sroa.0.0 = zext i1 %.not247 to i64  ; 6 uses
  %.sroa.5110.0 = select i1 %.not247, i64 %i.dg, i64 0 ; 3 uses
  %.sroa.10341.sroa.11.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10341.sroa.11.0..sroa.10341.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store i64 %.sroa.0109.sroa.0.0, ptr %i.z, align 8
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %.sroa.2334.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.dc, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.4335.0..sroa_idx, align 8
  %.sroa.5336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.0109.sroa.0.0, ptr %.sroa.5336.0..sroa_idx, align 8
  %.sroa.6337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr null, ptr %.sroa.6337.0..sroa_idx, align 8
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.dc, ptr %.sroa.7338.0..sroa_idx, align 8
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.8339.0..sroa_idx, align 8
  %.sroa.9340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 %.sroa.5110.0, ptr %.sroa.9340.0..sroa_idx, align 8
  %.sroa.10341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  store i64 %.sroa.0109.sroa.0.0, ptr %.sroa.10341.0..sroa_idx, align 8
  %.sroa.10341.sroa.2.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store ptr null, ptr %.sroa.10341.sroa.2.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.3.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr %i.dc, ptr %.sroa.10341.sroa.3.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.4.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.10341.sroa.4.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.5.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i64 %.sroa.0109.sroa.0.0, ptr %.sroa.10341.sroa.5.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.6.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store ptr null, ptr %.sroa.10341.sroa.6.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.7.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store ptr %i.dc, ptr %.sroa.10341.sroa.7.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.8.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.10341.sroa.8.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.9.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  store i64 %.sroa.5110.0, ptr %.sroa.10341.sroa.9.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 144 ; 5 uses
  store i64 %.sroa.0109.sroa.0.0, ptr %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  store ptr null, ptr %.sroa.10341.sroa.10.sroa.0.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.3.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  store ptr %i.dc, ptr %.sroa.10341.sroa.10.sroa.0.sroa.3.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.4.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.10341.sroa.10.sroa.0.sroa.4.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.5.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  store i64 %.sroa.0109.sroa.0.0, ptr %.sroa.10341.sroa.10.sroa.0.sroa.5.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.6.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store ptr null, ptr %.sroa.10341.sroa.10.sroa.0.sroa.6.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.7.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store ptr %i.dc, ptr %.sroa.10341.sroa.10.sroa.0.sroa.7.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.8.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store i64 %.sroa.0109.sroa.7.sroa.6.0, ptr %.sroa.10341.sroa.10.sroa.0.sroa.8.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.9.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  store i64 %.sroa.5110.0, ptr %.sroa.10341.sroa.10.sroa.0.sroa.9.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.0.sroa.10.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 216 ; 3 uses
  store i64 1, ptr %.sroa.10341.sroa.10.sroa.0.sroa.10.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10341.sroa.10.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 224 ; 3 uses
  store i64 2, ptr %.sroa.10341.sroa.10.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.backedge, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9379)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.dn = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_6ValuesjRNtNtBb_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.z)
          to label %.noexc303 unwind label %.loopexit ; 2 uses

.noexc303:                                        ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %.noexc303
  %.val.i.i = load ptr, ptr %i.dn, align 8, !noalias !779, !nonnull !5, !align !56, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !779, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !779, !noundef !5
  %i.ds = invoke { i64, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1a_6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(184) %.sroa.10341.0..sroa_idx)
          to label %.noexc304 unwind label %.loopexit ; 2 uses

.noexc304:                                        ; preds = %bb.bb
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1
  %i.dv = and i64 %i.dt, 1
  %.not.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %.noexc304
  %i.dw = load i64, ptr %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx, align 8, !range !192, !alias.scope !784, !noalias !793, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.dw, -1
  br i1 %.not.i.i.i.i.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dx = load i64, ptr %.sroa.10341.sroa.10.sroa.0.sroa.10.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !796, !noalias !793, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.be, label %bb.bf, !prof !63

bb.be:                                            ; preds = %bb.bd
  %i.dy = invoke { i64, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1a_6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(96) %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx)
          to label %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtBa_4skip4SkipINtNtBa_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEEENcNtINtNtNtBe_3ops5range5BoundjE8Excluded0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB32_8function6FnOnceTQB5_EE9call_onceCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i unwind label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  store i64 0, ptr %.sroa.10341.sroa.10.sroa.0.sroa.10.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !796, !noalias !793
  %i.dz = invoke { i64, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1a_6string6StringEENtNtNtB8_6traits8iterator8Iterator3nthCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(96) %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx, i64 noundef %i.dx)
          to label %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtBa_4skip4SkipINtNtBa_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEEENcNtINtNtNtBe_3ops5range5BoundjE8Excluded0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB32_8function6FnOnceTQB5_EE9call_onceCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i unwind label %.loopexit

_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtBa_4skip4SkipINtNtBa_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEEENcNtINtNtNtBe_3ops5range5BoundjE8Excluded0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB32_8function6FnOnceTQB5_EE9call_onceCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.pn.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.dy, %bb.be ], [ %i.dz, %bb.bf ] ; 2 uses
  %i.ea = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i.i, 0
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread22.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtBa_4skip4SkipINtNtBa_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEEENcNtINtNtNtBe_3ops5range5BoundjE8Excluded0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB32_8function6FnOnceTQB5_EE9call_onceCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  store i64 -1, ptr %.sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx, align 8, !alias.scope !784, !noalias !793
  br label %bb.bh

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread22.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtBa_4skip4SkipINtNtBa_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEEENcNtINtNtNtBe_3ops5range5BoundjE8Excluded0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB32_8function6FnOnceTQB5_EE9call_onceCs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  %i.ec = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %i.ed = load i64, ptr %.sroa.10341.sroa.10.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8, !range !803, !alias.scope !804, !noalias !793, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ed, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.bh
  %i.ee = load i64, ptr %i.dh, align 8, !alias.scope !809, !noalias !793
  store i64 -1, ptr %.sroa.10341.sroa.10.sroa.2.0..sroa.10341.sroa.10.0..sroa.10341.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !809, !noalias !793
  %.not16.i.i.i = icmp eq i64 %i.ed, -1
  br i1 %.not16.i.i.i, label %bb.bi, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread22.i.i.i
  %.sroa.10.0.i = phi i64 [ %i.ec, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread22.i.i.i ], [ %i.ee, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  %.sroa.9.0.i = phi i64 [ 1, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread22.i.i.i ], [ %i.ed, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  store i64 0, ptr %.sroa.9379, align 8, !alias.scope !779, !noalias !782
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.bh, %.noexc304, %.noexc303
  %.sroa.0377.0 = phi ptr [ undef, %.noexc303 ], [ undef, %.noexc304 ], [ undef, %bb.bh ], [ undef, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.dp, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ] ; 3 uses
  %.sroa.7378.0 = phi i64 [ undef, %.noexc303 ], [ undef, %.noexc304 ], [ undef, %bb.bh ], [ undef, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.dr, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ] ; 2 uses
  %.sroa.16.0 = phi i64 [ undef, %.noexc303 ], [ undef, %.noexc304 ], [ undef, %bb.bh ], [ undef, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.du, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ]
  %.sroa.17.0 = phi i64 [ undef, %.noexc303 ], [ undef, %.noexc304 ], [ undef, %bb.bh ], [ undef, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %.sroa.9.0.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ]
  %.sink28.i.sroa.phi = phi ptr [ %.sroa.9379, %.noexc303 ], [ %.sroa.9379, %.noexc304 ], [ %.sroa.9379, %bb.bh ], [ %.sroa.9379, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %.sroa.18, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ]
  %.sink.i = phi i64 [ -1, %.noexc303 ], [ -1, %.noexc304 ], [ -1, %bb.bh ], [ -1, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_4skip4SkipINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB22_6string6StringEEENcNtINtNtNtBa_3ops5range5BoundjE8Excluded0EINtNtNtB8_7sources4once4OnceB3j_EENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %.sroa.10.0.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map4KeysjRNtNtB1G_6string6StringEENcNtINtNtNtBa_3ops5range5BoundjE8Included0EINtNtB6_5chain5ChainIBW_INtNtB6_4skip4SkipB1b_ENcNtB2W_8Excluded0EINtNtNtB8_7sources4once4OnceB2W_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i ]
  store i64 %.sink.i, ptr %.sink28.i.sroa.phi, align 8, !alias.scope !779, !noalias !782
  %.sroa.9379.0..sroa.9379.0..sroa.9379.0..sroa.9379.16. = load i64, ptr %.sroa.9379, align 8, !range !677, !noundef !5 ; 2 uses
  %.not250 = icmp eq i64 %.sroa.9379.0..sroa.9379.0..sroa.9379.0..sroa.9379.16., -1
  br i1 %.not250, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0377.0) ]
  store i64 %.sroa.9379.0..sroa.9379.0..sroa.9379.0..sroa.9379.16., ptr %i.m, align 8
  store i64 %.sroa.16.0, ptr %.sroa.16.16..sroa_idx, align 8
  store i64 %.sroa.17.0, ptr %.sroa.17.16..sroa_idx, align 8
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.copyload = load i64, ptr %.sroa.18, align 8
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.copyload, ptr %.sroa.18.16..sroa_idx, align 8
  %i.ef = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE7get_muteEB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0377.0, i64 noundef %.sroa.7378.0)
          to label %bb.bo unwind label %.loopexit ; 11 uses

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9379)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.eg = load i64, ptr %i.ab, align 8, !range !27, !alias.scope !812, !noundef !5
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit308, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit308 unwind label %bb.aw

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit308: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ei = load i64, ptr %i.ad, align 8, !range !27, !alias.scope !815, !noundef !5
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit310, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit308
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit310 unwind label %bb.ao

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit310: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit308, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ek = load i64, ptr %i.af, align 8, !range !27, !alias.scope !818, !noundef !5
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit312, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit310
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRNtNtB8_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit312 unwind label %bb.ag

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit312: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit310, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRNtNtB8_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit314 unwind label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtBK_6string6StringEECs2bNgeUs5Jlc_6diesel.exit314: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRNtNtB16_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.q

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config6ConfigEBF_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config19MigrationsDirectoryEBF_.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config15RootPrintSchemaEBF_.exit.i, %bb.q
  ret void

bb.bo:                                            ; preds = %bb.bj
  %.not251 = icmp eq ptr %i.ef, null
  br i1 %.not251, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.em = load i64, ptr %i.af, align 8, !range !27, !noundef !5
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.bu, label %.backedge

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB4_6Config10set_filters_0B6_(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0377.0, i64 noundef %.sroa.7378.0)
          to label %bb.br unwind label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %.sroa.044.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.646.0.copyload = load ptr, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5229.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.849.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %.sroa.044.0.copyload, ptr %0, align 8
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.646.0.copyload, ptr %.sroa.4228.0..sroa_idx, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9379)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.eo = load i64, ptr %i.ab, align 8, !range !27, !alias.scope !821, !noundef !5
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit316, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapjRbEEECs2bNgeUs5Jlc_6diesel.exit316 unwind label %bb.aw

bb.bu:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRNtNtBc_6string6StringE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1E_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.m)
          to label %bb.bv unwind label %.loopexit

.backedge.sink.split:                             ; preds = %.invoke, %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9379)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.ba

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB1j_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2A_6Config10set_filters0_0ENCB2x_s1_0EINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4p_5error5ErrorENCINvXso_B56_IB54_INtNtB1j_3vec3VecB3J_EB5Q_EINtNtNtB4_6traits7collect12FromIteratorIB54_B3J_B5Q_EE9from_iterBQ_E0B6t_EB2C_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.w)
          to label %bb.bw unwind label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.eq = load i64, ptr %i.x, align 8, !range !27, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.557, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %i.er, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.557, i64 24, i1 false)
  store i64 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.557)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bs

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.557, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.557)
  %i.es = load i64, ptr %i.dk, align 8, !noundef !5 ; 2 uses
  %i.et = icmp ult i64 %i.es, 288230376151711744
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i64 %i.es, 0
  br i1 %i.eu, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.invoke unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.cb

.invoke:                                          ; preds = %bb.cp, %bb.bz
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.backedge.sink.split unwind label %.loopexit

bb.cb:                                            ; preds = %bb.ca
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.ex = load i64, ptr %i.ab, align 8, !range !27, !noundef !5
  %i.ey = trunc nuw i64 %i.ex to i1
  br i1 %i.ey, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapjRbE5rangejTINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundjEB1k_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.m)
          to label %bb.ce unwind label %bb.cx

bb.ce:                                            ; preds = %bb.cd
  %i.ez = invoke { ptr, ptr } @_RINvMs3_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutjRbE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRjRB1G_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.cf unwind label %bb.cx     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0
  %.not252 = icmp eq ptr %i.fa, null
  br i1 %.not252, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !5, !noundef !5
  %i.fd = load i8, ptr %i.fc, align 1, !range !43, !noundef !5
  %i.fe = trunc nuw i8 %i.fd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.fe, label %bb.cj, label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cc, %bb.cg
  %i.ff = load i64, ptr %i.ad, align 8, !range !27, !noundef !5
  %i.fg = trunc nuw i64 %i.ff to i1
end_hunk_1
