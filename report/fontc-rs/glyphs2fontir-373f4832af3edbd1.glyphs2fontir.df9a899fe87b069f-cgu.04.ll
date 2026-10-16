Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.04?download=true
inline.NumInlined: 811
inline.NumDeleted: 457
begin_hunk_0_@_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1b_15NormalizedSpaceENtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB18_ENCINvMse_NtB8_3setINtB4J_8BTreeSetB18_E16from_sorted_iterB3Y_E0EECsjceHdiZFn9b_13glyphs2fontir:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1B_15NormalizedSpaceENtNtB5_7set_val9SetValZSTNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1y_B2H_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB9_3vec9into_iter8IntoIterB1y_ENCINvMse_NtB5_3setINtB62_8BTreeSetB1y_E16from_sorted_iterB5h_E0EENtNtB9_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.i = load i64, ptr %i.g, align 8, !noundef !6
  %i.j = load i64, ptr %i.b, align 8, !noundef !6
  store ptr %i.h, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

.thread:                                          ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBZ_15NormalizedSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.thread unwind label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphE3getB18_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphNtB1i_14LeafOrInternalE11search_treeB1A_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphE3geteECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphNtB1i_14LeafOrInternalE11search_treeeECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistE3geteECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistNtB1i_14LeafOrInternalE11search_treeeECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB8_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE3getB18_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB7_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtB1i_14LeafOrInternalE11search_treeB1A_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB7_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB18_ENCINvMse_NtB8_3setINtB4k_8BTreeSetB18_E16from_sorted_iterB3z_E0EECsjceHdiZFn9b_13glyphs2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [55 x i8], align 1            ; 4 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir()
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i8 -2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB5_7set_val9SetValZSTNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1y_B2i_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB9_3vec9into_iter8IntoIterB1y_ENCINvMse_NtB5_3setINtB5D_8BTreeSetB1y_E16from_sorted_iterB4S_E0EENtNtB9_5alloc6GlobalECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.i = load i64, ptr %i.g, align 8, !noundef !6
  %i.j = load i64, ptr %i.b, align 8, !noundef !6
  store ptr %i.h, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

.thread:                                          ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.thread unwind label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueATNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBD_Ej1_ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.a = load i8, ptr %0, align 8, !range !8, !alias.scope !54, !noundef !6
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !57, !nonnull !6, !noundef !6
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !57
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #13
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.f = load i8, ptr %2, align 8, !range !8, !alias.scope !61, !noundef !6
  %switch.i.i.i1.i.i = icmp samesign ult i8 %i.f, 25
  br i1 %switch.i.i.i1.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.g = load ptr, ptr %3, align 8, !alias.scope !64, !nonnull !6, !noundef !6
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !65
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #13
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit3.i.i unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.j = load i8, ptr %2, align 8, !range !8, !alias.scope !69, !noundef !6
  %switch.i.i.i4.i.i = icmp samesign ult i8 %i.j, 25
  br i1 %switch.i.i.i4.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBD_EECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.k = load ptr, ptr %3, align 8, !alias.scope !72, !nonnull !6, !noundef !6
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !73
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBD_EECsjceHdiZFn9b_13glyphs2fontir.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBD_EECsjceHdiZFn9b_13glyphs2fontir.exit

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit3.i.i: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBD_EECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs9NoVXegZYB5_8smol_str7SmolStrEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !6 ; 2 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %switch.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !86, !nonnull !6, !noundef !6
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !86
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #13
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1P_15NormalizedSpaceEB1M_EEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1m_15NormalizedSpaceEB1j_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1t_15NormalizedSpaceEB1q_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1W_15NormalizedSpaceEB1T_EEEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1t_15NormalizedSpaceEB1q_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1W_15NormalizedSpaceEB1T_EEEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetmEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !97 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.01.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !97
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !97 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !97
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.613.0..sroa_idx.i.i, align 8, !noalias !97
  %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !97
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink28.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.52.0.copyload.sink.i.i = phi i64 [ %.sroa.52.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink28.i.i, ptr %i.b, align 8, !noalias !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink28.i.i, ptr %i.c, align 8, !noalias !97
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.52.0.copyload.sink.i.i, ptr %i.d, align 8, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoItermNtNtB7_7set_val9SetValZSTE10dying_nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !97
  %i.e = load ptr, ptr %i.a, align 8, !noalias !98, !noundef !6
  %.not3.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not3.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapmNtNtBG_7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoItermNtNtB7_7set_val9SetValZSTE10dying_nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !97
  %i.f = load ptr, ptr %i.a, align 8, !noalias !98, !noundef !6
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapmNtNtBG_7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapmNtNtBG_7set_val9SetValZSTEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtBQ_3vec3VecTNtNtBQ_6string6StringB3a_EEEECsjceHdiZFn9b_13glyphs2fontir(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RNvXNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtBe_3vec3VecTNtNtBe_6string6StringB2E_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_EEECsjceHdiZFn9b_13glyphs2fontir.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #12
  unreachable
end_hunk_0
